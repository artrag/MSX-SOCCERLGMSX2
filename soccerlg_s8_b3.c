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
}

void EventThrowIn()
{
	// Trigger sonoro per rimessa laterale
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_THROWIN);
}

void EventCornerKick()
{
	// Trigger sonoro per calcio d'angolo
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_CORNERKICK);
}

void EventGoalKick()
{
	// Trigger sonoro per rinvio dal fondo
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_GOALKICK);
}

void EventOffside()
{
	// Trigger sonoro per fischio fuorigioco
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_OFFSIDE);
}

void EventGoal()
{
	// Trigger sonoro per gol
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_INGOAL);
}

void EventPenaltyWhistle()
{
	// Trigger sonoro per fischio rigore
}
