// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 20 - Helper functions (moved from SEG_LOGIC to reduce SEG6 size)
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"

u16 FindReceiver(u8 carrier, u8 ignore_player, i8 c_dx, i8 c_dy) 
{
	u8 start_idx = (carrier < 7) ? 1 : 8; // Esclude i portieri
	u8 end_idx = start_idx + 6;
	u8 best_match = 0xFF;
	u16 min_dist = 0xFFFF;

	if (c_dx == 0 && c_dy == 0) {
		c_dy = (carrier < 7) ? 1 : -1;
	}

	for (u8 i = start_idx; i < end_idx; i++) {
		if (i == carrier || i == ignore_player) continue; 

		u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
		u16 dy = (SwSprite[i].ly > SwSprite[carrier].ly) ? (SwSprite[i].ly - SwSprite[carrier].ly) : (SwSprite[carrier].ly - SwSprite[i].ly);
		u16 dist = dx + dy; 

		// Filtro cono visivo direzionale:
		if (c_dx > 0 && SwSprite[i].lx < SwSprite[carrier].lx) continue; 
		if (c_dx < 0 && SwSprite[i].lx > SwSprite[carrier].lx) continue; 
		
		if (c_dy > 0 && SwSprite[i].ly < SwSprite[carrier].ly) continue; 
		if (c_dy < 0 && SwSprite[i].ly > SwSprite[carrier].ly) continue; 

		if (dist < min_dist) {
			min_dist = dist;
			best_match = i;
		}
	}

	return best_match;
}
