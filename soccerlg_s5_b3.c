// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 5 - Drawing functions
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "bin/FieldMap.h"

void PlotField(u16 y,u16 page)
{
	for (u16 i=y;i<y+192;i+=16)
		VDP_CommandYMMM(FieldMap[i]+768,0,i+page,16, 0);		
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

	u8 closest_player = 0;
	u16 min_dist = 0xFFFF;
	
	// Trova il giocatore più vicino (possessore o contendente)
	for (u8 i = 0; i < 14; i++) {
		u16 dx = (SwSprite[i].lx > SwSprite[14].lx) ? (SwSprite[i].lx - SwSprite[14].lx) : (SwSprite[14].lx - SwSprite[i].lx);
		u16 dy = (SwSprite[i].ly > SwSprite[14].ly) ? (SwSprite[i].ly - SwSprite[14].ly) : (SwSprite[14].ly - SwSprite[i].ly);
		u16 dist = dx + dy;
		
		if (dist < min_dist) {
			min_dist = dist;
			closest_player = i;
		}
	}
	
	// Se il giocatore è a Nord della palla (ly minore o uguale), la palla è in primo piano (disegnata dopo)
	if (SwSprite[closest_player].ly <= SwSprite[14].ly) {
		return TRUE;
	}
	
	return FALSE;
}