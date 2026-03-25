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
#define HUD_LINES 8
// HUD_SOURCE_Y: ultime HUD_LINES righe di pag0, fuori dal reach di campo+sprite.
// VTOP_MAX reale = 255-(SCREEN_LINES-1)-(SPRITE_H-1) = 255-191-15 = 49 (il commento "=28" in soccerlg.h è sbagliato).
// Max scroll write: dst_y = (VTOP_MAX-1)+SCREEN_LINES = 48+192 = 240.
// Max sprite bottom: (168+48+8)+15 = 239.  →  righe 241..255 sicure.
#define HUD_SOURCE_Y (256 - HUD_LINES)  // = 248, righe 248..255, mai toccate



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
static u16 g_PageScrollY[3] = {0, 0, 0};
static u8  g_R23[3]         = {0, 0, 0};
static i8  g_scrollDir      = 1;        // +1 = giù, -1 = su

// --- HUD timer ---
// Ogni iterazione del loop principale contiene 3 Halt() = 3 frame VBlank.
// PAL: 50 frame/s → 50/3 ≈ 17 iterazioni/s  (errore < 2%)
#define HUD_ITERS_PER_SEC  17u
static u8 g_hudTimer  = 0;   // contatore iterazioni loop (0..HUD_ITERS_PER_SEC-1)
static u8 g_hudSec    = 0;   // secondi trascorsi (0..255)

// --- Sprite objects: array paralleli (SDCC/Z80: accesso HL-based, no IX+d) ---
static u8  g_lx[NOBJ];                           // x logica
static u8  g_ly[NOBJ];                           // y on-screen (0..191) → u8
static u8  g_x0[NOBJ], g_x1[NOBJ], g_x2[NOBJ];  // x fisica per pagina
static u16 g_y0[NOBJ], g_y1[NOBJ], g_y2[NOBJ];  // y piena (page_offset | phys_row)
static u16 g_frame[NOBJ];
static i8  g_dx[NOBJ];

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

//	u8 FieldMap[] 
	#include "Tools/OutField/FieldMap.h"


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


// Ricostruisce la pagina da scroll_y con vtop=0, raggruppando le righe FieldMap
// in sequenze (1 HMMM) o ripetizioni (1 HMMM + overlap-fill) per minimizzare i comandi.
// Richiama VDP_CommandWait() non necessario: ogni HMMM attende implicitamente l'inizio.
static void RebuildPage(u8 page, u16 scroll_y)
{
    u16 dst_y = (u16)page * 256u + HUD_LINES;
    const u8* pField = &FieldMap[scroll_y];
    u8 remaining = (u8)(SCREEN_LINES - HUD_LINES);

    while (remaining > 0)
    {
        u8 src = pField[0];
        u8 step = 1;
        while (step < remaining && pField[step] == (u8)(src + step))
            step++;
            
        if (step > 1) {
            VDP_CommandYMMM(768u + src, 0, dst_y, step, 0);
        } else {
            while (step < remaining && pField[step] == src)
                step++;
            VDP_CommandYMMM(768u + src, 0, dst_y, 1, 0);
            if (step > 1)
                VDP_CommandYMMM(dst_y, 0, dst_y + 1, step - 1, 0);
        }
        pField += step;
        dst_y += step;
        remaining -= step;
    }
    g_R23[page]         = 0;
    g_PageScrollY[page] = scroll_y;
}

// Ricostruisce la pagina per scroll verso l'alto: r23 = vtop (max VTOP_MAX),
// in modo da avere vtop righe libere sopra la vista corrente.
// Riempie righe fisiche 0..vtop+SCREEN_LINES-1 da FieldMap[scroll_y-vtop..scroll_y+SCREEN_LINES-1].
static void RebuildPageUp(u8 page, u16 scroll_y)
{
    u16 dst_y       = (u16)page * 256u + HUD_LINES;
    u8  vtop        = (scroll_y >= VTOP_MAX) ? VTOP_MAX : (u8)scroll_y;
    const u8* pField = &FieldMap[scroll_y - vtop];
    u8  remaining   = vtop + SCREEN_LINES - HUD_LINES;

    while (remaining > 0)
    {
        u8 src = pField[0];
        u8 step = 1;
        while (step < remaining && pField[step] == (u8)(src + step))
            step++;
            
        if (step > 1) {
            VDP_CommandYMMM(768u + src, 0, dst_y, step, 0);
        } else {
            while (step < remaining && pField[step] == src)
                step++;
            VDP_CommandYMMM(768u + src, 0, dst_y, 1, 0);
            if (step > 1)
                VDP_CommandYMMM(dst_y, 0, dst_y + 1, step - 1, 0);
        }
        pField += step;
        dst_y += step;
        remaining -= step;
    }
    g_R23[page]         = vtop;
    g_PageScrollY[page] = scroll_y;
}

// Inserisce la prossima riga in basso nel buffer circolare della write_page
// (scrolling verso il basso di 1 riga logica).
// Se g_R23 raggiungerebbe VTOP_MAX, ricostruisce la pagina con vtop=0 per
// evitare che sprite/erase sconfinino oltre riga 255 della pagina VDP.
void ScrollInsertRowDown(u8 write_page)
{
    u16 logical_row;
    u8  src, dst_y;

    if (g_PageScrollY[write_page] + (SCREEN_LINES - HUD_LINES) >= FIELD_ROWS) return;

    if (g_R23[write_page] >= VTOP_MAX)
    {

        RebuildPage(write_page, g_PageScrollY[write_page] + 1);
        return;
    }


    logical_row = g_PageScrollY[write_page] + (SCREEN_LINES - HUD_LINES);
    src   = FieldMap[logical_row];
    dst_y = g_R23[write_page] + (u8)SCREEN_LINES;

    VDP_CommandYMMM(768u + src, 0, (u16)write_page * 256u + dst_y, 1, 0);

    g_R23[write_page]++;
    g_PageScrollY[write_page]++;
}

// Inserisce la prossima riga in alto nel buffer circolare della write_page
// (scrolling verso l'alto di 1 riga logica).
// Se g_R23 è 0, ricostruisce la pagina con vtop=VTOP_MAX per avere margine.
void ScrollInsertRowUp(u8 write_page)
{
    u8 src, dst_y;
    if (g_PageScrollY[write_page] == 0) return;

    if (g_R23[write_page] == 0)
    {
        RebuildPageUp(write_page, g_PageScrollY[write_page] - 1);
        return;
    }

    g_R23[write_page]--;
    g_PageScrollY[write_page]--;

    src   = FieldMap[g_PageScrollY[write_page]];
    dst_y = g_R23[write_page] + HUD_LINES;
    VDP_CommandYMMM(768u + src, 0, (u16)write_page * 256u + dst_y, 1, 0);
}

// Cancella un blocco 16x16 sfruttando il blocco 16x16 contiguo dell'immagine compatta in un singolo istante HMMM
static void EraseSprite16(u8 x, u16 dst_y, u16 absolute_logical_y)
{
    u16 max_y = FIELD_ROWS > 16 ? FIELD_ROWS - 16 : 0;
    if (absolute_logical_y > max_y) absolute_logical_y = max_y;
    
    u8 src = FieldMap[absolute_logical_y];
    // Il blocco dati prodotto dallo script Python ci garantisce sempre 16 righe contigue valide!
    VDP_CommandHMMM(x, 768u + src, x, dst_y, 16, 16);
}

// --- Macro di Srotolamento (Loop Unrolling) per SDCC ---
// Con SDCC su Z80, indicizzare array paralleli causa colli di bottiglia nei calcoli
// aritmetici. Srotolando a tempo di compilazione, 'i' diventa una costante. 
// SDCC genererà accessi diretti e fulminei: es. ld a, (_g_lx + 5).
// NOTA: La macro è tarata per NOBJ = 15 (va da 14 a 0 per preservare lo z-order). 
// Se modificherai NOBJ in futuro, dovrai aggiungere/rimuovere righe qui sotto!
#define DO_SPRITE(i, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) { \
    u8 start, lx; \
    u16 log_y; \
    g_x##W[i] = g_lx[i]; \
    g_y##W[i] = (u16)W_BASE | (u8)(g_ly[i] + R23_W + HUD_LINES); \
    start = (u8)g_y##E[i] & 0xFE; \
    log_y = (u8)(start - R23_E - HUD_LINES); \
    if (log_y > 240) log_y = 0; \
    EraseSprite16(g_x##E[i], (u16)E_BASE | start, SCROLL_E + log_y); \
    CallSpriteFrame(g_x##W[i], g_y##W[i], g_frame[i]); \
    lx = g_lx[i] + g_dx[i]; \
    g_lx[i] = lx; \
    if (lx > 238 || lx < 4) g_dx[i] = -g_dx[i]; \
}

#define UNROLL_PHASE(W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(14, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(13, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(12, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(11, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(10, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(9, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(8, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(7, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(6, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(5, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(4, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(3, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(2, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(1, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(0, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E)

#pragma save
#pragma nogcse
#pragma noinduction
void UpdatePhase1(u8 r23_w, u8 r23_e, u16 scroll_e)
{
    UNROLL_PHASE(1, 2, 256u, 512u, r23_w, r23_e, scroll_e);
}

void UpdatePhase2(u8 r23_w, u8 r23_e, u16 scroll_e)
{
    UNROLL_PHASE(2, 0, 512u, 0u, r23_w, r23_e, scroll_e);
}

void UpdatePhase3(u8 r23_w, u8 r23_e, u16 scroll_e)
{
    UNROLL_PHASE(0, 1, 0u, 256u, r23_w, r23_e, scroll_e);
}
#pragma restore

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
    Print_SetPosition(0, HUD_SOURCE_Y);
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
    RebuildPage(0, 0);     // inizializza pag0 sfruttando l'ottimizzazione YMMM
    RebuildPage(1, 0);     // idem pag1
    RebuildPage(2, 0);     // idem pag2

    // Pulisce l'area HUD di base con un rettangolo nero (0x11 = MSX index 1 -> #010101)
    VDP_CommandLMMV(0, 0, 256, HUD_LINES, 0x11, VDP_OP_IMP);
    VDP_CommandLMMV(0, 256, 256, HUD_LINES, 0x11, VDP_OP_IMP);
    VDP_CommandLMMV(0, 512, 256, HUD_LINES, 0x11, VDP_OP_IMP);

    //VDP_EnableDisplay(TRUE);


	for (i=0; i<NOBJ; i++) {
		g_lx[i]    = (u8)(i*16+4);
		g_ly[i]    = (u8)(i*12);
		g_frame[i] = 38;
		g_dx[i]    = 2;
	}
    SET_BANK_SEGMENT(3, 4);
    Print_SetMode(PRINT_MODE_BITMAP);
    Print_Initialize();
    Print_SetBitmapFont(g_Fonts);
    Print_SetColor(4,1);

    // Prima render HUD master (tempo 00:00)
    UpdateHUDMaster();


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
		if (g_scrollDir > 0) { ScrollInsertRowDown(1); ScrollInsertRowDown(1); }
		else                 { ScrollInsertRowUp(1);   ScrollInsertRowUp(1);   }
		Halt();
		VDP_SetPage(0);
		VDP_SetVerticalOffset(g_R23[0]);

		// Copia HUD master → HUD di pag 1 (puro VDP, CPU libera subito)
		VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 256u + g_R23[1], 256, HUD_LINES);

		UpdatePhase1(g_R23[1], g_R23[2], g_PageScrollY[2]);

		// ── FASE 2: vedo 1 │ cancello 0 │ scrivo 2 ──────────────────────────────
		if (g_scrollDir > 0) { ScrollInsertRowDown(2); ScrollInsertRowDown(2); }
		else                 { ScrollInsertRowUp(2);   ScrollInsertRowUp(2);   }
		Halt();
		VDP_SetPage(1);
		VDP_SetVerticalOffset(g_R23[1]);

		// Copia HUD master → HUD di pag 2
		VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 512u + g_R23[2], 256, HUD_LINES);

		UpdatePhase2(g_R23[2], g_R23[0], g_PageScrollY[0]);

		// ── FASE 3: vedo 2 │ cancello 1 │ scrivo 0 ──────────────────────────────
		if (g_scrollDir > 0) { ScrollInsertRowDown(0); ScrollInsertRowDown(0); }
		else                 { ScrollInsertRowUp(0);   ScrollInsertRowUp(0);   }
		Halt();
		VDP_SetPage(2);
		VDP_SetVerticalOffset(g_R23[2]);

		// Copia HUD master → HUD di pag 0
		VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, g_R23[0], 256, HUD_LINES);

		UpdatePhase3(g_R23[0], g_R23[1], g_PageScrollY[1]);

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
