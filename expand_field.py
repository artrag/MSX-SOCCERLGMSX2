#!/usr/bin/env python3
# Ripristina field.bin da 64KB a 32KB originale

with open('bin/field.bin', 'rb') as f:
    data = bytearray(f.read())

print(f"Current size: {len(data)} bytes")

# Ripristina prendendo solo la prima metà (32KB)
if len(data) == 65536:
    restored = data[:32768]
    print(f"Restored size: {len(restored)} bytes")
    
    with open('bin/field.bin', 'wb') as f:
        f.write(restored)
    
    print("✓ field.bin ripristinato a 32KB!")
else:
    print(f"File is already {len(data)} bytes")
