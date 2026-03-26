// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg MSX2 - 2026 Fausto Pracek (fpracek@gmail.com)
//  SEGMENT 5 (bank3) – logica di gioco principale
//
//  REGOLA DI ORO: nessuna funzione qui dentro può chiamare SET_BANK_SEGMENT(3,x)
//  perché smappe se stessa da 0xA000. Usare invece CallSpriteFrame_B3 al posto
//  di CallSpriteFrame, che non ripristina bank3 da sola.
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "soccerlg.h"
#include "Tools/OutField/FieldMap.h"     // static const u8 FieldMap[] – solo seg5 la usa

// ─────────────────────────────────────────────────────────────────────────────
// Funzioni di rebuild campo (statiche: chiamate solo da ScrollInsert*)
// ─────────────────────────────────────────────────────────────────────────────

// Ricostruisce la pagina da scroll_y con vtop=0, raggruppando le righe FieldMap
// in sequenze (1 YMMM) o ripetizioni (1 YMMM + overlap-fill) per minimizzare i comandi.
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

// Ricostruisce la pagina per scroll verso l'alto: r23 = vtop (max VTOP_MAX).
static void RebuildPageUp(u8 page, u16 scroll_y)
{
    u16 dst_y        = (u16)page * 256u + HUD_LINES;
    u8  vtop         = (scroll_y >= VTOP_MAX) ? VTOP_MAX : (u8)scroll_y;
    const u8* pField = &FieldMap[scroll_y - vtop];
    u8  remaining    = vtop + SCREEN_LINES - HUD_LINES;

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

// ─────────────────────────────────────────────────────────────────────────────
// Inizializzazione scroll (chiamata una volta al boot via CallFnc_VOID)
// ─────────────────────────────────────────────────────────────────────────────

void InitScrollPages(void)
{
    RebuildPage(0, 0);
    RebuildPage(1, 0);
    RebuildPage(2, 0);
}

// ─────────────────────────────────────────────────────────────────────────────
// Scroll circolare – inserimento righe (chiamate via CallFnc_VOID_P1)
// ─────────────────────────────────────────────────────────────────────────────

// Inserisce la prossima riga in basso nel buffer circolare della write_page.
// Se g_R23 raggiungerebbe VTOP_MAX, ricostruisce la pagina con vtop=0.
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

// Inserisce la prossima riga in alto nel buffer circolare della write_page.
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

// ─────────────────────────────────────────────────────────────────────────────
// Sprite update – erase e draw (chiamate via CallFnc_VOID_U8U8U16)
// ─────────────────────────────────────────────────────────────────────────────

// Cancella un blocco 16x16 copiando dal campo compatto in pagina 3.
static void EraseSprite16(u8 x, u16 dst_y, u16 absolute_logical_y)
{
    u16 max_y = FIELD_ROWS > 16 ? FIELD_ROWS - 16 : 0;
    if (absolute_logical_y > max_y) absolute_logical_y = max_y;

    u8 src = FieldMap[absolute_logical_y];
    // Il blocco dati prodotto dallo script Python garantisce sempre 16 righe contigue valide.
    VDP_CommandHMMM(x, 768u + src, x, dst_y, 16, 16);
}

// --- Macro di Srotolamento (Loop Unrolling) per SDCC ---
// Con SDCC su Z80, indicizzare array paralleli causa colli di bottiglia nei calcoli
// aritmetici. Srotolando a tempo di compilazione, 'i' diventa una costante.
// SDCC genererà accessi diretti: es. ld a, (_g_lx + 5).
// NOTA: Tarata per NOBJ = 15 (va da 14 a 0 per preservare lo z-order).
// ATTENZIONE: usa CallSpriteFrame_B3 (non CallSpriteFrame) perché siamo in bank3.
#define DO_SPRITE(i, W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) { \
    u8 start, lx; \
    u16 log_y; \
    g_x##W[i] = g_lx[i]; \
    g_y##W[i] = (u16)W_BASE | (u8)(g_ly[i] + R23_W + HUD_LINES); \
    start = (u8)g_y##E[i] & 0xFE; \
    log_y = (u8)(start - R23_E - HUD_LINES); \
    if (log_y > 240) log_y = 0; \
    EraseSprite16(g_x##E[i], (u16)E_BASE | start, SCROLL_E + log_y); \
    CallSpriteFrame_B3(g_x##W[i], g_y##W[i], g_frame[i]); \
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
    DO_SPRITE(9,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(8,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(7,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(6,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(5,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(4,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(3,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(2,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(1,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E) \
    DO_SPRITE(0,  W, E, W_BASE, E_BASE, R23_W, R23_E, SCROLL_E)

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
