// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 6 - Game logic functions
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"

void PlayerAI(u8 i) 
{
	struct ObjectInfo* Player = &SwSprite[i];
	Player->lx += Player->dx; 
	if  (Player->lx>238 || Player->lx<4) 
		Player->dx = -Player->dx;
	
	Player->ly += Player->dy; 
	if  (Player->ly>504-16 || Player->ly<=16) 
		Player->dy = -Player->dy;
}

// Imposta il frame della palla in base all'altezza (0-7)
void SetBallSprite(u8 height) 
{
	if (height > 7) height = 7;
	SwSprite[14].frame = SPR_BALL_SIZE_1 + height;
}