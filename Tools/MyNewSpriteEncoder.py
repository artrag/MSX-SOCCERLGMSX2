#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
sprites_encoder.py

- Carica immagine 256xNNNN
- Frame 16x16, 16 frame per riga (quindi ogni riga = 256 px)
- Trasparenza:
    * immagine palettizzata (mode 'P' con palette 16 colori): trasparente indice 5 (default) e NON cambia palette
    * immagine RGB 24-bit: quantizza su palette soccerlg (0..15), trasparente indice 0

- Estrae "run" per linea secondo regole:
    * primo pixel non trasparente: se dispari, includi il pari precedente
    * ultimo pixel non trasparente: se pari, includi il dispari successivo
    * merge di run contigue (dopo inclusione dei trasparenti)

- Genera in una cartella output:
    * sprites.asm (ASxxxx/SDCC): sostituisce IYL/IYH con .db #0xFD + op su L/H come richiesto
    * sprites_sjasm.asm (SJASM 0.42): usa IYL/IYH nativi, REPEAT/ENDREPEAT, ORG tab-indented
    * sprites.bin: concatenazione pagine 8KB, org logico 0xA000, padding finale per pagina

- Commenti:
    * all'inizio: stima bytes totale (usati) e bytes totale (padded = pagine*8KB)
    * tabella per frame: code_bytes, data_bytes, cycles_best, cycles_worst (MSX2 Z80+M1)
    * ogni 4 frame/segmento: bytes codice+dati nel segmento (usati) e slack fino a 8KB
"""

import argparse
import os
from dataclasses import dataclass
from typing import List, Tuple, Dict
import numpy as np
from PIL import Image


# ---------------------------------------------------------------------
# Palette soccerlg hard-coded (SCREEN 5 indices 0..15)
# ---------------------------------------------------------------------
PALETTE_HEX = [
    "A349A4",  # 0 TRASP (solo in RGB quantizzato)
    "010101",  # 1
    "ED1C24",  # 2
    "F7D647",  # 3
    "FFFFFF",  # 4
    "000C7B",  # 5
    "00B800",  # 6
    "7F7F7F",  # 7
    "DD9C48",  # 8
    "F6D543",  # 9
    "880015",  # A
    "4CB7DA",  # B
    "FAF70F",  # C
    "FDFDFD",  # D
    "3F48CC",  # E
    "FEFEFE",  # F
]
PALETTE_RGB = np.array([[int(h[0:2], 16), int(h[2:4], 16), int(h[4:6], 16)] for h in PALETTE_HEX], dtype=np.int16)


# ---------------------------------------------------------------------
# Z80 size/cycles (Z80+M1) per le istruzioni usate (Grauw)
# Fonte: http://map.grauw.nl/resources/z80instr.php  (Timing Z80+M1)
# ---------------------------------------------------------------------
@dataclass(frozen=True)
class Enc:
    size: int
    cycles: int

Z80: Dict[str, Enc] = {
    "LD_C_n":    Enc(2, 8),
    "EX_DE_HL":  Enc(1, 5),
    "LD_DE_nn":  Enc(3, 11),
    "ADD_HL_DE": Enc(1, 12),
    "LD_A_H":    Enc(1, 5),
    "RLCA":      Enc(1, 5),
    "AND_n":     Enc(2, 8),
    "OR_n":      Enc(2, 8),
    "DI":        Enc(1, 5),
    "EI":        Enc(1, 5),
    "OUT_n_A":   Enc(2, 12),
    "LD_A_D":    Enc(1, 5),
    "LD_A_E":    Enc(1, 5),
    "LD_D_A":    Enc(1, 5),
    "LD_E_L":    Enc(1, 5),
    "LD_HL_nn":  Enc(3, 11),
    "OUTI":      Enc(2, 18),
    "ADD_A_n":   Enc(2, 8),
    "ADC_A_n":   Enc(2, 8),
    "INC_D":     Enc(1, 5),
    "JP_nn":     Enc(3, 11),
    "JP_NC_nn":  Enc(3, 11),
    "JP_NZ_nn":  Enc(3, 11),
    "RET":       Enc(1, 11),
    "NOP":       Enc(1, 5),

    # Undocumented IY ops (FD prefisso) - size 2, cycles 10 su Z80+M1
    "OR_IYL":    Enc(2, 10),  # FD B5
    "OR_IYH":    Enc(2, 10),  # FD B4
    "LD_A_IYL":  Enc(2, 10),  # FD 7D
    "LD_IYL_A":  Enc(2, 10),  # FD 6F
    "INC_IYL":   Enc(2, 10),  # FD 2C
}

# LD A,n (3E nn): size 2, cycles 8 (Z80+M1)
LD_A_n = Enc(2, 8)

# LD E,A (5F): size 1, cycles 5 (Z80+M1)
LD_E_A = Enc(1, 5)


def lo(x): return x & 0xFF
def hi(x): return (x >> 8) & 0xFF


# ---------------------------------------------------------------------
# RUN model
# ---------------------------------------------------------------------
@dataclass
class Run:
    y: int            # 0..15
    x0: int           # start pixel (pari)
    x1: int           # end pixel (dispari)
    data: bytes       # packed 2px/byte
    start_byte: int   # y*128 + (x0//2)


@dataclass
class Frame:
    idx: int
    runs: List[Run]


@dataclass
class FrameStats:
    code_bytes: int
    data_bytes: int
    cycles_best: int
    cycles_worst: int


@dataclass
class SegmentStats:
    seg_name: str
    used_code: int
    used_data: int
    used_total: int
    slack_to_8k: int


# ---------------------------------------------------------------------
# Helpers label / format
# ---------------------------------------------------------------------
def L_frame(k): return f"Frame{k:04d}"
def L_data(k):  return f"dataFrame{k:04d}"
def L_test(k, n): return f"Testrun{k:04d}_{n:04d}"

def hx8(x):  return f"0x{x & 0xFF:02X}"
def hx16(x): return f"0x{x & 0xFFFF:04X}"


# ---------------------------------------------------------------------
# No getdata(): uso np.array(img)
# ---------------------------------------------------------------------
def load_as_indices(path: str, pal_transp_default: int = 5) -> Tuple[np.ndarray, int, str]:
    """
    Ritorna (idx_img, transparent_index, kind):
      - kind = "P"   : palettizzata (non cambia palette)
      - kind = "RGBQ": RGB quantizzata su palette soccerlg
    """
    img = Image.open(path)
    img.load()

    if img.size[0] != 256:
        raise ValueError(f"Immagine deve essere larga 256, trovata {img.size[0]}")

    if img.mode == "P":
        arr = np.array(img, dtype=np.uint8)  # (H,W) indici
        # NON cambiamo palette in ingresso
        return arr, pal_transp_default, "P"

    rgb = img.convert("RGB")
    arr = np.array(rgb, dtype=np.int16)  # (H,W,3)

    flat = arr.reshape(-1, 3)[:, None, :]              # (N,1,3)
    pal  = PALETTE_RGB[None, :, :]                     # (1,16,3)
    dist = np.sum((flat - pal) * (flat - pal), axis=2) # (N,16)
    idx  = np.argmin(dist, axis=1).astype(np.uint8).reshape(arr.shape[0], arr.shape[1])

    # trasparenza indice 0
    return idx, 0, "RGBQ"


# ---------------------------------------------------------------------
# Estrazione RUN con regole pari/dispari + merge consecutivi
# ---------------------------------------------------------------------
def extract_runs(frame_idx: np.ndarray, transparent: int) -> List[Run]:
    runs: List[Run] = []
    for y in range(16):
        line = frame_idx[y, :]
        segments = []

        x = 0
        while x < 16:
            while x < 16 and int(line[x]) == transparent:
                x += 1
            if x >= 16:
                break

            s_non = x
            while x < 16 and int(line[x]) != transparent:
                x += 1
            e_non = x - 1

            s = s_non if (s_non % 2 == 0) else max(0, s_non - 1)
            e = e_non if (e_non % 2 == 1) else min(15, e_non + 1)
            segments.append((s, e))

        merged = []
        for s, e in segments:
            if not merged:
                merged.append((s, e))
            else:
                ps, pe = merged[-1]
                if s <= pe + 1:
                    merged[-1] = (ps, max(pe, e))
                else:
                    merged.append((s, e))

        for x0, x1 in merged:
            if x0 % 2:
                x0 = max(0, x0 - 1)
            if x1 % 2 == 0:
                x1 = min(15, x1 + 1)

            packed = []
            for xx in range(x0, x1 + 1, 2):
                a = int(line[xx]) & 0xF
                b = int(line[xx + 1]) & 0xF
                packed.append((a << 4) | b)

            data = bytes(packed)
            start_b = y * 128 + (x0 // 2)
            runs.append(Run(y=y, x0=x0, x1=x1, data=data, start_byte=start_b))

    runs.sort(key=lambda r: (r.y, r.x0))
    return runs


# ---------------------------------------------------------------------
# Stima bytes/cicli (best/worst) per frame, coerente con il codice generato
# ---------------------------------------------------------------------
def estimate_frame_stats(frame: Frame) -> FrameStats:
    """
    cycles_best: assume che i JP NC dopo add siano presi subito (carry=0), quindi
                 i blocchi successivi (inc d / wrap / setR14) vengano saltati.
    cycles_worst: assume che i JP NC/JP NZ NON saltino e quindi si esegua l'intero blocco.
    NB: JP condizionali hanno timing costante in tabella (Z80+M1), quindi il delta
    best/worst dipende dagli op che vengono saltati/eseguiti.
    """
    if not frame.runs:
        return FrameStats(code_bytes=Z80["RET"].size, data_bytes=0,
                          cycles_best=Z80["RET"].cycles, cycles_worst=Z80["RET"].cycles)

    code_b = 0
    data_b = 0
    best = 0
    worst = 0

    # Header fisso (prima run prima riga non nulla)
    header_keys = [
        ("LD_C_n", 1),
        ("EX_DE_HL", 1),
        ("LD_DE_nn", 1),
        ("ADD_HL_DE", 1),
        ("LD_A_H", 1),
        ("RLCA", 2),
        ("AND_n", 1),
        ("OR_IYL", 1),
        ("OR_IYH", 1),
        ("DI", 1),
        ("OUT_n_A", 1),
        ("LD_A_n", 1),   # LD A,0x8E
        ("EI", 1),
        ("OUT_n_A", 1),
        ("LD_A_H", 1),
        ("OR_n", 1),
        ("LD_D_A", 1),
        ("LD_E_L", 1),
        ("LD_HL_nn", 1),
    ]
    for k, n in header_keys:
        if k == "LD_A_n":
            code_b += LD_A_n.size * n
            best += LD_A_n.cycles * n
            worst += LD_A_n.cycles * n
        else:
            code_b += Z80[k].size * n
            best += Z80[k].cycles * n
            worst += Z80[k].cycles * n

    # Per ogni run: blocco base + outi*lendata
    for ri, run in enumerate(frame.runs):
        lend = len(run.data)
        data_b += lend

        # base per ogni run
        run_base = [
            ("LD_A_E", 1),
            ("DI", 1),
            ("OUT_n_A", 1),
            ("LD_A_D", 1),
            ("AND_n", 1),
            ("EI", 1),
            ("OUT_n_A", 1),
        ]
        for k, n in run_base:
            code_b += Z80[k].size * n
            best += Z80[k].cycles * n
            worst += Z80[k].cycles * n

        # outi ripetuti
        code_b += Z80["OUTI"].size * lend
        best += Z80["OUTI"].cycles * lend
        worst += Z80["OUTI"].cycles * lend

        # ultimo run: niente blocco offset
        if ri == len(frame.runs) - 1:
            continue

        # offset verso run successivo
        nxt = frame.runs[ri + 1]
        offset = nxt.start_byte - run.start_byte
        if offset < 0:
            raise RuntimeError("Offset negativo: ordinamento run errato")

        if offset <= 255:
            # blocco offset <=255
            # parte sempre eseguita fino a JP NC
            # ld a,e ; add a,#off ; ld e,a ; jp nc,label
            code_b += Z80["LD_A_E"].size + Z80["ADD_A_n"].size + LD_E_A.size + Z80["JP_NC_nn"].size
            best += Z80["LD_A_E"].cycles + Z80["ADD_A_n"].cycles + LD_E_A.cycles + Z80["JP_NC_nn"].cycles
            worst += Z80["LD_A_E"].cycles + Z80["ADD_A_n"].cycles + LD_E_A.cycles + Z80["JP_NC_nn"].cycles

            # parte "saltabile": inc d ; jp nz ; wrap+setR14
            tail = [
                ("INC_D", 1),
                ("JP_NZ_nn", 1),
                ("LD_A_D", 1),
                ("OR_n", 1),
                ("LD_D_A", 1),
                ("INC_IYL", 1),
                ("LD_A_IYL", 1),
                ("AND_n", 1),     # and #1
                ("LD_IYL_A", 1),
                ("OR_IYH", 1),
                ("DI", 1),
                ("OUT_n_A", 1),
                ("LD_A_n", 1),
                ("EI", 1),
                ("OUT_n_A", 1),
            ]
            # best: assume che JP NC sia preso -> tail saltato (0 aggiunte)
            # worst: tail intero eseguito
            for k, n in tail:
                if k == "LD_A_n":
                    code_b += LD_A_n.size * n
                    worst += LD_A_n.cycles * n
                else:
                    code_b += Z80[k].size * n
                    worst += Z80[k].cycles * n

        else:
            off_lo = offset & 0xFF
            off_hi = (offset >> 8) & 0xFF

            # fino al primo JP NC:
            # ld a,e ; add a,lo ; ld e,a ; jp nc,label
            code_b += Z80["LD_A_E"].size + Z80["ADD_A_n"].size + LD_E_A.size + Z80["JP_NC_nn"].size
            best += Z80["LD_A_E"].cycles + Z80["ADD_A_n"].cycles + LD_E_A.cycles + Z80["JP_NC_nn"].cycles
            worst += Z80["LD_A_E"].cycles + Z80["ADD_A_n"].cycles + LD_E_A.cycles + Z80["JP_NC_nn"].cycles

            # parte saltabile (se primo JP NC non preso):
            # ld a,d ; adc a,hi ; ld d,a ; jp nc,label ; + wrap+setR14
            tail2 = [
                ("LD_A_D", 1),
                ("ADC_A_n", 1),
                ("LD_D_A", 1),
                ("JP_NC_nn", 1),
                ("LD_A_D", 1),
                ("OR_n", 1),
                ("LD_D_A", 1),
                ("INC_IYL", 1),
                ("LD_A_IYL", 1),
                ("AND_n", 1),
                ("LD_IYL_A", 1),
                ("OR_IYH", 1),
                ("DI", 1),
                ("OUT_n_A", 1),
                ("LD_A_n", 1),
                ("EI", 1),
                ("OUT_n_A", 1),
            ]
            for k, n in tail2:
                if k == "LD_A_n":
                    code_b += LD_A_n.size * n
                    worst += LD_A_n.cycles * n
                else:
                    code_b += Z80[k].size * n
                    worst += Z80[k].cycles * n
            # best: tail2 saltata del tutto assumendo JP NC preso al primo test

    # ret finale codice frame
    code_b += Z80["RET"].size
    best += Z80["RET"].cycles
    worst += Z80["RET"].cycles

    return FrameStats(code_bytes=code_b, data_bytes=data_b, cycles_best=best, cycles_worst=worst)


# ---------------------------------------------------------------------
# Binary page builder con patch label (per JP/LD HL,nn)
# ---------------------------------------------------------------------
@dataclass
class Patch:
    off: int
    label: str

class PageBin:
    def __init__(self, org: int):
        self.org = org
        self.bytes = bytearray()
        self.labels: Dict[str, int] = {}
        self.patches: List[Patch] = []

    @property
    def pc(self):
        return self.org + len(self.bytes)

    def define(self, name: str):
        self.labels[name] = self.pc

    def emit(self, b: bytes):
        self.bytes.extend(b)

    def emit_u16_placeholder(self, label: str):
        self.patches.append(Patch(len(self.bytes) - 2, label))

    def patch_all(self):
        for p in self.patches:
            addr = self.labels[p.label]
            self.bytes[p.off] = lo(addr)
            self.bytes[p.off + 1] = hi(addr)


# ---------------------------------------------------------------------
# Emissione frame (TESTO + BINARIO) secondo pattern richiesto
# ---------------------------------------------------------------------
def emit_frame_text_and_bin(frame: Frame, binpg: PageBin,
                            out_as: List[str], out_sj: List[str]):
    k = frame.idx
    lf = L_frame(k)
    ld = L_data(k)

    # Label
    out_as.append(f"{lf}:")
    out_sj.append(f"{lf}:")
    binpg.define(lf)

    # frame vuota
    if not frame.runs:
        out_as.append("\tret")
        out_sj.append("\tret")
        binpg.emit(bytes([0xC9]))
        return

    first = frame.runs[0]
    first_line = first.y
    first_xbyte = first.x0 // 2
    de_val = 128 * first_line + first_xbyte

    # ----------------- HEADER (ASxxxx) -----------------
    out_as.extend([
        "\tld c,0x98",
        "\tex de,hl\t\t\t\t; save in HL  (x/2 + y*128) & 0xFFFF",
        f"\tld de,#128*{first_line} + {first_xbyte}",
        "\tadd hl,de\t\t\t\t; could set CF\t(!!)",
        "\tld a,h",
        "\trlca\t\t\t\t\t; to do: use CF from above",
        "\trlca",
        "\tand #3",
        "\t.db #0xFD",
        "\tor a,l\t\t; or \ta,iyl",
        "\t.db #0xFD",
        "\tor a,h\t\t; or \ta,iyh",
        "\tdi",
        "\tout (#0x99),a\t\t\t; set R14",
        "\tld a,#0x8E",
        "\tei",
        "\tout (#0x99),a",
        "\tld a,h",
        "\tor #0xC0",
        "\tld d,a",
        "\tld e,l",
        f"\tld  hl,#{ld}",
    ])

    # ----------------- HEADER (SJASM) -----------------
    out_sj.extend([
        "\tld c,0x98",
        "\tex de,hl\t\t\t\t; save in HL  (x/2 + y*128) & 0xFFFF",
        f"\tld de,128*{first_line} + {first_xbyte}",
        "\tadd hl,de\t\t\t\t; could set CF\t(!!)",
        "\tld a,h",
        "\trlca",
        "\trlca",
        "\tand 3",
        "\tor a,iyl",
        "\tor a,iyh",
        "\tdi",
        "\tout (0x99),a\t\t\t; set R14",
        "\tld a,0x8E",
        "\tei",
        "\tout (0x99),a",
        "\tld a,h",
        "\tor 0xC0",
        "\tld d,a",
        "\tld e,l",
        f"\tld hl,{ld}",
    ])

    # ----------------- BIN HEADER -----------------
    # LD C,98
    binpg.emit(bytes([0x0E, 0x98]))
    # EX DE,HL
    binpg.emit(bytes([0xEB]))
    # LD DE, nn
    binpg.emit(bytes([0x11, lo(de_val), hi(de_val)]))
    # ADD HL,DE
    binpg.emit(bytes([0x19]))
    # LD A,H
    binpg.emit(bytes([0x7C]))
    # RLCA x2
    binpg.emit(bytes([0x07, 0x07]))
    # AND 3
    binpg.emit(bytes([0xE6, 0x03]))
    # OR IYL / OR IYH
    binpg.emit(bytes([0xFD, 0xB5, 0xFD, 0xB4]))
    # DI / OUT (99),A / LD A,8E / EI / OUT (99),A
    binpg.emit(bytes([0xF3, 0xD3, 0x99, 0x3E, 0x8E, 0xFB, 0xD3, 0x99]))
    # LD A,H / OR C0 / LD D,A / LD E,L
    binpg.emit(bytes([0x7C, 0xF6, 0xC0, 0x57, 0x5D]))
    # LD HL, dataFrame (patch)
    binpg.emit(bytes([0x21, 0x00, 0x00]))
    binpg.emit_u16_placeholder(ld)

    # ----------------- RUNS -----------------
    runs = frame.runs
    for n, run in enumerate(runs):
        testlbl = L_test(k, n)
        lend = len(run.data)

        # Text run code
        out_as.extend([
            "\tld a,e",
            "\tdi",
            "\tout (#0x99),a",
            "\tld  a,d",
            "\tand #7F",
            "\tei",
            "\tout (#0x99),a",
            f"\t.rept #{lend}",
            "\touti",
            "\t.endm",
        ])
        out_sj.extend([
            "\tld a,e",
            "\tdi",
            "\tout (0x99),a",
            "\tld  a,d",
            "\tand 0x7F",
            "\tei",
            "\tout (0x99),a",
            f"\tREPEAT {lend}",
            "\touti",
            "\tENDREPEAT",
        ])

        # Bin run base
        binpg.emit(bytes([0x7B, 0xF3, 0xD3, 0x99, 0x7A, 0xE6, 0x7F, 0xFB, 0xD3, 0x99]))
        # OUTI * lend
        for _ in range(lend):
            binpg.emit(bytes([0xED, 0xA3]))

        # ultimo run -> niente offset block
        if n == len(runs) - 1:
            break

        nxt = runs[n + 1]
        offset = nxt.start_byte - run.start_byte
        if offset < 0:
            raise RuntimeError("Offset negativo: ordinamento run errato")

        if offset <= 255:
            out_as.extend([
                "\tld a,e",
                f"\tadd a,#{offset}",
                "\tld e,a",
                f"\tjp nc,{testlbl}",
                "\tinc d",
                f"\tjp  nz,{testlbl}",
                "\tld  a,d",
                "\tor #0xC0",
                "\tld  d,a",
                "\t.db #0xFD",
                "\tinc l\t\t; inc \tiyl",
                "\t.db #0xFD",
                "\tld  a,l\t\t; ld \ta,iyl",
                "\tand #1",
                "\t.db #0xFD",
                "\tld  l,a\t\t; ld \tiyl,a",
                "\t.db #0xFD",
                "\tor  a,h\t\t; or \ta,iyh",
                "\tdi",
                "\tout (#0x99),a",
                "\tld a,#0x8E",
                "\tei",
                "\tout (#0x99),a",
                f"{testlbl}:",
            ])

            out_sj.extend([
                "\tld a,e",
                f"\tadd a,{offset}",
                "\tld e,a",
                f"\tjp nc,{testlbl}",
                "\tinc d",
                f"\tjp  nz,{testlbl}",
                "\tld  a,d",
                "\tor 0xC0",
                "\tld  d,a",
                "\tinc iyl",
                "\tld  a,iyl",
                "\tand 1",
                "\tld  iyl,a",
                "\tor  a,iyh",
                "\tdi",
                "\tout (0x99),a",
                "\tld a,0x8E",
                "\tei",
                "\tout (0x99),a",
                f"{testlbl}:",
            ])

            # BIN offset<=255:
            # ld a,e ; add a,off ; ld e,a ; jp nc,test
            binpg.emit(bytes([0x7B, 0xC6, offset & 0xFF, 0x5F, 0xD2, 0x00, 0x00]))
            binpg.emit_u16_placeholder(testlbl)
            # inc d ; jp nz,test
            binpg.emit(bytes([0x14, 0xC2, 0x00, 0x00]))
            binpg.emit_u16_placeholder(testlbl)
            # ld a,d ; or c0 ; ld d,a
            binpg.emit(bytes([0x7A, 0xF6, 0xC0, 0x57]))
            # inc iyl ; ld a,iyl ; and 1 ; ld iyl,a ; or a,iyh
            binpg.emit(bytes([0xFD, 0x2C, 0xFD, 0x7D, 0xE6, 0x01, 0xFD, 0x6F, 0xFD, 0xB4]))
            # di ; out 99 ; ld a,8E ; ei ; out 99
            binpg.emit(bytes([0xF3, 0xD3, 0x99, 0x3E, 0x8E, 0xFB, 0xD3, 0x99]))

            binpg.define(testlbl)

        else:
            off_lo = offset & 0xFF
            off_hi = (offset >> 8) & 0xFF

            out_as.extend([
                "\tld a,e",
                f"\tadd a,#{off_lo}",
                "\tld e,a",
                f"\tjp nc,{testlbl}",
                "\tld a,d",
                f"\tadc a,#{off_hi}",
                "\tld  d,a",
                f"\tjp nc,{testlbl}",
                "\tld  a,d",
                "\tor #0xC0",
                "\tld  d,a",
                "\t.db #0xFD",
                "\tinc l\t\t; inc \tiyl",
                "\t.db #0xFD",
                "\tld  a,l\t\t; ld \ta,iyl",
                "\tand #1",
                "\t.db #0xFD",
                "\tld  l,a\t\t; ld \tiyl,a",
                "\t.db #0xFD",
                "\tor  a,h\t\t; or \ta,iyh",
                "\tdi",
                "\tout (#0x99),a",
                "\tld a,#0x8E",
                "\tei",
                "\tout (#0x99),a",
                f"{testlbl}:",
            ])

            out_sj.extend([
                "\tld a,e",
                f"\tadd a,{off_lo}",
                "\tld e,a",
                f"\tjp nc,{testlbl}",
                "\tld a,d",
                f"\tadc a,{off_hi}",
                "\tld  d,a",
                f"\tjp nc,{testlbl}",
                "\tld  a,d",
                "\tor 0xC0",
                "\tld  d,a",
                "\tinc iyl",
                "\tld  a,iyl",
                "\tand 1",
                "\tld  iyl,a",
                "\tor  a,iyh",
                "\tdi",
                "\tout (0x99),a",
                "\tld a,0x8E",
                "\tei",
                "\tout (0x99),a",
                f"{testlbl}:",
            ])

            # BIN offset>255:
            # ld a,e ; add a,lo ; ld e,a ; jp nc,test
            binpg.emit(bytes([0x7B, 0xC6, off_lo, 0x5F, 0xD2, 0x00, 0x00]))
            binpg.emit_u16_placeholder(testlbl)
            # ld a,d ; adc a,hi ; ld d,a ; jp nc,test
            binpg.emit(bytes([0x7A, 0xCE, off_hi, 0x57, 0xD2, 0x00, 0x00]))
            binpg.emit_u16_placeholder(testlbl)
            # ld a,d ; or c0 ; ld d,a
            binpg.emit(bytes([0x7A, 0xF6, 0xC0, 0x57]))
            # inc iyl ; ld a,iyl ; and 1 ; ld iyl,a ; or a,iyh
            binpg.emit(bytes([0xFD, 0x2C, 0xFD, 0x7D, 0xE6, 0x01, 0xFD, 0x6F, 0xFD, 0xB4]))
            # di ; out 99 ; ld a,8E ; ei ; out 99
            binpg.emit(bytes([0xF3, 0xD3, 0x99, 0x3E, 0x8E, 0xFB, 0xD3, 0x99]))

            binpg.define(testlbl)

    # RET fine codice frame
    out_as.append("\tret")
    out_sj.append("\tret")
    binpg.emit(bytes([0xC9]))

    # DATA block
    out_as.append(f"{ld}:")
    out_sj.append(f"{ld}:")
    binpg.define(ld)

    for run in frame.runs:
        data_txt = ",".join(hx8(b) for b in run.data)
        out_as.append(f"\t.db {data_txt}")
        out_sj.append(f"\tdb {data_txt}")
        binpg.emit(run.data)


# ---------------------------------------------------------------------
# Build output (sprites.asm + sprites_sjasm.asm + sprites.bin) + commenti richiesti
# ---------------------------------------------------------------------
def build_all(frames: List[Frame], outdir: str, pad_byte: int = 0xFF) -> Tuple[List[FrameStats], List[SegmentStats]]:
    os.makedirs(outdir, exist_ok=True)

    ORG = 0xA000
    PAGE = 0x2000  # 8KB
    FRAMES_PER_SEG = 4

    # Pre-calc stats per frame (per tabella iniziale)
    frame_stats: List[FrameStats] = [estimate_frame_stats(fr) for fr in frames]

    # Output lines (generiamo tutto e poi prependiamo header/tabella)
    as_lines: List[str] = []
    sj_lines: List[str] = []

    bin_all = bytearray()

    segments: List[SegmentStats] = []

    seg_count = (len(frames) + FRAMES_PER_SEG - 1) // FRAMES_PER_SEG
    sj_first = True

    # Per calcolo bytes "usati" del file (somma segmenti)
    total_used_code = 0
    total_used_data = 0
    total_used_total = 0

    for si in range(seg_count):
        seg_name = f"_SEG{0x100 + si:03X}"
        base = si * FRAMES_PER_SEG

        # Jump table (sempre presente) = jp/nop/jp/nop/jp/nop/jp/ret
        # bytes codice jump table:
        jump_code_bytes = 3 + 1 + 3 + 1 + 3 + 1 + 3 + 1  # 16
        jump_code_cycles_best = 0  # non richiesto qui

        # Segment stats accum
        seg_code = jump_code_bytes
        seg_data = 0

        # ---------------- ASxxxx segment header ----------------
        as_lines.append(f"\t.area {seg_name}")
        as_lines.append("")
        as_lines.append(f"\t.org {hx16(ORG)}")
        as_lines.append("")

        # ---------------- SJASM segment header ----------------
        if not sj_first:
            sj_lines.append("\tALIGN 0x2000")
        sj_first = False
        sj_lines.append(f"\tORG {hx16(ORG)}")
        sj_lines.append("")

        # Inseriremo un commento “segment summary” subito dopo la jump table;
        # prima però emettiamo la jump table nel testo.

        # Jump table testo
        as_lines.extend([
            f"\tjp {L_frame(base+0)}",
            "\tnop",
            f"\tjp {L_frame(base+1)}",
            "\tnop",
            f"\tjp {L_frame(base+2)}",
            "\tnop",
            f"\tjp {L_frame(base+3)}",
            "\tret",
            "",
        ])
        sj_lines.extend([
            f"\tjp {L_frame(base+0)}",
            "\tnop",
            f"\tjp {L_frame(base+1)}",
            "\tnop",
            f"\tjp {L_frame(base+2)}",
            "\tnop",
            f"\tjp {L_frame(base+3)}",
            "\tret",
            "",
        ])

        # BIN page
        binpg = PageBin(ORG)

        def emit_jp_placeholder(lbl: str):
            binpg.emit(bytes([0xC3, 0x00, 0x00]))
            binpg.emit_u16_placeholder(lbl)

        emit_jp_placeholder(L_frame(base+0)); binpg.emit(bytes([0x00]))
        emit_jp_placeholder(L_frame(base+1)); binpg.emit(bytes([0x00]))
        emit_jp_placeholder(L_frame(base+2)); binpg.emit(bytes([0x00]))
        emit_jp_placeholder(L_frame(base+3)); binpg.emit(bytes([0xC9]))

        # Frame emission
        for i in range(FRAMES_PER_SEG):
            fi = base + i
            if fi >= len(frames):
                break

            fs = frame_stats[fi]
            seg_code += fs.code_bytes
            seg_data += fs.data_bytes

            # Commento per frame (come richiesto)
            # - bytes codice assemblato
            # - cicli (best e worst: riportiamo entrambi, perché altrimenti dipende dal carry)
            cmt = (f"; {L_frame(fi)}: code_bytes={fs.code_bytes} data_bytes={fs.data_bytes} "
                   f"cycles_best={fs.cycles_best} cycles_worst={fs.cycles_worst}")
            as_lines.append(cmt)
            sj_lines.append(cmt)

            # Emissione reale testo + bin
            as_f: List[str] = []
            sj_f: List[str] = []
            emit_frame_text_and_bin(frames[fi], binpg, as_f, sj_f)
            as_lines.extend(as_f)
            as_lines.append("")
            sj_lines.extend(sj_f)
            sj_lines.append("")

        # Patch e padding 8KB
        binpg.patch_all()
        if len(binpg.bytes) > PAGE:
            raise RuntimeError(f"Segmento {seg_name} supera 8KB: {len(binpg.bytes)} bytes")
        slack = PAGE - len(binpg.bytes)
        binpg.bytes.extend(bytes([pad_byte]) * slack)
        bin_all.extend(binpg.bytes)

        seg_total = seg_code + seg_data
        total_used_code += seg_code
        total_used_data += seg_data
        total_used_total += (seg_code + seg_data)

        segments.append(SegmentStats(
            seg_name=seg_name,
            used_code=seg_code,
            used_data=seg_data,
            used_total=seg_total,
            slack_to_8k=PAGE - seg_total if PAGE >= seg_total else 0
        ))

        # Nota segmento (ogni 4 frame) richiesta
        seg_note = (f"; SEGMENT {seg_name}: used_code={seg_code} used_data={seg_data} "
                    f"used_total={seg_total} bytes  (mapper_page=8192, slack={PAGE - seg_total})")
        # Inseriamo la nota dopo la jump table (qui: subito dopo il blocco vuoto già inserito)
        # ma per semplicità la appendiamo qui (è comunque “ogni 4 frame” nello stesso segmento).
        as_lines.append(seg_note)
        as_lines.append("")
        sj_lines.append(seg_note)
        sj_lines.append("")

    # ---------------- Header + tabella iniziale ----------------
    total_pages = len(segments)
    total_padded = total_pages * 0x2000

    header_as: List[str] = []
    header_as.append("; sprites.asm (ASxxxx/SDCC) - generato da sprites_encoder.py")
    header_as.append("; Stime basate su tabella Z80+M1 (Grauw): http://map.grauw.nl/resources/z80instr.php")
    header_as.append(f"; STIMA bytes totali USATI (codice+dati, senza padding): {total_used_total}")
    header_as.append(f"; STIMA bytes totali PADDED (pagine*8KB): {total_padded}  (pagine={total_pages})")
    header_as.append(";")
    header_as.append("; TABELLA FRAME (code_bytes, data_bytes, cycles_best, cycles_worst)")
    header_as.append("; frame  code_bytes  data_bytes  cycles_best  cycles_worst")
    for i, fs in enumerate(frame_stats):
        header_as.append(f"; {i:04d}   {fs.code_bytes:9d}  {fs.data_bytes:9d}  {fs.cycles_best:10d}  {fs.cycles_worst:11d}")
    header_as.append(";")
    header_as.append("; TABELLA SEGMENTI (ogni 4 frame)")
    header_as.append("; segment  used_code  used_data  used_total  slack_to_8k")
    for ss in segments:
        header_as.append(f"; {ss.seg_name}  {ss.used_code:8d}  {ss.used_data:8d}  {ss.used_total:9d}  {ss.slack_to_8k:10d}")
    header_as.append("")

    header_sj: List[str] = []
    header_sj.append("; sprites_sjasm.asm (SJASM 0.42) - generato da sprites_encoder.py")
    header_sj.append("; Labels in colonna 1; istruzioni/direttive TAB-indented (ORG incluso).")
    header_sj.append("; Stime basate su tabella Z80+M1 (Grauw): http://map.grauw.nl/resources/z80instr.php")
    header_sj.append(f"; STIMA bytes totali USATI (codice+dati, senza padding): {total_used_total}")
    header_sj.append(f"; STIMA bytes totali PADDED (pagine*8KB): {total_padded}  (pagine={total_pages})")
    header_sj.append(";")
    header_sj.append("; TABELLA FRAME (code_bytes, data_bytes, cycles_best, cycles_worst)")
    header_sj.append("; frame  code_bytes  data_bytes  cycles_best  cycles_worst")
    for i, fs in enumerate(frame_stats):
        header_sj.append(f"; {i:04d}   {fs.code_bytes:9d}  {fs.data_bytes:9d}  {fs.cycles_best:10d}  {fs.cycles_worst:11d}")
    header_sj.append(";")
    header_sj.append("; TABELLA SEGMENTI (ogni 4 frame)")
    header_sj.append("; segment  used_code  used_data  used_total  slack_to_8k")
    for ss in segments:
        header_sj.append(f"; {ss.seg_name}  {ss.used_code:8d}  {ss.used_data:8d}  {ss.used_total:9d}  {ss.slack_to_8k:10d}")
    header_sj.append("")

    as_lines = header_as + as_lines
    sj_lines = header_sj + sj_lines

    # Scrittura file
    path_as = os.path.join(outdir, "sprites.asm")
    path_sj = os.path.join(outdir, "sprites_sjasm.asm")
    path_bn = os.path.join(outdir, "sprites.bin")

    with open(path_as, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(as_lines) + "\n")
    with open(path_sj, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(sj_lines) + "\n")
    with open(path_bn, "wb") as f:
        f.write(bin_all)

    return frame_stats, segments


# ---------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("input", help="Immagine 256xNNNN (P 16 colori o RGB)")
    ap.add_argument("outdir", help="Cartella output")
    ap.add_argument("--transparent", type=int, default=5,
                    help="Indice trasparente per immagini palettizzate (default 5).")
    ap.add_argument("--pad", type=lambda x: int(x, 0), default=0xFF,
                    help="Byte padding pagine BIN (default 0xFF). es: --pad 0xFF")
    args = ap.parse_args()

    idx_img, transp, kind = load_as_indices(args.input, pal_transp_default=args.transparent)

    if idx_img.shape[1] != 256:
        raise ValueError("Larghezza deve essere 256")
    if idx_img.shape[0] % 16 != 0:
        raise ValueError("Altezza deve essere multipla di 16")

    transparent = args.transparent if kind == "P" else 0

    rows = idx_img.shape[0] // 16
    total_frames = rows * 16

    frames: List[Frame] = []
    for fy in range(rows):
        for fx in range(16):
            k = fy * 16 + fx
            fr = idx_img[fy*16:fy*16+16, fx*16:fx*16+16]
            runs = extract_runs(fr, transparent)
            frames.append(Frame(idx=k, runs=runs))

    build_all(frames, args.outdir, pad_byte=args.pad)

    print("OK")
    print("Mode:", kind, "transparent:", transparent)
    print("Frames:", total_frames)
    print("Output:", args.outdir)
    print(" - sprites.asm")
    print(" - sprites_sjasm.asm")
    print(" - sprites.bin")


if __name__ == "__main__":
    main()