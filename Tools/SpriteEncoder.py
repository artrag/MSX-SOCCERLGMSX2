#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import argparse
from dataclasses import dataclass
from typing import List, Tuple, Dict, Optional

import numpy as np
from PIL import Image


# ============================================================
# Palette soccerlg hard-coded (MSX SCREEN 5 indices)
# ============================================================
SOCCERLG_PALETTE: List[Tuple[int, int, int]] = [
    (0xA3, 0x49, 0xA4),  # 0 TRASPARENTE
    (0x01, 0x01, 0x01),
    (0xED, 0x1C, 0x24),
    (0xF7, 0xD6, 0x47),
    (0xFF, 0xFF, 0xFF),
    (0x00, 0x0C, 0x7B),
    (0x00, 0xB8, 0x00),
    (0x7F, 0x7F, 0x7F),
    (0xDD, 0x9C, 0x48),
    (0xF6, 0xD5, 0x43),
    (0x88, 0x00, 0x15),
    (0x4C, 0xB7, 0xDA),
    (0xFA, 0xF7, 0x0F),
    (0xFD, 0xFD, 0xFD),
    (0x3F, 0x48, 0xCC),
    (0xFE, 0xFE, 0xFE),
]
PAL_NP = np.array(SOCCERLG_PALETTE, dtype=np.int16)


# ============================================================
# Timing reference: SOLO Z80+M1 (Grauw)
# Nota: IYq (prefisso FD) ha Z80+M1 = 10 (non 9). [1](http://map.grauw.nl/resources/z80instr.php)
# ============================================================
Z80M1 = {
    "LD_r_r": 5,          # es. LD A,E / LD E,A / LD A,D / LD D,A (Z80+M1)
    "LD_r_n": 8,          # es. LD C,n / LD D,n / LD A,n (Z80+M1)
    "LD_rr_nn": 11,       # es. LD HL,nn (Z80+M1, regola +1 su Z80)
    "ADD_A_n": 8,         # [1](http://map.grauw.nl/resources/z80instr.php) (ADD A,n -> Z80+M1 8)
    "ADC_A_n": 8,         # [1](http://map.grauw.nl/resources/z80instr.php) (ADC A,n -> Z80+M1 8)
    "XOR_n": 8,
    "AND_n": 8,
    "OR_n": 8,
    "INC_r": 5,           # INC D
    "JP_cc_nn": 11,       # JP cc,nn
    "JP_nn": 11,          # JP nn
    "DI": 5,
    "EI": 5,
    "OUT_n_A": 12,        # OUT (n),A
    "OUTI": 18,           # OUTI (Z80+M1 18) (Z80 16) [1](http://map.grauw.nl/resources/z80instr.php)
    "RET": 12,
    "NOP": 5,

    # IYq (prefisso FD): 10 cicli Z80+M1 (es: ADC A,IYq -> 10). [1](http://map.grauw.nl/resources/z80instr.php)
    "LD_A_IYL": 10,
    "LD_IYL_A": 10,
    "OR_A_IYH": 10,
}


# ============================================================
@dataclass
class Run:
    x0: int          # start pixel (even)
    x1: int          # end pixel (odd)
    y: int           # row within frame
    data: List[int]  # bytes packed 2px/byte

    @property
    def start_byte_x(self) -> int:
        return self.x0 // 2

    @property
    def length_bytes(self) -> int:
        return len(self.data)


# ============================================================
# Labels
# ============================================================
def frame_label(k: int) -> str:
    return f"Frame{k:04d}"

def data_label(k: int) -> str:
    return f"dataFrame{k:04d}"

def off_label(k: int, n: int) -> str:
    return f"offset{k:04d}_{n:04d}"

def len_label(k: int, n: int) -> str:
    return f"lendatarun{k:04d}_{n:04d}"

def test_label(k: int, n: int) -> str:
    return f"Testrun{k:04d}_{n:04d}"


# ============================================================
# Palette export
# ============================================================
def extract_palette_from_P(img: Image.Image) -> List[Tuple[int, int, int]]:
    pal = img.getpalette()
    if pal is None:
        return SOCCERLG_PALETTE[:]
    out = []
    for i in range(16):
        out.append((pal[i*3+0], pal[i*3+1], pal[i*3+2]))
    return out

def write_palette_header_c(path: str, pal16: List[Tuple[int, int, int]]):
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write("// Palette 16xRGB (0..255)\n")
        f.write("const unsigned char sprite_palette[16][3] = {\n")
        for r, g, b in pal16:
            f.write(f"  {{{r},{g},{b}}},\n")
        f.write("};\n")

def quantize_rgb_to_soccerlg(img: Image.Image) -> np.ndarray:
    arr = np.array(img.convert("RGBA"), dtype=np.uint8)
    rgb = arr[:, :, :3].astype(np.int16)
    alpha = arr[:, :, 3]
    diff = rgb[:, :, None, :] - PAL_NP[None, None, :, :]
    dist2 = np.sum(diff * diff, axis=3)
    idx = np.argmin(dist2, axis=2).astype(np.uint8)
    idx[alpha == 0] = 0
    return idx


# ============================================================
# Run extraction: segments per line + extend even/odd + merge
# ============================================================
def extract_runs_from_frame(frame_idx: np.ndarray, transparent: int) -> List[Run]:
    h, w = frame_idx.shape
    runs: List[Run] = []

    for y in range(h):
        line = frame_idx[y, :]
        non_t = (line != transparent)
        if not np.any(non_t):
            continue

        nt = non_t.astype(np.int8)
        padded = np.pad(nt, (1, 1), mode="constant", constant_values=0)
        d = np.diff(padded)
        starts = np.where(d == 1)[0]
        ends = np.where(d == -1)[0] - 1

        segs: List[Tuple[int, int]] = []
        for a, b in zip(starts, ends):
            s = a if (a % 2 == 0) else a - 1
            if s < 0:
                s = 0
            e = b if (b % 2 == 1) else b + 1
            if e > w - 1:
                e = w - 1
            if e <= s:
                continue
            segs.append((s, e))

        if not segs:
            continue

        segs.sort()
        merged = [list(segs[0])]
        for s, e in segs[1:]:
            ps, pe = merged[-1]
            if s <= pe + 1:
                merged[-1][1] = max(pe, e)
            else:
                merged.append([s, e])

        for s, e in merged:
            data: List[int] = []
            # width M is even so e is odd, thus x+1 valid
            for x in range(s, e + 1, 2):
                hi = int(line[x]) & 0x0F
                lo = int(line[x + 1]) & 0x0F
                data.append((hi << 4) | lo)
            runs.append(Run(x0=s, x1=e, y=y, data=data))

    runs.sort(key=lambda r: (r.y, r.x0))
    return runs


# ============================================================
# ASxxxx substitutions for IY ops (ASxxxx doesn't accept them)
# ============================================================
def asxxxx_ld_a_iyl_lines() -> List[str]:
    return ["\t.db #0xFD", "\tld a,l\t\t; ld a,iyl"]

def asxxxx_ld_iyl_a_lines() -> List[str]:
    return ["\t.db #0xFD", "\tld l,a\t\t; ld iyl,a"]

def asxxxx_or_a_iyh_lines() -> List[str]:
    return ["\t.db #0xFD", "\tor a,h\t\t; or a,iyh"]


# ============================================================
# Compute offsets: run0000 absolute, others relative to previous run start
# offset = (dx_byte) + 128*(dy)
# with dx_byte = fix(dx_pixel/2)
# ============================================================
def compute_offsets(runs: List[Run]) -> List[int]:
    offsets: List[int] = []
    prev_abs = 0
    for i, r in enumerate(runs):
        cur_abs = r.start_byte_x + 128 * r.y
        if i == 0:
            offsets.append(cur_abs)
        else:
            offsets.append(cur_abs - prev_abs)
        prev_abs = cur_abs
    return offsets


# ============================================================
# Cycle estimation per run/frame (min..max) using Z80+M1
# - min: no carry/no overflow path (jump taken early)
# - max: overflow path triggers page flip + R#14 set (worst)
# ============================================================
def _cycles(seq: List[Tuple[str, int]]) -> int:
    # seq entries are ("token", count)
    c = 0
    for t, n in seq:
        c += Z80M1[t] * n
    return c

def estimate_run_cycles_minmax(is_first: bool, offset_ge256: bool, run_len: int) -> Tuple[int, int]:
    # Common transfer block (always executed):
    #   ld a,e
    #   di ; out (99),a
    #   ld a,d ; and 7F
    #   ei ; out (99),a
    #   outi * run_len
    transfer = [
        ("LD_r_r", 1),   # ld a,e
        ("DI", 1),
        ("OUT_n_A", 1),
        ("LD_r_r", 1),   # ld a,d
        ("AND_n", 1),
        ("EI", 1),
        ("OUT_n_A", 1),
        ("OUTI", run_len),
    ]

    # Offset handling prefix:
    if not offset_ge256:
        # ld a,e; add a,n; ld e,a; jp nc,Test
        base = [("LD_r_r", 1), ("ADD_A_n", 1), ("LD_r_r", 1), ("JP_cc_nn", 1)]
        # overflow path extra for carry+overflow:
        # inc d; jp nz,Test; ld d,n; ld a,iyl; xor; ld iyl,a;
        overflow_extra = [
            ("INC_r", 1),
            ("JP_cc_nn", 1),
            ("LD_r_n", 1),          # ld d,0xC0
            ("LD_A_IYL", 1),
            ("XOR_n", 1),
            ("LD_IYL_A", 1),
        ]
    else:
        # ld a,e; add a,lo; ld e,a; jp nc,Test
        # ld a,d; adc a,hi; ld d,a; jp nc,Test
        base = [
            ("LD_r_r", 1), ("ADD_A_n", 1), ("LD_r_r", 1), ("JP_cc_nn", 1),
            ("LD_r_r", 1), ("ADC_A_n", 1), ("LD_r_r", 1), ("JP_cc_nn", 1),
        ]
        # overflow path (worst): ld a,d; or n; ld d,a; ld a,iyl; xor; ld iyl,a
        overflow_extra = [
            ("LD_r_r", 1),
            ("OR_n", 1),
            ("LD_r_r", 1),
            ("LD_A_IYL", 1),
            ("XOR_n", 1),
            ("LD_IYL_A", 1),
        ]

    if is_first:
        # First run ALWAYS sets R#14 after label:
        # Test: ld a,iyl; or a,iyh; di; out; ld a,n; ei; out
        set_r14 = [
            ("LD_A_IYL", 1),
            ("OR_A_IYH", 1),
            ("DI", 1),
            ("OUT_n_A", 1),
            ("LD_r_n", 1),   # ld a,#0x8E
            ("EI", 1),
            ("OUT_n_A", 1),
        ]
        min_cycles = _cycles(base) + _cycles(set_r14) + _cycles(transfer)
        max_cycles = _cycles(base) + _cycles(overflow_extra) + _cycles(set_r14) + _cycles(transfer)
    else:
        # Subsequent runs set R#14 ONLY on overflow path, before label:
        # (in overflow path) ... ld a,iyl; xor; ld iyl,a; or a,iyh; di; out; ld a,n; ei; out
        set_r14_on_overflow = [
            ("OR_A_IYH", 1),
            ("DI", 1),
            ("OUT_n_A", 1),
            ("LD_r_n", 1),
            ("EI", 1),
            ("OUT_n_A", 1),
        ]
        # Note: overflow_extra already includes ld a,iyl/xor/ld iyl,a in both variants.
        min_cycles = _cycles(base) + _cycles(transfer)
        max_cycles = _cycles(base) + _cycles(overflow_extra) + _cycles(set_r14_on_overflow) + _cycles(transfer)

    return min_cycles, max_cycles

def estimate_frame_cycles_minmax(runs: List[Run], offsets: List[int]) -> Tuple[int, int]:
    if not runs:
        return Z80M1["RET"], Z80M1["RET"]

    # Prologue:
    # ld c,#0x98 (LD r,n)
    # ld hl,#dataFrame (LD rr,nn)
    base = Z80M1["LD_r_n"] + Z80M1["LD_rr_nn"]

    min_c = base
    max_c = base

    for i, r in enumerate(runs):
        ge256 = offsets[i] >= 256
        rmin, rmax = estimate_run_cycles_minmax(is_first=(i == 0), offset_ge256=ge256, run_len=r.length_bytes)
        min_c += rmin
        max_c += rmax

    min_c += Z80M1["RET"]
    max_c += Z80M1["RET"]
    return min_c, max_c


# ============================================================
# BIN builder: emits real opcodes + label fixups
# ============================================================
class BinPage:
    def __init__(self):
        self.bytes = bytearray()
        self.labels: Dict[str, int] = {}
        self.fixups: List[Tuple[int, str]] = []

    @property
    def addr(self) -> int:
        return 0xA000 + len(self.bytes)

    def define(self, name: str):
        self.labels[name] = self.addr

    def emit(self, b: int):
        self.bytes.append(b & 0xFF)

    def emit_word(self, w: int):
        self.emit(w & 0xFF)
        self.emit((w >> 8) & 0xFF)

    def fix_word_label(self, label: str):
        pos = len(self.bytes)
        self.emit_word(0)
        self.fixups.append((pos, label))

    def patch(self):
        for pos, label in self.fixups:
            a = self.labels[label]
            self.bytes[pos] = a & 0xFF
            self.bytes[pos + 1] = (a >> 8) & 0xFF

    # opcodes subset
    def jp(self, label: str): self.emit(0xC3); self.fix_word_label(label)
    def jp_nc(self, label: str): self.emit(0xD2); self.fix_word_label(label)
    def jp_nz(self, label: str): self.emit(0xC2); self.fix_word_label(label)
    def nop(self): self.emit(0x00)
    def ret(self): self.emit(0xC9)

    def ld_c_n(self, n): self.emit(0x0E); self.emit(n)
    def ld_hl_label(self, label): self.emit(0x21); self.fix_word_label(label)

    def ld_a_n(self, n): self.emit(0x3E); self.emit(n)
    def ld_a_e(self): self.emit(0x7B)
    def ld_a_d(self): self.emit(0x7A)
    def ld_e_a(self): self.emit(0x5F)
    def ld_d_a(self): self.emit(0x57)
    def ld_d_n(self, n): self.emit(0x16); self.emit(n)

    def add_a_n(self, n): self.emit(0xC6); self.emit(n)
    def adc_a_n(self, n): self.emit(0xCE); self.emit(n)
    def or_n(self, n): self.emit(0xF6); self.emit(n)
    def xor_n(self, n): self.emit(0xEE); self.emit(n)
    def and_n(self, n): self.emit(0xE6); self.emit(n)

    def inc_d(self): self.emit(0x14)
    def di(self): self.emit(0xF3)
    def ei(self): self.emit(0xFB)
    def out_n_a(self, n): self.emit(0xD3); self.emit(n)
    def outi(self): self.emit(0xED); self.emit(0xA3)

    # IYl / IYh (FD prefix)
    def ld_a_iyl(self): self.emit(0xFD); self.emit(0x7D)   # LD A,IYL
    def ld_iyl_a(self): self.emit(0xFD); self.emit(0x6F)   # LD IYL,A
    def or_a_iyh(self): self.emit(0xFD); self.emit(0xB4)   # OR A,IYH


# ============================================================
# Emit one frame: DATA first, then CODE, with exact ASM sequences
# Frame empty => only "FrameKKKK: ret"
# Also returns exact frame byte count in BIN (data+code only)
# ============================================================
def emit_frame(k: int,
               runs: List[Run],
               offsets: List[int],
               as_lines: List[str],
               sj_lines: List[str],
               bp: BinPage) -> int:

    fl = frame_label(k)
    dl = data_label(k)

    start_pos = len(bp.bytes)

    # cycles report
    cmin, cmax = estimate_frame_cycles_minmax(runs, offsets)

    if not runs:
        as_lines.append(f"; Frame {k:04d}: EMPTY, bytes=1, cycles={cmin}")
        sj_lines.append(f"; Frame {k:04d}: EMPTY, bytes=1, cycles={cmin}")
        as_lines.append(f"{fl}: ret")
        sj_lines.append(f"{fl}: ret")
        bp.define(fl)
        bp.ret()
        as_lines.append("")
        sj_lines.append("")
        return len(bp.bytes) - start_pos

    as_lines.append(f"; Frame {k:04d}: cycles Z80+M1 min={cmin} max={cmax}")
    sj_lines.append(f"; Frame {k:04d}: cycles Z80+M1 min={cmin} max={cmax}")

    # ---------------- DATA FIRST ----------------
    as_lines.append(f"{dl}:")
    sj_lines.append(f"{dl}:")
    bp.define(dl)

    for i, r in enumerate(runs):
        ol = off_label(k, i)
        ll = len_label(k, i)

        as_lines.append(f"{ol}\t\t.equ   {offsets[i]}")
        as_lines.append(f"{ll}\t\t.equ   {r.length_bytes}")
        as_lines.append("\t\t\t.db " + ",".join(f"0x{b:02X}" for b in r.data) +
                        f"\t\t; dati run {k:04d}_{i:04d}")

        sj_lines.append(f"{ol}\tEQU\t{offsets[i]}")
        sj_lines.append(f"{ll}\tEQU\t{r.length_bytes}")
        sj_lines.append("\t\tDB " + ",".join(f"0x{b:02X}" for b in r.data) +
                        f"\t\t; dati run {k:04d}_{i:04d}")

        bp.bytes.extend(bytes(r.data))

    # ---------------- CODE AFTER DATA ----------------
    as_lines.append(f"{fl}:")
    sj_lines.append(f"{fl}:")
    bp.define(fl)

    # frame prologue
    as_lines += [
        "\tld  c,#0x98",
        f"\tld  hl,#{dl}",
    ]
    sj_lines += [
        "\tld  c,0x98",
        f"\tld  hl,{dl}",
    ]
    bp.ld_c_n(0x98)
    bp.ld_hl_label(dl)

    for i, r in enumerate(runs):
        ol = off_label(k, i)
        ll = len_label(k, i)
        t  = test_label(k, i)
        off = offsets[i]

        if i == 0:
            # run0000
            if off < 256:
                # ASxxxx
                as_lines += [
                    "\tld a,e",
                    f"\tadd a,#{ol}",
                    "\tld e,a",
                    f"\tjp nc,{t}",
                    "\tinc d",
                    f"\tjp nz,{t}",
                    "\tld  d,#0xC0",
                ]
                as_lines += asxxxx_ld_a_iyl_lines()
                as_lines += ["\txor #1"]
                as_lines += asxxxx_ld_iyl_a_lines()
                as_lines += [f"{t}:"]
                as_lines += asxxxx_ld_a_iyl_lines()
                as_lines += asxxxx_or_a_iyh_lines()
                as_lines += [
                    "\tdi",
                    "\tout (#0x99),a",
                    "\tld a,#0x8E",
                    "\tei",
                    "\tout (#0x99),a",
                ]

                # SJASM
                sj_lines += [
                    "\tld a,e",
                    f"\tadd a,{ol}",
                    "\tld e,a",
                    f"\tjp nc,{t}",
                    "\tinc d",
                    f"\tjp nz,{t}",
                    "\tld d,0xC0",
                    "\tld a,iyl",
                    "\txor 1",
                    "\tld iyl,a",
                    f"{t}:",
                    "\tld a,iyl",
                    "\tor a,iyh",
                    "\tdi",
                    "\tout (0x99),a",
                    "\tld a,0x8E",
                    "\tei",
                    "\tout (0x99),a",
                ]

                # BIN
                bp.ld_a_e(); bp.add_a_n(off & 0xFF); bp.ld_e_a()
                bp.jp_nc(t)
                bp.inc_d()
                bp.jp_nz(t)
                bp.ld_d_n(0xC0)
                bp.ld_a_iyl(); bp.xor_n(0x01); bp.ld_iyl_a()
                bp.define(t)
                bp.ld_a_iyl(); bp.or_a_iyh()
                bp.di(); bp.out_n_a(0x99)
                bp.ld_a_n(0x8E); bp.ei(); bp.out_n_a(0x99)

            else:
                as_lines += [
                    "\tld a,e",
                    f"\tadd a,#{ol} & 0xFF",
                    "\tld e,a",
                    f"\tjp nc,{t}",
                    "\tld a,d",
                    f"\tadc a,#{ol} / 256",
                    "\tld  d,a",
                    f"\tjp nc,{t}",
                    "\tld a,d",
                    "\tor #0xC0",
                    "\tld  d,a",
                ]
                as_lines += asxxxx_ld_a_iyl_lines()
                as_lines += ["\txor #1"]
                as_lines += asxxxx_ld_iyl_a_lines()
                as_lines += [f"{t}:"]
                as_lines += asxxxx_ld_a_iyl_lines()
                as_lines += asxxxx_or_a_iyh_lines()
                as_lines += [
                    "\tdi",
                    "\tout (#0x99),a",
                    "\tld a,#0x8E",
                    "\tei",
                    "\tout (#0x99),a",
                ]

                sj_lines += [
                    "\tld a,e",
                    f"\tadd a,({ol} & 0xFF)",
                    "\tld e,a",
                    f"\tjp nc,{t}",
                    "\tld a,d",
                    f"\tadc a,({ol} / 256)",
                    "\tld d,a",
                    f"\tjp nc,{t}",
                    "\tld a,d",
                    "\tor 0xC0",
                    "\tld d,a",
                    "\tld a,iyl",
                    "\txor 1",
                    "\tld iyl,a",
                    f"{t}:",
                    "\tld a,iyl",
                    "\tor a,iyh",
                    "\tdi",
                    "\tout (0x99),a",
                    "\tld a,0x8E",
                    "\tei",
                    "\tout (0x99),a",
                ]

                bp.ld_a_e(); bp.add_a_n(off & 0xFF); bp.ld_e_a()
                bp.jp_nc(t)
                bp.ld_a_d(); bp.adc_a_n((off // 256) & 0xFF); bp.ld_d_a()
                bp.jp_nc(t)
                bp.ld_a_d(); bp.or_n(0xC0); bp.ld_d_a()
                bp.ld_a_iyl(); bp.xor_n(0x01); bp.ld_iyl_a()
                bp.define(t)
                bp.ld_a_iyl(); bp.or_a_iyh()
                bp.di(); bp.out_n_a(0x99)
                bp.ld_a_n(0x8E); bp.ei(); bp.out_n_a(0x99)

        else:
            # run N>0 : R#14 set ONLY on overflow path, label is empty
            if off < 256:
                as_lines += [
                    "\tld a,e",
                    f"\tadd a,#{ol}",
                    "\tld e,a",
                    f"\tjp nc,{t}",
                    "\tinc d",
                    f"\tjp nz,{t}",
                    "\tld  d,#0xC0",
                ]
                as_lines += asxxxx_ld_a_iyl_lines()
                as_lines += ["\txor #1"]
                as_lines += asxxxx_ld_iyl_a_lines()
                as_lines += asxxxx_or_a_iyh_lines()
                as_lines += [
                    "\tdi",
                    "\tout (#0x99),a",
                    "\tld a,#0x8E",
                    "\tei",
                    "\tout (#0x99),a",
                    f"{t}:",
                ]

                sj_lines += [
                    "\tld a,e",
                    f"\tadd a,{ol}",
                    "\tld e,a",
                    f"\tjp nc,{t}",
                    "\tinc d",
                    f"\tjp nz,{t}",
                    "\tld d,0xC0",
                    "\tld a,iyl",
                    "\txor 1",
                    "\tld iyl,a",
                    "\tor a,iyh",
                    "\tdi",
                    "\tout (0x99),a",
                    "\tld a,0x8E",
                    "\tei",
                    "\tout (0x99),a",
                    f"{t}:",
                ]

                bp.ld_a_e(); bp.add_a_n(off & 0xFF); bp.ld_e_a()
                bp.jp_nc(t)
                bp.inc_d()
                bp.jp_nz(t)
                bp.ld_d_n(0xC0)
                bp.ld_a_iyl(); bp.xor_n(0x01); bp.ld_iyl_a()
                bp.or_a_iyh()
                bp.di(); bp.out_n_a(0x99)
                bp.ld_a_n(0x8E); bp.ei(); bp.out_n_a(0x99)
                bp.define(t)

            else:
                as_lines += [
                    "\tld a,e",
                    f"\tadd a,#{ol} & 0xFF",
                    "\tld e,a",
                    f"\tjp nc,{t}",
                    "\tld a,d",
                    f"\tadc a,#{ol} / 256",
                    "\tld  d,a",
                    f"\tjp nc,{t}",
                    "\tld a,d",
                    "\tor #0xC0",
                    "\tld  d,a",
                ]
                as_lines += asxxxx_ld_a_iyl_lines()
                as_lines += ["\txor #1"]
                as_lines += asxxxx_ld_iyl_a_lines()
                as_lines += asxxxx_or_a_iyh_lines()
                as_lines += [
                    "\tdi",
                    "\tout (#0x99),a",
                    "\tld a,#0x8E",
                    "\tei",
                    "\tout (#0x99),a",
                    f"{t}:",
                ]

                sj_lines += [
                    "\tld a,e",
                    f"\tadd a,({ol} & 0xFF)",
                    "\tld e,a",
                    f"\tjp nc,{t}",
                    "\tld a,d",
                    f"\tadc a,({ol} / 256)",
                    "\tld d,a",
                    f"\tjp nc,{t}",
                    "\tld a,d",
                    "\tor 0xC0",
                    "\tld d,a",
                    "\tld a,iyl",
                    "\txor 1",
                    "\tld iyl,a",
                    "\tor a,iyh",
                    "\tdi",
                    "\tout (0x99),a",
                    "\tld a,0x8E",
                    "\tei",
                    "\tout (0x99),a",
                    f"{t}:",
                ]

                bp.ld_a_e(); bp.add_a_n(off & 0xFF); bp.ld_e_a()
                bp.jp_nc(t)
                bp.ld_a_d(); bp.adc_a_n((off // 256) & 0xFF); bp.ld_d_a()
                bp.jp_nc(t)
                bp.ld_a_d(); bp.or_n(0xC0); bp.ld_d_a()
                bp.ld_a_iyl(); bp.xor_n(0x01); bp.ld_iyl_a()
                bp.or_a_iyh()
                bp.di(); bp.out_n_a(0x99)
                bp.ld_a_n(0x8E); bp.ei(); bp.out_n_a(0x99)
                bp.define(t)

        # -------- transfer block (always) --------
        as_lines += [
            "\tld a,e",
            "\tdi",
            "\tout (#0x99),a",
            "\tld  a,d",
            "\tand #7F",
            "\tei",
            "\tout (#0x99),a",
            f"\t.rept #{ll}",
            "\touti",
            "\t.endm",
        ]
        sj_lines += [
            "\tld a,e",
            "\tdi",
            "\tout (0x99),a",
            "\tld  a,d",
            "\tand 0x7F",
            "\tei",
            "\tout (0x99),a",
            f"\tREPEAT {ll}",
            "\touti",
            "\tENDREPEAT",
        ]

        bp.ld_a_e(); bp.di(); bp.out_n_a(0x99)
        bp.ld_a_d(); bp.and_n(0x7F); bp.ei(); bp.out_n_a(0x99)
        for _ in range(r.length_bytes):
            bp.outi()

    as_lines.append("\tret")
    sj_lines.append("\tret")
    bp.ret()

    as_lines.append("")
    sj_lines.append("")

    return len(bp.bytes) - start_pos


# ============================================================
# Generate full outputs for a given FN, return (ok, ...)
# ============================================================
def generate_for_FN(idx: np.ndarray, N: int, M: int, transparent: int,
                    FN: int, pad_byte: int) -> Tuple[List[str], List[str], bytes, List[int], List[Tuple[int,int,int,int]]]:

    used_w = (256 // M) * M
    used_h = (idx.shape[0] // N) * N
    idx2 = idx[:used_h, :used_w]

    frames_per_row = used_w // M
    frame_rows = used_h // N
    total_frames = frames_per_row * frame_rows

    as_lines: List[str] = []
    sj_lines: List[str] = []
    all_bin = bytearray()
    seg_used_list: List[int] = []
    frame_table: List[Tuple[int,int,int,int]] = []  # (k, bytes, cmin, cmax)

    seg_base = 100
    seg_count = (total_frames + (FN - 1)) // FN

    # Placeholder header; will be overwritten by caller with final totals
    as_lines.append(f"; Sprite{N}x{M}.asm (ASxxxx / SDCC ASxxxx)")
    as_lines.append(f"; FN = {FN} frames per mapper page (8KB)")
    as_lines.append("; Timing: Grauw Z80+M1")
    as_lines.append("")

    sj_lines.append(f"; Sprites{N}x{M}_sjasm.asm (SJASM)")
    sj_lines.append(f"; FN = {FN} frames per mapper page (8KB)")
    sj_lines.append("; Timing: Grauw Z80+M1")
    sj_lines.append("")

    for seg_i in range(seg_count):
        seg_id = seg_base + seg_i
        bp = BinPage()
        first = seg_i * FN

        # segment headers
        as_lines += [f".area _SEG{seg_id}", "", "    .org 0xA000"]
        sj_lines += [f"; ===== SEG{seg_id} =====", "\tORG 0xA000"]

        # jump table
        for j in range(FN):
            fid = first + j
            as_lines.append(f"    jp Frame{fid:04d}")
            sj_lines.append(f"\tjp Frame{fid:04d}")
            bp.jp(f"Frame{fid:04d}")
            if j != FN - 1:
                as_lines.append("    nop")
                sj_lines.append("\tnop")
                bp.nop()

        as_lines.append("")
        sj_lines.append("")

        # frames in this segment
        for local in range(FN):
            k = first + local
            if k >= total_frames:
                # beyond end => empty
                fl = frame_label(k)
                cmin = cmax = Z80M1["RET"]
                as_lines.append(f"; Frame {k:04d}: beyond end -> ret")
                sj_lines.append(f"; Frame {k:04d}: beyond end -> ret")
                as_lines.append(f"{fl}: ret")
                sj_lines.append(f"{fl}: ret")
                bp.define(fl)
                bp.ret()
                as_lines.append("")
                sj_lines.append("")
                frame_table.append((k, 1, cmin, cmax))
                continue

            fy = k // frames_per_row
            fx = k % frames_per_row
            frame = idx2[fy*N:(fy+1)*N, fx*M:(fx+1)*M]
            runs = extract_runs_from_frame(frame, transparent)
            offsets = compute_offsets(runs)
            cmin, cmax = estimate_frame_cycles_minmax(runs, offsets)

            fbytes = emit_frame(k, runs, offsets, as_lines, sj_lines, bp)
            frame_table.append((k, fbytes, cmin, cmax))

        # finalize page
        bp.patch()
        used = len(bp.bytes)
        seg_used_list.append(used)

        # segment size comment
        as_lines.append(f"; SEG{seg_id}: used {used} bytes (max 8192)")
        sj_lines.append(f"; SEG{seg_id}: used {used} bytes (max 8192)")
        as_lines.append("")
        sj_lines.append("")

        # pad to 8KB
        if used < 0x2000:
            bp.bytes.extend(bytes([pad_byte]) * (0x2000 - used))
        all_bin.extend(bp.bytes)

        # SJASM explicit alignment for next page
        sj_lines.append("\tALIGN 0x2000")
        sj_lines.append("")

    return as_lines, sj_lines, bytes(all_bin), seg_used_list, frame_table


# ============================================================
def main():
    ap = argparse.ArgumentParser(description="MSX2 Sprite encoder: ASM (ASxxxx+SJASM) + BIN 8KB pages")
    ap.add_argument("image", help="Input image 256xH")
    ap.add_argument("--N", type=int, required=True, help="Frame height (pixels)")
    ap.add_argument("--M", type=int, required=True, help="Frame width (pixels, must be even)")
    ap.add_argument("--FN", type=int, default=4, help="Initial frames per mapper page (default 4)")
    ap.add_argument("--transparent", type=int, default=None,
                    help="Transparent color index for P images (default 6). For RGB, transparent=0 (ignored).")
    ap.add_argument("-o", "--out", default="output", help="Output directory")
    ap.add_argument("--pad", type=lambda x: int(x, 0), default=0xFF, help="BIN page padding byte (default 0xFF)")
    args = ap.parse_args()

    if args.M % 2 != 0:
        raise ValueError("M deve essere pari")

    os.makedirs(args.out, exist_ok=True)

    img = Image.open(args.image)
    base = os.path.splitext(os.path.basename(args.image))[0]

    if img.size[0] != 256:
        raise ValueError(f"Larghezza immagine = {img.size[0]}, attesa 256")

    # crop fractions (ignore eccedenze)
    H = img.size[1]
    used_w = (256 // args.M) * args.M
    used_h = (H // args.N) * args.N
    img = img.crop((0, 0, used_w, used_h))

    # color indexing
    if img.mode == "P":
        idx = np.array(img, dtype=np.uint8)
        transparent = args.transparent if args.transparent is not None else 6
        pal16 = extract_palette_from_P(img)  # preserve palette
    else:
        idx = quantize_rgb_to_soccerlg(img)
        transparent = 0
        pal16 = SOCCERLG_PALETTE[:]
        if args.transparent not in (None, 0):
            print("Nota: immagine RGB -> trasparente forzato a indice 0 (parametro --transparent ignorato).")

    # palette header C
    write_palette_header_c(os.path.join(args.out, f"{base}_pal.h"), pal16)

    # FN handling: start from FN input, decrease until all pages <= 8KB
    requested_FN = max(1, int(args.FN))
    current_FN = requested_FN

    chosen_as = chosen_sj = None
    chosen_bin = None
    chosen_seg_used = None
    chosen_frame_table = None
    chosen_FN = None

    while current_FN > 0:
        as_lines, sj_lines, bin_bytes, seg_used, frame_table = generate_for_FN(
            idx, args.N, args.M, transparent, current_FN, args.pad
        )
        ok = all(u <= 0x2000 for u in seg_used)
        if ok:
            chosen_as, chosen_sj, chosen_bin = as_lines, sj_lines, bin_bytes
            chosen_seg_used, chosen_frame_table = seg_used, frame_table
            chosen_FN = current_FN
            break
        current_FN -= 1

    if chosen_FN is None:
        raise ValueError("Nessun valore FN produce pagine <= 8KB. Riduci i dati o la densità dei run.")

    # warning & print FN used
    if chosen_FN != requested_FN:
        print(f"ATTENZIONE: FN={requested_FN} genera overflow (>8KB per pagina). Usato FN={chosen_FN}.")
    else:
        print(f"FN={chosen_FN} utilizzato (nessun overflow).")

    # build header report (both ASM)
    total_pages = len(chosen_seg_used)
    used_total = sum(chosen_seg_used)
    padded_total = total_pages * 0x2000

    header = []
    header.append("; =======================================================")
    header.append(f"; Sprite{args.N}x{args.M}  |  frames/page(FN)={chosen_FN}")
    header.append(f"; Pages: {total_pages}  |  Used bytes total: {used_total}  |  BIN size (padded): {padded_total}")
    header.append("; Timing: Z80+M1 (Grauw). IYq uses 10 cycles (Z80+M1).")
    header.append("; -------------------------------------------------------")
    header.append("; Frame | Bytes | Cycles(min) | Cycles(max)")
    header.append("; -------------------------------------------------------")
    for k, b, cmin, cmax in chosen_frame_table:
        header.append(f"; {k:04d}  | {b:5d} | {cmin:10d} | {cmax:10d}")
    header.append("; -------------------------------------------------------")
    header.append("; Segment usage (bytes, max 8192):")
    for i, sz in enumerate(chosen_seg_used):
        header.append(f";   SEG{100+i}: {sz}")
    header.append("; =======================================================")
    header.append("")

    # prepend headers
    chosen_as = header + chosen_as
    chosen_sj = header + chosen_sj

    # output filenames
    asm_name = os.path.join(args.out, f"Sprite{args.N}x{args.M}.asm")
    sj_name = os.path.join(args.out, f"Sprites{args.N}x{args.M}_sjasm.asm")
    bin_name = os.path.join(args.out, f"Sprites{args.N}x{args.M}.bin")

    with open(asm_name, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(chosen_as) + "\n")
    with open(sj_name, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(chosen_sj) + "\n")
    with open(bin_name, "wb") as f:
        f.write(chosen_bin)

    print("Output generati:")
    print(" ", asm_name)
    print(" ", sj_name)
    print(" ", bin_name)
    print(" ", os.path.join(args.out, f"{base}_pal.h"))
    print("Byte per pagina:", chosen_seg_used)


if __name__ == "__main__":
    main()
