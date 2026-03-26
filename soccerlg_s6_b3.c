// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg MSX2 - 2026 Fausto Pracek (fpracek@gmail.com)
//  SEGMENT 6 (bank3) – Presentazione Iniziale
//
//  REGOLA: nessuna SET_BANK_SEGMENT(3,x) diretta qui dentro.
//  Chiamate a seg5 (ScrollInsertRowDown, UpdatePhase*) via trampolini bank0/1.
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "Tools/OutField/FieldMap.h"

// ─────────────────────────────────────────────────────────────────────────────
// Aggiorna g_ly per tutti i giocatori in base allo scroll corrente.
// Usata solo nella Fase B (tutti i giocatori già sul frame).
// ─────────────────────────────────────────────────────────────────────────────
static void UpdatePresentationY(u16 write_scroll_y)
{
    u8  i;
    i16 sy;

    for (i = 0; i < TEAM1_NPLAYERS; i++) {
        sy = (i16)TEAM1_FIELD_Y_FWD - (i16)write_scroll_y;
        g_ly[i] = (sy >= 0 && sy < (i16)(SCREEN_LINES - HUD_LINES))
                    ? (u8)sy : (u8)(SCREEN_LINES - HUD_LINES - 1);
    }
    for (; i < TEAM1_NPLAYERS + TEAM2_NPLAYERS; i++) {
        sy = (i16)TEAM2_FIELD_Y_FWD - (i16)write_scroll_y;
        g_ly[i] = (sy >= 0 && sy < (i16)(SCREEN_LINES - HUD_LINES))
                    ? (u8)sy : (u8)(SCREEN_LINES - HUD_LINES - 1);
    }
    // Pallone
    sy = (i16)BALL_FIELD_Y - (i16)write_scroll_y;
    g_ly[NOBJ - 1] = (sy >= 0 && sy < (i16)(SCREEN_LINES - HUD_LINES))
                        ? (u8)sy : (u8)(SCREEN_LINES - HUD_LINES - 1);
}

// ─────────────────────────────────────────────────────────────────────────────
// Inizializza g_x0/1/2 e g_y0/1/2 in base ai valori REALI di scroll_y e R23
// di ciascuna pagina al momento della transizione Fase A → Fase B.
// Garantisce che il primo frame di Fase B non faccia HMMM verso indirizzi
// invalidi (a differenza del vecchio g_y = 0xFFFF).
// ─────────────────────────────────────────────────────────────────────────────
static void InitSpritePositions(void)
{
    u8  i, p;
    u16 field_y;
    i16 sy;
    u8  phy_y;

    for (i = 0; i < NOBJ; i++) {
        if (i < TEAM1_NPLAYERS)
            field_y = (u16)TEAM1_FIELD_Y_FWD;
        else if (i < TEAM1_NPLAYERS + TEAM2_NPLAYERS)
            field_y = (u16)TEAM2_FIELD_Y_FWD;
        else
            field_y = (u16)BALL_FIELD_Y;

        for (p = 0; p < 3; p++) {
            sy = (i16)field_y - (i16)g_PageScrollY[p];
            // Clamp: valori fuori schermo → bordo inferiore visibile
            if (sy < 0)
                sy = 0;
            if (sy >= (i16)(SCREEN_LINES - HUD_LINES))
                sy = (i16)(SCREEN_LINES - HUD_LINES) - 1;
            phy_y = (u8)sy + g_R23[p] + HUD_LINES;
            if (p == 0) {
                g_x0[i] = g_lx[i];
                g_y0[i] = (u16)0u   | phy_y;
            } else if (p == 1) {
                g_x1[i] = g_lx[i];
                g_y1[i] = (u16)256u | phy_y;
            } else {
                g_x2[i] = g_lx[i];
                g_y2[i] = (u16)512u | phy_y;
            }
        }
    }
    // g_ly calcolato su page0 (tutte le pagine sincronizzate a PRESENT_APPEAR_SCROLL)
    UpdatePresentationY(g_PageScrollY[0]);
}

// ─────────────────────────────────────────────────────────────────────────────
// PlayPresentation – scroll dal lato nord fino a centrocampo al centro.
//
//  FASE A  scroll_y: 0 → PRESENT_APPEAR_SCROLL (=83)
//          Puro scroll, NESSUN sprite disegnato.
//          Avanza 1 riga per pagina per Halt, tutte le pagine sincronizzate.
//
//  FASE B  scroll_y: PRESENT_APPEAR_SCROLL → PRESENT_TARGET_SCROLL (=160)
//          I giocatori sono tutti sul frame: scroll + sprite.
//          g_y0/1/2 vengono inizializzati una sola volta prima della Fase B.
//
//  Al termine: freeze senza ritornare (il game loop esterno partirà dopo).
// ─────────────────────────────────────────────────────────────────────────────
void PlayPresentation(void)
{
    u8 i;

    // --- Posizionamento orizzontale squadre ---
    for (i = 0; i < TEAM1_NPLAYERS; i++) {
        g_lx[i]    = (u8)(TEAM_X_START + i * TEAM_X_STEP);
        g_frame[i] = 38;
        g_dx[i]    = 0;
    }
    for (; i < TEAM1_NPLAYERS + TEAM2_NPLAYERS; i++) {
        g_lx[i]    = (u8)(TEAM_X_START + (i - TEAM1_NPLAYERS) * TEAM_X_STEP);
        g_frame[i] = 38;
        g_dx[i]    = 0;
    }
    g_lx[NOBJ - 1]    = 120;
    g_frame[NOBJ - 1] = 38;
    g_dx[NOBJ - 1]    = 0;

    // ═══════════════════════════════════════════════════════════════════════
    // FASE A: puro scroll – nessun VDP sprite command, nessun rischio
    // di scrittura verso indirizzi VRAM invalidi (0xFFFF bug eliminato).
    // Le pagine vengono avanzate nell'ordine 1-2-0 (uguale al game loop)
    // → restano perfettamente sincronizzate al termine di ogni iterazione.
    // ═══════════════════════════════════════════════════════════════════════
    while (g_PageScrollY[0] < (u16)PRESENT_APPEAR_SCROLL)
    {
        CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 1);
        Halt();
        VDP_SetPage(0);
        VDP_SetVerticalOffset(g_R23[0]);
        VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 256u + g_R23[1], 256, HUD_LINES);

        CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 2);
        Halt();
        VDP_SetPage(1);
        VDP_SetVerticalOffset(g_R23[1]);
        VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 512u + g_R23[2], 256, HUD_LINES);

        CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 0);
        Halt();
        VDP_SetPage(2);
        VDP_SetVerticalOffset(g_R23[2]);
        VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, g_R23[0], 256, HUD_LINES);
    }
    // Qui: g_PageScrollY[0]=g_PageScrollY[1]=g_PageScrollY[2]=PRESENT_APPEAR_SCROLL
    // e g_R23[0]=g_R23[1]=g_R23[2] = stesso valore (pagine sincronizzate).

    // ═══════════════════════════════════════════════════════════════════════
    // Transizione A→B: inizializza g_y0/1/2 con le posizioni reali
    // ═══════════════════════════════════════════════════════════════════════
    InitSpritePositions();

    // ═══════════════════════════════════════════════════════════════════════
    // FASE B: scroll + sprite – tutti i giocatori sono sul frame.
    // Condizione di uscita: g_PageScrollY[0] raggiunge PRESENT_TARGET_SCROLL
    // dopo che Phase3 ha avanzato page0 (ultima della terna).
    // ═══════════════════════════════════════════════════════════════════════
    while (g_PageScrollY[0] < (u16)PRESENT_TARGET_SCROLL)
    {
        // ── Fase 1: vedo p0 │ cancello p2 │ scrivo p1 ──────────────────
        CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 1);
        Halt();
        VDP_SetPage(0);
        VDP_SetVerticalOffset(g_R23[0]);
        VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 256u + g_R23[1], 256, HUD_LINES);
        UpdatePresentationY(g_PageScrollY[1]);
        CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase1, g_R23[1], g_R23[2], g_PageScrollY[2]);

        // ── Fase 2: vedo p1 │ cancello p0 │ scrivo p2 ──────────────────
        CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 2);
        Halt();
        VDP_SetPage(1);
        VDP_SetVerticalOffset(g_R23[1]);
        VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 512u + g_R23[2], 256, HUD_LINES);
        UpdatePresentationY(g_PageScrollY[2]);
        CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase2, g_R23[2], g_R23[0], g_PageScrollY[0]);

        // ── Fase 3: vedo p2 │ cancello p1 │ scrivo p0 ──────────────────
        CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 0);
        Halt();
        VDP_SetPage(2);
        VDP_SetVerticalOffset(g_R23[2]);
        VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, g_R23[0], 256, HUD_LINES);
        UpdatePresentationY(g_PageScrollY[0]);
        CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase3, g_R23[0], g_R23[1], g_PageScrollY[1]);
    }

    // Presentazione completata – freeze (il game loop verrà aggiunto qui)
    for (;;) { Halt(); }
}
