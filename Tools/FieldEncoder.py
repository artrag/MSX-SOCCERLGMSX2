#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
from pathlib import Path
from PIL import Image

def die(msg):
    raise SystemExit(msg)

# La tua palette originale (mappata da HEX a RGB)
MY_PALETTE_RGB = [
    (163, 73, 164), (1, 1, 1), (237, 28, 36), (247, 214, 71),
    (255, 255, 255), (0, 12, 123), (0, 184, 0), (127, 127, 127),
    (221, 156, 72), (246, 213, 67), (136, 0, 21), (76, 183, 218),
    (250, 247, 15), (253, 253, 253), (63, 72, 204), (254, 254, 254),
]

def get_best_match_index(pixel, palette):
    """Trova l'indice del colore in palette più vicino al pixel RGB."""
    r, g, b = pixel[:3]
    min_dist = float('inf')
    best_idx = 0
    for i, (pr, pg, pb) in enumerate(palette):
        # Distanza euclidea al quadrato (più veloce)
        dist = (r - pr)**2 + (g - pg)**2 + (b - pb)**2
        if dist == 0: return i # Match perfetto, esci subito
        if dist < min_dist:
            min_dist = dist
            best_idx = i
    return best_idx

def force_exact_palette(img):
    """
    Crea una nuova immagine indicizzata mappando ogni pixel RGB 
    all'indice corretto della nostra palette.
    """
    if img.mode != "RGB":
        img = img.convert("RGB")
    
    width, height = img.size
    # Nuova immagine 'P' (8-bit palette)
    new_img = Image.new("P", (width, height))
    
    # Prepariamo la palette per Pillow (768 valori)
    flat_pal = []
    for rgb in MY_PALETTE_RGB: flat_pal.extend(rgb)
    flat_pal += [0] * (768 - len(flat_pal))
    new_img.putpalette(flat_pal)

    # Mappatura manuale pixel per pixel
    pixels = img.getdata()
    new_data = [get_best_match_index(p, MY_PALETTE_RGB) for p in pixels]
    new_img.putdata(new_data)
    
    return new_img

def pack_2bpp_nibbles(rows_bytes):
    out = bytearray()
    for row in rows_bytes:
        for x in range(0, 256, 2):
            # Qui non serve più il troncamento perché force_exact_palette 
            # garantisce indici 0-15
            val = (row[x] << 4) | row[x + 1]
            out.append(val)
    return bytes(out)

# [Le funzioni find_full_match e match_tail_overlap rimangono le stesse]
def find_full_match(out_rows, strip_rows):
    h = len(strip_rows); out_h = len(out_rows); max_y = out_h - h
    if max_y < 0: return None
    for y in range(max_y + 1):
        if all(out_rows[y+i] == strip_rows[i] for i in range(h)): return y
    return None

def match_tail_overlap(out_rows, strip_rows):
    h = len(strip_rows)
    if h <= 1: return None
    out_h = len(out_rows); overlap = h - 1
    if out_h < overlap: return None
    start = out_h - overlap
    if all(out_rows[start+i] == strip_rows[i] for i in range(overlap)): return start
    return None

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("input_png")
    ap.add_argument("--k", type=int, default=16)
    ap.add_argument("--outdir", default="outdir")
    args = ap.parse_args()

    in_path = Path(args.input_png)
    if not in_path.exists(): die(f"File non trovato: {in_path}")
    
    outdir = Path(args.outdir)
    outdir.mkdir(parents=True, exist_ok=True)

    orig_img = Image.open(in_path)
    if orig_img.size[0] != 256: die("Larghezza deve essere 256")

    print("Conversione deterministica sulla palette g_Palette...")
    img = force_exact_palette(orig_img)
    
    L = img.size[1]
    raw = img.tobytes() # Ora raw contiene solo indici 0-15
    input_rows = [raw[y*256:(y+1)*256] for y in range(L)]

    out_rows = []
    field_map = [0] * L
    h0 = min(args.k, L)
    out_rows.extend(input_rows[0:h0])

    for n in range(1, L):
        h = min(args.k, L - n)
        strip = input_rows[n:n+h]
        y = find_full_match(out_rows, strip)
        if y is not None:
            field_map[n] = y
            continue
        kpos = match_tail_overlap(out_rows, strip)
        if kpos is not None:
            field_map[n] = kpos
            out_rows.append(strip[-1])
            continue
        field_map[n] = len(out_rows)
        out_rows.extend(strip)

    # Salvataggio
    out_h = len(out_rows)
    out_img = Image.new("P", (256, out_h))
    out_img.putpalette(img.getpalette())
    out_img.frombytes(b"".join(out_rows))
    out_img.save(outdir / f"{in_path.stem}_out.png")
    
    (outdir / f"{in_path.stem}.bin").write_bytes(pack_2bpp_nibbles(out_rows))
    print(f"OK! Altezza: {out_h}. Indici binari garantiti 0-F.")

if __name__ == "__main__":
    main()