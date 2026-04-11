// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"


// ██▀▀█▀▀██▀▀▀▀▀▀▀█▀▀█ ▄
// ██  ▀  █▄  ▀██▄ ▀ ▄█ ▄  ▄█▄█ ▄▀██
// █  █ █  ▀▀  ▄█  █  █ ██ ██ █  ▀██
// ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀          ▀▀
// Data generated using MSXimg 1.21.0 on Fri Oct 10 00:32:47 2025
// by Guillaume "Aoineko" Blanchard (2022) under CC BY-SA free license
// ─────────────────────────────────────────────────────────────────────────────
// Author: Guillaume "Aoineko" Blanchard, for MSXgl (MSX Game library)
// License: CC-BY-SA
// ─────────────────────────────────────────────────────────────────────────────
// Generation parameters:
//  - Input file:     font\font_mgl_std0.png
//  - Mode:           Bitmap
//  - Start position: 0, 16
//  - Sprite size:    8, 8 (gap: 0, 0)
//  - Sprite count:   16, 6
//  - Color count:    2 (Transparent: #0000)
//  - Compressor:     None
//  - Skip empty:     TRUE

// Data table
const unsigned char g_Fonts[] =
{
// Font header data
	0x88, // Data size [x|y]
	0x88, // Font size [x|y]
	0x21, // First character ASCII code (!)
	0x7E, // Last character ASCII code (~)
// // Sprite[0] (offset:4)

// // Sprite[1] (offset:4)

	0x78, /* .####... */ 
	0x48, /* .#..#... */ 
	0x48, /* .#..#... */ 
	0x48, /* .#..#... */ 
	0x78, /* .####... */ 
	0x48, /* .#..#... */ 
	0x78, /* .####... */ 
	0x00, /* ........ */ 
// // Sprite[2] (offset:12)

	0x7C, /* .#####.. */ 
	0x54, /* .#.#.#.. */ 
	0x54, /* .#.#.#.. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[3] (offset:20)

	0x7C, /* .#####.. */ 
	0xD6, /* ##.#.##. */ 
	0x82, /* #.....#. */ 
	0xD6, /* ##.#.##. */ 
	0x82, /* #.....#. */ 
	0xD6, /* ##.#.##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[4] (offset:28)

	0x6E, /* .##.###. */ 
	0xC2, /* ##....#. */ 
	0xAE, /* #.#.###. */ 
	0xC6, /* ##...##. */ 
	0xEA, /* ###.#.#. */ 
	0x86, /* #....##. */ 
	0xEC, /* ###.##.. */ 
	0x00, /* ........ */ 
// // Sprite[5] (offset:36)

	0xEE, /* ###.###. */ 
	0xBA, /* #.###.#. */ 
	0xF6, /* ####.##. */ 
	0x6C, /* .##.##.. */ 
	0xDE, /* ##.####. */ 
	0xBA, /* #.###.#. */ 
	0xEE, /* ###.###. */ 
	0x00, /* ........ */ 
// // Sprite[6] (offset:44)

	0x78, /* .####... */ 
	0xC8, /* ##..#... */ 
	0xAE, /* #.#.###. */ 
	0xCA, /* ##..#.#. */ 
	0xB6, /* #.##.##. */ 
	0xCA, /* ##..#.#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[7] (offset:52)

	0x78, /* .####... */ 
	0x48, /* .#..#... */ 
	0x58, /* .#.##... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[8] (offset:60)

	0x1C, /* ...###.. */ 
	0x34, /* ..##.#.. */ 
	0x2C, /* ..#.##.. */ 
	0x28, /* ..#.#... */ 
	0x2C, /* ..#.##.. */ 
	0x34, /* ..##.#.. */ 
	0x1C, /* ...###.. */ 
	0x00, /* ........ */ 
// // Sprite[9] (offset:68)

	0x38, /* ..###... */ 
	0x2C, /* ..#.##.. */ 
	0x34, /* ..##.#.. */ 
	0x14, /* ...#.#.. */ 
	0x34, /* ..##.#.. */ 
	0x2C, /* ..#.##.. */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
// // Sprite[10] (offset:76)

	0x00, /* ........ */ 
	0x7C, /* .#####.. */ 
	0x54, /* .#.#.#.. */ 
	0x6C, /* .##.##.. */ 
	0x54, /* .#.#.#.. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[11] (offset:84)

	0x00, /* ........ */ 
	0x38, /* ..###... */ 
	0x6C, /* .##.##.. */ 
	0x44, /* .#...#.. */ 
	0x6C, /* .##.##.. */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[12] (offset:92)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x70, /* .###.... */ 
	0xD0, /* ##.#.... */ 
	0x90, /* #..#.... */ 
	0xF0, /* ####.... */ 
// // Sprite[13] (offset:100)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x7C, /* .#####.. */ 
	0x44, /* .#...#.. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[14] (offset:108)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x70, /* .###.... */ 
	0x50, /* .#.#.... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
// // Sprite[15] (offset:116)

	0x0E, /* ....###. */ 
	0x1A, /* ...##.#. */ 
	0x36, /* ..##.##. */ 
	0x6C, /* .##.##.. */ 
	0xD8, /* ##.##... */ 
	0xB0, /* #.##.... */ 
	0xE0, /* ###..... */ 
	0x00, /* ........ */ 
// // Sprite[16] (offset:124)

	0x3C, /* ..####.. */ 
	0x66, /* .##..##. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[17] (offset:132)

	0x38, /* ..###... */ 
	0x68, /* .##.#... */ 
	0x48, /* .#..#... */ 
	0x68, /* .##.#... */ 
	0x6C, /* .##.##.. */ 
	0x44, /* .#...#.. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[18] (offset:140)

	0x7C, /* .#####.. */ 
	0x46, /* .#...##. */ 
	0x7A, /* .####.#. */ 
	0x66, /* .##..##. */ 
	0x5E, /* .#.####. */ 
	0x42, /* .#....#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[19] (offset:148)

	0x7C, /* .#####.. */ 
	0x46, /* .#...##. */ 
	0x7A, /* .####.#. */ 
	0x26, /* ..#..##. */ 
	0x7A, /* .####.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[20] (offset:156)

	0x70, /* .###.... */ 
	0x5C, /* .#.###.. */ 
	0x56, /* .#.#.##. */ 
	0x42, /* .#....#. */ 
	0x76, /* .###.##. */ 
	0x14, /* ...#.#.. */ 
	0x1C, /* ...###.. */ 
	0x00, /* ........ */ 
// // Sprite[21] (offset:164)

	0x7E, /* .######. */ 
	0x42, /* .#....#. */ 
	0x5E, /* .#.####. */ 
	0x46, /* .#...##. */ 
	0x7A, /* .####.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[22] (offset:172)

	0x3E, /* ..#####. */ 
	0x62, /* .##...#. */ 
	0x5E, /* .#.####. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[23] (offset:180)

	0x7E, /* .######. */ 
	0x42, /* .#....#. */ 
	0x7A, /* .####.#. */ 
	0x36, /* ..##.##. */ 
	0x6C, /* .##.##.. */ 
	0x58, /* .#.##... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
// // Sprite[24] (offset:188)

	0x3C, /* ..####.. */ 
	0x66, /* .##..##. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[25] (offset:196)

	0x3C, /* ..####.. */ 
	0x66, /* .##..##. */ 
	0x5A, /* .#.##.#. */ 
	0x62, /* .##...#. */ 
	0x7A, /* .####.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[26] (offset:204)

	0x00, /* ........ */ 
	0x70, /* .###.... */ 
	0x50, /* .#.#.... */ 
	0x70, /* .###.... */ 
	0x50, /* .#.#.... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[27] (offset:212)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x70, /* .###.... */ 
	0x50, /* .#.#.... */ 
	0x70, /* .###.... */ 
	0xD0, /* ##.#.... */ 
	0x90, /* #..#.... */ 
	0xF0, /* ####.... */ 
// // Sprite[28] (offset:220)

	0x1C, /* ...###.. */ 
	0x34, /* ..##.#.. */ 
	0x6C, /* .##.##.. */ 
	0x58, /* .#.##... */ 
	0x6C, /* .##.##.. */ 
	0x34, /* ..##.#.. */ 
	0x1C, /* ...###.. */ 
	0x00, /* ........ */ 
// // Sprite[29] (offset:228)

	0x00, /* ........ */ 
	0x7C, /* .#####.. */ 
	0x44, /* .#...#.. */ 
	0x7C, /* .#####.. */ 
	0x44, /* .#...#.. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[30] (offset:236)

	0x70, /* .###.... */ 
	0x58, /* .#.##... */ 
	0x6C, /* .##.##.. */ 
	0x34, /* ..##.#.. */ 
	0x6C, /* .##.##.. */ 
	0x58, /* .#.##... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
// // Sprite[31] (offset:244)

	0x78, /* .####... */ 
	0x4C, /* .#..##.. */ 
	0x74, /* .###.#.. */ 
	0x2C, /* ..#.##.. */ 
	0x38, /* ..###... */ 
	0x28, /* ..#.#... */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
// // Sprite[32] (offset:252)

	0x7C, /* .#####.. */ 
	0xC6, /* ##...##. */ 
	0xBA, /* #.###.#. */ 
	0xFA, /* #####.#. */ 
	0x4A, /* .#..#.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[33] (offset:260)

	0x3C, /* ..####.. */ 
	0x66, /* .##..##. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x42, /* .#....#. */ 
	0x5A, /* .#.##.#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[34] (offset:268)

	0x7C, /* .#####.. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[35] (offset:276)

	0x3C, /* ..####.. */ 
	0x66, /* .##..##. */ 
	0x5A, /* .#.##.#. */ 
	0x5E, /* .#.####. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[36] (offset:284)

	0x7C, /* .#####.. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[37] (offset:292)

	0x7E, /* .######. */ 
	0x42, /* .#....#. */ 
	0x5E, /* .#.####. */ 
	0x44, /* .#...#.. */ 
	0x5E, /* .#.####. */ 
	0x42, /* .#....#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[38] (offset:300)

	0x7E, /* .######. */ 
	0x42, /* .#....#. */ 
	0x5E, /* .#.####. */ 
	0x44, /* .#...#.. */ 
	0x5C, /* .#.###.. */ 
	0x50, /* .#.#.... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
// // Sprite[39] (offset:308)

	0x3C, /* ..####.. */ 
	0x66, /* .##..##. */ 
	0x5E, /* .#.####. */ 
	0x52, /* .#.#..#. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[40] (offset:316)

	0x7E, /* .######. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x42, /* .#....#. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[41] (offset:324)

	0x7C, /* .#####.. */ 
	0x44, /* .#...#.. */ 
	0x6C, /* .##.##.. */ 
	0x28, /* ..#.#... */ 
	0x6C, /* .##.##.. */ 
	0x44, /* .#...#.. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[42] (offset:332)

	0x7E, /* .######. */ 
	0x42, /* .#....#. */ 
	0x76, /* .###.##. */ 
	0x74, /* .###.#.. */ 
	0x54, /* .#.#.#.. */ 
	0x6C, /* .##.##.. */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
// // Sprite[43] (offset:340)

	0x7E, /* .######. */ 
	0x5A, /* .#.##.#. */ 
	0x56, /* .#.#.##. */ 
	0x4C, /* .#..##.. */ 
	0x56, /* .#.#.##. */ 
	0x5A, /* .#.##.#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[44] (offset:348)

	0x70, /* .###.... */ 
	0x50, /* .#.#.... */ 
	0x50, /* .#.#.... */ 
	0x50, /* .#.#.... */ 
	0x5E, /* .#.####. */ 
	0x42, /* .#....#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[45] (offset:356)

	0xEE, /* ###.###. */ 
	0xBA, /* #.###.#. */ 
	0x92, /* #..#..#. */ 
	0xAA, /* #.#.#.#. */ 
	0xBA, /* #.###.#. */ 
	0xAA, /* #.#.#.#. */ 
	0xEE, /* ###.###. */ 
	0x00, /* ........ */ 
// // Sprite[46] (offset:364)

	0xEE, /* ###.###. */ 
	0xBA, /* #.###.#. */ 
	0x9A, /* #..##.#. */ 
	0xAA, /* #.#.#.#. */ 
	0xB2, /* #.##..#. */ 
	0xBA, /* #.###.#. */ 
	0xEE, /* ###.###. */ 
	0x00, /* ........ */ 
// // Sprite[47] (offset:372)

	0x7C, /* .#####.. */ 
	0xC6, /* ##...##. */ 
	0xBA, /* #.###.#. */ 
	0xBA, /* #.###.#. */ 
	0xBA, /* #.###.#. */ 
	0xC6, /* ##...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[48] (offset:380)

	0x7C, /* .#####.. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x46, /* .#...##. */ 
	0x5C, /* .#.###.. */ 
	0x50, /* .#.#.... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
// // Sprite[49] (offset:388)

	0x3E, /* ..#####. */ 
	0x62, /* .##...#. */ 
	0x5A, /* .#.##.#. */ 
	0x62, /* .##...#. */ 
	0x3A, /* ..###.#. */ 
	0x0A, /* ....#.#. */ 
	0x0E, /* ....###. */ 
	0x00, /* ........ */ 
// // Sprite[50] (offset:396)

	0x7C, /* .#####.. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[51] (offset:404)

	0x3E, /* ..#####. */ 
	0x62, /* .##...#. */ 
	0x5E, /* .#.####. */ 
	0x66, /* .##..##. */ 
	0x7A, /* .####.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[52] (offset:412)

	0xFE, /* #######. */ 
	0x82, /* #.....#. */ 
	0xEE, /* ###.###. */ 
	0x28, /* ..#.#... */ 
	0x28, /* ..#.#... */ 
	0x28, /* ..#.#... */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
// // Sprite[53] (offset:420)

	0x7E, /* .######. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[54] (offset:428)

	0xEE, /* ###.###. */ 
	0xAA, /* #.#.#.#. */ 
	0xBA, /* #.###.#. */ 
	0xD6, /* ##.#.##. */ 
	0x54, /* .#.#.#.. */ 
	0x6C, /* .##.##.. */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
// // Sprite[55] (offset:436)

	0xEE, /* ###.###. */ 
	0xAA, /* #.#.#.#. */ 
	0xBA, /* #.###.#. */ 
	0xAA, /* #.#.#.#. */ 
	0xAA, /* #.#.#.#. */ 
	0xD6, /* ##.#.##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[56] (offset:444)

	0xEE, /* ###.###. */ 
	0xBA, /* #.###.#. */ 
	0xD6, /* ##.#.##. */ 
	0x6C, /* .##.##.. */ 
	0xD6, /* ##.#.##. */ 
	0xBA, /* #.###.#. */ 
	0xEE, /* ###.###. */ 
	0x00, /* ........ */ 
// // Sprite[57] (offset:452)

	0x7E, /* .######. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x34, /* ..##.#.. */ 
	0x14, /* ...#.#.. */ 
	0x1C, /* ...###.. */ 
	0x00, /* ........ */ 
// // Sprite[58] (offset:460)

	0x7E, /* .######. */ 
	0x42, /* .#....#. */ 
	0x7A, /* .####.#. */ 
	0x66, /* .##..##. */ 
	0x5E, /* .#.####. */ 
	0x42, /* .#....#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[59] (offset:468)

	0x3C, /* ..####.. */ 
	0x24, /* ..#..#.. */ 
	0x2C, /* ..#.##.. */ 
	0x28, /* ..#.#... */ 
	0x2C, /* ..#.##.. */ 
	0x24, /* ..#..#.. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[60] (offset:476)

	0xE0, /* ###..... */ 
	0xB0, /* #.##.... */ 
	0xD8, /* ##.##... */ 
	0x6C, /* .##.##.. */ 
	0x36, /* ..##.##. */ 
	0x1A, /* ...##.#. */ 
	0x0E, /* ....###. */ 
	0x00, /* ........ */ 
// // Sprite[61] (offset:484)

	0x3C, /* ..####.. */ 
	0x24, /* ..#..#.. */ 
	0x34, /* ..##.#.. */ 
	0x14, /* ...#.#.. */ 
	0x34, /* ..##.#.. */ 
	0x24, /* ..#..#.. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[62] (offset:492)

	0x38, /* ..###... */ 
	0x6C, /* .##.##.. */ 
	0xD6, /* ##.#.##. */ 
	0xBA, /* #.###.#. */ 
	0xEE, /* ###.###. */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[63] (offset:500)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0xFE, /* #######. */ 
	0x82, /* #.....#. */ 
	0xFE, /* #######. */ 
// // Sprite[64] (offset:508)

	0x78, /* .####... */ 
	0x48, /* .#..#... */ 
	0x68, /* .##.#... */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[65] (offset:516)

	0x3C, /* ..####.. */ 
	0x26, /* ..#..##. */ 
	0x3A, /* ..###.#. */ 
	0x62, /* .##...#. */ 
	0x5A, /* .#.##.#. */ 
	0x62, /* .##...#. */ 
	0x3E, /* ..#####. */ 
	0x00, /* ........ */ 
// // Sprite[66] (offset:524)

	0x70, /* .###.... */ 
	0x50, /* .#.#.... */ 
	0x5C, /* .#.###.. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[67] (offset:532)

	0x00, /* ........ */ 
	0x3E, /* ..#####. */ 
	0x62, /* .##...#. */ 
	0x5E, /* .#.####. */ 
	0x5E, /* .#.####. */ 
	0x62, /* .##...#. */ 
	0x3E, /* ..#####. */ 
	0x00, /* ........ */ 
// // Sprite[68] (offset:540)

	0x0E, /* ....###. */ 
	0x0A, /* ....#.#. */ 
	0x3A, /* ..###.#. */ 
	0x62, /* .##...#. */ 
	0x5A, /* .#.##.#. */ 
	0x62, /* .##...#. */ 
	0x3E, /* ..#####. */ 
	0x00, /* ........ */ 
// // Sprite[69] (offset:548)

	0x3C, /* ..####.. */ 
	0x66, /* .##..##. */ 
	0x5A, /* .#.##.#. */ 
	0x46, /* .#...##. */ 
	0x5E, /* .#.####. */ 
	0x62, /* .##...#. */ 
	0x3E, /* ..#####. */ 
	0x00, /* ........ */ 
// // Sprite[70] (offset:556)

	0x3E, /* ..#####. */ 
	0x62, /* .##...#. */ 
	0x5E, /* .#.####. */ 
	0x44, /* .#...#.. */ 
	0x5C, /* .#.###.. */ 
	0x50, /* .#.#.... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
// // Sprite[71] (offset:564)

	0x00, /* ........ */ 
	0x3E, /* ..#####. */ 
	0x62, /* .##...#. */ 
	0x5A, /* .#.##.#. */ 
	0x62, /* .##...#. */ 
	0x7A, /* .####.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
// // Sprite[72] (offset:572)

	0x70, /* .###.... */ 
	0x50, /* .#.#.... */ 
	0x5C, /* .#.###.. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[73] (offset:580)

	0x00, /* ........ */ 
	0x38, /* ..###... */ 
	0x28, /* ..#.#... */ 
	0x38, /* ..###... */ 
	0x2C, /* ..#.##.. */ 
	0x24, /* ..#..#.. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[74] (offset:588)

	0x00, /* ........ */ 
	0x0E, /* ....###. */ 
	0x0A, /* ....#.#. */ 
	0x0E, /* ....###. */ 
	0x7A, /* .####.#. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x3C, /* ..####.. */ 
// // Sprite[75] (offset:596)

	0x70, /* .###.... */ 
	0x50, /* .#.#.... */ 
	0x5E, /* .#.####. */ 
	0x52, /* .#.#..#. */ 
	0x4E, /* .#..###. */ 
	0x52, /* .#.#..#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[76] (offset:604)

	0x38, /* ..###... */ 
	0x28, /* ..#.#... */ 
	0x28, /* ..#.#... */ 
	0x28, /* ..#.#... */ 
	0x2C, /* ..#.##.. */ 
	0x34, /* ..##.#.. */ 
	0x1C, /* ...###.. */ 
	0x00, /* ........ */ 
// // Sprite[77] (offset:612)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0xFC, /* ######.. */ 
	0x86, /* #....##. */ 
	0xAA, /* #.#.#.#. */ 
	0xAA, /* #.#.#.#. */ 
	0xFE, /* #######. */ 
	0x00, /* ........ */ 
// // Sprite[78] (offset:620)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x7C, /* .#####.. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x7E, /* .######. */ 
	0x00, /* ........ */ 
// // Sprite[79] (offset:628)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x3C, /* ..####.. */ 
	0x66, /* .##..##. */ 
	0x5A, /* .#.##.#. */ 
	0x66, /* .##..##. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[80] (offset:636)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x7C, /* .#####.. */ 
	0x46, /* .#...##. */ 
	0x5A, /* .#.##.#. */ 
	0x46, /* .#...##. */ 
	0x5C, /* .#.###.. */ 
	0x70, /* .###.... */ 
// // Sprite[81] (offset:644)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x3C, /* ..####.. */ 
	0x62, /* .##...#. */ 
	0x5A, /* .#.##.#. */ 
	0x62, /* .##...#. */ 
	0x3A, /* ..###.#. */ 
	0x0E, /* ....###. */ 
// // Sprite[82] (offset:652)

	0x00, /* ........ */ 
	0x7E, /* .######. */ 
	0x52, /* .#.#..#. */ 
	0x4E, /* .#..###. */ 
	0x58, /* .#.##... */ 
	0x50, /* .#.#.... */ 
	0x70, /* .###.... */ 
	0x00, /* ........ */ 
// // Sprite[83] (offset:660)

	0x3C, /* ..####.. */ 
	0x64, /* .##..#.. */ 
	0x5C, /* .#.###.. */ 
	0x66, /* .##..##. */ 
	0x3A, /* ..###.#. */ 
	0x26, /* ..#..##. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[84] (offset:668)

	0x70, /* .###.... */ 
	0x58, /* .#.##... */ 
	0x48, /* .#..#... */ 
	0x58, /* .#.##... */ 
	0x5C, /* .#.###.. */ 
	0x64, /* .##..#.. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[85] (offset:676)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x7E, /* .######. */ 
	0x5A, /* .#.##.#. */ 
	0x5A, /* .#.##.#. */ 
	0x62, /* .##...#. */ 
	0x3E, /* ..#####. */ 
	0x00, /* ........ */ 
// // Sprite[86] (offset:684)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x7E, /* .######. */ 
	0x5A, /* .#.##.#. */ 
	0x56, /* .#.#.##. */ 
	0x6C, /* .##.##.. */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
// // Sprite[87] (offset:692)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0xFE, /* #######. */ 
	0xAA, /* #.#.#.#. */ 
	0xAA, /* #.#.#.#. */ 
	0xD6, /* ##.#.##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[88] (offset:700)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x7C, /* .#####.. */ 
	0x54, /* .#.#.#.. */ 
	0x6C, /* .##.##.. */ 
	0x54, /* .#.#.#.. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
// // Sprite[89] (offset:708)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x7E, /* .######. */ 
	0x4A, /* .#..#.#. */ 
	0x72, /* .###..#. */ 
	0x7A, /* .####.#. */ 
	0x46, /* .#...##. */ 
	0x7C, /* .#####.. */ 
// // Sprite[90] (offset:716)

	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x7E, /* .######. */ 
	0x42, /* .#....#. */ 
	0x76, /* .###.##. */ 
	0x6E, /* .##.###. */ 
	0x42, /* .#....#. */ 
	0x7E, /* .######. */ 
// // Sprite[91] (offset:724)

	0x3C, /* ..####.. */ 
	0x24, /* ..#..#.. */ 
	0x6C, /* .##.##.. */ 
	0x48, /* .#..#... */ 
	0x6C, /* .##.##.. */ 
	0x24, /* ..#..#.. */ 
	0x3C, /* ..####.. */ 
	0x00, /* ........ */ 
// // Sprite[92] (offset:732)

	0x38, /* ..###... */ 
	0x28, /* ..#.#... */ 
	0x28, /* ..#.#... */ 
	0x28, /* ..#.#... */ 
	0x28, /* ..#.#... */ 
	0x28, /* ..#.#... */ 
	0x38, /* ..###... */ 
	0x00, /* ........ */ 
// // Sprite[93] (offset:740)

	0x78, /* .####... */ 
	0x48, /* .#..#... */ 
	0x6C, /* .##.##.. */ 
	0x24, /* ..#..#.. */ 
	0x6C, /* .##.##.. */ 
	0x48, /* .#..#... */ 
	0x78, /* .####... */ 
	0x00, /* ........ */ 
// // Sprite[94] (offset:748)

	0x00, /* ........ */ 
	0x3E, /* ..#####. */ 
	0x6A, /* .##.#.#. */ 
	0x56, /* .#.#.##. */ 
	0x7C, /* .#####.. */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
	0x00, /* ........ */ 
// // Sprite[95] (offset:756)

};
// Total size : 756 bytes

u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step) 
{
	bool is_gk = (i == 0 || i == 7);
	u8 team = (i < 7) ? 1 : 2;
	
	if (is_gk) {
		if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_EAST_DIRECTION_2 : SPR_GK_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_WEST_DIRECTION_2 : SPR_GK_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_GK_PLAYER_FACE_TO_SOUTH;
	} 
	else if (team == 1) {
		if (dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_DIRECTION_2 : SPR_T1_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_EAST_DIRECTION_2 : SPR_T1_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_WEST_DIRECTION_2 : SPR_T1_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_T1_PLAYER_FACE_TO_SOUTH;
	} 
	else {
		if (dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_DIRECTION_2 : SPR_T2_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_EAST_DIRECTION_2 : SPR_T2_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_WEST_DIRECTION_2 : SPR_T2_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_T2_PLAYER_FACE_TO_NORTH;
	}
}

void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
{
	if (*game_state == 0) {
		if (Field.ly >= target_ly) {
			Field.dy = 0; // Ferma lo scorrimento
			*game_state = 1;
			*wait_secs = 2; 
			*start_sec = Secs;
		} else {
			Field.ly += Field.dy;
			// Nello scorrimento iniziale non serve il rimbalzo
			// se si volesse usare: if ((Field.ly+192>=PlayFieldHeight)||(Field.ly<=0)) Field.dy =- Field.dy;
		}
	} else if (*game_state == 1) {
		if (Secs != *start_sec) {
			*start_sec = Secs;
			(*wait_secs)--;
		}
		if (*wait_secs == 0) {
			*game_state = 2; // Passa al posizionamento
			
			// Imposta le destinazioni tattiche finali
			SwSprite[0].tx = 120; SwSprite[0].ty = 32;   
			SwSprite[1].tx = 64;  SwSprite[1].ty = 96;   
			SwSprite[2].tx = 176; SwSprite[2].ty = 96;   
			SwSprite[3].tx = 104; SwSprite[3].ty = 240;  
			SwSprite[4].tx = 136; SwSprite[4].ty = 240;  
			SwSprite[5].tx = 40;  SwSprite[5].ty = 180;  
			SwSprite[6].tx = 200; SwSprite[6].ty = 180;  

			SwSprite[7].tx = 120; SwSprite[7].ty = 480;  
			SwSprite[8].tx = 64;  SwSprite[8].ty = 416;  
			SwSprite[9].tx = 176; SwSprite[9].ty = 416;  
			SwSprite[10].tx= 104; SwSprite[10].ty= 272;  
			SwSprite[11].tx= 136; SwSprite[11].ty= 272;  
			SwSprite[12].tx= 40;  SwSprite[12].ty= 332;  
			SwSprite[13].tx= 200; SwSprite[13].ty= 332;  
		}
	} else if (*game_state == 2) {
		bool all_in_position = TRUE;
		for (u8 i = 0; i < 14; i++) {
			struct ObjectInfo* p = &SwSprite[i];
			if (p->lx != p->tx || p->ly != p->ty) {
				all_in_position = FALSE;
				
				if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
				else if (p->tx < p->lx) p->dx = (p->lx - p->tx >= 2) ? -2 : -(p->lx - p->tx);
				else p->dx = 0;
				
				if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
				else if (p->ty < p->ly) p->dy = (p->ly - p->ty >= 2) ? -2 : -(p->ly - p->ty);
				else p->dy = 0;
				
				p->lx += p->dx;
				p->ly += p->dy;
				p->anim++;
				
				const u8 walk_seq[4] = {0, 1, 2, 1}; // 1->2->3->2->1...
				p->frame = GetPlayerAnimFrame(i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
			} else {
				p->dx = 0; p->dy = 0;
				p->frame = (i < 7) ? ((i == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_T1_PLAYER_FACE_TO_SOUTH) : ((i == 7) ? SPR_GK_PLAYER_FACE_TO_NORTH : SPR_T2_PLAYER_FACE_TO_NORTH);
			}
		}
		if (all_in_position) *game_state = 3;
	} else if (*game_state == 3) {
		// Ciclo infinito attivo, pronti per giocare
	}
}

void MainLoop(){
	
	SetTeamColors(TEAM_1, &g_TeamColorsArray[Team1Code]);
	SetTeamColors(TEAM_2, &g_TeamColorsArray[Team2Code]);

	// Variabili di stato
	u8 game_state = 0; // 0: Scorrimento, 1: Pausa, 2: Posizionamento, 3: Partita
	u8 wait_secs = 0;
	u8 start_sec = 0;

	// --- INIZIALIZZAZIONE PRESENTAZIONE ---
	Field.ly = 0; // Parte da estremo Nord
	Field.dy = 1; // Avanzamento scorrimento per fase (3 px a frame)
	u16 target_ly = 156; // Centrocampo (252) - metà altezza visibile (96)

	// Posizionamento delle due squadre a centrocampo (Y = 252)
	for (u8 i = 0; i < 7; i++) {
		// Squadra 1 (Nord - Difende l'area in alto)
		SwSprite[i].lx = 36 + i * 28;
		SwSprite[i].ly = 252 - 24; // Schierata sopra la riga di centrocampo
		SwSprite[i].frame = (i == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_T1_PLAYER_FACE_TO_SOUTH;
		SwSprite[i].dx = 0;
		SwSprite[i].dy = 0;

		// Squadra 2 (Sud - Difende l'area in basso)
		SwSprite[i+7].lx = 36 + i * 28;
		SwSprite[i+7].ly = 252 + 24; // Schierata sotto la riga di centrocampo
		SwSprite[i+7].frame = (i == 0) ? SPR_GK_PLAYER_FACE_TO_NORTH : SPR_T2_PLAYER_FACE_TO_NORTH;
		SwSprite[i+7].dx = 0;
		SwSprite[i+7].dy = 0;
	}
	
	// Pallone (singolo)
	SwSprite[14].lx = BALL_START_X;
	SwSprite[14].ly = BALL_START_Y;
	SwSprite[14].frame = SPR_BALL_SIZE_1; // Sprite base della palla
	SwSprite[14].dx = 0;
	SwSprite[14].dy = 0;

	// Nascondi gli sprite in eccesso (fuori dal campo)
	for (u8 i = 15; i < NumSprite; i++) {
		SwSprite[i].lx = 0;
		SwSprite[i].ly = 1000; // Valore Y alto, fuori dal limite del campo (504)
		SwSprite[i].frame = 0;
		SwSprite[i].dx = 0;
		SwSprite[i].dy = 0;
	}

	// Allineamento coordinate fisiche per i tre buffer (sprite immobili)
	for (u8 i=0; i<NumSprite;i++) 
	{
		SwSprite[i].x0 = SwSprite[i].lx;
		SwSprite[i].y0 = SwSprite[i].ly;
		SwSprite[i].x1 = SwSprite[i].lx;
		SwSprite[i].y1 = SwSprite[i].ly;
		SwSprite[i].x2 = 0;
		SwSprite[i].y2 = 0;
	}

	// Sincronizzazione tabelloni per l'inizio del Triplo Buffer
	ScoreBoardLeft.y0 = ScoreBoardRight.y0 = Field.ly;
	ScoreBoardLeft.y1 = ScoreBoardRight.y1 = Field.ly;
	ScoreBoardLeft.y2 = ScoreBoardRight.y2 = Field.ly;

    for (;;)
	{
		// vedo 	0
		VDP_SetPage(0);		
		VDP_SetVerticalOffset(Field.ly & 255);
		AddLines(&Field);
  
		for (u8 i=0; i<NumSprite;i++) 
		{
			// cancello 2		
			CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x2, SwSprite[i].y2, 512);
			// scrivo 	1
			if OnScreen(SwSprite[i].y1) 
				CallSpriteFrame(SwSprite[i].x1,(SwSprite[i].y1&255)+256,SwSprite[i].frame);
		}
		// cancello 2	 scrivo 	1
		CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x2, ScoreBoardLeft.y2, 512);
		CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x1, ScoreBoardLeft.y1, 256);
        CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x2, ScoreBoardRight.y2, 512);
		CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x1, ScoreBoardRight.y1, 256);
		
		// LOGICA DI AGGIORNAMENTO
		UpdateGameState(&game_state, &wait_secs, &start_sec, target_ly);

		for (u8 i=0; i<NumSprite;i++) 
		{
			SwSprite[i].x2 = SwSprite[i].lx;
			SwSprite[i].y2 = SwSprite[i].ly;
		}

		ScoreBoardLeft.y2 = Field.ly;	
		ScoreBoardRight.y2 = Field.ly;	
	
		// vedo 	1
		VDP_SetPage(1);		
		VDP_SetVerticalOffset(Field.ly & 255);
		AddLines(&Field);
		
		for (u8 i=0; i<NumSprite;i++) 
		{
			// cancello 0
			CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x0, SwSprite[i].y0, 0);
			// scrivo 	2 
			if OnScreen(SwSprite[i].y2) 
				CallSpriteFrame(SwSprite[i].x2,(SwSprite[i].y2&255)+512,SwSprite[i].frame);
		}
		// cancello 0	 scrivo 	2
		CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x0, ScoreBoardLeft.y0, 0);
		CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x2, ScoreBoardLeft.y2, 512);
        CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x0, ScoreBoardRight.y0, 0);
		CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x2, ScoreBoardRight.y2, 512);
		
		// LOGICA DI AGGIORNAMENTO
		UpdateGameState(&game_state, &wait_secs, &start_sec, target_ly);

		for (u8 i=0; i<NumSprite;i++) 
		{
			SwSprite[i].x0 = SwSprite[i].lx;
			SwSprite[i].y0 = SwSprite[i].ly;
		}

		ScoreBoardLeft.y0 = Field.ly;
		ScoreBoardRight.y0 = Field.ly;
		
		// vedo 	2	
		
		VDP_SetPage(2);		
		VDP_SetVerticalOffset(Field.ly & 255);
		AddLines(&Field);
		
		for (u8 i=0; i<NumSprite;i++) 
		{
			// cancello 1
			CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x1, SwSprite[i].y1, 256);
			// scrivo 	0	
			if OnScreen(SwSprite[i].y0) 
				CallSpriteFrame(SwSprite[i].x0,(SwSprite[i].y0&255),SwSprite[i].frame);	
		}
		// cancello 1	scrivo 	0
		CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x1, ScoreBoardLeft.y1, 256);
		CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x0, ScoreBoardLeft.y0, 0);
        CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x1, ScoreBoardRight.y1, 256);
		CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x0, ScoreBoardRight.y0, 0);
		
		// LOGICA DI AGGIORNAMENTO
		UpdateGameState(&game_state, &wait_secs, &start_sec, target_ly);

		for (u8 i=0; i<NumSprite;i++) 
		{
			SwSprite[i].x1 = SwSprite[i].lx;
			SwSprite[i].y1 = SwSprite[i].ly;
		}

		ScoreBoardLeft.y1 = Field.ly;
		ScoreBoardRight.y1 = Field.ly;

		// update scoreboard
		Print_SetPosition(1, 24+768);
        
    
		if(LastSecs!=Secs){
            LastSecs=Secs;

            if(Secs==60){
                Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins+1);
                Print_SetPosition(248,  60+768);Print_DrawFormat("0");	
                Print_SetPosition(248,  68+768);Print_DrawFormat("0");
            }
            else{
                Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins);
                Print_SetPosition(248,  60+768);Print_DrawFormat("%i",Secs/10);	
                Print_SetPosition(248,  68+768);Print_DrawFormat("%i",Secs-Secs/10*10);
            }
	        	
        }
	}
}