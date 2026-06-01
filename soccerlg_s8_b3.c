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
	PlaySCCThenCrowd(KICK_OFF_BIN_SEG, KICK_OFF_BIN_SIZE);
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_KICKOFF);
}

void EventHalfTime()
{
}

void EventTimeUp()
{
}

void EventThrowIn()
{
	PlaySCCEvent(THROW_IN_BIN_SEG, THROW_IN_BIN_SIZE);
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_THROWIN);
}

void EventCornerKick()
{
	PlaySCCEvent(CORNER_KICK_BIN_SEG, CORNER_KICK_BIN_SIZE);
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_CORNERKICK);
}

void EventGoalKick()
{
	PlaySCCEvent(GOAL_KICK_BIN_SEG, GOAL_KICK_BIN_SIZE);
	CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_GOALKICK);
}

void EventOffside()
{
	PlaySCCEvent(OFFSIDE_BIN_SEG, OFFSIDE_BIN_SIZE);
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
