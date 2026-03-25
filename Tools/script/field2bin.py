#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
field2bin.py
Carica un PNG del campo di calcio (RGB o palettizzato),
rimappa ogni pixel alla palette MSX hard-coded,
e genera il .bin pronto per essere caricato in VRAM su MSX Screen 5
(2 pixel per byte, nibble alto = pixel sinistro).

Uso:
    python field2bin.py campo.png output.bin

Il PNG in ingresso deve essere 256 pixel di larghezza.
Se l'altezza supera 256 righe il bin viene troncato a 256 righe (32KB).
Se l'altezza è inferiore a 256 righe il bin viene paddato con 0x66 (verde).
"""

import argparse
import sys
from pathlib import Path

import numpy as np
from PIL import Image

# =============================================================================
# Palette MSX hard-coded (indici 0-15)
# =============================================================================
# Formato: indice -> (R, G, B)
MSX_PALETTE = {
    0x0: (0xA3, 0x49, 0xA4),  # TRASPARENTE
    0x1: (0x01, 0x01, 0x01),  # Nero
    0x2: (0xED, 0x1C, 0x24),  # Rosso
    0x3: (0xF7, 0xD6, 0x47),  # Giallo pelle
    0x4: (0xFF, 0xFF, 0xFF),  # Bianco
    0x5: (0x00, 0x0C, 0x7B),  # Blu scuro
    0x6: (0x00, 0xB8, 0x00),  # Verde
    0x7: (0x7F, 0x7F, 0x7F),  # Grigio
    0x8: (0xDD, 0x9C, 0x48),  # Arancio
    0x9: (0xF6, 0xD5, 0x43),  # Giallo campo
    0xA: (0x88, 0x00, 0x15),  # Rosso scuro
    0xB: (0x4C, 0xB7, 0xDA),  # Azzurro
    0xC: (0xFA, 0xF7, 0x0F),  # Giallo brillante
    0xD: (0xFD, 0xFD, 0xFD),  # Bianco sporco
    0xE: (0x3F, 0x48, 0xCC),  # Blu
    0xF: (0xFE, 0xFE, 0xFE),  # Bianco quasi puro
}

# Colori usati nel campo (0-9). I pixel del campo non devono mai
# produrre indici 0xA-0xF (riservati agli sprite).
FIELD_PALETTE_INDICES = list(range(10))


def build_palette_array(indices=None):
    """
    Ritorna np.array shape (N, 3) con i colori della palette.
    Se indices è None usa tutti i 16.
    """
    if indices is None:
        indices = list(range(16))
    return np.array([MSX_PALETTE[i] for i in indices], dtype=np.float32)


def remap_to_msx(img_rgb, restrict_to_field=True):
    """
    Rimappa ogni pixel dell'immagine RGB all'indice MSX più vicino.
    Se restrict_to_field=True usa solo gli indici 0-9 (colori campo).
    Ritorna np.array uint8 shape (H, W) con indici 0-15.
    """
    arr = np.array(img_rgb.convert("RGB"), dtype=np.float32)
    H, W, _ = arr.shape

    if restrict_to_field:
        use_indices = FIELD_PALETTE_INDICES
    else:
        use_indices = list(range(16))

    pal = build_palette_array(use_indices)  # shape (N, 3)
    pixels = arr.reshape(-1, 3)             # shape (H*W, 3)

    # Distanza euclidea quadrata tra ogni pixel e i colori palette
    diff = pixels[:, np.newaxis, :] - pal[np.newaxis, :, :]  # (H*W, N, 3)
    dist = np.sum(diff ** 2, axis=2)                          # (H*W, N)
    nearest = np.argmin(dist, axis=1)                         # (H*W,) indici in use_indices

    # Converti in indici palette MSX
    msx_indices = np.array([use_indices[i] for i in nearest], dtype=np.uint8)
    return msx_indices.reshape(H, W)


def pack_to_bin(indexed_arr):
    """
    Converte array (H, W) di indici 0-15 in bytes MSX Screen 5:
    2 pixel per byte, nibble alto = pixel pari, nibble basso = pixel dispari.
    Ritorna bytearray di lunghezza H * W/2.
    """
    H, W = indexed_arr.shape
    assert W % 2 == 0, "Larghezza deve essere pari"
    flat = indexed_arr.reshape(H, W)
    lo = flat[:, 1::2].astype(np.uint8)   # pixel dispari (nibble basso)
    hi = flat[:, 0::2].astype(np.uint8)   # pixel pari   (nibble alto)
    packed = ((hi & 0x0F) << 4) | (lo & 0x0F)
    return bytearray(packed.flatten())


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("input_png", type=Path, help="PNG campo (qualsiasi mode, larghezza 256)")
    ap.add_argument("output_bin", type=Path, help="File .bin di output (max 32768 byte)")
    ap.add_argument("--all-colors", action="store_true",
                    help="Usa tutti i 16 colori MSX invece di limitarsi a 0-9")
    ap.add_argument("--rows", type=int, default=256,
                    help="Righe da includere nel bin (default 256 = 32KB)")
    args = ap.parse_args()

    # --- Carica immagine ---
    im = Image.open(args.input_png)
    w, h = im.size
    print(f"Immagine: {args.input_png}  ({w}x{h} px, mode {im.mode})")

    if w != 256:
        print(f"ERRORE: larghezza deve essere 256, trovata {w}", file=sys.stderr)
        sys.exit(1)

    # --- Rimappatura palette ---
    restrict = not args.all_colors
    print(f"Rimappatura a {'indici 0-9 (campo)' if restrict else 'tutti i 16 indici MSX'}...")
    indexed = remap_to_msx(im, restrict_to_field=restrict)

    unique = sorted(set(indexed.flatten()))
    print(f"Indici MSX usati nel risultato: {[hex(x) for x in unique]}")

    # --- Padding / troncamento a args.rows righe ---
    target_rows = args.rows
    if h >= target_rows:
        indexed = indexed[:target_rows, :]
        print(f"Troncato a {target_rows} righe")
    else:
        pad = np.full((target_rows - h, 256), 0x6, dtype=np.uint8)  # verde
        indexed = np.vstack([indexed, pad])
        print(f"Paddato con verde (indice 6) fino a {target_rows} righe")

    # --- Salva preview PNG palettizzato ---
    preview_path = args.output_bin.with_suffix(".preview.png")
    preview = Image.new("P", (256, target_rows))
    pal_flat = []
    for i in range(16):
        r, g, b = MSX_PALETTE[i]
        pal_flat += [r, g, b]
    pal_flat += [0, 0, 0] * (256 - 16)
    preview.putpalette(pal_flat)
    preview.frombytes(indexed.astype(np.uint8).tobytes())
    preview.save(preview_path)
    print(f"Preview PNG: {preview_path}")

    # --- Genera bin ---
    bin_data = pack_to_bin(indexed)
    expected = target_rows * 128
    assert len(bin_data) == expected, f"Dimensione bin errata: {len(bin_data)} != {expected}"

    args.output_bin.write_bytes(bin_data)
    print(f"Scritto: {args.output_bin}  ({len(bin_data)} byte = {len(bin_data)//1024} KB)")
    print("Done.")


if __name__ == "__main__":
    main()