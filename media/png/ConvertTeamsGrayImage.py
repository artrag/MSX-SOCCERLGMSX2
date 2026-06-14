from PIL import Image
import os

def generate_msx_files(image_path):
    # Controllo esistenza file
    if not os.path.exists(image_path):
        print(f"Errore: Il file {image_path} non esiste.")
        return

    img = Image.open(image_path).convert('RGB')
    # Forza dimensioni Screen 8 (256x212)
    if img.size != (256, 212):
        img = img.resize((256, 212), Image.Resampling.LANCZOS)
    
    pixels = img.load()
    msx_data = []

    # Conversione pixel -> Byte Screen 8 (GGGRRRBB)
    for y in range(212):
        for x in range(256):
            r, g, b = pixels[x, y]
            msx_r = (r >> 5) & 0x07
            msx_g = (g >> 5) & 0x07
            msx_b = (b >> 6) & 0x03
            byte_val = (msx_g << 5) | (msx_r << 2) | msx_b
            msx_data.append(byte_val)

    CHUNK_SIZE = 8192
    num_chunks = (len(msx_data) + CHUNK_SIZE - 1) // CHUNK_SIZE
    
    start_section = 64  # Il valore XX per il nome del file
    
    header_text = (
        "// ─────────────────────────────────────────────────────────────────────────────\n"
        "//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)\n"
        "//  Segment 19 - Player Animation Frames (Moved from Segment 11 to avoid overflow)\n"
        "// ─────────────────────────────────────────────────────────────────────────────\n\n"
    )

    for i in range(num_chunks):
        current_section = start_section + i
        # Nome file: soccerlg_sXX_b3.c
        file_name = f"soccerlg_s{current_section}_b3.c"
        
        # Nome matrice: g_SplashScreenX (X parte da 1)
        matrix_name = f"g_MenuGrayScreen{i + 1}"
        
        start_idx = i * CHUNK_SIZE
        end_idx = min(start_idx + CHUNK_SIZE, len(msx_data))
        chunk = msx_data[start_idx:end_idx]

        with open(file_name, 'w', encoding='utf-8') as f:
            f.write(header_text)
            f.write(f"const unsigned char {matrix_name}[] = {{")
            for j, val in enumerate(chunk):
                if j % 16 == 0:
                    f.write("\n    ")
                f.write(f"0x{val:02X},")
            f.write("\n};\n")
            
        print(f"Creato: {file_name} con matrice {matrix_name}")

# Esecuzione
generate_msx_files('Teams_gray.png')