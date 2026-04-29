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
	u16 min_score = 0xFFFF;
	
	u8 current_rec = (carrier < 7) ? T1_Receiver : T2_Receiver;

	i8 sdx = (c_dx > 0) ? 1 : ((c_dx < 0) ? -1 : 0);
	i8 sdy = (c_dy > 0) ? 1 : ((c_dy < 0) ? -1 : 0);

	if (sdx == 0 && sdy == 0) {
		sdy = (carrier < 7) ? 1 : -1;
	}

	for (u8 i = start_idx; i < end_idx; i++) {
		if (i == carrier || i == ignore_player) continue; 

		i16 rx = (i16)SwSprite[i].lx - (i16)SwSprite[carrier].lx;
		i16 ry = (i16)SwSprite[i].ly - (i16)SwSprite[carrier].ly;
		
		// Proiezione sul vettore di movimento (distanza in avanti)
		i16 fwd_dist = (rx * sdx) + (ry * sdy);
		
		if (fwd_dist <= 0) continue; // Esclude categoricamente chiunque si trovi alle spalle!
		
		// Proiezione ortogonale (distanza laterale)
		i16 side_dist = (rx * sdy) - (ry * sdx);
		if (side_dist < 0) side_dist = -side_dist;

		u16 score;
		if (side_dist <= fwd_dist * 2) {
			// Tier 1: Cono visivo ideale (~126 gradi). Priorità massima all'allineamento.
			score = (u16)fwd_dist + (u16)(side_dist * 2);
		} else {
			// Tier 2: Davanti ma molto defilato.
			score = 10000 + (u16)fwd_dist + (u16)(side_dist * 2);
		}
		
		// Stickiness: Forte bonus per mantenere il destinatario attuale se ancora valido
		if (i == current_rec) {
			if (score < 10000) {
				score = 0; // Se è ancora nel Tier 1 (entro ~63 gradi), mantieni il focus assoluto
			} else {
				score -= 2000; // Piccolo sconto nel Tier 2 per evitare sfarfallii ai limiti
			}
		}

		if (score < min_score) {
			min_score = score;
			best_match = i;
		}
	}

	return best_match;
}
