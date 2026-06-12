// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 20 - Helper functions (moved from SEG_LOGIC to reduce SEG6 size)
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "soccerlg_rawdef.h"

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

void UpdateGameState_GlobalChecks(u8* game_state, u8* wait_secs, u8* start_sec)
{
	struct ObjectInfo* Ball = &SwSprite[14];

	// CONTROLLO PRESA DEL PORTIERE (su tiri, passaggi o dribbling ravvicinato)
	u8 gks[2] = {0, 7};
	for (u8 g = 0; g < 2; g++) {
		u8 gk_idx = gks[g];
		
		// Disabilita la presa se il portiere ha appena rinviato la palla
		if (LastTouchPlayer == gk_idx) continue;
		
		u16 dist_x = (SwSprite[gk_idx].lx > Ball->lx) ? (SwSprite[gk_idx].lx - Ball->lx) : (Ball->lx - SwSprite[gk_idx].lx);
		u16 dist_y = (SwSprite[gk_idx].ly > Ball->ly) ? (SwSprite[gk_idx].ly - Ball->ly) : (Ball->ly - SwSprite[gk_idx].ly);
		
		if (dist_x <= 16 && dist_y <= 16) { // Area di presa (16 px)
			if(g_is_penalty_shootout) {
				RestartType = RESTART_GKSAVE; // Segnala la parata per lo stato 15
				Ball->anim = 0; // Ferma la palla
				g_scc_resume_timer = 120; // 2 secondi a 60 FPS
				return;
			}

			if (dist_x >= 6) {
				if (Ball->lx < SwSprite[gk_idx].lx) {
					SwSprite[gk_idx].lx = Ball->lx + 8;
					SwSprite[gk_idx].frame = (gk_idx == 0) ? SPR_GK_PLAYER_DOWN_WEST_NORTH : SPR_GK_PLAYER_DOWN_WEST_SOUTH;
				} else {
					SwSprite[gk_idx].lx = Ball->lx - 8;
					SwSprite[gk_idx].frame = (gk_idx == 0) ? SPR_GK_PLAYER_DOWN_EAST_NORTH : SPR_GK_PLAYER_DOWN_EAST_SOUTH;
				}
				// Il GK si è spostato lateralmente: cancella le vecchie posizioni VRAM
				CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[gk_idx].x0, SwSprite[gk_idx].y0, 0);
				CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[gk_idx].x1, SwSprite[gk_idx].y1, 256);
				CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[gk_idx].x2, SwSprite[gk_idx].y2, 512);
				CallSpriteFrame(SwSprite[gk_idx].lx, (SwSprite[gk_idx].ly & 255) + 0,   SwSprite[gk_idx].frame);
				CallSpriteFrame(SwSprite[gk_idx].lx, (SwSprite[gk_idx].ly & 255) + 256, SwSprite[gk_idx].frame);
				CallSpriteFrame(SwSprite[gk_idx].lx, (SwSprite[gk_idx].ly & 255) + 512, SwSprite[gk_idx].frame);
				SwSprite[gk_idx].x0 = SwSprite[gk_idx].x1 = SwSprite[gk_idx].x2 = SwSprite[gk_idx].lx;
				SwSprite[gk_idx].y0 = SwSprite[gk_idx].y1 = SwSprite[gk_idx].y2 = SwSprite[gk_idx].ly;
			}

			*game_state = 6; // Ferma il gioco per preparare il rinvio
			Field.dy = 0;
			RestartType = RESTART_GKSAVE;
			RestartSideX = SwSprite[gk_idx].lx;
			RestartSideY = SwSprite[gk_idx].ly;
			Ball->anim = Ball->dx = Ball->dy = 0;
			Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
			Ball->lx = SwSprite[gk_idx].lx; 
			Ball->ly = SwSprite[gk_idx].ly;
			T1_Carrier = T2_Carrier = 0xFF;
			TimerEnabled = FALSE;
			g_scc_resume_timer = 120; // Ripristina l'audio dopo 2 secondi
			*wait_secs = 1; *start_sec = 0; 
			return; 
		}
	}

	// CONTROLLO OFFSIDE GLOBALE PALLA A TERRA (Per pallonetto vedi UpdateGameState in s9)
	if ((g_pass_receiver & 0x80) && Ball->anim < 5) {
		u8 rec = g_pass_receiver & 0x7F;
		if (rec < 14) {
			u16 dist_x = (SwSprite[rec].lx > Ball->lx) ? (SwSprite[rec].lx - Ball->lx) : (Ball->lx - SwSprite[rec].lx);
			u16 dist_y = (SwSprite[rec].ly > Ball->ly) ? (SwSprite[rec].ly - Ball->ly) : (Ball->ly - SwSprite[rec].ly);
			if (dist_x <= 20 && dist_y <= 20) {
				*game_state = 6; RestartType = RESTART_OFFSIDE; RestartSideX = SwSprite[rec].lx; RestartSideY = SwSprite[rec].ly;
				CallFnc_VOID(SEG_EVENTS, EventOffside); Ball->anim = Ball->dx = Ball->dy = 0; Ball->frame = SPR_BALL_SIZE_1;
				T1_Carrier = T2_Carrier = 0xFF; g_pass_receiver = 0xFF; TimerEnabled = FALSE; *wait_secs = 2; *start_sec = Frms;
			}
		}
	}
}
