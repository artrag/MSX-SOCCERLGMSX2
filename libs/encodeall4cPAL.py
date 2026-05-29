#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import shutil
import sys
from pathlib import Path
from math import gcd
import numpy as np
import soundfile as sf
from scipy.signal import resample_poly

def convert2db(x: float) -> float:
    x = float(x)
    if x <= 0: return float("-inf")
    return 20.0 * np.log10(x)

def clamp_int8(in_val: float):
    out = np.int8(np.clip(in_val, -128, 127))
    err = np.clip(float(out) - in_val, -128, 127) / 3.5
    return out, err

def scc_int8_4c(in_gain: float, wav_path: str | Path, out_name: str, write_bin: bool = False) -> float:
    """Aggiunto parametro out_name per gestire il nome del file di uscita."""
    Fr = 50.0  
    
    y, fs = sf.read(str(wav_path), always_2d=True)
    y = y.astype(np.float64)
    y = y[:, 0] + y[:, 1] if y.shape[1] > 1 else y[:, 0]

    Frs = int(np.trunc(4 * 32 * Fr)) 

    G = gcd(int(fs), Frs)
    y = resample_poly(y, Frs // G, int(fs) // G, window=("kaiser", 5.0))

    y = 2.0 * y / (np.max(y) - np.min(y))
    y = y - (np.max(y) - 1.0)

    y = y * float(in_gain) * 127.0
    l = int(y.shape[0])
    Lpad = 4 * int(np.trunc(l / 4)) + 4
    Y = np.zeros(Lpad, dtype=np.float64)
    Y[:l] = y

    ph1, ph2, ph3, ph4 = Y[0::4], Y[1::4], Y[2::4], Y[3::4]
    n = ph1.shape[0]
    ch1, ch2, ch3, ch4 = [np.zeros(n, dtype=np.int8) for _ in range(4)]

    err = 0.0
    ch1[0], err = clamp_int8(ph1[0])
    ch2[0], err = clamp_int8(ph2[0] - float(ch1[0]) + err)
    ch3[0], err = clamp_int8(ph3[0] - float(ch1[0]) - float(ch2[0]) + err)
    ch4[0], err = clamp_int8(ph4[0] - float(ch1[0]) - float(ch2[0]) - float(ch3[0]) + err)

    for i in range(1, n):
        ch1[i], err = clamp_int8(ph1[i] - float(ch2[i-1]) - float(ch3[i-1]) - float(ch4[i-1]) + err)
        ch2[i], err = clamp_int8(ph2[i] - float(ch1[i])   - float(ch3[i-1]) - float(ch4[i-1]) + err)
        ch3[i], err = clamp_int8(ph3[i] - float(ch1[i])   - float(ch2[i])   - float(ch4[i-1]) + err)
        ch4[i], err = clamp_int8(ph4[i] - float(ch1[i])   - float(ch2[i])   - float(ch3[i])   + err)

    Z = np.kron(ch1.astype(np.float64), np.ones(4)) + \
        np.pad(np.kron(ch2.astype(np.float64), np.ones(4)), (1, 0))[:-1] + \
        np.pad(np.kron(ch3.astype(np.float64), np.ones(4)), (2, 0))[:-2] + \
        np.pad(np.kron(ch4.astype(np.float64), np.ones(4)), (3, 0))[:-3]

    out_db = convert2db(np.sqrt(np.linalg.norm(Y) / np.linalg.norm(Z - Y)))
    
    if write_bin:
        nfad = 16
        fad = np.linspace(1.0, 0.0, nfad + 1)
        for c in [ch1, ch2, ch3, ch4]:
            c[n-(nfad+1):] = (c[n-(nfad+1):].astype(np.float64) * fad).astype(np.int8)

        # Scrive il file usando il nome originale passato
        with open(f"{out_name}.bin", "wb") as f:
            for i in range(0, n - 32, 32):
                for k in [ch1, ch2, ch3, ch4]:
                    f.write(k[i:i+32].tobytes())
    return out_db

def encodeall_4c_50hz(wav_dir="wav", bin_dir="bin"):
    wav_path = Path(wav_dir)
    wav_files = sorted(wav_path.glob("*.wav"))
    
    if not wav_files:
        print(f"Errore: Nessun file .wav trovato in {wav_path.absolute()}")
        return

    nfiles = len(wav_files)
    gains = np.zeros(nfiles)

    for i, file in enumerate(wav_files):
        print(f"\nAnalysing: {file.name}")
        gain, su, sd, snr = 0.21, 1.0, 1.0, 0.0
        while not ((snr > su) and (snr > sd)):
            if su > sd: gain += 0.01
            if su < sd: gain -= 0.01
            su = scc_int8_4c(gain + 0.01, file, file.stem)
            sd = scc_int8_4c(gain - 0.01, file, file.stem)
            snr = scc_int8_4c(gain, file, file.stem)
        gains[i] = gain

    gain_global = 2.0 * np.mean(gains)
    bin_path = Path(bin_dir)
    if bin_path.exists(): shutil.rmtree(bin_path)
    bin_path.mkdir(parents=True)

    with open("SfxTable.asm", "w") as f_sfx, open("DataTable.asm", "w") as f_data:
        for i, file in enumerate(wav_files):
            clean_name = file.stem # Nome senza estensione
            print(f"Final encoding: {file.name} -> {clean_name}.bin (Gain: {gain_global:.4f})")
            
            scc_int8_4c(gain_global, file, clean_name, write_bin=True)
            
            label = f"s_{clean_name}"
            f_sfx.write(f"    dw    06000h + ({label}_START & 01FFFH)\n")
            f_sfx.write(f"    db    {label}_START/02000h-2\n")
            f_sfx.write(f"    dw    ({label}_END - {label}_START+127)/128\n\n")
            f_data.write(f"{label}_START:\n")
            f_data.write(f"    incbin \"bin/{clean_name}.bin\"\n")
            f_data.write(f"{label}_END:\n\n")

    # Spostamento file binari nella cartella di destinazione
    for p in Path(".").glob("*.bin"):
        shutil.move(str(p), bin_path / p.name)
    print(f"\nCompletato! File generati in '{bin_dir}' e tabelle ASM create.")

if __name__ == "__main__":
    # Legge la cartella dal comando terminale
    target_dir = sys.argv[1] if len(sys.argv) > 1 else "wav"
    encodeall_4c_50hz(wav_dir=target_dir)