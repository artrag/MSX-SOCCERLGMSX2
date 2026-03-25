#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
PNG 256xNNNN (palette 16 colori) -> ASM Z80 (ASxxxx + SJASM 0.42 classico) con codifica a RUN.

- Frame 16x16, 16 frame per riga (256 px).
- Trasparenza su indice palette (default 5).
- Analisi run per riga con regole pari/dispari e merge run consecutive.
- Output: 1 file ASM ogni 8 frame:
    soccerlg_s100b3.asm, soccerlg_s101b3.asm, ...

ASxxxx:
- .area _SEG100, .globl _ScreenPos
- .rept #lendatarunKKKK_NNNN ... outi ... .endm
- opcodes non ufficiali via .db

SJASM 0.42 classico:
- REPEAT/ENDREPEAT
- DB per dati
- opcodes non ufficiali supportati (ixl)
- niente .area/.globl/.db in stile ASxxxx; solo commenti + codice

NOTE:
- Le label lendatarun vengono rese univoche come lendatarunKKKK_NNNN per evitare collisioni tra frame nello stesso file.

Dipendenze:
  pip install pillow
"""

import argparse
import os
from dataclasses import dataclass
from typing import List, Tuple, Optional
from PIL import Image


# ------------------------------------------------------------
# Z80 sizes + MSX cycles (Timing Z80+M1) per le istruzioni usate
# Fonte: Grauw Z80 instruction set table (Timing Z80+M1, Size).
# ------------------------------------------------------------
Z80P1 = {
    # mnemonic : (bytes, cycles_z80_plus_m1)
    "NOP": (1, 5),
    "RET": (1, 11),

    "LD C,n": (2, 8),
    "LD A,n": (2, 8),
    "LD A,r": (1, 5),      # ld a,e / ld a,d / ld a,h
    "LD r,A": (1, 5),      # ld d,a
    "LD r,r": (1, 5),      # ld e,a ; ld e,l ; ld d,a etc.

    "LD DE,nn": (3, 11),
    "LD HL,nn": (3, 11),
    "LD HL,(nn)": (3, 17),

    "ADD HL,DE": (1, 12),
    "ADD A,n": (2, 8),
    "ADC A,n": (2, 8),

    "RLCA": (1, 5),
    "AND n": (2, 8),
    "OR n": (2, 8),

    "DI": (1, 5),
    "EI": (1, 5),

    "OUT (n),A": (2, 12),
    "OUTI": (2, 18),

    "JP nn": (3, 11),
    "JP cc,nn": (3, 11),   # jp nc,nn
    "INC D": (1, 5),

    # Undocumented equivalenti (DD-prefixed) nel conteggio timing/size:
    "LD IXl,A": (2, 10),    # DD 6F
    "INC IXl": (2, 10),     # DD 2C
    "LD A,IXl": (2, 10),    # DD 7D
}


# ------------------------------------------------------------
# Run model
# ------------------------------------------------------------
@dataclass
class Run:
    line: int          # 0..15
    x0: int            # start pixel (even)
    x1: int            # end pixel (odd), inclusive
    data: List[int]    # bytes (2 pixel per byte)

    @property
    def x0b(self) -> int:
        return self.x0 // 2

    @property
    def nbytes(self) -> int:
        return len(self.data)


# ------------------------------------------------------------
# Run extraction
# ------------------------------------------------------------
def find_non_transparent_segments(pix16: List[int], transparent: int) -> List[Tuple[int, int]]:
    segs = []
    in_seg = False
    s = 0
    for x in range(16):
        if pix16[x] != transparent:
            if not in_seg:
                in_seg = True
                s = x
        else:
            if in_seg:
                segs.append((s, x - 1))
                in_seg = False
    if in_seg:
        segs.append((s, 15))
    return segs


def adjust_and_merge_segments(segs: List[Tuple[int, int]]) -> List[Tuple[int, int]]:
    """
    - start: se dispari -> start-1
    - end:   se pari    -> end+1
    - clamp 0..15
    - merge se consecutive (dopo inclusione trasparenti)
    """
    if not segs:
        return []

    adj = []
    for s, e in segs:
        s2 = s if (s % 2 == 0) else (s - 1)
        e2 = e if (e % 2 == 1) else (e + 1)
        if s2 < 0:
            s2 = 0
        if e2 > 15:
            e2 = 15
        if s2 <= e2:
            adj.append((s2, e2))

    if not adj:
        return []

    adj.sort()
    merged = [adj[0]]
    for s, e in adj[1:]:
        ps, pe = merged[-1]
        if s <= pe + 1:
            merged[-1] = (ps, max(pe, e))
        else:
            merged.append((s, e))
    return merged


def pack_run_bytes(pix16: List[int], x0: int, x1: int) -> List[int]:
    out = []
    for x in range(x0, x1 + 1, 2):
        b = ((pix16[x] & 0x0F) << 4) | (pix16[x + 1] & 0x0F)
        out.append(b)
    return out


def extract_frame_runs(frame16x16: List[List[int]], transparent: int) -> List[Run]:
    runs: List[Run] = []
    for y in range(16):
        line = frame16x16[y]
        segs = find_non_transparent_segments(line, transparent)
        merged = adjust_and_merge_segments(segs)
        for x0, x1 in merged:
            data = pack_run_bytes(line, x0, x1)
            runs.append(Run(line=y, x0=x0, x1=x1, data=data))
    return runs


# ------------------------------------------------------------
# PNG loading & slicing
# ------------------------------------------------------------
def load_indexed_png(path: str) -> List[List[int]]:
    im = Image.open(path)
    if im.mode != "P":
        raise ValueError(f"Immagine non palettizzata: mode={im.mode} (serve 'P').")
    w, h = im.size
    if w != 256:
        raise ValueError(f"Larghezza attesa 256, trovata {w}.")
    if h % 16 != 0:
        raise ValueError(f"Altezza deve essere multipla di 16, trovata {h}.")

    pix = list(im.getdata())
    if not pix:
        raise ValueError("Immagine vuota.")
    mx = max(pix)
    if mx > 15:
        raise ValueError(f"Palette deve usare indici 0..15, trovato max={mx}.")

    rows = [pix[y*w:(y+1)*w] for y in range(h)]
    return rows


def slice_frames(img_rows: List[List[int]]) -> List[List[List[int]]]:
    h = len(img_rows)
    strips = h // 16
    frames = []
    for s in range(strips):
        y0 = s * 16
        for col in range(16):
            x0 = col * 16
            fr = [img_rows[y0 + y][x0:x0+16] for y in range(16)]
            frames.append(fr)
    return frames


# ------------------------------------------------------------
# ASM helpers
# ------------------------------------------------------------
def fmt_hex8(v: int) -> str:
    return f"0x{v & 0xFF:02X}"

def fmt_db_list_asxxxx(data: List[int], per_line: int = 16) -> List[str]:
    lines = []
    for i in range(0, len(data), per_line):
        chunk = data[i:i+per_line]
        s = ",".join(f"#0x{b:02X}" for b in chunk)
        lines.append("\t\t.db " + s)
    return lines

def fmt_db_list_sjasm(data: List[int], per_line: int = 16) -> List[str]:
    lines = []
    for i in range(0, len(data), per_line):
        chunk = data[i:i+per_line]
        s = ",".join(f"0x{b:02X}" for b in chunk)
        lines.append("\t\tDB " + s)
    return lines

def compute_offset_bytes(prev: Run, nxt: Run) -> int:
    # offset = (delta_riga * 128) + (next_xbyte - prev_xbyte)
    return (nxt.line - prev.line) * 128 + (nxt.x0b - prev.x0b)


def lend_label(frame_id: int, run_id: int) -> str:
    return f"lendatarun{frame_id:04d}_{run_id:04d}"

def testrun_label(frame_id: int, run_id: int) -> str:
    return f"Testrun{frame_id:04d}_{run_id:04d}"


# ------------------------------------------------------------
# Emissione blocchi RUN (ASxxxx / SJASM)
# ------------------------------------------------------------
def emit_run_asxxxx(frame_id: int, run_id: int, run: Run, is_last: bool, offset_to_next: Optional[int]) -> Tuple[List[str], int, int]:
    LEND = lend_label(frame_id, run_id)
    TLAB = testrun_label(frame_id, run_id)

    lines = [
        "\t\tld a,e",
        "\t\tdi",
        "\t\tout (#0x99),a",
        "\t\tld  a,d",
        "\t\tand #0x7F",
        "\t\tei",
        "\t\tout (#0x99),a",
        f"\t\t.rept #{LEND}",
        "\t\touti",
        "\t\t.endm",
    ]

    code_b = code_c = 0
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["DI"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["AND n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["EI"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUTI"]; code_b += bb * run.nbytes; code_c += cc * run.nbytes

    if is_last:
        return lines, code_b, code_c

    off = int(offset_to_next)
    if off <= 255:
        lines += [
            "\t\tld a,e",
            f"\t\tadd a,#{fmt_hex8(off)}",
            "\t\tld e,a",
            f"\t\tjp nc,{TLAB}",
            "\t\tinc d",
            f"\t\tjp nc,{TLAB}",
            "\t\tld  a,d",
            "\t\tor #0xC0",
            "\t\tld  d,a",
            "\t\t.db #0xDD,#0x2C \t\t; inc \tixl",
            "\t\t.db #0xDD,#0x7D   \t; ld \ta,ixl",
            "\t\tdi",
            "\t\tout (#0x99),a",
            "\t\tld a,#0x8E",
            "\t\tei",
            "\t\tout (#0x99),a",
            f"{TLAB}:",
        ]
        # conteggio stima
        bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["ADD A,n"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD r,r"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["JP cc,nn"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["INC D"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["JP cc,nn"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["OR n"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD r,A"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["INC IXl"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD A,IXl"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["DI"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD A,n"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["EI"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
        return lines, code_b, code_c

    # off > 255: variante richiesta con add low + adc high
    lo = off & 0xFF
    hi = (off >> 8) & 0xFF
    lines += [
        "\t\tld a,e",
        f"\t\tadd a,#{fmt_hex8(lo)}",
        "\t\tld e,a",
        f"\t\tjp nc,{TLAB}",
        "\t\tld a,d",
        f"\t\tadc a,#{fmt_hex8(hi)}",
        "\t\tld d,a",
        f"\t\tjp nc,{TLAB}",
        "\t\tld  a,d",
        "\t\tor #0xC0",
        "\t\tld  d,a",
        "\t\t.db #0xDD,#0x2C \t\t; inc \tixl",
        "\t\t.db #0xDD,#0x7D   \t; ld \ta,ixl",
        "\t\tdi",
        "\t\tout (#0x99),a",
        "\t\tld a,#0x8E",
        "\t\tei",
        "\t\tout (#0x99),a",
        f"{TLAB}:",
    ]
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["ADD A,n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD r,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["JP cc,nn"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["ADC A,n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD r,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["JP cc,nn"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OR n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD r,A"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["INC IXl"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,IXl"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["DI"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["EI"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
    return lines, code_b, code_c


def emit_run_sjasm(frame_id: int, run_id: int, run: Run, is_last: bool, offset_to_next: Optional[int]) -> Tuple[List[str], int, int]:
    LEND = lend_label(frame_id, run_id)
    TLAB = testrun_label(frame_id, run_id)

    lines = [
        "\t\tld a,e",
        "\t\tdi",
        "\t\tout (0x99),a",
        "\t\tld  a,d",
        "\t\tand 0x7F",
        "\t\tei",
        "\t\tout (0x99),a",
        f"\t\tREPEAT {LEND}",
        "\t\t\touti",
        "\t\tENDREPEAT",
    ]

    code_b = code_c = 0
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["DI"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["AND n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["EI"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUTI"]; code_b += bb * run.nbytes; code_c += cc * run.nbytes

    if is_last:
        return lines, code_b, code_c

    off = int(offset_to_next)
    if off <= 255:
        lines += [
            "\t\tld a,e",
            f"\t\tadd a,{off}",
            "\t\tld e,a",
            f"\t\tjp nc,{TLAB}",
            "\t\tinc d",
            f"\t\tjp nc,{TLAB}",
            "\t\tld  a,d",
            "\t\tor 0xC0",
            "\t\tld  d,a",
            "\t\tinc ixl",
            "\t\tld  a,ixl",
            "\t\tdi",
            "\t\tout (0x99),a",
            "\t\tld a,0x8E",
            "\t\tei",
            "\t\tout (0x99),a",
            f"{TLAB}:",
        ]
        # conteggio stima (come sopra)
        bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["ADD A,n"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD r,r"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["JP cc,nn"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["INC D"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["JP cc,nn"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["OR n"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD r,A"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["INC IXl"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD A,IXl"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["DI"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["LD A,n"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["EI"]; code_b += bb; code_c += cc
        bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
        return lines, code_b, code_c

    lo = off & 0xFF
    hi = (off >> 8) & 0xFF
    lines += [
        "\t\tld a,e",
        f"\t\tadd a,{lo}",
        "\t\tld e,a",
        f"\t\tjp nc,{TLAB}",
        "\t\tld a,d",
        f"\t\tadc a,{hi}",
        "\t\tld d,a",
        f"\t\tjp nc,{TLAB}",
        "\t\tld  a,d",
        "\t\tor 0xC0",
        "\t\tld  d,a",
        "\t\tinc ixl",
        "\t\tld  a,ixl",
        "\t\tdi",
        "\t\tout (0x99),a",
        "\t\tld a,0x8E",
        "\t\tei",
        "\t\tout (0x99),a",
        f"{TLAB}:",
    ]
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["ADD A,n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD r,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["JP cc,nn"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["ADC A,n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD r,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["JP cc,nn"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,r"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OR n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD r,A"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["INC IXl"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,IXl"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["DI"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["LD A,n"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["EI"]; code_b += bb; code_c += cc
    bb, cc = Z80P1["OUT (n),A"]; code_b += bb; code_c += cc
    return lines, code_b, code_c


# ------------------------------------------------------------
# Emissione frame
# ------------------------------------------------------------
def emit_frame(asxxxx: bool, frame_id: int, runs: List[Run]) -> Tuple[List[str], int, int, int]:
    """
    Ritorna: (lines, code_bytes, data_bytes, cycles)
    """
    lines: List[str] = []
    code_bytes = 0
    data_bytes = 0
    cycles = 0

    lines.append(f"; --- Frame{frame_id:04d} ---")
    lines.append(f"Frame{frame_id:04d}:")
    if asxxxx:
        lines.append("\t\tld c,#0x98")
    else:
        lines.append("\t\tld c,0x98")
    bb, cc = Z80P1["LD C,n"]
    code_bytes += bb; cycles += cc

    if not runs:
        lines.append("\t\tret")
        bb, cc = Z80P1["RET"]
        code_bytes += bb; cycles += cc
        lines.append(f"dataFrame{frame_id:04d}:")
        return lines, code_bytes, 0, cycles

    # primo run della prima riga non nulla
    first = runs[0]
    row = first.line
    offset0 = first.x0b

    if asxxxx:
        lines += [
            f"\t\tld de,#128*{row} + {offset0}",
            "\t\tld hl,(_ScreenPos)",
            "\t\tadd hl,de",
            "\t\tld a,h",
            "\t\trlca",
            "\t\trlca",
            "\t\tand #3",
            "\t\t.db #0xDD,#0x6F\t\t; ld \tixl,a",
            "\t\tdi",
            "\t\tout (#0x99),a",
            "\t\tld a,#0x8E",
            "\t\tei",
            "\t\tout (#0x99),a",
            "\t\tld a,h",
            "\t\tor #0xC0",
            "\t\tld d,a",
            "\t\tld e,l",
            f"\t\tld  hl,#dataFrame{frame_id:04d}",
        ]
    else:
        lines += [
            f"\t\tld de,128*{row} + {offset0}",
            "\t\tld hl,(_ScreenPos)",
            "\t\tadd hl,de",
            "\t\tld a,h",
            "\t\trlca",
            "\t\trlca",
            "\t\tand 3",
            "\t\tld ixl,a",
            "\t\tdi",
            "\t\tout (0x99),a",
            "\t\tld a,0x8E",
            "\t\tei",
            "\t\tout (0x99),a",
            "\t\tld a,h",
            "\t\tor 0xC0",
            "\t\tld d,a",
            "\t\tld e,l",
            f"\t\tld  hl,dataFrame{frame_id:04d}",
        ]

    # stima bytes/cicli del preambolo
    bb, cc = Z80P1["LD DE,nn"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["LD HL,(nn)"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["ADD HL,DE"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["LD A,r"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["RLCA"]; code_bytes += bb * 2; cycles += cc * 2
    bb, cc = Z80P1["AND n"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["LD IXl,A"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["DI"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["OUT (n),A"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["LD A,n"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["EI"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["OUT (n),A"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["LD A,r"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["OR n"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["LD r,A"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["LD r,r"]; code_bytes += bb; cycles += cc
    bb, cc = Z80P1["LD HL,nn"]; code_bytes += bb; cycles += cc

    # definisci lendatarunKKKK_NNNN per ogni run
    for nnnn, r in enumerate(runs):
        lab = lend_label(frame_id, nnnn)
        if asxxxx:
            lines.append(f"{lab}\t.equ\t{r.nbytes}")
        else:
            lines.append(f"{lab}\tEQU\t{r.nbytes}")

    # emetti codice RUN
    run_code: List[str] = []
    for nnnn, r in enumerate(runs):
        is_last = (nnnn == len(runs) - 1)
        off = compute_offset_bytes(r, runs[nnnn + 1]) if not is_last else None

        if asxxxx:
            blk, b_run, c_run = emit_run_asxxxx(frame_id, nnnn, r, is_last, off)
        else:
            blk, b_run, c_run = emit_run_sjasm(frame_id, nnnn, r, is_last, off)

        run_code += blk
        code_bytes += b_run
        cycles += c_run
        data_bytes += r.nbytes

    lines += run_code

    # ret finale frame
    lines.append("\t\tret")
    bb, cc = Z80P1["RET"]
    code_bytes += bb; cycles += cc

    # dati
    lines.append(f"dataFrame{frame_id:04d}:")
    flat = []
    for r in runs:
        flat.extend(r.data)
    if asxxxx:
        lines += fmt_db_list_asxxxx(flat)
    else:
        lines += fmt_db_list_sjasm(flat)

    return lines, code_bytes, data_bytes, cycles


# ------------------------------------------------------------
# Emissione file (8 frame)
# ------------------------------------------------------------
def emit_file(asxxxx: bool, segno: int, frame_start: int, frames_runs: List[List[Run]], base_name: str) -> Tuple[str, int]:
    assert len(frames_runs) == 8
    out: List[str] = []

    out.append("; ------------------------------------------------------------")
    out.append(f"; Auto-generated {base_name}_s{segno:03d}b3.asm")
    out.append("; Timings: Grauw Z80 instruction set, colonna Timing Z80+M1 (MSX).")
    out.append("; ------------------------------------------------------------")

    if asxxxx:
        out.append(f"\n.area _SEG{segno:03d}")
        out.append(".globl _ScreenPos\n")
    else:
        out.append(f"\n; [SJASM 0.42 classico] Segment marker: _SEG{segno:03d}")
        out.append("; NOTE: _ScreenPos deve essere definito nel progetto (label/EQU) o incluso via INCLUDE, es:")
        out.append(";       include \"globals.inc\"")
        out.append("")

    # jump table richiesta
    out += [
        "\t\tnop",
        "\t\tnop",
        "\t\tnop",
        "",
    ]

    file_code = file_data = file_cycles = 0
    bb, cc = Z80P1["NOP"]
    file_code += bb * 3
    file_cycles += cc * 3

    for i in range(8):
        fn = frame_start + i
        out.append(f"\t\tjp Frame{fn:04d}")
        out.append("\t\tnop")
        bb, cc = Z80P1["JP nn"]; file_code += bb; file_cycles += cc
        bb, cc = Z80P1["NOP"];   file_code += bb; file_cycles += cc

    # frame
    for i in range(8):
        fn = frame_start + i
        out.append("")
        lines, cb, db, cyc = emit_frame(asxxxx, fn, frames_runs[i])
        out.append(f"; [Estimate] Frame{fn:04d}: code={cb} bytes, data={db} bytes, total={cb+db} bytes, cycles(Z80+M1)≈{cyc}")
        out += lines
        file_code += cb
        file_data += db
        file_cycles += cyc

    est_total = file_code + file_data
    out.insert(3, f"; [Estimate] File total ≈ {est_total} bytes  (code={file_code} + data={file_data})")
    return "\n".join(out) + "\n", est_total


# ------------------------------------------------------------
# Main
# ------------------------------------------------------------
def main():
    ap = argparse.ArgumentParser(description="PNG 16x16 frames -> ASM (ASxxxx + SJASM 0.42 classico), 8 frame per file.")
    ap.add_argument("png", help="Input PNG 256xN, palettizzata 16 colori (indici 0..15).")
    ap.add_argument("--transparent", type=int, default=5, help="Indice palette trasparente (default 5).")
    ap.add_argument("--out-asxxxx", default="out_asxxxx", help="Cartella output per sorgenti ASxxxx.")
    ap.add_argument("--out-sjasm", default="out_sjasm", help="Cartella output per sorgenti SJASM 0.42.")
    ap.add_argument("--base", default="soccerlg", help="Prefisso nome file (default soccerlg).")
    ap.add_argument("--start-seg", type=int, default=100, help="Segmento iniziale (default 100 => _SEG100).")
    args = ap.parse_args()

    os.makedirs(args.out_asxxxx, exist_ok=True)
    os.makedirs(args.out_sjasm, exist_ok=True)

    img_rows = load_indexed_png(args.png)
    frames = slice_frames(img_rows)
    all_runs = [extract_frame_runs(fr, args.transparent) for fr in frames]

    total_frames = len(all_runs)
    file_count = (total_frames + 7) // 8

    for fi in range(file_count):
        segno = args.start_seg + fi
        frame_start = fi * 8
        group = all_runs[frame_start:frame_start + 8]
        if len(group) < 8:
            group += [[] for _ in range(8 - len(group))]

        txt_a, est_a = emit_file(True, segno, frame_start, group, args.base)
        fname = f"{args.base}_s{segno:03d}b3.asm"
        with open(os.path.join(args.out_asxxxx, fname), "w", encoding="utf-8", newline="\n") as f:
            f.write(txt_a)

        txt_s, est_s = emit_file(False, segno, frame_start, group, args.base)
        with open(os.path.join(args.out_sjasm, fname), "w", encoding="utf-8", newline="\n") as f:
            f.write(txt_s)

        print(f"Generated {fname}: ASxxxx est≈{est_a} bytes; SJASM est≈{est_s} bytes")

    print("Done.")


if __name__ == "__main__":
    main()