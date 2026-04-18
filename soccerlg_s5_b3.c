// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 5 - Drawing functions
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "bin/FieldMap.h"
#include "debug.h"

void PlotField(u16 y,u16 page)
{
	for (u16 i=y; i<y+192; i++) {
		VDP_CommandYMMM(FieldMap[i&511]+768, 0, (i&255)+page, 1, 0);		
	}
}



void RemoveSwSprite(u8 px,u16 py,u16 page) 
{
	u16 diff = (py + 512 - Field.ly) & 511;
	if (diff < 224 || diff > 480) 
	{
		if SplitSprite(py) {
			u8 t = 256 - (py & 255) ;
			VDP_CommandHMMM(px,FieldMap[(py)    &511]+768,px,((py)&255)+page,16,  t);	
			VDP_CommandHMMM(px,FieldMap[((py)+t)&511]+768,px,           page,16,16-t);	
		}
		else
		VDP_CommandHMMM(px,FieldMap[(py)&511]+768,px, ((py)&255)+page,16, 16);	
	}
}

void RemoveScoreBoardLeft(u8 px,u16 py,u16 page)
{
	if (((py&255)>256-SCOREBOARD_NY_LEFT) ) 
	{
		u8 t = 256 - (py & 255) ;
		VDP_CommandHMMM(px, FieldMap[(py)&511]+768,   px, ((py)&255)+page, SCOREBOARD_NX_LEFT, t);
		VDP_CommandHMMM(px, FieldMap[((py)+t)&511]+768, px, page,            SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT-t);
	}
	else
		VDP_CommandHMMM(px, FieldMap[(py)&511]+768, px, ((py)&255)+page, SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT);
}

void PrintScoreBoardLeft(u8 px,u16 py,u16 page)
{
	if (((py&255)>256-SCOREBOARD_NY_LEFT) ) 
	{
		u8 t = 256 - (py & 255) ;
		VDP_CommandHMMM(0, 768,   px, ((py)&255)+page, SCOREBOARD_NX_LEFT, t);
		VDP_CommandHMMM(0, 768+t, px, page,            SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT-t);
	}
	else
		VDP_CommandHMMM(0, 768, px, ((py)&255)+page, SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT);
}

void RemoveScoreBoardRight(u8 px,u16 py,u16 page)
{
	if (((py&255)>256-SCOREBOARD_NY_RIGHT) ) 
	{
		u8 t = 256 - (py & 255) ;
		VDP_CommandHMMM(px, FieldMap[(py)&511]+768,   px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, t);
		VDP_CommandHMMM(px, FieldMap[((py)+t)&511]+768, px, page,            SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT-t);
	}
	else
		VDP_CommandHMMM(px, FieldMap[(py)&511]+768, px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT);
}

void PrintScoreBoardRight(u8 px,u16 py,u16 page)
{
	if (((py&255)>256-SCOREBOARD_NY_RIGHT) ) 
	{
		u8 t = 256 - (py & 255) ;
		VDP_CommandHMMM(px, 768,   px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, t);
		VDP_CommandHMMM(px, 768+t, px, page,            SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT-t);
	}
	else
		VDP_CommandHMMM(px, 768, px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT);
}


// +++ Set ball frame +++
void SetBallSprite(u8 height) 
{
	if (height > 7) height = 7;
	SwSprite[14].frame = SPR_BALL_SIZE_1 + height;
}

// +++ Get ball Z-Order +++
bool IsBallForeground() 
{
	// Se la palla è in volo (dimensione > 1), è sempre in primo piano
	if (SwSprite[14].frame > SPR_BALL_SIZE_1) return TRUE;

	// Forza in primo piano durante la parata anche se di dimensione base
	if (RestartType == RESTART_GKSAVE) {
		if (RestartSideY >= 256) return FALSE; // Il portiere a Sud (che guarda a nord) copre la palla
		return TRUE; // Il portiere a Nord (che guarda a sud) sta dietro la palla
	}

	// Durante i rigori, se il portiere si tuffa, la palla è sempre davanti
	if (g_is_penalty_shootout) {
		return TRUE;
	}

	u8 closest_player = 0;
	u16 min_dist = 0xFFFF;
	
	// Trova il giocatore più vicino
	for (u8 i = 0; i < 14; i++) {
		u16 dx = (SwSprite[i].lx > SwSprite[14].lx) ? (SwSprite[i].lx - SwSprite[14].lx) : (SwSprite[14].lx - SwSprite[i].lx);
		u16 dy = (SwSprite[i].ly > SwSprite[14].ly) ? (SwSprite[i].ly - SwSprite[14].ly) : (SwSprite[14].ly - SwSprite[i].ly);
		u16 dist = dx + dy;
		
		if (dist < min_dist) {
			min_dist = dist;
			closest_player = i;
		}
	}
	
	// Z-Order Top-Down: se la palla è ad un'altezza visiva (Y) inferiore al petto del giocatore (Y+4),
	// va in Background, venendo coperta dai pixel della maglietta/schiena in modo naturale.
	// Altrimenti (Sud, Est, Ovest), viene disegnata in Foreground (davanti ai piedi).
	if (SwSprite[14].ly <= SwSprite[closest_player].ly + 4) {
		return FALSE;
	}

	return TRUE;
}

// +++ Show message sprites +++
void ShowSpriteMessage(u16 messageId)
{

	u8 len = 0;
	u16 logical_y = 0;

	if (messageId == SPR_MSG_KICKOFF) {
		len = SPRITE_MSG_KICKOFF_LENGTH;
		logical_y = (KickOffTeam == TEAM_1) ? (Field.ly + 48) : (Field.ly + 144); // Centro della rispettiva metà inquadratura
	} else if (messageId == SPR_MSG_GOALKICK) {
		len = SPRITE_MSG_GOALKICK_LENGTH;
		logical_y = Field.ly + 96; // Metà dello schermo (192 / 2)
	} else if (messageId == SPR_MSG_THROWIN) {
		len = SPRITE_MSG_THROWIN_LENGTH;
		logical_y = Field.ly + 96;
	} else if (messageId == SPR_MSG_CORNERKICK) {
		len = SPRITE_MSG_CORNERKICK_LENGTH;
		logical_y = Field.ly + 96;
	} else if (messageId == SPR_MSG_INGOAL) {
		len = SPRITE_MSG_INGOAL_LENGTH;
		logical_y = Field.ly + 96;
	} else if (messageId == SPR_MSG_TIMEUP) {
		len = SPRITE_MSG_TIMEUP_LENGTH;
		logical_y = Field.ly + 96;
	} else if (messageId == SPR_MSG_HALFTIME) {
		len = SPRITE_MSG_HALFTIME_LENGTH;
		logical_y = Field.ly + 96;
	} else if (messageId == SPR_MSG_PENALTIES) {
		len = SPRITE_MSG_PENALTIES_LENGTH;
		logical_y = Field.ly + 96;
	} else {
		return;
	}

	u8 start_x = 128 - (len * 8); // Centrato orizzontalmente: 128 - (lunghezza * 16 / 2)

	for (u8 i = 0; i < len; i++) {
		SwSprite[15 + i].lx = start_x + (i * 16);
		SwSprite[15 + i].ly = logical_y;
		SwSprite[15 + i].frame = messageId + i;
		SwSprite[15 + i].dx = 0;
		SwSprite[15 + i].dy = 0;
	}
	
	// Nasconde eventuali sprite precedenti in eccesso non usati
	for (u8 i = 15 + len; i < 24; i++) {
		SwSprite[i].ly = Field.ly + 256; // Nascondimento sicuro
	}
}

// +++ Hide message sprites +++
void HideSpriteMessage()
{
	for (u8 i = 15; i < 24; i++) {
		SwSprite[i].ly = Field.ly + 256; // Nascondimento sicuro
	}
}