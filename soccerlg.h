// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────
// ---------------
// *** DEFINES ***
// ---------------


#define SCREEN_LINES            192     // righe visibili Screen 5
#define FIELD_ROWS              504     // righe logiche totali del campo (entries FieldMap)
#define MAX_SCROLL_Y            (FIELD_ROWS - SCREEN_LINES)  // = 277: max riga top
#define BANK3_BASE              0xA000
#define FRAMES_PER_SEG          4
#define JUMPTABLE_OFFSET        3       // 3 nop iniziali
#define ENTRY_SIZE              4       // jp (3 byte) + nop (1 byte)
#define FRAME_SEG_BASE          100
#define FIELD_SEG_BASE          230
#define FIELD_SEG_COUNT         4
#define SPRITE_H                16      // altezza sprite in pixel
#define NOBJ                    15      // numero oggetti sprite
// VTOP_MAX: valore massimo sicuro di g_R23 per evitare che sprite o erase
// sconfinino oltre riga 255 della pagina VDP.
// phys_y_max = (SCREEN_LINES-1) + VTOP_MAX; bottom = phys_y_max + SPRITE_H - 1 <= 255
#define VTOP_MAX                (255 - (SCREEN_LINES - 1) - (SPRITE_H - 1))  // = 49

// -----------------
// *** VARIABLES ***
// -----------------

extern  volatile u16     __at(0xC00B)ScreenPos;
extern           c8 g_Fonts[];

// ------------------
// *** PROTOTYPES ***
// ------------------

// +++ SEGMENT 0 +++
void main();
void VSyncCallback();
void CallSpriteFrame(u8 frame, u16 x, u16 y);
void DrawField(u8);