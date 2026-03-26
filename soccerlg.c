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
// HUD_LINES e HUD_SOURCE_Y definiti in soccerlg.h



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

volatile u16 __at(0xC00B)ScreenPos;
volatile bool g_VSynch=FALSE;

// --- Scroll verticale campo ---
// g_PageScrollY[p] = riga logica del campo in cima alla pagina p
// g_R23[p]         = valore di R#23 (VDP_SetVerticalOffset) per la pagina p
u16 g_PageScrollY[3] = {0, 0, 0};
u8  g_R23[3]         = {0, 0, 0};
static i8  g_scrollDir      = 1;        // +1 = giù, -1 = su

// --- HUD timer ---
// Ogni iterazione del loop principale contiene 3 Halt() = 3 frame VBlank.
// PAL: 50 frame/s → 50/3 ≈ 17 iterazioni/s  (errore < 2%)
#define HUD_ITERS_PER_SEC  17u
static u8 g_hudTimer  = 0;   // contatore iterazioni loop (0..HUD_ITERS_PER_SEC-1)
static u8 g_hudSec    = 0;   // secondi trascorsi (0..255)

// --- Sprite objects: array paralleli (SDCC/Z80: accesso HL-based, no IX+d) ---
u8  g_lx[NOBJ];                           // x logica
u8  g_ly[NOBJ];                           // y on-screen (0..191) → u8
u8  g_x0[NOBJ], g_x1[NOBJ], g_x2[NOBJ];  // x fisica per pagina
u16 g_y0[NOBJ], g_y1[NOBJ], g_y2[NOBJ];  // y piena (page_offset | phys_row)
u16 g_frame[NOBJ];
i8  g_dx[NOBJ];


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
// +++ Call void function with 3 parameters (u8, u8, u16) +++
void CallFnc_VOID_U8U8U16(u8 segment, void (*func)(u8, u8, u16), u8 p1, u8 p2, u16 p3) {
    u8 _old = GET_BANK_SEGMENT(3);
    SET_BANK_SEGMENT(3, segment);
    func(p1, p2, p3);
    SET_BANK_SEGMENT(3, _old);
}

// +++ CallSpriteFrame_B3: versione sicura da bank3 +++
// Salva/ripristina bank3 attorno a CallSpriteFrame, che non lo fa da sola.
// Da usare quando il chiamante è in un segmento mappato su bank3.
void CallSpriteFrame_B3(u8 x, u16 y, u16 frame) {
    u8 _old = GET_BANK_SEGMENT(3);
    CallSpriteFrame(x, y, frame);
    SET_BANK_SEGMENT(3, _old);
}

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


// -----------
// *** ISR ***
// -----------
void VSyncCallback()
{
	g_VSynch = TRUE;
}

void WaitForVBlank(){
    while(!g_VSynch) {}
    g_VSynch = FALSE;
}

void DrawField(u8 vdp_page)
{
    u8 i;

    u32 base     = (u32)vdp_page * 0x8000;
    u8  saved_seg = GET_BANK_SEGMENT(3);

    for (i = 0; i < FIELD_SEG_COUNT; i++)
    {
        u32 addr    = base + (u32)i * 8192;
        u16 addrLow = (u16)(addr & 0xFFFF);
        u8  addrHigh = (u8)(addr >> 16);

        SET_BANK_SEGMENT(3, FIELD_SEG_BASE + i);
        VDP_WriteVRAM_128K((u8*)BANK3_BASE, addrLow, addrHigh, 8192);
    }

    SET_BANK_SEGMENT(3, saved_seg);
}


// Ridisegna l'HUD master nell'area sicura (HUD_SOURCE_Y).
// Chiamata una sola volta all'init e poi una volta al secondo.
// Formato: "MM:SS" calcolato da g_hudSec.
static void UpdateHUDMaster(void)
{
    u8 s  = g_hudSec % 60;
    u8 m  = g_hudSec / 60;
    c8 buf[6];
    buf[0] = '0' + m / 10;
    buf[1] = '0' + m % 10;
    buf[2] = ':';
    buf[3] = '0' + s / 10;
    buf[4] = '0' + s % 10;
    buf[5] = '\0';
    VDP_CommandLMMV(0, HUD_SOURCE_Y, 256, HUD_LINES, 0x11, VDP_OP_IMP);
    SET_BANK_SEGMENT(3, 4);     // ripristina segmento font (CallSpriteFrame lo cambia)
    Print_SetPosition(0, (UY)HUD_SOURCE_Y);
    Print_DrawText(buf);
}

// ------------
// *** MAIN ***
// ------------
void main(){
	u8 i;
	
	if (Sys_GetMSXVersion() == MSXVER_1)
	{
		Bios_ClearScreen();
		Bios_TextPrintSting("This game need MSX2 or above");
		Bios_GetCharacter();
		return;
	}
	
	DEBUG_INIT();
    Bios_SetKeyClick(FALSE);
	//Bios_SetHookCallback(H_TIMI, VSyncCallback);
	VDP_SetMode(VDP_MODE_SCREEN5);
    VDP_SetLineCount(VDP_LINE_192);     // 192 righe: VBlank più lungo, più CPU per frame
    VDP_SetLayoutTable(VDP_G4_ADDR_NT);
	// VDP_EnableVBlank(TRUE);

    VDP_SetPalette(g_Palette);
    VDP_SetColor(0X01);
    // VDP_FillVRAM_128K(6,0,0,0);
    // VDP_FillVRAM_128K(6,0,1,0);
 
	VDP_DisableSprite();
	
    // --- CONFIGURAZIONE INIZIALE ---
    
    // 1. Imposta la posizione dove vuoi disegnare nella VRAM (es. X=100, Y=100)
    // In Screen 5, ogni riga occupa 128 byte. (Y * 128) + (X / 2)


    DrawField(3);           // carica il campo compresso in pagina 3 (sorgente per HMMM)
    CallFnc_VOID(SEG_MAIN, InitScrollPages); // RebuildPage(0..2, 0) via seg5

    // Pulisce l'area HUD di base con un rettangolo nero (0x11 = MSX index 1 -> #010101)
    VDP_CommandLMMV(0, 0, 256, HUD_LINES, 0x11, VDP_OP_IMP);
    VDP_CommandLMMV(0, 256, 256, HUD_LINES, 0x11, VDP_OP_IMP);
    VDP_CommandLMMV(0, 512, 256, HUD_LINES, 0x11, VDP_OP_IMP);

    //VDP_EnableDisplay(TRUE);
    SET_BANK_SEGMENT(3, 4);
    Print_SetMode(PRINT_MODE_BITMAP);
    Print_Initialize();
    Print_SetBitmapFont(g_Fonts);
    Print_SetColor(4,1);

    // Prima render HUD master (tempo 00:00)
    UpdateHUDMaster();

    // 1. Esegui la presentazione iniziale del gioco
    CallFnc_VOID(SEG_PRESENTATION, PlayPresentation);

    // 2. Passa al loop infinito di test prestazioni (animazione originale)
    TestPerformanceAnimation();
}

void TestPerformanceAnimation(void)
{
	u8 i;

	for (i=0; i<NOBJ; i++) {
		g_lx[i]    = (u8)(i*16+4);
		g_ly[i]    = (u8)(i*12);
		g_frame[i] = 38;
		g_dx[i]    = 2;
	}

// Passi del triplo buffering

// 1)	
// vedo 	0
// cancello 2
// scrivo 	1

// 2)	
// vedo 	1
// cancello 0
// scrivo 	2

// 3)	
// vedo 	2
// cancello 1
// scrivo 	0


// init
	for (i=0; i<NOBJ; i++)
	{
		g_x0[i] = g_lx[i];
		g_y0[i] = g_ly[i] + HUD_LINES;                   // page 0: offset 0, r23=0
		g_x1[i] = g_lx[i];
		g_y1[i] = (u16)256u | (u8)(g_ly[i] + HUD_LINES);       // page 1: offset 256
		g_x2[i] = g_lx[i];
		g_y2[i] = (u16)512u | (u8)(g_ly[i] + HUD_LINES);                        // page 2: inizializzato correttamente per primo erase
	}

// loop
// Per ogni fase:
//   1. ScrollInsertRowDown(write_page)  → inserisce la riga nuova in fondo al buffer
//      circolare, incrementa g_R23[write_page] e g_PageScrollY[write_page]
//   2. Calcola coordinate fisiche sprite per write_page con il nuovo g_R23
//   3. VDP_SetPage(show_page) + VDP_SetVerticalOffset(g_R23[show_page])
//   4. Cancella sprite da erase_page (con riga sorgente via FieldMap), disegna su write_page
//
// Erase via FieldMap:
//   phys_y_in_page = y_erase & 0xFF
//   screen_row     = (phys_y_in_page - g_R23[erase_page]) & 0xFF
//   src_in_pag3    = FieldMap[ g_PageScrollY[erase_page] + screen_row ]

	for (;;)
	{
		// ── FASE 1: vedo 0 │ cancello 2 │ scrivo 1 ──────────────────────────────
		if (g_scrollDir > 0) { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 1); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 1); }
		else                 { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   1); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   1); }
		Halt();
		VDP_SetPage(0);
		VDP_SetVerticalOffset(g_R23[0]);

		// Copia HUD master → HUD di pag 1 (puro VDP, CPU libera subito)
		VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 256u + g_R23[1], 256, HUD_LINES);

		CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase1, g_R23[1], g_R23[2], g_PageScrollY[2]);

		// ── FASE 2: vedo 1 │ cancello 0 │ scrivo 2 ──────────────────────────────
		if (g_scrollDir > 0) { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 2); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 2); }
		else                 { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   2); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   2); }
		Halt();
		VDP_SetPage(1);
		VDP_SetVerticalOffset(g_R23[1]);

		// Copia HUD master → HUD di pag 2
		VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 512u + g_R23[2], 256, HUD_LINES);

		CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase2, g_R23[2], g_R23[0], g_PageScrollY[0]);

		// ── FASE 3: vedo 2 │ cancello 1 │ scrivo 0 ──────────────────────────────
		if (g_scrollDir > 0) { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 0); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 0); }
		else                 { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   0); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   0); }
		Halt();
		VDP_SetPage(2);
		VDP_SetVerticalOffset(g_R23[2]);

		// Copia HUD master → HUD di pag 0
		VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, g_R23[0], 256, HUD_LINES);

		CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase3, g_R23[0], g_R23[1], g_PageScrollY[1]);

		// ── Aggiornamento HUD una volta al secondo (50 frame PAL) ────────────
		if (++g_hudTimer >= HUD_ITERS_PER_SEC)
		{
			g_hudTimer = 0;
			g_hudSec++;
			UpdateHUDMaster();
		}

		// ── Inversione direzione scroll ai limiti del campo ──────────────────
		if (g_scrollDir > 0 && g_PageScrollY[0] + (SCREEN_LINES - HUD_LINES) >= FIELD_ROWS)
			g_scrollDir = -1;
		else if (g_scrollDir < 0 && g_PageScrollY[0] == 0)
			g_scrollDir = 1;

	}

}
