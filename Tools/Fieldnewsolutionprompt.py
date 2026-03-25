#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import os
from pathlib import Path

import numpy as np
from PIL import Image


def write_asm_map(path, values, use_db=True, label="FieldMap", per_line=16):
    directive = ".DB" if use_db else ".DW"
    with open(path, "w", encoding="utf-8") as f:
        f.write(f"; Auto-generated\n")
        f.write(f"; Entries: {len(values)}\n")
        f.write(f"{label}:\n")
        i = 0
        n = len(values)
        while i < n:
            chunk = values[i:i+per_line]
            f.write("    " + directive + " " + ", ".join(str(v) for v in chunk) + "\n")
            i += per_line


def write_c_header(path, values, c_type="u8", array_name="FieldMap"):
    guard = Path(path).stem.upper() + "_H"
    with open(path, "w", encoding="utf-8") as f:
        f.write(f"#pragma once\n")
        f.write(f"// Auto-generated\n")
        f.write(f"// Entries: {len(values)}\n\n")
        f.write(f"// NOTE: ensure {c_type} is defined in your project (e.g., typedef unsigned char u8;)\n\n")
        f.write(f"static const {c_type} {array_name}[] = {{\n")
        # 16 per riga
        per_line = 16
        for i in range(0, len(values), per_line):
            chunk = values[i:i+per_line]
            f.write("    " + ", ".join(str(v) for v in chunk) + ",\n")
        f.write("};\n")


def pack_2pixels_per_byte(index_img_u8):
    """
    Pack 256-wide indexed image (values 0..15) into 2 pixels per byte.
    High nibble = left pixel, low nibble = right pixel.
    Output size: height * 128 bytes.
    """
    a = index_img_u8.astype(np.uint8) & 0x0F
    left = a[:, 0::2]
    right = a[:, 1::2]
    packed = (left << 4) | right
    return packed.tobytes()


def main():
    ap = argparse.ArgumentParser(
        description="Compattatore verticale di strisce 256xK con riuso e overlap su ultime K-1 righe."
    )
    ap.add_argument("input_png", help="PNG indicizzato (mode P) 256xL")
    ap.add_argument("-k", "--kheight", type=int, default=16, help="Altezza K della striscia (default: 16)")
    ap.add_argument("-o", "--outdir", default="outdir", help='Cartella di output (default: "outdir")')
    ap.add_argument("--out-prefix", default="Field", help="Prefisso nomi file output (default: Field)")
    args = ap.parse_args()

    in_path = Path(args.input_png)
    outdir = Path(args.outdir)
    outdir.mkdir(parents=True, exist_ok=True)

    # --- Load image ---
    img = Image.open(in_path)
    if img.mode != "P":
        raise SystemExit(f"ERRORE: l'immagine deve essere indicizzata (mode 'P'), trovata: {img.mode}")

    w, h = img.size
    if w != 256:
        raise SystemExit(f"ERRORE: larghezza immagine attesa 256, trovata: {w}")

    K = args.kheight
    if K <= 0:
        raise SystemExit("ERRORE: K deve essere > 0")
    if h < K:
        raise SystemExit(f"ERRORE: altezza immagine ({h}) < K ({K})")

    # Palette (preservata identica)
    palette = img.getpalette()  # list di 768 valori (o None)
    if palette is None:
        raise SystemExit("ERRORE: palette non trovata nel PNG (getpalette() è None)")

    # Se l'immagine ha meno di 256 entry, PIL può comunque restituire 768 con padding a 0
    # Noi la riutilizziamo identica per l'output.
    transparency = img.info.get("transparency", None)

    arr = np.array(img, dtype=np.uint8)  # H x 256
    if arr.ndim != 2 or arr.shape[1] != 256:
        raise SystemExit("ERRORE: immagine non in formato indicizzato 2D atteso")

    # Controllo soft: valori entro 0..15 (non obbligatorio ma coerente con palette 16 colori)
    maxv = int(arr.max())
    if maxv > 15:
        print(f"ATTENZIONE: trovati indici palette fino a {maxv}. "
              f"Procedo comunque (verrà packato con &0x0F nel BIN).")

    num_strips = h - K + 1  # n = 0..h-K
    field_map = [0] * num_strips

    # Output rows come lista di righe (ogni riga è np.array shape (256,))
    output_rows = []

    # Dict: strip_bytes (K righe) -> ordinata y in output (prima occorrenza)
    strip_dict = {}

    def get_out_height():
        return len(output_rows)

    def bytes_of_rows(rows_list):
        # rows_list: lista di righe (np arrays 1x256)
        # restituisce bytes concatenati
        return np.stack(rows_list, axis=0).tobytes()

    def update_dict_for_new_height(old_h, new_h):
        # Aggiunge al dizionario tutte le nuove strisce K che includono le righe appena appese.
        # Range top y nuovi: [max(0, old_h-K+1) .. new_h-K]
        start = max(0, old_h - K + 1)
        end = new_h - K
        if end < start:
            return
        for y in range(start, end + 1):
            b = bytes_of_rows(output_rows[y:y+K])
            if b not in strip_dict:
                strip_dict[b] = y

    # --- n = 0: scrivi prima striscia completa ---
    for r in range(K):
        output_rows.append(arr[r].copy())
    field_map[0] = 0

    # registra striscia y=0 nel dict
    strip0 = arr[0:K].tobytes()
    strip_dict[strip0] = 0

    # --- Scansione n = 1 .. h-K ---
    for n in range(1, num_strips):
        stripK = arr[n:n+K]  # view HxW
        stripK_bytes = stripK.tobytes()

        # 1) Match completo con qualsiasi striscia K già presente in output
        y = strip_dict.get(stripK_bytes, None)
        if y is not None:
            field_map[n] = y
            continue

        # 2) Match sulle ultime K-1 righe dell'output + aggiunta ultima riga
        out_h = get_out_height()
        k_top = out_h - (K - 1)  # top delle ultime K-1 righe
        if k_top >= 0:
            out_last_km1_bytes = bytes_of_rows(output_rows[k_top:out_h])  # (K-1)*256 bytes
            in_first_km1_bytes = stripK[0:K-1].tobytes()
            if out_last_km1_bytes == in_first_km1_bytes:
                # aggiungi l'ultima riga
                old_h = out_h
                output_rows.append(stripK[K-1].copy())
                new_h = old_h + 1
                field_map[n] = k_top
                update_dict_for_new_height(old_h, new_h)
                continue

        # 3) Nessun match: appende l'intera striscia in coda
        old_h = get_out_height()
        field_map[n] = old_h
        for r in range(K):
            output_rows.append(stripK[r].copy())
        new_h = old_h + K
        update_dict_for_new_height(old_h, new_h)

    # --- Build output image array ---
    out_arr = np.stack(output_rows, axis=0).astype(np.uint8)
    out_h = out_arr.shape[0]

    # --- Save output PNG with same palette ---
    out_img = Image.fromarray(out_arr, mode="P")
    out_img.putpalette(palette)
    if transparency is not None:
        out_img.info["transparency"] = transparency

    prefix = args.out_prefix
    out_png = outdir / f"{prefix}_out.png"
    out_img.save(out_png, format="PNG")

    # --- Save BIN packed 2 pixels/byte ---
    out_bin = outdir / f"{prefix}_out.bin"
    packed_bytes = pack_2pixels_per_byte(out_arr)
    with open(out_bin, "wb") as f:
        f.write(packed_bytes)

    # --- Save ASM map (.DB if <=256 lines else .DW) ---
    # Regola richiesta: "Se l'immagine in output ha fino a 256 linee usa .DB invece di .DW"
    use_db = (out_h <= 256)
    out_asm = outdir / f"{prefix}_FieldMap.asm"
    write_asm_map(out_asm, field_map, use_db=use_db, label="FieldMap", per_line=16)

    # --- Save C header FieldMap.h ---
    # Richiesta: tipo u8. Se output >256, i valori possono eccedere 255:
    # in quel caso emettiamo u16 per correttezza (commentato).
    c_type = "u8" if out_h <= 256 else "u16"
    out_hfile = outdir / "FieldMap.h"
    write_c_header(out_hfile, field_map, c_type=c_type, array_name="FieldMap")

    # --- Report ---
    print("OK")
    print(f"Input:  {in_path}  ({w}x{h}, K={K}, strips={num_strips})")
    print(f"Output: {out_png}  ({w}x{out_h})")
    print(f"BIN:    {out_bin}  ({len(packed_bytes)} bytes)")
    print(f"ASM:    {out_asm}  ({'.DB' if use_db else '.DW'})")
    print(f"H:      {out_hfile} ({c_type})")


if __name__ == "__main__":
    main()