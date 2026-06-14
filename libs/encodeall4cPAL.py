#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import shutil
from pathlib import Path
from math import gcd
import numpy as np
import soundfile as sf
from scipy.signal import resample_poly

def convert2db(x: float) -> float:
    """Classico convert2db(mag) = 20*log10(mag)."""
    x = float(x)
    if x <= 0: return float("-inf")
    return 20.0 * np.log10(x)

def clamp_int8(in_val: float):
    """Equivalente 1:1 di clamp_int8.m."""
    # out = double(int8(max(min(in ,127),-128)))
    out = np.int8(np.clip(in_val, -128, 127))
    # err = -(in - out)
    err = float(out) - in_val
    # err = max(min(err ,127),-128)/3.5
    err = np.clip(err, -128, 127) / 3.5
    return out, err

def scc_int8_4c(in_gain: float, wav_path: str | Path, num: int, write_bin: bool = False) -> float:
    """Porting rigoroso di scc_int8_4c.m adattato a 50Hz."""
    Fr = 50.0  # Frequenza PAL
    
    y, fs = sf.read(str(wav_path), always_2d=True)
    y = y.astype(np.float64)
    y = y[:, 0] + y[:, 1] if y.shape[1] > 1 else y[:, 0]

    # Frs per 50Hz = 6400Hz (4*32*50)
    Frs = int(np.trunc(4 * 32 * Fr)) 

    G = gcd(int(fs), Frs)
    y = resample_poly(y, Frs // G, int(fs) // G, window=("kaiser", 5.0))

    # Normalizzazione MATLAB
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
    # Inizializzazione primo campione
    ch1[0], err = clamp_int8(ph1[0])
    ch2[0], err = clamp_int8(ph2[0] - float(ch1[0]) + err)
    ch3[0], err = clamp_int8(ph3[0] - float(ch1[0]) - float(ch2[0]) + err)
    ch4[0], err = clamp_int8(ph4[0] - float(ch1[0]) - float(ch2[0]) - float(ch3[0]) + err)

    # Loop principale di feedback
    for i in range(1, n):
        ch1[i], err = clamp_int8(ph1[i] - float(ch2[i-1]) - float(ch3[i-1]) - float(ch4[i-1]) + err)
        ch2[i], err = clamp_int8(ph2[i] - float(ch1[i])   - float(ch3[i-1]) - float(ch4[i-1]) + err)
        ch3[i], err = clamp_int8(ph3[i] - float(ch1[i])   - float(ch2[i])   - float(ch4[i-1]) + err)
        ch4[i], err = clamp_int8(ph4[i] - float(ch1[i])   - float(ch2[i])   - float(ch3[i])   + err)

    # Ricostruzione per calcolo SNR ed Errore
    C1 = np.kron(ch1.astype(np.float64), np.ones(4))
    C2 = np.kron(ch2.astype(np.float64), np.ones(4))
    C3 = np.kron(ch3.astype(np.float64), np.ones(4))
    C4 = np.kron(ch4.astype(np.float64), np.ones(4))
    Z = C1 + np.pad(C2, (1, 0))[:-1] + np.pad(C3, (2, 0))[:-2] + np.pad(C4, (3, 0))[:-3]

    out_db = convert2db(np.sqrt(np.linalg.norm(Y) / np.linalg.norm(Z - Y)))
    max_err = np.max(np.abs((Z - Y) / 256.0))

    # Log a video identici all'originale
    print(f"\nsnr (db)= {out_db}")
    print(f"Max err= {max_err}")

    if write_bin:
        # Fade-out finale
        nfad = 16
        fad = np.linspace(1.0, 0.0, nfad + 1)
        for c in [ch1, ch2, ch3, ch4]:
            c[n-(nfad+1):] = (c[n-(nfad+1):].astype(np.float64) * fad).astype(np.int8)

        with open(f"data{num}.bin", "wb") as f:
            for i in range(0, n - 32, 32):
                for k in [ch1, ch2, ch3, ch4]:
                    f.write(k[i:i+32].tobytes())
    return out_db

def encodeall_4c_50hz(wav_dir="wav", bin_dir="bin"):
    """Loop di batch identico a encodeall_4c.m."""
    wav_path = Path(wav_dir)
    wav_files = sorted(wav_path.glob("*.wav"))
    nfiles = len(wav_files)
    gains = np.zeros(nfiles)

    for i, file in enumerate(wav_files):
        print(f"\nProcessing: {file.name}")
        gain, su, sd, snr = 0.21, 1.0, 1.0, 0.0
        
        while not ((snr > su) and (snr > sd)):
            if su > sd: gain += 0.01
            if su < sd: gain -= 0.01
            
            su = scc_int8_4c(gain + 0.01, file, i)
            sd = scc_int8_4c(gain - 0.01, file, i)
            snr = scc_int8_4c(gain, file, i)
            
            print(gain)
            print(snr)
        
        gains[i] = gain

    gain_global = 2.0 * np.mean(gains)
    
    # Preparazione cartelle
    bin_path = Path(bin_dir)
    if bin_path.exists(): shutil.rmtree(bin_path)
    bin_path.mkdir(parents=True)

    # Passata finale e ASM
    with open("SfxTable.asm", "wb") as f_sfx, open("DataTable.asm", "wb") as f_data:
        for i, file in enumerate(wav_files):
            print(f"\nFinal encoding for {file.name} with global gain {gain_global}")
            scc_int8_4c(gain_global, file, i, write_bin=True)
            
            f_sfx.write(f"         dw     06000h + (s{i}_START & 01FFFH)\r\n".encode())
            f_sfx.write(f"         db     s{i}_START/02000h-2\r\n".encode())
            f_sfx.write(f"         dw     (s{i}_END - s{i}_START+127)/128\r\n\r\n".encode())
            f_data.write(f"s{i}_START:\r\n".encode())
            f_data.write(f"         incbin data{i}.bin \r\n".encode())
            f_data.write(f"s{i}_END:\r\n".encode())

    # Spostamento file
    for p in Path(".").glob("data*.bin"):
        shutil.move(str(p), bin_path / p.name)

if __name__ == "__main__":
    encodeall_4c_50hz()