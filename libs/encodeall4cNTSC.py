#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Porting MATLAB:
 - scc_int8_4c.m  (encoder 4 canali)
 - clamp_int8.m   (quantizzatore con feedback errore)
 - encodeall_4c.m (batch su wav/*.wav + tabelle asm + move bin + sjasm)

Dipendenze:
  pip install numpy scipy soundfile matplotlib

Uso rapido:
  python encode_scc_4c.py

Oppure da codice:
  from encode_scc_4c import encodeall_4c
  encodeall_4c(wav_dir="wav", bin_dir="bin", run_assembler=True)
"""

from __future__ import annotations

import os
import glob
import shutil
import subprocess
from pathlib import Path
from math import gcd

import numpy as np
import soundfile as sf
from scipy.signal import resample_poly

# plotting (solo se richiesto)
import matplotlib.pyplot as plt


# -----------------------------
# Utils MATLAB-like
# -----------------------------

def convert2db(x: float) -> float:
    """Classico convert2db(mag) = 20*log10(mag)."""
    x = float(x)
    if x <= 0:
        return float("-inf")
    return 20.0 * np.log10(x)


def clamp_int8(x: float):
    """
    Equivalente 1:1 di:

      function [out,err] = clamp_int8(in)
      out = double(int8(max(min(in ,127),-128)));
      err = -(in - out);
      err = max(min(err ,127),-128)/3.5;
      end
    """
    x = float(x)

    # out = double(int8(max(min(in ,127),-128)));
    x_clamped = max(min(x, 127.0), -128.0)
    # int8 MATLAB: trunc toward 0 (dopo saturazione)
    out = np.int8(int(x_clamped))

    # err = -(in - out)  => out - in
    err = float(out) - x

    # clamp err in [-128,127] then /3.5
    err = max(min(err, 127.0), -128.0) / 3.5

    return out, err


# -----------------------------
# Encoder: scc_int8_4c
# -----------------------------

def scc_int8_4c(
    in_gain: float,
    wav_path: str | Path,
    num: int,
    *,
    plot: bool = True,
    write_temp_wav: bool = True,
    write_bin: bool = True,
    temp_wav_prefix: str = "temp_",
) -> float:
    """
    Porting di scc_int8_4c.m.
    Ritorna SNR in dB (out).

    Parametri extra:
      plot:         se True, produce i 3 grafici come MATLAB
      write_temp_wav: se True, scrive il WAV temp_... a Fs=Frs (24-bit)
      write_bin:    se True, scrive data<num>.bin
    """

    wav_path = Path(wav_path)

    Fr = 60 / 1.001
    fc = (455 / 2) * (525 / 2) * (60 / 1.001)

    # audioread
    y, fs = sf.read(str(wav_path), always_2d=True)
    y = y.astype(np.float64)

    # stereo -> mono (somma canali, come MATLAB)
    if y.shape[1] > 1:
        y = y[:, 0] + y[:, 1]
    else:
        y = y[:, 0]

    # Frs = fix(4*32*Fr)
    Frs = int(np.trunc(4 * 32 * Fr))

    # P/Q con gcd
    G = gcd(int(fs), int(Frs))
    P = int(Frs // G)
    Q = int(fs // G)

    # resample(Y,P,Q)
    y = resample_poly(y, P, Q, window=("kaiser", 5.0))

    # normalizzazione come MATLAB
    y = 2.0 * y / (np.max(y) - np.min(y))
    y = y - (np.max(y) - 1.0)

    # audiowrite temp_... 24-bit
    if write_temp_wav:
        root = wav_path.stem
        temp_name = f"{temp_wav_prefix}{root}_tst_7.6KHz.wav"
        sf.write(temp_name, y, Frs, subtype="PCM_24")

    # scala e padding
    y = y * float(in_gain) * 127.0
    l = int(y.shape[0])

    # Z = zeros(4*fix(l/4)+4,1); Z(1:l)=Y;
    Lpad = 4 * int(np.trunc(l / 4)) + 4
    Y = np.zeros(Lpad, dtype=np.float64)
    Y[:l] = y

    # fasi
    ph1 = Y[0::4]
    ph2 = Y[1::4]
    ph3 = Y[2::4]
    ph4 = Y[3::4]

    n = ph1.shape[0]

    ch1 = np.zeros(n, dtype=np.int8)
    ch2 = np.zeros(n, dtype=np.int8)
    ch3 = np.zeros(n, dtype=np.int8)
    ch4 = np.zeros(n, dtype=np.int8)

    # inizializzazione come MATLAB
    err = 0.0
    ch1[0], err = clamp_int8(ph1[0])
    ch2[0], err = clamp_int8(ph2[0] - float(ch1[0]) + err)
    ch3[0], err = clamp_int8(ph3[0] - float(ch1[0]) - float(ch2[0]) + err)
    ch4[0], err = clamp_int8(ph4[0] - float(ch1[0]) - float(ch2[0]) - float(ch3[0]) + err)

    # loop: for i=2:size(Y)/4  => i=1..n-1
    for i in range(1, n):
        ch1[i], err = clamp_int8(ph1[i] - float(ch2[i - 1]) - float(ch3[i - 1]) - float(ch4[i - 1]) + err)
        ch2[i], err = clamp_int8(ph2[i] - float(ch1[i])     - float(ch3[i - 1]) - float(ch4[i - 1]) + err)
        ch3[i], err = clamp_int8(ph3[i] - float(ch1[i])     - float(ch2[i])     - float(ch4[i - 1]) + err)
        ch4[i], err = clamp_int8(ph4[i] - float(ch1[i])     - float(ch2[i])     - float(ch3[i])     + err)

    # plot canali
    if plot:
        t = np.arange(n)
        plt.figure()
        plt.plot(t, ch1, "b", label="ch1")
        plt.plot(t, ch2, "r", label="ch2")
        plt.plot(t, ch3, "g", label="ch3")
        plt.plot(t, ch4, "c", label="ch4")
        plt.legend()
        plt.title("SCC 4 canali (int8)")

    # ricostruzione (kron + shift)
    C1 = np.kron(ch1.astype(np.float64), np.array([1, 1, 1, 1], dtype=np.float64))
    C2 = np.kron(ch2.astype(np.float64), np.array([1, 1, 1, 1], dtype=np.float64))
    C3 = np.kron(ch3.astype(np.float64), np.array([1, 1, 1, 1], dtype=np.float64))
    C4 = np.kron(ch4.astype(np.float64), np.array([1, 1, 1, 1], dtype=np.float64))

    Z = (
        C1
        + np.concatenate(([0.0], C2[:-1]))
        + np.concatenate(([0.0, 0.0], C3[:-2]))
        + np.concatenate(([0.0, 0.0, 0.0], C4[:-3]))
    )

    if plot:
        plt.figure()
        plt.title("Blue: original, Red: replayer")
        plt.plot(np.arange(Y.size), Y, "b", label="Y")
        plt.plot(np.arange(Z.size), Z, "r", label="Z")
        plt.legend()

        plt.figure()
        plt.title("Error")
        plt.plot(np.arange(Y.size), (Z - Y))

    # SNR e max err
    nume = np.linalg.norm(Y)
    deno = np.linalg.norm(Z - Y)
    out_db = convert2db(np.sqrt(nume / deno))

    print("\n")
    print(f"snr (db)= {out_db}")
    print(f"Max err= {np.max(np.abs((Z - Y) / 256.0))}")

    # fade-out finale
    c1 = ch1.astype(np.float64)
    c2 = ch2.astype(np.float64)
    c3 = ch3.astype(np.float64)
    c4 = ch4.astype(np.float64)

    nfad = 16
    fad = np.linspace(1.0, 0.0, nfad + 1)  # [1:-1/nfad:0]'
    start = c1.size - (nfad + 1)
    c1[start:] *= fad
    c2[start:] *= fad
    c3[start:] *= fad
    c4[start:] *= fad

    # scrittura binario a blocchi da 32 per canale
    if write_bin:
        fname = f"data{num}.bin"
        with open(fname, "wb") as f:
            # MATLAB: for i=1:32:(size(ch1,1)-32)
            for i in range(0, c1.size - 32, 32):
                f.write(np.asarray(c1[i:i + 32], dtype=np.int8).tobytes())
                f.write(np.asarray(c2[i:i + 32], dtype=np.int8).tobytes())
                f.write(np.asarray(c3[i:i + 32], dtype=np.int8).tobytes())
                f.write(np.asarray(c4[i:i + 32], dtype=np.int8).tobytes())

    # calcoli finali (come MATLAB; non indispensabili)
    ft = Fr * 32
    _P_period = int(np.trunc(fc / ft - 1))

    return out_db


# -----------------------------
# Batch: encodeall_4c
# -----------------------------

def encodeall_4c(
    wav_dir: str | Path = "wav",
    bin_dir: str | Path = "bin",
    *,
    initial_gain: float = 0.21,
    gstep: float = 0.01,
    run_assembler: bool = False,
    assembler_path: str | Path = r".\sjasm42c\sjasm",
    asm_source: str | Path = "SccReplayer4c.asm",
    max_iters_per_file: int = 200,
):
    """
    Porting di encodeall_4c.m + integrazione con scc_int8_4c.

    - Scansiona wav_dir/*.wav
    - Cerca gain per file con la stessa logica MATLAB
    - Poi usa gain = 2*mean(gains) e re-encoda tutti i file
    - Stampa i risultati
    - Genera SfxTable.asm e DataTable.asm (CRLF)
    - Elimina data*.mat (se presenti)
    - Sposta data*.bin in ./bin
    - (opzionale) lancia sjasm con include -i./bin
    """
    wav_dir = Path(wav_dir)
    bin_dir = Path(bin_dir)
    bin_dir.mkdir(parents=True, exist_ok=True)

    wav_files = sorted(wav_dir.glob("*.wav"))
    nfiles = len(wav_files)

    if nfiles == 0:
        raise FileNotFoundError(f"Nessun WAV trovato in {wav_dir}")

    # arrays come MATLAB
    snr_new = np.zeros(nfiles, dtype=np.float64)
    gains = np.zeros(nfiles, dtype=np.float64)

    # --- prima passata: ricerca gain per file
    for i, wav_path in enumerate(wav_files, start=1):
        print(wav_path.name)

        gain = float(initial_gain)
        su = 1.0
        sd = 1.0
        snr = 0.0

        it = 0
        while not ((snr > su) and (snr > sd)):
            it += 1
            if it > max_iters_per_file:
                # evitare loop infinito in casi patologici
                break

            if su > sd:
                gain = gain + gstep
            if su < sd:
                gain = gain - gstep

            # MATLAB: tre chiamate e close all
            su = scc_int8_4c(gain + gstep, wav_path, i - 1,
                             plot=False, write_temp_wav=False, write_bin=False)
            plt.close("all")

            sd = scc_int8_4c(gain - gstep, wav_path, i - 1,
                             plot=False, write_temp_wav=False, write_bin=False)
            plt.close("all")

            snr = scc_int8_4c(gain, wav_path, i - 1,
                              plot=False, write_temp_wav=False, write_bin=False)
            plt.close("all")

            print(gain)
            print(snr)

        snr_new[i - 1] = snr
        gains[i - 1] = gain

    # --- gain globale: gain = 2*mean(gains)
    gain_global = 2.0 * float(np.mean(gains))

    # --- seconda passata: encoding finale con gain globale e scrittura bin
    for i, wav_path in enumerate(wav_files, start=1):
        print(wav_path.name)
        snr_new[i - 1] = scc_int8_4c(gain_global, wav_path, i - 1,
                                     plot=False, write_temp_wav=True, write_bin=True)
        plt.close("all")

    # stampa risultati
    for i, wav_path in enumerate(wav_files, start=1):
        print(wav_path.name)
        print(snr_new[i - 1])

    # --- genera SfxTable.asm (CRLF come MATLAB: 13 10)
    with open("SfxTable.asm", "wb") as f:
        for i in range(1, nfiles + 1):
            s = str(i - 1)
            f.write(f"         dw     06000h + (s{s}_START & 01FFFH)\r\n".encode("ascii"))
            f.write(f"         db     s{s}_START/02000h-2\r\n".encode("ascii"))
            f.write(f"         dw     (s{s}_END - s{s}_START+127)/128\r\n".encode("ascii"))
            f.write(b"    \r\n")

    # --- genera DataTable.asm
    with open("DataTable.asm", "wb") as f:
        for i in range(1, nfiles + 1):
            s = str(i - 1)
            f.write(f"s{s}_START:\r\n".encode("ascii"))
            f.write(f"         incbin data{s}.bin \r\n".encode("ascii"))
            f.write(f"s{s}_END:\r\n".encode("ascii"))

    # --- delete data*.mat (se esistono)
    for p in Path(".").glob("data*.mat"):
        try:
            p.unlink()
        except OSError:
            pass

    # --- movefile('data*.bin','.\bin')
    for p in Path(".").glob("data*.bin"):
        shutil.move(str(p), str(bin_dir / p.name))

    # --- opzionale: lancia sjasm (equivalente a: !.\sjasm42c\sjasm -i.\bin SccReplayer4c.asm)
    if run_assembler:
        asm_source = Path(asm_source)
        assembler_path = Path(assembler_path)

        # include path in stile sjasm: -i<path>
        include_arg = f"-i{str(bin_dir)}"

        cmd = [str(assembler_path), include_arg, str(asm_source)]
        print("Running assembler:", " ".join(cmd))
        subprocess.run(cmd, check=True)

    return gain_global, snr_new, gains


if __name__ == "__main__":
    # Esegui il batch come MATLAB (senza assemblare di default)
    encodeall_4c(
        wav_dir="wav",
        bin_dir="bin",
        run_assembler=False,   # metti True se vuoi chiamare sjasm
        assembler_path=r".\sjasm42c\sjasm",
        asm_source="SccReplayer4c.asm",
    )
