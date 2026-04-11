#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import math
from pathlib import Path

from PIL import Image

CHARS_PER_ROW = 32
CHAR_W = 8
CHAR_H = 8

# Colori in scala di grigi: background bianco, "pixel acceso" nero
BG = 0
FG = 255

def bin_to_font_bmp(bin_path: Path) -> Path:
    data = bin_path.read_bytes()

    # Ogni carattere = 8 byte
    n_chars = len(data) // 8
    remainder = len(data) % 8
    if n_chars == 0:
        print(f"[SKIP] {bin_path.name}: file vuoto o troppo corto (< 8 byte).")
        return None

    if remainder != 0:
        print(f"[WARN] {bin_path.name}: lunghezza {len(data)} non multipla di 8; "
              f"ignoro gli ultimi {remainder} byte.")

    n_rows = math.ceil(n_chars / CHARS_PER_ROW)

    img_w = CHARS_PER_ROW * CHAR_W
    img_h = n_rows * CHAR_H

    # 'L' = 8-bit grayscale (compatibile e semplice per BMP)
    img = Image.new("L", (img_w, img_h), BG)
    px = img.load()

    # Disegno carattere per carattere
    for ci in range(n_chars):
        char_x = (ci % CHARS_PER_ROW) * CHAR_W
        char_y = (ci // CHARS_PER_ROW) * CHAR_H

        base = ci * 8
        glyph = data[base:base + 8]  # 8 righe

        for row in range(8):
            b = glyph[row]
            # bit MSB (7) = pixel x=0; bit LSB (0) = pixel x=7
            for col in range(8):
                bit = (b >> (7 - col)) & 1
                if bit:
                    px[char_x + col, char_y + row] = FG
                # else lascia BG

    out_path = bin_path.with_suffix(".bmp")
    img.save(out_path, format="BMP")
    print(f"[OK] {bin_path.name} -> {out_path.name} ({n_chars} caratteri, {img_w}x{img_h})")
    return out_path


def main():
    here = Path(".")
    bin_files = sorted([p for p in here.iterdir() if p.is_file() and p.suffix.lower() == ".bin"])

    if not bin_files:
        print("Nessun file .bin trovato nella directory corrente.")
        return

    for p in bin_files:
        try:
            bin_to_font_bmp(p)
        except Exception as e:
            print(f"[ERR] {p.name}: {e}")


if __name__ == "__main__":
    main()