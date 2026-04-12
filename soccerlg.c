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
#include "soccerlg_rawdef.h"
#include "bin/FieldMap.h"

// -----------------
// *** CONSTANTS ***
// -----------------

// Palette
const c8 g_Palette[] = {
    0x00, 0x00, // [0]  #000000  TRASPARENTE 
    0x00, 0x00, // [1]  #010101  Nero (Campo - Capelli - Scarpe Arbitro)
    0x71, 0x00, // [2]  #ED1C24  Rosso (Campo)
    0x72, 0x06, // [3]  #F7D647  Giallo caldo (Campo - Pelle)
    0x77, 0x07, // [4]  #FFFFFF  Bianco (Campo - Calzoncini portieri)
    0x03, 0x00, // [5]  #000C7B  Var - Maglietta squadra 2
    0x00, 0x05, // [6]  #00B800  Verde (Campo)
    0x33, 0x03, // [7]  #7F7F7F  Grigio  (Campo)
    0x55, 0x02, // [8]  #A349A4  Viola (Maglietta portieri)
    0x45, 0x06, // [9]  #E18AC4  Var - Pantaloncini squadra 2
    0x40, 0x00, // [A]  #880015  Var - Righe squadra 1
    0x26, 0x05, // [B]  #4CB7DA  Var - Maglietta squadra 1
    0x55, 0x02, // [C]  #A9A84C  Var - Righe squadra 2
    0x06, 0x06, // [D]  #C70CB3  Var - Pantaloncini squadra 1
    0x16, 0x02, // [E]  #3F48CC  Blu chiaro (Campo)
    0x66, 0x06, // [F]  #D3CACA  Verde oliva acceso (Non usato)
};

// Teams colours array (Formato MSX2: 0x0GRB)
const struct TeamColors g_TeamColorsArray[] = {
    { 0x0526, 0x0777, 0x0777 }, // 0: ITA (Shirt: Azzurra, Shorts: Bianchi, Righe: Bianche)
    { 0x0215, 0x0777, 0x0777 }, // 1: FRA (Shirt: Blu, Shorts: Bianchi, Righe: Bianche)
    { 0x0511, 0x0671, 0x0671 }, // 2: BRA (Shirt: Verde, Shorts: Oro, Righe: Oro)
    { 0x0777, 0x0111, 0x0111 }, // 3: GER (Shirt: Bianca, Shorts: Neri, Righe: Nere)
    { 0x0470, 0x0111, 0x0111 }, // 4: NLD (Shirt: Arancione, Shorts: Neri, Righe: Nere)
    { 0x0071, 0x0071, 0x0777 }  // 5: ESP (Shirt: Rossa, Shorts: Rosse, Righe: Bianche)
};

// -----------------
// *** VARIABLES ***
// -----------------

	u8	Frms = 60;
	u8	Secs = 0;
	u8	Mins = HALF_TIME_DURATION;
    u8  LastSecs=0xFF;
    u8  Half = 1;
	u8  ScoreA = 0;
	u8  ScoreB = 0;
	u8  Team1Code=TEAM_ITA_COLORS;
	u8  Team2Code=TEAM_NLD_COLORS;
	u8  KickOffTeam=TEAM_2; // P1 (Team 2) batte nel primo tempo
	u8  GameMode = GAMEMODE_P1_VS_CPU;
	u8  T1_Carrier = 0xFF;
	u8  T1_Receiver = 0xFF;
	u8  T2_Carrier = 0xFF;
	u8  T2_Receiver = 0xFF;
	bool TimerEnabled = FALSE;


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
// +++ Call void function with 3 pointers and 1 u16 parameter +++
void CallFnc_VOID_3PTR_U16(u8 segment, void (*func)(u8*, u8*, u8*, u16), u8* p1, u8* p2, u8* p3, u16 p4) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1, p2, p3, p4);
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

// +++ Call void function with 1 u16 parameter +++
void CallFnc_VOID_16_P1(u8 segment, void (*func)(u16), u16 p1) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1);
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
// +++ Set team colors +++
void SetTeamColors(u8 team, const struct TeamColors* colors)
{
	if (team == TEAM_1)
	{
		VDP_SetPaletteEntry(10, colors->Stripes); // [A] Righe Squadra 1
		VDP_SetPaletteEntry(11, colors->Shirt);   // [B] Maglietta Squadra 1
		VDP_SetPaletteEntry(13, colors->Shorts);  // [D] Pantaloncini Squadra 1
	}
	else if (team == TEAM_2)
	{
		VDP_SetPaletteEntry(12, colors->Stripes); // [C] Righe Squadra 2
		VDP_SetPaletteEntry(5,  colors->Shirt);   // [5] Maglietta Squadra 2
		VDP_SetPaletteEntry(9,  colors->Shorts);  // [9] Pantaloncini Squadra 2
	}
}
// +++ Add field lines +++
void AddLines(struct ObjectInfo* Field) 
{
	u16 v;
	
	if (Field->dy==0) return;
	
	if (Field->dy>0) {
		v = (Field->ly + 192) & 511;
	}
	else	{
		v = (Field->ly -   1) & 511;
	}
	VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) +   0,1,0);	
	VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 256,1,0);	
	VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 512,1,0);	
}

void CallSpriteFrame(u8 x, u16 y, u16 frame)  __naked
{
	x;			// A
	y;			// DE
	frame;		// SP
	__asm
ENAR 			.equ 		0x7FFF 			; enable register interface
OFFR 			.equ 		0x7FFE 			; offset register (more on this later)
CFGR 			.equ 		0x7FFD 			; configuration bits
	
	
	ld  b,a		; b = x  , de = y
	pop af		; pop return
	pop hl		; hl = frame
	push af		; push return

	// ld 		a,#1
	// ld		(ENAR),a		; <- !!! potrebbe causare problemi a MSXGL ma senza ci sono altri problemi nel codice @ 0x7FFF
	ld 		a,#(SPRITES_BIN_SEG>>2) & #$%11000000
	ld		(OFFR),a				; Data offset
	
	ld	a,(#(_g_Bank0Segment + 6) + 0)
	push 	af								; save the current mapper page (!!) has to be < 256
	call  SpriteFrame
	xor 	a,a								; lower 2MB
	ld 		(OFFR),a
	// ld		(ENAR),a		; <- !!! potrebbe causare problemi a MSXGL ma senza ci sono altri problemi nel codice @ 0x7FFF
	pop 	af
	ld	(#0xB000),a							; restore the mapper page
	ld	(#(_g_Bank0Segment + 6) + 0),a		
	ret

SpriteFrame::
	ld	a,l
	and #3		; 4 sprite per pagina
	add a,a
	add a,a			
	ld	c,a		; in c the low address of the function to be called
	
	srl h		; page = SPRITES_BIN_SEG + frame / 4
	rr  l
	srl h
	rr  l
	ld	a,#SPRITES_BIN_SEG
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
	rr  b 
	ld  d,e
	ld  e,b			; DE = (x + y*256)/2 & 0xFFFF

	ld	l,c
	ld	h,#BANK3_BASE/256
	
	ld a,d
	or #0xC0
	ld d,a
	
	jp	(hl)

	__endasm;
}

//	u8 FieldMap[] 
	#include "bin/FieldMap.h"

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
		if (TimerEnabled) {
			if (Mins > 0 || Secs > 0) {
				if (Secs==0) {
					Secs = 59;
					Mins--;
				} else {
					Secs--;
				}
			}
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
    u8  u = GET_BANK_SEGMENT_HIGH(3);
    u8  v = GET_BANK_SEGMENT_LOW(3);

    for (u8 i = 0; i < FIELD_SEG_COUNT; i++)
    {
        u32 addr    = base + (u32)i * 8192;

        SET_BANK_SEGMENT_LOW (3, (FIELD_BIN_SEG + i) & 255);
        SET_BANK_SEGMENT_HIGH(3, (FIELD_BIN_SEG + i) >>8);
        VDP_WriteVRAM_128K((u8*)BANK3_BASE, (addr & 0xFFFF), (addr >> 16), 8192);
    }

	SET_BANK_SEGMENT_HIGH(3, u);
	SET_BANK_SEGMENT_LOW (3, v);
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
	
	VDP_CommandHMMV(0,768,SCOREBOARD_NX_LEFT,SCOREBOARD_NY_LEFT,0x77);
    VDP_CommandHMMV(0,768,SCOREBOARD_NX_RIGHT,SCOREBOARD_NY_RIGHT,0x77);

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

	ScoreBoardLeft.x0 = ScoreBoardLeft.lx;
	ScoreBoardLeft.x1 = ScoreBoardLeft.lx;
	ScoreBoardLeft.x2 = ScoreBoardLeft.lx;

    ScoreBoardRight.x0 = ScoreBoardRight.lx;
	ScoreBoardRight.x1 = ScoreBoardRight.lx;
	ScoreBoardRight.x2 = ScoreBoardRight.lx;


// loop 
    VDP_EnableDisplay(true);
	CallFnc_VOID(4,MainLoop);

}
