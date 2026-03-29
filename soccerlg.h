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