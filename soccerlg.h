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

#define SEG_DRAW 5
#define SEG_LOGIC 6

// -----------------
// *** VARIABLES ***
// -----------------

extern	u8	Frms;
extern	u8	Secs;
extern	u8	Mins;
extern  u8  LastSecs;



struct ObjectInfo {
	u8 lx;			// Logical x
	u8 x0,x1,x2;	// Physical x's in the 3 pages
	u16 ly;			// Logical Y
	u16 y0,y1,y2;	// Physical y's in the 3 pages
	u16 frame;
	i8 dx;			// x direction
	i8 dy;			// y direction
};

#define OnScreen(y)  	(((y)+15)>=Field.ly && (y)<Field.ly+192)
#define SplitSprite(y)  (((y & 255))>240)
#define NumSprite	(24)

#define ScoreBoardNX_Left 8
#define ScoreBoardNY_Left 212
#define ScoreBoardNX_Right 8
#define ScoreBoardNY_Right 212

extern struct ObjectInfo SwSprite[NumSprite];
extern struct ObjectInfo Field;
extern struct ObjectInfo ScoreBoardLeft;
extern struct ObjectInfo ScoreBoardRight;
extern const unsigned char g_Fonts[];
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
void CallFnc_VOID_U8U16U16(u8 bank, void (*func)(u8, u16, u16), u8 p1, u16 p2, u16 p3);
bool CallFnc_BOOL(u8 bank, u8 (*func)()) ;
u8 CallFnc_U8(u8 bank, u8 (*func)());
void CallFnc_VOID_16_P2(u8 bank, void (*func)(u16,u16), u16 p1, u16 p2);
bool CallFnc_BOOL_P1(u8 bank, u8 (*func)(u8), u8 p1);
u8 CallFnc_U8_P2(u8 bank, u8 (*func)(u8, u8), u8 p1, u8 p2);
u8 CallFnc_U8_P1(u8 bank, u8 (*func)(u8), u8 p1);
u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1);

// +++ SEGMENT SEG_DRAW (4) +++
void MainLoop();

// +++ SEGMENT SEG_DRAW (5) +++
void PlotField(u16 y,u16 page);
void AddLines(void);
void RemoveSwSprite(u8 px,u16 py,u16 page);
void RemoveScoreBoardLeft(u8 px,u16 py,u16 page);
void PrintScoreBoardLeft(u8 px,u16 py,u16 page);
void RemoveScoreBoardRight(u8 px,u16 py,u16 page);
void PrintScoreBoardRight(u8 px,u16 py,u16 page);


// +++ SEGMENT SEG_LOGIC (6) +++
void PlayerAI(u8 i);