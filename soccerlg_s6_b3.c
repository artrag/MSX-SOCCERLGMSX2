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

// Trova il compagno più vicino nella direzione di attacco
u8 FindReceiver(u8 carrier, u8 ignore_player) 
{
	u8 start_idx = (carrier < 7) ? 0 : 7;
	u8 end_idx = start_idx + 7;
	u8 best_match = 0xFF;
	u16 min_dist = 0xFFFF;

	for (u8 i = start_idx; i < end_idx; i++) {
		// Salta il portatore, il giocatore ignorato (es. compagno di calcio d'inizio) e i portieri
		if (i == carrier || i == ignore_player || i == 0 || i == 7) continue; 

		u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
		u16 dy = (SwSprite[i].ly > SwSprite[carrier].ly) ? (SwSprite[i].ly - SwSprite[carrier].ly) : (SwSprite[carrier].ly - SwSprite[i].ly);
		u16 dist = dx + dy; // Distanza di Manhattan

		// Controlla la direzione di attacco in base al team (solo passaggi in avanti per ora)
		if (carrier < 7 && SwSprite[i].ly <= SwSprite[carrier].ly) continue; // Team 1 attacca verso Sud (Y crescente)
		if (carrier >= 7 && SwSprite[i].ly >= SwSprite[carrier].ly) continue; // Team 2 attacca verso Nord (Y decrescente)

		if (dist < min_dist) {
			min_dist = dist;
			best_match = i;
		}
	}

	// Fallback se nessun giocatore in avanti è disponibile (es. siamo già al limite del campo)
	if (best_match == 0xFF) {
		for (u8 i = start_idx; i < end_idx; i++) {
			if (i == carrier || i == ignore_player || i == 0 || i == 7) continue;
			u16 dist = ((SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx)) + ((SwSprite[i].ly > SwSprite[carrier].ly) ? (SwSprite[i].ly - SwSprite[carrier].ly) : (SwSprite[carrier].ly - SwSprite[i].ly));
			if (dist < min_dist) {
				min_dist = dist;
				best_match = i;
			}
		}
	}
	return best_match;
}
