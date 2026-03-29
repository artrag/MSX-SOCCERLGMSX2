// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────
// ---------------
// *** DEFINES ***
// ---------------


#define SCREEN_LINES            212     // righe visibili Screen 5
#define BANK3_BASE              0xA000
#define FRAMES_PER_SEG          4
#define FRAME_SEG_BASE          100
#define FIELD_SEG_BASE          230
#define FIELD_SEG_COUNT         4

// -----------------
// *** VARIABLES ***
// -----------------

extern unsigned char g_Fonts[];


// ------------------
// *** PROTOTYPES ***
// ------------------

// +++ SEGMENT 0 +++
void main();
void VSyncCallback();
void CallSpriteFrame(u8 frame, u16 x, u16 y);
void LoadField(u8);
void CallFnc_VOID(u8 bank, void (*func)());
void CallFnc_VOID_P1(u8 bank, void (*func)(u8), u8 p1);
bool CallFnc_BOOL(u8 bank, u8 (*func)()) ;
u8 CallFnc_U8(u8 bank, u8 (*func)());
void CallFnc_VOID_16_P2(u8 bank, void (*func)(u16,u16), u16 p1, u16 p2);
bool CallFnc_BOOL_P1(u8 bank, u8 (*func)(u8), u8 p1);
u8 CallFnc_U8_P2(u8 bank, u8 (*func)(u8, u8), u8 p1, u8 p2);
u8 CallFnc_U8_P1(u8 bank, u8 (*func)(u8), u8 p1);
u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1);