// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 22 - Game State Celebrations & Penalty Setup
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

void UpdateGameState_Celebrations(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
{
	(void)target_ly;

	if (*game_state == 9) {
		// --- FESTEGGIAMENTI GOAL ---
		T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Nascondi i focus

		if (*wait_secs > 0) {
			if (*start_sec < Frms) { // Frms wrapped from 1 to 60
				(*wait_secs)--;
				if (*wait_secs == 0) {
					*game_state = 6; // Passa al reset del campo
					*wait_secs = 1;  // Pausa minima per permettere il ridisegno pulito
					*start_sec = 0;  // FIX: Questo valore forza lo Stato 6 a triggerare istantaneamente
					return;
				}
			}
			*start_sec = Frms;
		}

		u8 scoring_team = (KickOffTeam == TEAM_1) ? TEAM_2 : TEAM_1;

		for (u8 i = 0; i < 14; i++) {
			u8 team = (i < 7) ? TEAM_1 : TEAM_2;
			struct ObjectInfo* p = &SwSprite[i];
			
			if (team == scoring_team) { 
				// Convergono verso il centro dello schermo visibile (compreso il portiere)
				u16 center_x = 128;
				u16 center_y = Field.ly + 96;
				
				u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
				u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
				
				u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
				u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
				u8 speed = (dist_x > 100 || dist_y > 100) ? 6 : ((dist_x > 50 || dist_y > 50) ? 4 : 2);
				
				if (p->lx < t_x - speed) p->dx = speed; else if (p->lx > t_x + speed) p->dx = -speed; else p->dx = 0;
				if (p->ly < t_y - speed) p->dy = speed; else if (p->ly > t_y + speed) p->dy = -speed; else p->dy = 0;
				
				p->lx += p->dx; p->ly += p->dy; 
				p->anim++;

				u8 step = (p->anim / 3) % 4;
				if (step == 3) step = 1;
				
				if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
					if (i == 0 || i == 7) {
						p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
					} else {
						p->frame = (team == TEAM_1) ? 
							((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
							((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
					}
				} else {
					if (i == 0 || i == 7) {
						p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, step);
					} else {
						p->frame = (team == TEAM_1) ? 
							((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
							((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
					}
				}
			} else {
				// Giocatori sconfitti fermi guardano la palla triste a terra
				i8 look_dx = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
				i8 look_dy = (SwSprite[14].ly > p->ly) ? 1 : ((SwSprite[14].ly < p->ly) ? -1 : 0);
				if (look_dx == 0 && look_dy == 0) look_dy = 1;
				p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, look_dx, look_dy);
			}
		}

		// Aggiorniamo anche lo sguardo dell'arbitro
		struct ObjectInfo* ref = &SwSprite[26];
		i8 look_dx = (SwSprite[14].lx > ref->lx) ? 1 : ((SwSprite[14].lx < ref->lx) ? -1 : 0);
		i8 look_dy = (SwSprite[14].ly > ref->ly) ? 1 : ((SwSprite[14].ly < ref->ly) ? -1 : 0);
		if (look_dx == 0 && look_dy == 0) look_dy = 1;
		ref->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, 26, look_dx, look_dy);
		return;
	} else if (*game_state == 10) {
		// --- FESTEGGIAMENTI FINE PARTITA E USCITA DAL CAMPO ---
		T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Nascondi i focus

		bool time_up = FALSE;
		if (*wait_secs > 0) {
			if (*start_sec < Frms) { 
				(*wait_secs)--; 
			}
			*start_sec = Frms;
		} else {
			time_up = TRUE;
		}

		u8 winning_team = (ScoreTeam1 > ScoreTeam2) ? TEAM_1 : TEAM_2;
		u8 losing_team = (winning_team == TEAM_1) ? TEAM_2 : TEAM_1;
		bool all_offscreen = TRUE;

		i8 exit_dy = (Field.ly < 256) ? -3 : 3; // Escono velocemente verso il bordo schermo più vicino

		for (u8 i = 0; i <= 26; i++) {
			if (i >= 15 && i < 26) continue; // Salta UI e Frecce
			
			struct ObjectInfo* p = &SwSprite[i];
			u8 team = (i < 7) ? TEAM_1 : ((i < 14) ? TEAM_2 : 0xFF);
			
			if (team == winning_team) {
				// Convergono verso il centro dello schermo visibile (compreso il portiere!)
				u16 center_x = 128;
				u16 center_y = Field.ly + 96;
				
				u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
				u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
				
				u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
				u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
				u8 speed = (dist_x > 100 || dist_y > 100) ? 6 : ((dist_x > 50 || dist_y > 50) ? 4 : 2);
				
				if (p->lx < t_x - speed) p->dx = speed; else if (p->lx > t_x + speed) p->dx = -speed; else p->dx = 0;
				if (p->ly < t_y - speed) p->dy = speed; else if (p->ly > t_y + speed) p->dy = -speed; else p->dy = 0;
				
				p->lx += p->dx; p->ly += p->dy; p->anim++;
				
				u8 step = (p->anim / 3) % 4;
				if (step == 3) step = 1;
				
				if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
					if (i == 0 || i == 7) {
						p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
					} else {
						p->frame = (team == TEAM_1) ? 
							((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
							((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
					}
				} else {
					if (i == 0 || i == 7) {
						p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, step);
					} else {
						p->frame = (team == TEAM_1) ? 
							((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
							((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
					}
				}
			} 
			else if (team == losing_team || i == 26 || i == 14) {
				// Sconfitti, Arbitro e Palla abbandonano il campo
				if (OnScreen(p->ly)) {
					all_offscreen = FALSE; 
					p->dy = exit_dy; p->dx = 0;
					p->ly = (p->ly + p->dy) & 511; // Evita l'underflow matematico
					if (i != 14) { // Anima i giocatori e l'arbitro (non la palla)
						p->anim++;
						const u8 walk_seq[4] = {0, 1, 2, 1};
						p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
					}
				} else {
					p->ly = 1000; // Nascondi del tutto quando fuori visuale
				}
			}
		}

		// Se il tempo della festa è scaduto e i perdenti sono spariti, va al Menu
		if (time_up && all_offscreen) {
			*game_state = 255;
		}
		return;
	} else if (*game_state == 11) {
		// --- PAREGGIO E SETUP RIGORI ---

		if (*wait_secs > 0) {
			if (*start_sec < Frms) { 
				(*wait_secs)--;
				if (*wait_secs == 0) {
					CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
				}

				// Assegna posizioni "disordinate ma vicine" a centrocampo per i rigori
				T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Rimuovi tutti i focus
				for(u8 i=0; i<14; i++) {
					u8 role = (i < 7) ? i : i - 7;
					u8 t_cx = (i < 7) ? 64 : 192;
					i8 off_x = 0; i8 off_y = 0;
					switch(role) {
						case 0: off_x = -18; off_y = -18; break; // Giocatore 1 (dietro)
						case 1: off_x =   2; off_y = -18; break; // Giocatore 2 (dietro)
						case 2: off_x =  22; off_y = -18; break; // Giocatore 3 (dietro)
						case 3: off_x = -22; off_y =   2; break; // Giocatore 4 (centro)
						case 4: off_x =  -2; off_y =   2; break; // Giocatore 5 (centro)
						case 5: off_x =  18; off_y =   2; break; // Giocatore 6 (centro)
						case 6: off_x = -10; off_y =  22; break; // Giocatore 7 (avanti)
					}
					SwSprite[i].tx = (u8)(t_cx + off_x);
					SwSprite[i].ty = (u16)(256 + off_y);
				}
				// Arbitro in disparte al limite del cerchio
				SwSprite[26].tx = (u8)(128 + 24);
				SwSprite[26].ty = (u16)(256 - 24);
				
				// Nascondi la palla in modo assoluto
				SwSprite[14].ly = 1000;
			}
			*start_sec = Frms;
			return;
		}

		bool all_in_position = TRUE;

		// Rientro della telecamera verso centrocampo
		if (Field.ly > 156 + 3) {
			Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
		} else if (Field.ly + 3 < 156) {
			Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE;
		} else if (Field.ly != 156) {
			Field.dy = (i8)(156 - Field.ly); Field.ly = 156; all_in_position = FALSE;
		} else {
			Field.dy = 0;
		}

		// Muovi giocatori e arbitro verso le postazioni dei rigori
		for (u8 i = 0; i <= 26; i++) {
			if (i >= 14 && i < 26) continue; // Salta UI e Palla
			struct ObjectInfo* p = &SwSprite[i];
			if (p->lx != p->tx || p->ly != p->ty) {
				all_in_position = FALSE;
				
				if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
				else if (p->tx < p->lx) p->dx = (i8)((p->lx - p->tx >= 2) ? -2 : -1); 
				else p->dx = 0;
				
				if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
				else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
				else p->dy = 0;
				
				p->lx += p->dx; p->ly += p->dy; p->anim++;
				const u8 walk_seq[4] = {0, 1, 2, 1};
				p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
			} else {
				p->dx = 0; p->dy = 0;
				i8 look_dx = 0, look_dy = 1;
				if (i == 26) { // L'arbitro fissa sempre la palla
					look_dx = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
					look_dy = (SwSprite[14].ly > p->ly) ? 1 : ((SwSprite[14].ly < p->ly) ? -1 : 0);
				} else { // I giocatori guardano in direzioni varie
					look_dx = (i8)((i % 3) - 1);
					look_dy = (i8)(((i / 3) % 3) - 1);
				}
				if (look_dx == 0 && look_dy == 0) look_dy = 1;
				p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, look_dx, look_dy);
			}
		}
		if (all_in_position) *game_state = 12; // Va in Loop infinito dei Rigori
		return;
	}
}