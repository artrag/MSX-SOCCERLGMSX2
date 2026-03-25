#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
NewSpriteEncoder.py
Genera un file .bin unico da PNG 256xNNNN palettizzata a 16 colori,
con frame 16x16 px (16 per riga).

Ogni segmento nel .bin occupa ESATTAMENTE 8192 byte (padded con 0xFF).
Il machine code Z80 viene generato direttamente in Python, senza assembler.

Uso:
    python NewSpriteEncoder.py sprites.png output.bin --screenpos 0xC000
    python NewSpriteEncoder.py sprites.png output.bin --screenpos 0xC000 --frames-per-seg 4

--screenpos : indirizzo RAM (hex o dec) della variabile _ScreenPos nel progetto C.
              Recuperalo dalla map file dopo una compilazione (cerca _ScreenPos).
--frames-per-seg : numero fisso di frame per segmento (default 4).
              Deve corrispondere alla costante usata nel codice C per calcolare
              il numero del segmento: seg = SEG_BASE + frame_idx / FRAMES_PER_SEG

Palette soccerlg hard-coded (indici MSX SCREEN 5):
  0: #A349A4  TRASPARENTE
  1: #010101  Fisso  - Scarpe, capelli, maglietta arbitro
  2: #ED1C24  Fisso  - Frecce e pailettes ragazze pon-pon
  3: #F7D647  Fisso  - Pelle giocatori e arbitro
  4: #FFFFFF  Fisso  - Campo / quadrato focus
  5: #000C7B  Fisso  - Campo di calcio
  6: #00B800  Fisso  - Campo di calcio
  7: #7F7F7F  Fisso  - Campo di calcio
  8: #DD9C48  Fisso  - Campo di calcio
  9: #F6D543  Fisso  - Campo di calcio
  A: #880015  Var   - Contorni maglietta squadra 1
  B: #4CB7DA  Var   - Maglietta squadra 1
  C: #FAF70F  Var   - Pantaloncini squadra 1
  D: #FDFDFD  Var   - Contorni maglietta squadra 2
  E: #3F48CC  Var   - Maglietta squadra 2
  F: #FEFEFE  Var   - Pantaloncini squadra 2
"""

import argparse
import math
from pathlib import Path

import numpy as np
from PIL import Image

# -------------------------
# Layout immagine / frame
# -------------------------
IMG_W          = 256
FRAME_W        = 16
FRAME_H        = 16
FRAMES_PER_ROW = 16

# -------------------------
# Schermo: 256 px = 128 byte
# -------------------------
SCREEN_BYTES_PER_LINE = 128

# -------------------------
# Segmenti ROM
# -------------------------
SEG_ADDR       = 0xA000   # tutti i segmenti mappano a questo indirizzo Z80
SEG_SIZE       = 8192     # 8 KB esatti
PAD_BYTE       = 0xFF     # byte di riempimento
FRAMES_PER_SEG = 4        # default frame per segmento


# =============================================================================
# Palette hard-coded
# =============================================================================

PALETTE = {
    0x0: ("#A349A4", "TRASPARENTE"),
    0x1: ("#010101", "Fisso  - Scarpe, capelli, maglietta arbitro"),
    0x2: ("#ED1C24", "Fisso  - Frecce e pailettes ragazze pon-pon"),
    0x3: ("#F7D647", "Fisso  - Pelle giocatori e arbitro"),
    0x4: ("#FFFFFF", "Fisso  - Campo / quadrato focus"),
    0x5: ("#000C7B", "Fisso  - Campo di calcio"),
    0x6: ("#00B800", "Fisso  - Campo di calcio"),
    0x7: ("#7F7F7F", "Fisso  - Campo di calcio"),
    0x8: ("#DD9C48", "Fisso  - Campo di calcio"),
    0x9: ("#F6D543", "Fisso  - Campo di calcio"),
    0xA: ("#880015", "Var    - Contorni maglietta squadra 1"),
    0xB: ("#4CB7DA", "Var    - Maglietta squadra 1"),
    0xC: ("#FAF70F", "Var    - Pantaloncini squadra 1"),
    0xD: ("#FDFDFD", "Var    - Contorni maglietta squadra 2"),
    0xE: ("#3F48CC", "Var    - Maglietta squadra 2"),
    0xF: ("#FEFEFE", "Var    - Pantaloncini squadra 2"),
}

TRANSPARENT_IDX = 0


def print_palette_report():
    print("=== Palette soccerlg (hard-coded) ===")
    print(f"  {'Idx':>3}  {'#HEX':>7}  Descrizione")
    print(f"  {'---':>3}  {'-------':>7}  -----------")
    for idx in range(16):
        hex_col, desc = PALETTE[idx]
        marker = " <- TRASPARENTE" if idx == TRANSPARENT_IDX else ""
        print(f"  {idx:>3X}  {hex_col}  {desc}{marker}")
    print()


# =============================================================================
# Caricamento immagine
# =============================================================================

def load_image(path):
    """
    Carica PNG e ritorna array indici (uint8).
    Se mode 'P': indici letti direttamente.
    Se RGBA/RGB: rimappatura al colore piu' vicino nella palette hard-coded.
    """
    im = Image.open(path)

    if im.mode == "P":
        arr = np.array(im, dtype=np.uint8)
        print(f"  Modalita': P (gia' indicizzata)")
        return arr, im.size

    print(f"  Modalita': {im.mode} -> conversione automatica agli indici palette hard-coded")
    rgb_im  = im.convert("RGB")
    rgb_arr = np.array(rgb_im, dtype=np.uint8)
    H, W, _ = rgb_arr.shape

    pal_rgb = np.array(
        [tuple(int(PALETTE[i][0][j:j+2], 16) for j in (1, 3, 5)) for i in range(16)],
        dtype=np.float32
    )
    pixels  = rgb_arr.reshape(-1, 3).astype(np.float32)
    diff    = pixels[:, np.newaxis, :] - pal_rgb[np.newaxis, :, :]
    dist    = np.sum(diff ** 2, axis=2)
    indices = np.argmin(dist, axis=1).astype(np.uint8)
    arr     = indices.reshape(H, W)

    max_dist = int(np.min(dist, axis=1).max())
    if max_dist > 0:
        print(f"  AVVISO: distanza massima dal colore piu' vicino = {max_dist}")

    return arr, (W, H)


# =============================================================================
# RUN extraction
# =============================================================================

def find_runs_in_row(row_pixels):
    W = row_pixels.shape[0]
    assert W == FRAME_W

    segs = []
    in_seg = False
    s = 0
    for x in range(W):
        if row_pixels[x] != TRANSPARENT_IDX:
            if not in_seg:
                in_seg = True
                s = x
        else:
            if in_seg:
                in_seg = False
                segs.append((s, x - 1))
    if in_seg:
        segs.append((s, W - 1))

    if not segs:
        return []

    adj = []
    for s, e in segs:
        s2 = s if s % 2 == 0 else s - 1
        e2 = e if e % 2 == 1 else e + 1
        adj.append((max(s2, 0), min(e2, W - 1)))

    adj.sort()
    merged = [adj[0]]
    for s2, e2 in adj[1:]:
        ps, pe = merged[-1]
        if s2 <= pe + 1:
            merged[-1] = (ps, max(pe, e2))
        else:
            merged.append((s2, e2))
    return merged


def pack_pixels_to_bytes(pix):
    assert len(pix) % 2 == 0
    return [((int(pix[i]) & 0xF) << 4) | (int(pix[i+1]) & 0xF)
            for i in range(0, len(pix), 2)]


def extract_frame_runs(frame16x16):
    runs = []
    for r in range(FRAME_H):
        for x0, x1 in find_runs_in_row(frame16x16[r, :]):
            runs.append({
                "row":        r,
                "x0":         x0,
                "x1":         x1,
                "start_byte": x0 // 2,
                "data":       pack_pixels_to_bytes(frame16x16[r, x0:x1+1]),
            })
    runs.sort(key=lambda d: (d["row"], d["x0"]))
    return runs


# =============================================================================
# Calcolo dimensioni esatte in byte del codice Z80 generato
# =============================================================================
#
# Preamble (include LD C,0x98):
#   LD C,0x98(2) LD DE,nn(3) LD HL,(nn)(3) ADD HL,DE(1) LD A,H(1)
#   RLCA(1) RLCA(1) AND n(2) LD IXL,A(2) DI(1) OUT(2) LD A,n(2)
#   EI(1) OUT(2) LD A,H(1) OR n(2) LD D,A(1) LD E,L(1) LD HL,nn(3)
#   = 32 byte
#
# Run header:
#   LD A,E(1) DI(1) OUT(2) LD A,D(1) AND n(2) EI(1) OUT(2) = 10 byte
#
# OUTI: 2 byte ciascuno
#
# Offset block small (delta <= 255): 27 byte
# Offset block big   (delta >  255): 30 byte
#
# RET: 1 byte

PREAMBLE_SIZE  = 30  # rimosso LD IXL,A (2 byte)
RUN_HDR_SIZE   = 10
OUTI_SIZE      = 2
SMALL_BLK_SIZE = 8   # rimosso page update IXL
BIG_BLK_SIZE   = 8   # rimosso page update IXL
RET_SIZE       = 1
EMPTY_FRAME_SIZE = 3   # LD C(2) + RET(1)


def frame_code_size(runs):
    """Dimensione ESATTA in byte del codice della frame (no dati)."""
    if not runs:
        return EMPTY_FRAME_SIZE
    size = PREAMBLE_SIZE
    for i, r in enumerate(runs):
        size += RUN_HDR_SIZE
        size += OUTI_SIZE * len(r["data"])
        if i < len(runs) - 1:
            nxt   = runs[i + 1]
            delta = ((nxt["row"] - r["row"]) * SCREEN_BYTES_PER_LINE
                     + (nxt["start_byte"] - r["start_byte"]))
            size += SMALL_BLK_SIZE if delta <= 255 else BIG_BLK_SIZE
    size += RET_SIZE
    return size


def jumptable_size(fps):
    """3 NOP + fps*(JP=3 + NOP=1) + RET=1"""
    return 3 + fps * 4 + 1


# =============================================================================
# Generatore binario Z80
# =============================================================================

def emit_frame(buf, runs, frame_base, data_addr, screenpos_addr):
    """
    Appende in buf il machine code Z80 della frame.
    frame_base    : indirizzo Z80 assoluto del primo byte di questa frame.
    data_addr     : indirizzo Z80 assoluto dove risiedono i dati (run data).
    screenpos_addr: indirizzo RAM di _ScreenPos.
    """
    def w(*bs):
        buf.extend(bs)

    def wnn(addr):
        buf.append(addr & 0xFF)
        buf.append((addr >> 8) & 0xFF)

    w(0x0E, 0x98)          # LD C, 0x98

    if not runs:
        w(0xC9)            # RET
        return

    first  = runs[0]
    de_val = first["row"] * SCREEN_BYTES_PER_LINE + first["start_byte"]

    # Preamble
    w(0x11);      wnn(de_val)          # LD DE, de_val
    w(0x2A);      wnn(screenpos_addr)  # LD HL, (_ScreenPos)
    w(0x19)                            # ADD HL, DE
    w(0x7C)                            # LD A, H
    w(0x07)                            # RLCA
    w(0x07)                            # RLCA
    w(0xE6, 0x03)                      # AND 0x03
    w(0xF3)                            # DI
    w(0xD3, 0x99)                      # OUT (0x99), A
    w(0x3E, 0x8E)                      # LD A, 0x8E
    w(0xFB)                            # EI
    w(0xD3, 0x99)                      # OUT (0x99), A
    w(0x7C)                            # LD A, H
    w(0xF6, 0xC0)                      # OR 0xC0
    w(0x57)                            # LD D, A
    w(0x5D)                            # LD E, L
    w(0x21);      wnn(data_addr)       # LD HL, data_addr

    # frame_offset = byte emessi dalla LD C in poi (= 32 dopo il preamble)
    frame_offset = PREAMBLE_SIZE

    for i, r in enumerate(runs):
        # Run header: 10 byte
        w(0x7B)            # LD A, E
        w(0xF3)            # DI
        w(0xD3, 0x99)      # OUT (0x99), A
        w(0x7A)            # LD A, D
        w(0xE6, 0x7F)      # AND 0x7F
        w(0xFB)            # EI
        w(0xD3, 0x99)      # OUT (0x99), A
        frame_offset += RUN_HDR_SIZE

        # OUTI x n
        for _ in r["data"]:
            w(0xED, 0xA3)  # OUTI
            frame_offset += OUTI_SIZE

        if i == len(runs) - 1:
            break          # ultimo run: nessun offset block

        nxt   = runs[i + 1]
        delta = ((nxt["row"] - r["row"]) * SCREEN_BYTES_PER_LINE
                 + (nxt["start_byte"] - r["start_byte"]))

        if delta <= 255:
            # Small block: 8 byte
            test_addr = frame_base + frame_offset + SMALL_BLK_SIZE
            w(0x7B)                    # LD A, E   +1
            w(0xC6, delta & 0xFF)      # ADD A, n  +2
            w(0x5F)                    # LD E, A   +1
            w(0xD2); wnn(test_addr)    # JP NC     +3
            w(0x14)                    # INC D     +1
            # test:
            frame_offset += SMALL_BLK_SIZE

        else:
            # Big offset block: 27 byte
            # CORREZIONE: ADC A,hi deve essere SEMPRE eseguito (non condizionale)
            # Il JP NC protegge solo l'aggiornamento della pagina VDP (IXL/reg14).
            lo = delta & 0xFF
            hi = (delta >> 8) & 0xFF
            # Big block: 8 byte
            lo = delta & 0xFF
            hi = (delta >> 8) & 0xFF
            w(0x7B)                    # LD A, E   +1
            w(0xC6, lo)                # ADD A, lo +2
            w(0x5F)                    # LD E, A   +1
            w(0x7A)                    # LD A, D   +1
            w(0xCE, hi)                # ADC A, hi +2
            w(0x57)                    # LD D, A   +1
            # test:
            frame_offset += BIG_BLK_SIZE

    w(0xC9)  # RET



# =============================================================================
# Generatore sorgente ASM (testo leggibile, rispecchia esattamente il bin)
# =============================================================================

def asm_frame(frame_idx, runs, frame_base, data_addr, screenpos_addr):
    """Ritorna stringa ASM per una frame, identica al bin generato da emit_frame."""
    BASE = SEG_ADDR
    L = []
    a = L.append

    label_f    = f"Frame{frame_idx:04d}"
    label_data = f"dataFrame{frame_idx:04d}"

    a(f"{label_f}:")
    a(f"    ld   c, 0x98")

    if not runs:
        a("    ret")
        a(f"{label_data}:  ; frame vuota")
        a("")
        return "\n".join(L) + "\n"

    first  = runs[0]
    de_val = first["row"] * SCREEN_BYTES_PER_LINE + first["start_byte"]

    a(f"    ld   de, 0x{de_val:04X}          ; 128*row({first['row']}) + sb({first['start_byte']})")
    a(f"    ld   hl, (0x{screenpos_addr:04X})      ; (_ScreenPos)")
    a("    add  hl, de")
    a("    ld   a, h")
    a("    rlca")
    a("    rlca")
    a("    and  0x03")
    a("    di")
    a("    out  (0x99), a")
    a("    ld   a, 0x8E")
    a("    ei")
    a("    out  (0x99), a")
    a("    ld   a, h")
    a("    or   0xC0")
    a("    ld   d, a")
    a("    ld   e, l")
    a(f"    ld   hl, {label_data}")
    a("")

    frame_offset = PREAMBLE_SIZE

    for i, r in enumerate(runs):
        test_label = f"Trun{frame_idx:04d}_{i:04d}"
        run_len    = len(r["data"])

        a(f"    ; run {i}: row={r['row']} x={r['x0']}..{r['x1']} ({run_len} byte)")
        a("    ld   a, e")
        a("    di")
        a("    out  (0x99), a")
        a("    ld   a, d")
        a("    and  0x7F")
        a("    ei")
        a("    out  (0x99), a")
        if run_len == 1:
            a("    outi")
        else:
            a(f"    .rept {run_len}")
            a("    outi")
            a("    .endm")
        a("")

        frame_offset += RUN_HDR_SIZE + OUTI_SIZE * run_len

        if i == len(runs) - 1:
            break

        nxt   = runs[i + 1]
        delta = ((nxt["row"] - r["row"]) * SCREEN_BYTES_PER_LINE
                 + (nxt["start_byte"] - r["start_byte"]))

        if delta <= 255:
            test_addr = frame_base + frame_offset + SMALL_BLK_SIZE
            a(f"    ld   a, e")
            a(f"    add  a, 0x{delta & 0xFF:02X}        ; delta={delta}")
            a("    ld   e, a")
            a(f"    jp   nc, {test_label}")
            a("    inc  d")
            a(f"{test_label}:")
            a("")
            frame_offset += SMALL_BLK_SIZE
        else:
            lo = delta & 0xFF
            hi = (delta >> 8) & 0xFF
            a(f"    ld   a, e")
            a(f"    add  a, 0x{lo:02X}        ; delta={delta} lo")
            a("    ld   e, a")
            a("    ld   a, d")
            a(f"    adc  a, 0x{hi:02X}        ; delta hi + carry")
            a("    ld   d, a")
            a(f"{test_label}:  ; (nessun jp: big block senza page guard)")
            a("")
            frame_offset += BIG_BLK_SIZE

    a("    ret")
    a("")

    # Dati
    a(f"{label_data}:")
    for i, r in enumerate(runs):
        data = r["data"]
        hex_vals = ", ".join(f"0x{b:02X}" for b in data)
        a(f"    ; run {i}: row={r['row']} x={r['x0']}..{r['x1']}")
        a(f"    db   {hex_vals}")
    a("")

    return "\n".join(L) + "\n"


def asm_segment(seg_idx, frames_runs, fps, screenpos_addr, frame_code_addrs, frame_data_addrs):
    """Ritorna stringa ASM per un intero segmento."""
    BASE           = SEG_ADDR
    jt_sz          = jumptable_size(fps)
    frame_empty_addr = BASE + jt_sz - 1
    seg_num        = seg_idx        # 0-based
    real_seg       = 100 + seg_idx

    L = []
    a = L.append

    a(f"; ============================================================")
    a(f"; Segmento {real_seg}  (_SEG{real_seg})")
    a(f"; Frame: {frames_runs[0][0]:04d} .. {frames_runs[-1][0]:04d}")
    a(f"; Orgine Z80: 0x{BASE:04X}  |  Frames/seg: {fps}")
    a(f"; ============================================================")
    a("")
    a(f"    .org 0x{BASE:04X}")
    a("")

    # Jump table
    a("; --- Jump Table ---")
    a("    nop")
    a("    nop")
    a("    nop")
    for i in range(fps):
        if i < len(frames_runs):
            fi     = frames_runs[i][0]
            target = frame_code_addrs[i]
            a(f"    jp   Frame{fi:04d}        ; 0x{target:04X}")
        else:
            a(f"    jp   FrameEmpty       ; 0x{frame_empty_addr:04X}")
        a("    nop")
    a("FrameEmpty:")
    a("    ret")
    a("")

    # Codice frame
    for fi_idx, (fi, runs) in enumerate(frames_runs):
        a(f"; --- Frame{fi:04d} @ 0x{frame_code_addrs[fi_idx]:04X} ---")
        a(asm_frame(fi, runs, frame_code_addrs[fi_idx],
                    frame_data_addrs[fi_idx], screenpos_addr))

    return "\n".join(L) + "\n"

def emit_segment(frames_runs, fps, screenpos_addr):
    """
    Genera il binario di un segmento: esattamente SEG_SIZE byte.

    frames_runs : lista di (frame_idx, runs) per questo segmento.
    fps         : frame per segmento (fisso, determina jump-table).
    screenpos_addr: indirizzo RAM di _ScreenPos.

    Layout in memoria a SEG_ADDR (0xA000):
      [0x0000] jump table   : 3 NOP + fps*(JP nn + NOP) + RET(FrameEmpty)
      [jt_size] frame 0 code
      [...]     frame 1 code
      ...
      [data_start] frame 0 data (tutti i run bytes)
      [...]        frame 1 data
      [...]        padding 0xFF fino a SEG_SIZE
    """
    BASE   = SEG_ADDR
    jt_sz  = jumptable_size(fps)

    # ---- Pass 1: calcola gli indirizzi assoluti Z80 ----
    # Indirizzi del codice frame
    frame_code_addrs = []
    pos = jt_sz
    for _, runs in frames_runs:
        frame_code_addrs.append(BASE + pos)
        pos += frame_code_size(runs)

    # Indirizzi dei dati frame
    frame_data_addrs = []
    for _, runs in frames_runs:
        frame_data_addrs.append(BASE + pos)
        pos += sum(len(r["data"]) for r in runs)

    total_used = pos
    if total_used > SEG_SIZE:
        raise OverflowError(
            f"Segmento overflow: {total_used} byte > {SEG_SIZE} limite. "
            f"Riduci --frames-per-seg."
        )

    # FrameEmpty: l'ultimo byte della jump table (il RET)
    frame_empty_addr = BASE + jt_sz - 1

    # ---- Pass 2: emissione byte ----
    buf = bytearray()

    def w(*bs):
        buf.extend(bs)

    def wnn(addr):
        buf.append(addr & 0xFF)
        buf.append((addr >> 8) & 0xFF)

    # Jump table
    w(0x00, 0x00, 0x00)              # 3x NOP
    for i in range(fps):
        if i < len(frames_runs):
            target = frame_code_addrs[i]
        else:
            target = frame_empty_addr
        w(0xC3); wnn(target)         # JP target
        w(0x00)                       # NOP
    w(0xC9)                           # FrameEmpty: RET

    assert len(buf) == jt_sz, f"jump table size mismatch: {len(buf)} != {jt_sz}"

    # Codice frame
    for fi, (_, runs) in enumerate(frames_runs):
        expected_start = frame_code_addrs[fi] - BASE
        assert len(buf) == expected_start, \
            f"frame {fi} code addr mismatch: buf={len(buf)} expected={expected_start}"
        emit_frame(buf, runs, frame_code_addrs[fi], frame_data_addrs[fi], screenpos_addr)

    # Dati run
    for _, runs in frames_runs:
        for r in runs:
            buf.extend(r["data"])

    assert len(buf) == total_used, f"size mismatch after data: {len(buf)} != {total_used}"

    # Padding
    buf.extend(bytes([PAD_BYTE] * (SEG_SIZE - len(buf))))
    assert len(buf) == SEG_SIZE

    return buf, frame_code_addrs, frame_data_addrs


# =============================================================================
# Main
# =============================================================================

def main():
    ap = argparse.ArgumentParser(
        description=(
            "Genera un file .bin MSX da PNG 256xH con frame 16x16 (16 per riga).\n"
            "Ogni segmento nel .bin occupa esattamente 8192 byte.\n"
            "Palette hard-coded: indice 0 = trasparente (#A349A4)."
        ),
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    ap.add_argument("input_png", type=Path,
                    help="PNG palettizzata 256xNNNN")
    ap.add_argument("output_bin", type=Path,
                    help="File .bin di output (tutti i segmenti concatenati)")
    ap.add_argument(
        "--screenpos", required=True,
        help=(
            "Indirizzo RAM (hex 0xNNNN o dec) della variabile _ScreenPos. "
            "Recuperalo dalla map file SDCC dopo la compilazione."
        )
    )
    ap.add_argument(
        "--frames-per-seg", type=int, default=FRAMES_PER_SEG, metavar="N",
        help=(
            f"Frame per segmento, fisso (default {FRAMES_PER_SEG}). "
            "Usare lo stesso valore nel codice C: seg = SEG_BASE + frame / N."
        )
    )
    ap.add_argument("--strict16", action="store_true",
                    help="Errore se trova indici palette >= 16 (default: warning)")
    ap.add_argument("--debug-frame", type=int, default=None, metavar="N",
                    help="Stampa layout run del frame N e termina (senza generare .bin)")
    ap.add_argument("--asm", type=Path, default=None, metavar="FILE",
                    help="Scrivi anche il sorgente ASM in questo file .txt/.asm")
    args = ap.parse_args()

    # Parsa screenpos (accetta 0xNNNN o decimale)
    sp_str = args.screenpos.strip()
    screenpos_addr = int(sp_str, 16) if sp_str.lower().startswith("0x") else int(sp_str)
    fps = args.frames_per_seg

    # Caricamento immagine
    arr, (w, h) = load_image(args.input_png)
    print(f"Immagine: {args.input_png}  ({w}x{h} px)\n")

    if w != IMG_W:
        raise ValueError(f"Larghezza attesa {IMG_W}, trovata {w}")
    if h % FRAME_H != 0:
        raise ValueError(f"Altezza {h} non multipla di {FRAME_H}")

    print_palette_report()

    max_idx = int(arr.max())
    if max_idx >= 16:
        msg = f"Pixel index massimo = {max_idx} (atteso < 16 per MSX SCREEN 5)."
        if args.strict16:
            raise ValueError(msg)
        else:
            print(f"WARNING: {msg}")

    rows_of_frames = h // FRAME_H
    total_frames   = rows_of_frames * FRAMES_PER_ROW
    num_segs       = math.ceil(total_frames / fps)

    jt_sz = jumptable_size(fps)
    print(f"Frame totali : {total_frames}")
    print(f"Frames/seg   : {fps}  ->  {num_segs} segmenti")
    print(f"_ScreenPos   : 0x{screenpos_addr:04X}")
    print(f"Jump-table   : {jt_sz} byte  |  Limite: {SEG_SIZE} byte/segmento\n")

    # Pre-calcola tutti i run
    all_runs = []
    for f in range(total_frames):
        fy    = (f // FRAMES_PER_ROW) * FRAME_H
        fx    = (f %  FRAMES_PER_ROW) * FRAME_W
        frame = arr[fy:fy + FRAME_H, fx:fx + FRAME_W]
        all_runs.append(extract_frame_runs(frame))

    # Debug: stampa layout di un frame specifico
    if args.debug_frame is not None:
        fn = args.debug_frame
        if fn < 0 or fn >= total_frames:
            print(f"Frame {fn} fuori range (0..{total_frames-1})")
        else:
            runs = all_runs[fn]
            seg  = fn // fps
            local = fn % fps
            print(f"\n=== Frame {fn} (seg {seg + 100}, local {local}) ===")
            print(f"  Run totali: {len(runs)}")
            print(f"  Codice: {frame_code_size(runs)} byte  Dati: {sum(len(r['data']) for r in runs)} byte")
            for i, r in enumerate(runs):
                tag = ""
                if i < len(runs) - 1:
                    nxt   = runs[i+1]
                    delta = ((nxt['row'] - r['row']) * SCREEN_BYTES_PER_LINE
                             + (nxt['start_byte'] - r['start_byte']))
                    tag = f"  -> delta={delta} ({'BIG' if delta > 255 else 'small'})"
                print(f"  run {i:3d}: row={r['row']:2d} x={r['x0']:2d}..{r['x1']:2d} "
                      f"sb={r['start_byte']} bytes={len(r['data'])}{tag}")
        return

    # Controllo overflow anticipato
    any_overflow = False
    for seg_idx in range(num_segs):
        f0  = seg_idx * fps
        f1  = min(total_frames, f0 + fps)
        est = jt_sz + sum(
            frame_code_size(all_runs[f]) + sum(len(r["data"]) for r in all_runs[f])
            for f in range(f0, f1)
        )
        if est > SEG_SIZE:
            print(f"  OVERFLOW seg {seg_idx}: ~{est} byte "
                  f"(eccede {SEG_SIZE} di {est - SEG_SIZE}) "
                  f"[frame {f0}..{f1-1}]")
            any_overflow = True

    if any_overflow:
        print("\nRiduci --frames-per-seg e riprova.\n")
        return

    # Generazione .bin (+ ASM opzionale)
    args.output_bin.parent.mkdir(parents=True, exist_ok=True)
    out_bytes  = bytearray()
    asm_lines  = []

    if args.asm:
        asm_lines.append(
            f"; Auto-generato da NewSpriteEncoder.py\n"
            f"; PNG: {args.input_png}\n"
            f"; _ScreenPos: 0x{screenpos_addr:04X}\n"
            f"; Frames/seg: {fps}\n"
            f"; Segmenti: {num_segs}  (seg 100 .. {99 + num_segs})\n"
            f";\n\n"
        )

    for seg_idx in range(num_segs):
        f0          = seg_idx * fps
        f1          = min(total_frames, f0 + fps)
        frames_runs = [(f, all_runs[f]) for f in range(f0, f1)]

        seg_bin, fc_addrs, fd_addrs = emit_segment(frames_runs, fps, screenpos_addr)
        out_bytes.extend(seg_bin)

        used = jt_sz + sum(
            frame_code_size(r) + sum(len(x["data"]) for x in r)
            for _, r in frames_runs
        )
        print(f"  seg {seg_idx:3d}: frame {f0:04d}..{f1-1:04d}  "
              f"{used:4d}/{SEG_SIZE} byte  "
              f"({SEG_SIZE - used:4d} liberi)")

        if args.asm:
            asm_lines.append(
                asm_segment(seg_idx, frames_runs, fps, screenpos_addr, fc_addrs, fd_addrs)
            )

    args.output_bin.write_bytes(out_bytes)
    total_kb = len(out_bytes) / 1024
    print(f"\nScritto: {args.output_bin}  "
          f"({num_segs} segmenti x {SEG_SIZE} byte = {len(out_bytes)} byte = {total_kb:.1f} KB)")

    if args.asm:
        args.asm.write_text("".join(asm_lines), encoding="utf-8")
        print(f"Sorgente ASM: {args.asm}")

    print("Done.")


if __name__ == "__main__":
    main()
