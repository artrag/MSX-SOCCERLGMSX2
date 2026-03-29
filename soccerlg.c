// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "soccerlg.h"
#include "memory.h"
#include "debug.h"

// -----------------
// *** CONSTANTS ***
// -----------------
const c8 g_Palette[] = {
    0x55, 0x02, // [0]  #A349A4  TRASPARENTE
    0x00, 0x00, // [1]  #010101  Fisso  - Scarpe, capelli, maglietta arbitro
    0x71, 0x00, // [2]  #ED1C24  Fisso  - Frecce e pailettes ragazze pon-pon
    0x72, 0x06, // [3]  #F7D647  Fisso  - Pelle giocatori e arbitro
    0x77, 0x07, // [4]  #FFFFFF  Fisso  - Campo / quadrato focus
    0x03, 0x00, // [5]  #000C7B  Fisso  - Campo di calcio
    0x00, 0x05, // [6]  #00B800  Fisso  - Campo di calcio
    0x33, 0x03, // [7]  #7F7F7F  Fisso  - Campo di calcio
    0x62, 0x04, // [8]  #DD9C48  Fisso  - Campo di calcio
    0x72, 0x06, // [9]  #F6D543  Fisso  - Campo di calcio
    0x40, 0x00, // [A]  #880015  Var    - Contorni maglietta squadra 1
    0x26, 0x05, // [B]  #4CB7DA  Var    - Maglietta squadra 1
    0x70, 0x07, // [C]  #FAF70F  Var    - Pantaloncini squadra 1
    0x77, 0x07, // [D]  #FDFDFD  Var    - Contorni maglietta squadra 2
    0x16, 0x02, // [E]  #3F48CC  Var    - Maglietta squadra 2
    0x77, 0x07, // [F]  #FEFEFE  Var    - Pantaloncini squadra 2
};

// -----------------
// *** VARIABLES ***
// -----------------

	u8	Frms = 60;
	u8	Secs = 5;
	u8	Mins = 3;
    u8  LastSecs=5;

struct ObjectInfo SwSprite[NumSprite];
struct ObjectInfo Field;
struct ObjectInfo ScoreBoardLeft;
struct ObjectInfo ScoreBoardRight;

volatile bool g_VSynch=FALSE;


// -----------------------------
// *** TRAMPOLINES FUNCTIONS ***
// -----------------------------

// +++ Call void function without parameters +++
void CallFnc_VOID(u8 segment, void (*func)()) {
    u8 _old = GET_BANK_SEGMENT(3);
    SET_BANK_SEGMENT(3, segment);
    func();
    SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 1 parameter +++
void CallFnc_VOID_P1(u8 segment, void (*func)(u8), u8 p1) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 3 parameters (u8, u16, u16) +++
void CallFnc_VOID_U8U16U16(u8 segment, void (*func)(u8, u16, u16), u8 p1, u16 p2, u16 p3) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1, p2, p3);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 1 parameter +++
void CallFnc_VOID_P2(u8 segment, void (*func)(u8, bool), u8 p1, bool p2) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 2 u16 parameters +++
void CallFnc_VOID_16_P2(u8 segment, void (*func)(u16,u16), u16 p1, u16 p2) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call function without parameters with u8 returned value +++
u8 CallFnc_U8(u8 segment, u8 (*func)()) {
	u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func();
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u8 returned value +++
u8 CallFnc_U8_P1(u8 segment, u8 (*func)(u8), u8 p1) {
	u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u16 returned value +++
u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1) {
	u16 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u8 returned value +++
u8 CallFnc_U8_P2(u8 segment, u8 (*func)(u8, u8), u8 p1, u8 p2) {
    u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
	return _res;
}
// +++ Call function without parameter and with bool returned value +++
bool CallFnc_BOOL(u8 segment, bool (*func)()) {
    bool _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func();
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 1 u8 parameter and with bool returned value +++
bool CallFnc_BOOL_P1(u8 segment, bool (*func)(u8), u8 p1) {
    bool _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}

// -----------------
// *** FUNCTIONS ***
// -----------------

void CallSpriteFrame(u8 x, u16 y, u16 frame)  __naked
{
	x;			// A
	y;			// DE
	frame;		// SP
	__asm
	
	ld  b,a		; b = x  , de = y
	pop af		; pop return
	pop hl		; hl = frame
	push af		; push return
	
	ld	a,(#(_g_Bank0Segment + 6) + 0)
	push 	af								; save the current mapper page
	call  SpriteFrame
	pop 	af
	ld	(#0xB000),a							; restore the mapper page
	ld	(#(_g_Bank0Segment + 6) + 0),a		
	ret

SpriteFrame::
	ld	a,l
	and #3
	add a,a
	add a,a			
	ld	c,a		; in c the low address of the function to be called
	
	srl h		; page = 100 + frame / 4
	rr  l
	srl h
	rr  l
	ld	a,#100
	add a,l		; segments in the current offset (!)
	ld	(#0xB000),a		
	ld	(#(_g_Bank0Segment + 6) + 0),a		; prevent future possible issues on the ISR

	ld	h,d			; HLB  = y*256+X = 2 * VRAM_address
	ld	l,e

	add hl,hl		; in h 3 bit di indirizzo per R14
	ld 	a,h 
	and #1
	.db #0xFD
	ld	l,a			;ld  iyl,a		; save R14 in iyl
	ld 	a,h 
	and #6
	.db #0xFD
	ld h,a 			;ld  iyh,a		; save vram page in iyh

	srl d
	rr  e
	srl b 
	ld  d,e
	ld  e,b			; DE = (x + y*256)/2 & 0xFFFF

	ld	l,c
	ld	h,#0xA0
	jp	(hl)

	__endasm;
}

//	u8 FieldMap[] 
	#include "Tools/OutField/FieldMap.h"

	const u8 dummy[] = {0,0,0,0,0,0,0,0};

// -----------
// *** ISR ***
// -----------



void VSyncCallback()
{
	g_VSynch = TRUE;
	
	Frms--;
	if (Frms==0) {
		Frms = 60;
        LastSecs=Secs;
		Secs--;
		if (Secs==0) {
			Secs = 60;
			Mins--;
			if (Mins==0) Mins = 3;
		}
	}
}

void WaitForVBlank(){
    while(!g_VSynch) {}
    g_VSynch = FALSE;
}

void LoadField(u8 vdp_page)
{
    u32 base     = (u32)vdp_page * 0x8000;
    u8  saved_seg = GET_BANK_SEGMENT(3);

    for (u8 i = 0; i < FIELD_SEG_COUNT; i++)
    {
        u32 addr    = base + (u32)i * 8192;
        u16 addrLow = (u16)(addr & 0xFFFF);
        u8  addrHigh = (u8)(addr >> 16);

        SET_BANK_SEGMENT(3, FIELD_SEG_BASE + i);
        VDP_WriteVRAM_128K((u8*)BANK3_BASE, addrLow, addrHigh, 8192);
    }

    SET_BANK_SEGMENT(3, saved_seg);
}



// ------------
// *** MAIN ***
// ------------
void main()
{
	
	if (Sys_GetMSXVersion() == MSXVER_1)
	{
		Bios_ClearScreen();
		Bios_TextPrintSting("This game need MSX2 or above");
		Bios_GetCharacter();
		return;
	}
	
	DEBUG_INIT();
    Bios_SetKeyClick(FALSE);
	VDP_SetMode(VDP_MODE_SCREEN5);
	VDP_EnableTransparency(FALSE);
    VDP_SetPalette(g_Palette);
    VDP_SetBackdropColor(0x1);
 	VDP_SetLineCount(VDP_LINE_192);
	VDP_DisableSprite();
	VDP_ClearVRAM();
	VDP_FillVRAM(0x77, 0x0000, 0, 0x8000);
  

  
  
	LoadField(3);
	
	VDP_CommandHMMV(0,768,ScoreBoardNX_Left,ScoreBoardNY_Left,0x77);
    VDP_CommandHMMV(0,768,ScoreBoardNX_Right,ScoreBoardNY_Right,0x77);

    SET_BANK_SEGMENT(3,4);
	Print_SetBitmapFont(g_Fonts);
	Print_SetColor(4, 7);

	Print_SetPosition(0,  8+768);Print_DrawText("A");
    Print_SetPosition(0,  16+768);Print_DrawText("U");
    Print_SetPosition(0,  24+768);Print_DrawText("S");
    Print_SetPosition(0,  32+768);Print_DrawText(" ");
    Print_SetPosition(0,  40+768);Print_DrawText("1");

	Print_SetPosition(0,  56+768);Print_DrawText("I");
    Print_SetPosition(0,  64+768);Print_DrawText("T");
    Print_SetPosition(0,  72+768);Print_DrawText("A");
    Print_SetPosition(0,  80+768);Print_DrawText(" ");
    Print_SetPosition(0,  88+768);Print_DrawText("2");


    Print_SetPosition(248,  8+768);Print_DrawText("T");
    Print_SetPosition(248,  16+768);Print_DrawText("I");
    Print_SetPosition(248,  24+768);Print_DrawText("M");
    Print_SetPosition(248,  32+768);Print_DrawText("E");

	Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins);//Print_DrawText("3");	
	Print_SetPosition(248,  60+768);Print_DrawFormat("%i",Secs/10);	
    Print_SetPosition(248,  68+768);Print_DrawFormat("%i",Secs-Secs/10*10);	
// Passi del triplo buffering
//
// 1) vedo 	0, cancello 2, scrivo 	1
// 2) vedo 	1, cancello 0, scrivo 	2
// 3) vedo 	2, cancello 1, scrivo 	0
	


	Field.dy = 1;
	Field.ly = 0;
	
	ScoreBoardLeft.lx = 0;
	ScoreBoardLeft.ly = Field.ly;
	
	ScoreBoardRight.lx = 248;
	ScoreBoardRight.ly = Field.ly;
	
	VDP_EnableDisplay(false);
	CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
	CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
	CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
//


	//RemoveScoreBoardLeft(0,0,0);
    //RemoveScoreBoardLeft(0,0,1);
    //RemoveScoreBoardLeft(0,0,2);
    //RemoveScoreBoardRight(ScoreBoardRight.x0,ScoreBoardRight.y0,  0);


	Bios_SetHookCallback(H_TIMI, VSyncCallback);

    // --- CONFIGURAZIONE INIZIALE ---

	for (u8 i=0; i<NumSprite;i++) 
	{
		SwSprite[i].lx = Math_GetRandomRange16(4,238) 		& 0xFFFE;
		SwSprite[i].ly = Math_GetRandomRange16(16,504-16)	& 0xFFFE;
		SwSprite[i].frame = (i<NumSprite/2) ? (32+i):(14*16+i);
		SwSprite[i].dx = 2;
		SwSprite[i].dy = 2*(Math_GetRandomRange16(0,3)-1);
	}


	for (u8 i=0; i<NumSprite;i++) 
	{
		SwSprite[i].x0 = SwSprite[i].lx;
		SwSprite[i].y0 = SwSprite[i].ly;
		SwSprite[i].x1 = SwSprite[i].lx;
		SwSprite[i].y1 = SwSprite[i].ly;
		SwSprite[i].x2 = 0;
		SwSprite[i].y2 = 0;
	}

	ScoreBoardLeft.x0 = ScoreBoardLeft.lx;
	ScoreBoardLeft.x1 = ScoreBoardLeft.lx;
	ScoreBoardLeft.x2 = ScoreBoardLeft.lx;

    ScoreBoardRight.x0 = ScoreBoardRight.lx;
	ScoreBoardRight.x1 = ScoreBoardRight.lx;
	ScoreBoardRight.x2 = ScoreBoardRight.lx;

// Sincronizzazione perfetta del Triplo Buffer al frame 0
	ScoreBoardLeft.y2 = Field.ly;
	ScoreBoardLeft.y0 = Field.ly;
	ScoreBoardLeft.y1 = Field.ly + Field.dy;

	ScoreBoardRight.y2 = Field.ly;
	ScoreBoardRight.y0 = Field.ly;
	ScoreBoardRight.y1 = Field.ly + Field.dy;


// loop 
    VDP_EnableDisplay(true);
	CallFnc_VOID(4,MainLoop);

}
