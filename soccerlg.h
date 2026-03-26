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
#define HUD_LINES               8
// HUD_SOURCE_Y: ultime HUD_LINES righe di pag0, fuori dal reach di campo+sprite.
#define HUD_SOURCE_Y            (256 - HUD_LINES)   // = 248, righe 248..255

// Numero segmento per soccerlg_s5_b3.c
#define SEG_MAIN                5

// -----------------
// *** VARIABLES ***
// -----------------

extern  volatile u16     __at(0xC00B)ScreenPos;
extern           c8      g_Fonts[];

// --- Scroll verticale campo ---
extern u16 g_PageScrollY[3];
extern u8  g_R23[3];

// --- Sprite objects ---
extern u8  g_lx[NOBJ];
extern u8  g_ly[NOBJ];
extern u8  g_x0[NOBJ], g_x1[NOBJ], g_x2[NOBJ];
extern u16 g_y0[NOBJ], g_y1[NOBJ], g_y2[NOBJ];
extern u16 g_frame[NOBJ];
extern i8  g_dx[NOBJ];

// FieldMap[] è statica in soccerlg_s5_b3.c (solo le funzioni di seg5 la usano)

// ------------------
// *** PROTOTYPES ***
// ------------------

// +++ BANK 0/1 – sempre visibili +++
void main();
void VSyncCallback();
void CallSpriteFrame(u8 x, u16 y, u16 frame);
void CallSpriteFrame_B3(u8 x, u16 y, u16 frame);   // versione sicura da bank3
void DrawField(u8 vdp_page);

// --- Trampolini ---
void CallFnc_VOID(u8 segment, void (*func)());
void CallFnc_VOID_P1(u8 segment, void (*func)(u8), u8 p1);
void CallFnc_VOID_P2(u8 segment, void (*func)(u8, bool), u8 p1, bool p2);
void CallFnc_VOID_16_P2(u8 segment, void (*func)(u16,u16), u16 p1, u16 p2);
void CallFnc_VOID_U8U8U16(u8 segment, void (*func)(u8, u8, u16), u8 p1, u8 p2, u16 p3);
bool CallFnc_BOOL(u8 segment, bool (*func)());
bool CallFnc_BOOL_P1(u8 segment, bool (*func)(u8), u8 p1);
u8   CallFnc_U8(u8 segment, u8 (*func)());
u8   CallFnc_U8_P1(u8 segment, u8 (*func)(u8), u8 p1);
u8   CallFnc_U8_P2(u8 segment, u8 (*func)(u8, u8), u8 p1, u8 p2);
u16  CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1);

// +++ SEGMENT SEG_MAIN (seg5, bank3) +++
void InitScrollPages(void);
void ScrollInsertRowDown(u8 write_page);
void ScrollInsertRowUp(u8 write_page);
void UpdatePhase1(u8 r23_w, u8 r23_e, u16 scroll_e);
void UpdatePhase2(u8 r23_w, u8 r23_e, u16 scroll_e);
void UpdatePhase3(u8 r23_w, u8 r23_e, u16 scroll_e);