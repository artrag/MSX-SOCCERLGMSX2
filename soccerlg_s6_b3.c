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