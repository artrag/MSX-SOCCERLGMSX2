// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 8 - Game logic functions
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "soccerlg.h"
#include "soccerlg_rawdef.h"
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
	PlaySCCLoop(PRESENTATION_BIN_SEG, PRESENTATION_BIN_SIZE);
}

void EventPlayerFirstPresentationStarted()
{
	// Trigger sonoro per l'inizio del movimento dei giocatori
}

void EventKickOffReady()
{
	// Trigger sonoro per il fischio dell'arbitro e giocatori pronti
	PlaySCC(KICK_OFF_BIN_SEG, KICK_OFF_BIN_SIZE);
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
	PlaySCC(THROW_IN_BIN_SEG, THROW_IN_BIN_SIZE);
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_THROWIN);
}

void EventCornerKick()
{
	PlaySCC(CORNER_KICK_BIN_SEG, CORNER_KICK_BIN_SIZE);
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_CORNERKICK);
}

void EventGoalKick()
{
	PlaySCC(GOAL_KICK_BIN_SEG, GOAL_KICK_BIN_SIZE);
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_GOALKICK);
}

void EventOffside()
{
	PlaySCC(OFFSIDE_BIN_SEG, OFFSIDE_BIN_SIZE);
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

void EventTeamSelected(u8 team_id)
{
	// Cambieremo in grigio il colore della squadra scelta
	(void)team_id;
}
