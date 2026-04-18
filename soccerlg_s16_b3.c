// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 16 - Game State Penalties
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

void UpdateGameState_Penalties(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
{
	(void)target_ly; // Evita il warning 85 per parametro non utilizzato

	if (*game_state == 11) {
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
				p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
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
				p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, look_dx, look_dy);
			}
		}
		if (all_in_position) *game_state = 12; // Va in Loop infinito dei Rigori
		return;
	} 
	else if (*game_state >= 12 && *game_state <= 16) { // --- RIGORI ---
		
		struct ObjectInfo* Ball = &SwSprite[14];
		u8 keeper_idx;
		
		if (*game_state == 16) {
			keeper_idx = (g_penalty_shooter_idx < 7) ? 7 : 0; // Il portiere che ha appena finito
		} else {
			keeper_idx = (g_penalty_team == TEAM_1) ? 7 : 0; // Il portiere che deve parare
		}

		if(*game_state == 12) { // STATO 12: Setup del prossimo rigore
			g_is_penalty_shootout = TRUE; // Attiva la modalità rigori

			// Controlla se la serie di rigori è finita
			if(g_penalty_shot_count[0] >= 5 && g_penalty_shot_count[1] >= 5) {
				if(ScoreTeam1 != ScoreTeam2) {
					*game_state = 10; // Vittoria
					*wait_secs = 3; *start_sec = Frms;
					g_is_penalty_shootout = FALSE;
					return;
				}
			}
			// Determina il prossimo tiratore (5 per squadra, poi a oltranza)
			u8 shooter_role = 1 + (g_penalty_shot_count[g_penalty_team] % 6);
			g_penalty_shooter_idx = (g_penalty_team == TEAM_1) ? shooter_role : shooter_role + 7;

			// Posiziona la palla sul dischetto del rigore (porta nord)
			Ball->lx = 120; Ball->ty = 80; Ball->tx = 120; Ball->ly = 80;
			Ball->anim = 0; Ball->frame = SPR_BALL_SIZE_1;

			// Imposta le posizioni target
			SwSprite[g_penalty_shooter_idx].tx = 120;     // Tiratore dietro la palla
			SwSprite[g_penalty_shooter_idx].ty = 96;      // 80 + 16
			SwSprite[keeper_idx].tx = 120;                // Portiere al centro della porta
			SwSprite[keeper_idx].ty = 32;
			SwSprite[26].tx = 62;                         // Arbitro a lato dell'area
			SwSprite[26].ty = 56;

			// Riporta i giocatori a centrocampo alle loro pose di attesa
			for(u8 i=0; i<=26; i++) {
				if(i == g_penalty_shooter_idx || i == keeper_idx || i == 26 || (i>=14 && i<26)) continue;
				SwSprite[i].lx = SwSprite[i].tx;
				SwSprite[i].ly = SwSprite[i].ty;
			}

			*game_state = 13; // Passa alla fase di avvicinamento
		}
		else if(*game_state == 13) { // STATO 13: Avvicinamento al dischetto
			bool all_in_position = TRUE;

			// Movimento telecamera per seguire il portiere verso la porta
			u16 cam_target = (SwSprite[keeper_idx].ly < 96) ? 0 : SwSprite[keeper_idx].ly - 96;
			if (Field.ly > cam_target + 3) { Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE; }
			else if (Field.ly + 3 < cam_target) { Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE; }
			else if (Field.ly != cam_target) { Field.dy = (i8)(cam_target - Field.ly); Field.ly = cam_target; all_in_position = FALSE; }
			else { Field.dy = 0; }

			for(u8 i=0; i<3; i++) {
				u8 actor_idx = (i == 0) ? g_penalty_shooter_idx : ((i == 1) ? keeper_idx : 26);
				struct ObjectInfo* p = &SwSprite[actor_idx];
				
				// Offset per evitare sovrapposizione in camminata (corsie separate)
				u8 final_tx = (actor_idx == 26) ? 62 : 120; 
				u8 current_tx = final_tx;
				if (actor_idx == g_penalty_shooter_idx && p->ly > p->ty + 4) current_tx = 96;
				if (actor_idx == keeper_idx && p->ly > p->ty + 4) current_tx = 144;

				if (p->lx != current_tx || p->ly != p->ty) {
					all_in_position = FALSE;
					
					if (current_tx > p->lx) p->dx = (i8)((current_tx - p->lx >= 2) ? 2 : 1); 
					else if (current_tx < p->lx) p->dx = (i8)((p->lx - current_tx >= 2) ? -2 : -1); 
					else p->dx = 0;
					
					if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
					else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
					else p->dy = 0;
					
					p->lx += p->dx; p->ly += p->dy; p->anim++;
					const u8 walk_seq[4] = {0, 1, 2, 1};
					p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
				} else {
					p->dx = 0; p->dy = 0;
					p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, actor_idx, 0, (i8)((actor_idx == keeper_idx) ? 1 : -1));
				}
			}

			if (all_in_position) {
				CallFnc_VOID(SEG_EVENTS, EventPenaltyWhistle);
				*wait_secs = 5; *start_sec = Frms;
				g_penalty_arrow_pos = 1; g_penalty_arrow_dir = 1;
				*game_state = 14;
			}
		}
		else if(*game_state == 14) { // STATO 14: Mira e Tiro
			struct ObjectInfo* Keeper = &SwSprite[keeper_idx];
			u8 keeper_team_idx = (keeper_idx == 0) ? 0 : 1;
			bool is_keeper_human = (keeper_team_idx == 1) || (keeper_team_idx == 0 && GameMode == GAMEMODE_P1_VS_P2);
			bool do_shot = FALSE;

			// Logica portiere
			if(is_keeper_human) {
				u8 dir = g_player_input[keeper_team_idx].direction;
				if(dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT) Keeper->tx = (u8)(120 - 24);
				else if(dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) Keeper->tx = (u8)(120 + 24);
				else Keeper->tx = (u8)120;
			}
			
			if (Keeper->lx != Keeper->tx) {
				if (Keeper->tx > Keeper->lx) Keeper->lx += 2;
				else Keeper->lx -= 2;
			}

			// Logica tiratore
			bool is_shooter_human = (g_penalty_team == TEAM_2) || (g_penalty_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2);
			if(is_shooter_human) {
				if(Frms % 3 == 0) { // Freccia più veloce
					g_penalty_arrow_pos += g_penalty_arrow_dir;
					if(g_penalty_arrow_pos == 0 || g_penalty_arrow_pos == 2) g_penalty_arrow_dir = (i8)-g_penalty_arrow_dir;
				}
				u8 arrow_x_pos[] = {92, 120, 148};
				SwSprite[25].lx = arrow_x_pos[g_penalty_arrow_pos];
				SwSprite[25].ly = 50; SwSprite[25].frame = SPR_BIG_ARROW_TOP;
				if(g_player_input[g_penalty_team].trigger_pressed) do_shot = TRUE; // Impedisce tiri accidentali
			} else { // CPU Shooter
				if(*wait_secs < 4) do_shot = TRUE;
			}

			if (*start_sec < Frms) { if (*wait_secs > 0) (*wait_secs)--; *start_sec = Frms; }
			if (*wait_secs == 0) do_shot = TRUE;

			if(do_shot) {
				*wait_secs = 0; // Prepara il timer per lo stato 15
				SwSprite[25].ly = 1000; // Nasconde freccia in modo assoluto
				u8 shot_dir; // 0=sx, 1=centro, 2=dx
				if(is_shooter_human) shot_dir = g_penalty_arrow_pos;
				else shot_dir = Frms % 3;

				u8 target_x_pos[] = {92, 120, 148};
				g_pass_start_x = Ball->lx; g_pass_start_y = Ball->ly;
				g_pass_target_x = target_x_pos[shot_dir]; g_pass_target_y = 16;
				g_pass_max_frames = 15; g_pass_max_height = 1; // Tiro basso e veloce (dimensione 1)
				g_pass_receiver = 0xFF;
				Ball->anim = 5; Ball->count = 1;

				// Animazione tiro
				SwSprite[g_penalty_shooter_idx].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, g_penalty_shooter_idx, 0, (i8)-1);

				// Logica tuffo portiere
				u8 dive_dir; // 0=sx, 1=fermo, 2=dx
				if(is_keeper_human) {
					if(Keeper->tx < 120) dive_dir = 0; else if (Keeper->tx > 120) dive_dir = 2; else dive_dir = 1;
				} else { // CPU
					dive_dir = (Frms + g_penalty_shot_count[0]) % 3;
				}

				if(dive_dir == 0) Keeper->frame = SPR_GK_PLAYER_DOWN_WEST;
				else if(dive_dir == 2) Keeper->frame = SPR_GK_PLAYER_DOWN_EAST;

				// Controlla se il portiere para
				if(dive_dir == shot_dir) {
					g_pass_max_frames = 10; // Tiro smorzato
					g_pass_target_y = 32;   // Palla bloccata sul portiere (niente Goal)
				}

				*game_state = 15;
			}
		}
		else if(*game_state == 15) { // STATO 15: Attesa esito rigore
			if (Ball->anim == 5) {
				u8 progress = Ball->count;
				i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
				i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;

				if (progress >= g_pass_max_frames) {
					Ball->lx = g_pass_target_x;
					Ball->ly = g_pass_target_y;
					Ball->anim = 0; // Tiro terminato

					if (Ball->ly <= 24 && Ball->lx >= 82 && Ball->lx <= 156) {
						if (g_penalty_team == TEAM_2) ScoreTeam2++; else ScoreTeam1++;
					}
					*wait_secs = 2; // Inizializza attesa post-tiro prima di cambiare giocatore
					*start_sec = Frms;
				} else {
					Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
					Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
					Ball->count++;
				}
			} else if(Ball->anim == 0) { // Attesa post-tiro
				if (*start_sec < Frms) { 
					if (*wait_secs > 0) (*wait_secs)--; 
				}
				*start_sec = Frms;

				if (*wait_secs == 0) {
					g_penalty_shot_count[g_penalty_team]++;
					g_penalty_team = (g_penalty_team == TEAM_1) ? TEAM_2 : TEAM_1;
					
					// Nascondi la palla in modo assoluto
					Ball->ly = 1000;

					// Calcola le posizioni di attesa a centrocampo per Shooter e Keeper
					u8 p_idx = g_penalty_shooter_idx;
					u8 role = (p_idx < 7) ? p_idx : p_idx - 7;
					u8 t_cx = (p_idx < 7) ? 64 : 192;
					i8 off_x = 0; i8 off_y = 0;
					switch(role) {
						case 0: off_x = -18; off_y = -18; break; case 1: off_x =   2; off_y = -18; break;
						case 2: off_x =  22; off_y = -18; break; case 3: off_x = -22; off_y =   2; break;
						case 4: off_x =  -2; off_y =   2; break; case 5: off_x =  18; off_y =   2; break;
						case 6: off_x = -10; off_y =  22; break;
					}
					SwSprite[p_idx].tx = (u8)(t_cx + off_x); SwSprite[p_idx].ty = (u16)(256 + off_y);

					p_idx = keeper_idx;
					role = (p_idx < 7) ? p_idx : p_idx - 7;
					t_cx = (p_idx < 7) ? 64 : 192;
					switch(role) {
						case 0: off_x = -18; off_y = -18; break; case 1: off_x =   2; off_y = -18; break;
						case 2: off_x =  22; off_y = -18; break; case 3: off_x = -22; off_y =   2; break;
						case 4: off_x =  -2; off_y =   2; break; case 5: off_x =  18; off_y =   2; break;
						case 6: off_x = -10; off_y =  22; break;
					}
					SwSprite[p_idx].tx = (u8)(t_cx + off_x); SwSprite[p_idx].ty = (u16)(256 + off_y);

					// Arbitro in disparte al limite del cerchio
					SwSprite[26].tx = (u8)(128 + 24); SwSprite[26].ty = (u16)(256 - 24);

					*game_state = 16; // Prepara ritorno a centrocampo
					RestartType = 0; // Azzera il flag di esito
				}
			}
		}
		else if(*game_state == 16) { // STATO 16: Ritorno a centrocampo
			bool all_in_position = TRUE;

			// Movimento telecamera per seguire il portiere che torna
			u16 cam_target = (SwSprite[keeper_idx].ly < 96) ? 0 : SwSprite[keeper_idx].ly - 96;
			if (cam_target > 512 - 192) cam_target = 512 - 192; // clamp visivo
			if (Field.ly > cam_target + 3) { Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE; }
			else if (Field.ly + 3 < cam_target) { Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE; }
			else if (Field.ly != cam_target) { Field.dy = (i8)(cam_target - Field.ly); Field.ly = cam_target; all_in_position = FALSE; }
			else { Field.dy = 0; }

			for(u8 i=0; i<3; i++) {
				u8 actor_idx = (i == 0) ? g_penalty_shooter_idx : ((i == 1) ? keeper_idx : 26);
				struct ObjectInfo* p = &SwSprite[actor_idx];
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
					// FIX: Utilizziamo actor_idx e non 'i' per garantire l'indice e i colori della maglietta corretti
					p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
				} else {
					p->dx = 0; p->dy = 0;
					i8 look_dx = 0, look_dy = 1;
					if (actor_idx == 26) { look_dy = 1; }
					else {
						look_dx = (i8)((actor_idx % 3) - 1);
						look_dy = (i8)(((actor_idx / 3) % 3) - 1);
					}
					if (look_dx == 0 && look_dy == 0) look_dy = 1;
					// FIX: Utilizziamo actor_idx anche per la posa idle una volta fermi
					p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, actor_idx, look_dx, look_dy);
				}
			}

			if (all_in_position) {
				*game_state = 12; // Inizia il prossimo rigore
			}
		}
		return;
	}
}