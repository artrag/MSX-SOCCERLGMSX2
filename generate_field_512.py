#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Espande il field.png originale (256x256) a 512 righe replicando le lunette.
Esegue poi field_compactor.py per generare il bin + FieldMap.h ottimizzati.
"""

import sys
import subprocess
from pathlib import Path
from PIL import Image

def main():
    # Path file sorgente
    aseprite_field = Path("media/aseprite/field.png")
    outdir = Path("bin")
    outdir.mkdir(exist_ok=True)
    
    if not aseprite_field.exists():
        print(f"ERROR: {aseprite_field} non trovato", file=sys.stderr)
        sys.exit(1)
    
    print(f"Loading {aseprite_field}...")
    img = Image.open(aseprite_field)
    
    if img.size != (256, 256):
        print(f"ERROR: atteso 256x256, trovato {img.size}", file=sys.stderr)
        sys.exit(1)
    
    if img.mode != "P":
        print(f"ERROR: immagine non palettizzata (mode={img.mode})", file=sys.stderr)
        sys.exit(1)
    
    pal = img.getpalette()
    raw = img.tobytes()
    rows_256 = [raw[y*256:(y+1)*256] for y in range(256)]
    
    # Estrai lunette
    lunetta_nord = rows_256[88:104]   # righe 88-103 (16 righe)
    centrocampo = rows_256[104:152]   # righe 104-151 (48 righe)
    lunetta_sud = rows_256[152:168]   # righe 152-167 (16 righe)
    
    print(f"  Nord lunette: 16 righe (88-103)")
    print(f"  Centrocampo:   48 righe (104-151)")
    print(f"  Sud lunette:   16 righe (152-167)")
    
    # Costruisci 512 righe
    rows_512 = []
    
    # Righe 0-255: campo originale
    rows_512.extend(rows_256)
    print(f"  Aggiunti 0-255: campo originale (256 righe)")
    
    # Righe 256-319: lunetta nord ×4
    rows_512.extend(lunetta_nord)
    rows_512.extend(lunetta_nord)
    rows_512.extend(lunetta_nord)
    rows_512.extend(lunetta_nord)
    print(f"  Aggiunti 256-319: lunetta nord ×4 (64 righe)")
    
    # Righe 320-367: centrocampo
    rows_512.extend(centrocampo)
    print(f"  Aggiunti 320-367: centrocampo (48 righe)")
    
    # Righe 368-431: lunetta sud ×4
    rows_512.extend(lunetta_sud)
    rows_512.extend(lunetta_sud)
    rows_512.extend(lunetta_sud)
    rows_512.extend(lunetta_sud)
    print(f"  Aggiunti 368-431: lunetta sud ×4 (64 righe)")
    
    # Righe 432-495: lunetta nord ×2 + lunetta sud ×2
    rows_512.extend(lunetta_nord)
    rows_512.extend(lunetta_nord)
    rows_512.extend(lunetta_sud)
    rows_512.extend(lunetta_sud)
    print(f"  Aggiunti 432-495: lunetta nord ×2 + sud ×2 (64 righe)")
    
    # Righe 496-511: lunetta nord (16 righe)
    rows_512.extend(lunetta_nord)
    print(f"  Aggiunti 496-511: lunetta nord (16 righe)")
    
    if len(rows_512) != 512:
        print(f"ERROR: lunghezza != 512 ({len(rows_512)})", file=sys.stderr)
        sys.exit(1)
    
    # Crea PNG 256x512
    img_512 = Image.new("P", (256, 512))
    img_512.putpalette(pal)
    img_512.frombytes(b"".join(rows_512))
    
    field_512_png = outdir / "field_512.png"
    img_512.save(field_512_png, format="PNG")
    print(f"Saved: {field_512_png}")
    
    # Esegui field_compactor.py
    print("\nRunning field_compactor.py...")
    cmd = [
        sys.executable,
        "field_compactor.py",
        str(field_512_png),
        "--k", "16",
        "--outdir", str(outdir),
        "--prefix", "field"
    ]
    print(f"  {' '.join(cmd)}")
    result = subprocess.run(cmd, cwd=str(Path.cwd()))
    if result.returncode != 0:
        print(f"ERROR: field_compactor.py failed (exit {result.returncode})", file=sys.stderr)
        sys.exit(result.returncode)
    
    print("\n✓ Done! FieldMap.h and field.bin generated in bin/")

if __name__ == "__main__":
    main()
