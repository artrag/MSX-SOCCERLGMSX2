// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 8 - Game logic functions
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

// -----------------
// *** FUNCTIONS ***
// -----------------
// --------------
// *** EVENTS ***
// --------------
void EventBallKicked()
{
	// Trigger sonoro per il tocco della palla durante il dribbling
}
void EventStartPresentationScrollig()
{
	// Trigger sonoro per l'inizio dello scrolling di presentazione
}

void EventPlayerFirstPresentationStarted()
{
	// Trigger sonoro per l'inizio del movimento dei giocatori
}

void EventKickOffReady()
{
	// Trigger sonoro per il fischio dell'arbitro e giocatori pronti
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_KICKOFF);
}

void EventHalfTime()
{
	// Trigger sonoro per la fine del primo tempo
}

void EventTimeUp()
{
	// Trigger sonoro per la fine della partita
    for(;;);
}
