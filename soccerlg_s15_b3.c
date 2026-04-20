// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 15 - Game State Set Pieces
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

void UpdateGameState_SetPieces(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
{
	(void)target_ly; // Evita il warning 85 per parametro non utilizzato

	if (*game_state == 7) {
		// --- ATTESA BATTUTA RIMESSA LATERALE ---
		u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
		bool is_human = FALSE;
		u8 joy_port = 0;
		
		if (throw_team == TEAM_2) { is_human = TRUE; joy_port = 0; }
		else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }

		T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus

		if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
			if (*wait_secs > 0) (*wait_secs)--; 
		}
		*start_sec = Frms;

		if (is_human) {
			// Focus lampeggiante unicamente sul destinatario
			if (throw_team == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
			else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;

			// Ciclare tra i due destinatari
			u8 dir = g_player_input[throw_team].direction;
			if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
			g_last_input_dir = dir;

			bool do_throw = g_player_input[throw_team].trigger_pressed;

			if (*wait_secs == 0) do_throw = TRUE; // Lancio automatico scaduto il tempo

			if (do_throw) {
				if (RestartType == RESTART_THROWIN) {
					CallFnc_VOID_U8U8(SEG_GAMESTATE_7, ExecuteThrowIn, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
				} else {
					CallFnc_VOID_U8U8(SEG_GAMESTATE_7, ExecuteCornerKick, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
				}
				g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
				*game_state = 3; TimerEnabled = TRUE;
			}
		} else {
			if (*wait_secs == 0) {
				u8 target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
				if (RestartType == RESTART_THROWIN) {
					CallFnc_VOID_U8U8(SEG_GAMESTATE_7, ExecuteThrowIn, g_thrower_id, target);
				} else {
					// Selezione bersaglio largo per il Corner CPU (Fuori area o defilati)
					u8 team_to_kick = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
					u8 start_t = (team_to_kick == TEAM_1) ? 1 : 8;
					u8 out_targets[4];
					out_targets[0] = start_t;
					out_targets[1] = start_t + 1;
					out_targets[2] = start_t + 4;
					out_targets[3] = start_t + 5;
					target = out_targets[Frms % 4];
					if (target == g_thrower_id) target = out_targets[(Frms + 1) % 4];
					
					CallFnc_VOID_U8U8(SEG_GAMESTATE_7, ExecuteCornerKick, g_thrower_id, target);
				}
				g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
				*game_state = 3; TimerEnabled = TRUE;
			}
		}
	} else if (*game_state == 8) {
		// --- ATTESA BATTUTA RINVIO DAL FONDO E RINCORSA ---
		T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus

		if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
			if (*wait_secs > 0) (*wait_secs)--; 
		}
		*start_sec = Frms;

		u8 gk = (RestartSideY < 256) ? 0 : 7;
		struct ObjectInfo* GK = &SwSprite[gk];
		struct ObjectInfo* Ball = &SwSprite[14];

		i8 dir_y = (gk == 0) ? 1 : -1;
		i8 dir_x = (RestartSideX < 128) ? 1 : -1;
		
		u16 target_gk_x = (RestartType == RESTART_GKSAVE) ? RestartSideX : (Ball->lx - (dir_x * 6));
		u16 target_gk_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : (Ball->ly - (dir_y * 8));

		u8 team_to_kick = (gk == 0) ? TEAM_1 : TEAM_2;
		bool is_human = FALSE;
		u8 joy_port = 0;
		
		if (team_to_kick == TEAM_2) { is_human = TRUE; joy_port = 0; }
		else if (team_to_kick == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }

		if (*wait_secs == 0) {
			// --- FASE 2: Rincorsa e Tiro ---
			if (GK->ly != target_gk_y || GK->lx != target_gk_x) {
				if (GK->ly != target_gk_y) {
					GK->dy = (Ball->ly > GK->ly) ? 2 : -2;
					if (target_gk_y > GK->ly && GK->ly + GK->dy > target_gk_y) GK->dy = target_gk_y - GK->ly;
					if (target_gk_y < GK->ly && GK->ly + GK->dy < target_gk_y) GK->dy = target_gk_y - GK->ly;
					GK->ly += GK->dy;
				} else {
					GK->dy = 0;
				}
				
				if (GK->lx != target_gk_x) {
					GK->dx = (Ball->lx > GK->lx) ? 2 : -2;
					if (target_gk_x > GK->lx && GK->lx + GK->dx > target_gk_x) GK->dx = target_gk_x - GK->lx;
					if (target_gk_x < GK->lx && GK->lx + GK->dx < target_gk_x) GK->dx = target_gk_x - GK->lx;
					GK->lx += GK->dx;
				} else {
					GK->dx = 0;
				}
				
				GK->anim++;
				const u8 walk_seq[4] = {0, 1, 2, 1};
				GK->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, gk, GK->dx, GK->dy, walk_seq[(GK->anim / 3) % 4]);
			} else {
				// IL RINVIO: lancio immediato verso il centrocampo
				u8 target = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
				if (!is_human) target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
				
				g_pass_start_x = (RestartType == RESTART_GKSAVE) ? GK->lx : Ball->lx;
				g_pass_start_y = (RestartType == RESTART_GKSAVE) ? GK->ly : Ball->ly;
				g_pass_target_x = SwSprite[target].lx;
				g_pass_target_y = SwSprite[target].ly;
				
				u16 dist_x = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
				u16 dist_y = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
				
				g_pass_max_frames = (dist_x + dist_y) / 4; 
				if (g_pass_max_frames < 20) g_pass_max_frames = 20;
				if (g_pass_max_frames > 60) g_pass_max_frames = 60;
				g_pass_max_height = 7;
				
				Ball->lx = g_pass_start_x;
				Ball->ly = g_pass_start_y;
				Ball->anim = 5; 
				Ball->count = 0; 
				Ball->dx = Ball->dy = 0;
				
				CallFnc_VOID(SEG_EVENTS, EventBallKicked);
				LastTouchTeam = (gk == 0) ? TEAM_1 : TEAM_2;
				LastTouchPlayer = gk;
				g_pass_receiver = target;
				
				GK->ly = (gk == 0) ? 32 : 444; // Scatta sulla sua riga, ma conserva la X esterna
				GK->frame = (gk == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
				
				*game_state = 3; // Riparte il gioco istantaneamente
				TimerEnabled = TRUE;
			}
		} else {
			// --- FASE 1: Attesa, Scelta Ricevitore e Avvio ---
			if (is_human) {
				if (team_to_kick == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
				else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;

				u8 dir = g_player_input[team_to_kick].direction;
				if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
				g_last_input_dir = dir;

				bool do_kick = g_player_input[team_to_kick].trigger_pressed;

				if (do_kick) *wait_secs = 0; // Trigger premuto: inizia subito la rincorsa!
			}
			
			// Il portiere fissa la palla
			if (RestartType != RESTART_GKSAVE) {
				i8 look_dx = (Ball->lx > GK->lx) ? 1 : ((Ball->lx < GK->lx) ? -1 : 0);
				i8 look_dy = (Ball->ly > GK->ly) ? 1 : ((Ball->ly < GK->ly) ? -1 : 0);
				if (look_dx == 0 && look_dy == 0) look_dy = (gk == 0) ? 1 : -1;
				GK->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, gk, look_dx, look_dy);
			}
		}
	}
}

void UpdateGameState_Penalties_End(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
{
	(void)target_ly; // Evita il warning 85 per parametro non utilizzato

	if (*game_state >= 15 && *game_state <= 17) {
		struct ObjectInfo* Ball = &SwSprite[14];
		u8 keeper_idx;
		
		if (*game_state == 16 || *game_state == 17) {
			keeper_idx = (g_penalty_shooter_idx < 7) ? 7 : 0; // Il portiere che ha appena finito
		} else {
			keeper_idx = (g_penalty_team == TEAM_1) ? 7 : 0; // Il portiere che deve parare
		}

		if(*game_state == 15) { // STATO 15: Attesa esito rigore
			if (Ball->anim == 5) {
				u8 progress = Ball->count;
				i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
				i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;

				if (progress >= g_pass_max_frames) {
					Ball->lx = g_pass_target_x;
					Ball->ly = g_pass_target_y;
					Ball->anim = 0; // Tiro terminato
					CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); // Ripristina grandezza a terra

					if (Ball->ly <= 24 && Ball->lx >= 82 && Ball->lx <= 156) {
						if (g_penalty_team == TEAM_2) ScoreTeam2++; else ScoreTeam1++;
						RestartType = RESTART_GOAL; // Segnala il goal per poter attivare l'esultanza
					}
					*wait_secs = 2; // Inizializza attesa post-tiro prima di cambiare giocatore
					*start_sec = Frms;
				} else {
					Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
					Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
					Ball->count++;
					
					// Animazione altezza palla in volo
					u8 scale;
					u8 half_frame = g_pass_max_frames >> 1;
					if (progress <= half_frame) {
						scale = (progress * g_pass_max_height) / half_frame;
					} else {
						u8 progress_down = progress - half_frame;
						scale = g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
					}
					if (scale > 7) scale = 7;
					CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
				}
			} else if(Ball->anim == 0) { // Attesa post-tiro
				if (*start_sec < Frms) { 
					if (*wait_secs > 0) (*wait_secs)--; 
				}
				*start_sec = Frms;

				if (*wait_secs == 0) {
					// Aggiunta pallini Tracker Rigori
					u8 shot_idx = g_penalty_shot_count[g_penalty_team];
					if (shot_idx < 5) {
						u8 spr_idx = (g_penalty_team == TEAM_1) ? (27 + shot_idx) : (32 + shot_idx);
						bool scored = (RestartType == RESTART_GOAL);
						if (g_penalty_team == TEAM_1) {
							SwSprite[spr_idx].lx = 32 + shot_idx * 12;
							SwSprite[spr_idx].ly = 16; // Dietro la porta a Y=16
							SwSprite[spr_idx].frame = scored ? SPR_T1_O : SPR_T1_X;
						} else {
							SwSprite[spr_idx].lx = 168 + shot_idx * 12;
							SwSprite[spr_idx].ly = 16; // Dietro la porta a Y=16
							SwSprite[spr_idx].frame = scored ? SPR_T2_O : SPR_T2_X;
						}
					}

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
					
					// Se ha segnato, esulta tornando verso centrocampo
					if (RestartType == RESTART_GOAL && actor_idx == g_penalty_shooter_idx && p->dy > 0) {
						u8 step = walk_seq[(p->anim / 3) % 4];
						p->frame = (actor_idx < 7) ? 
							((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
							((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
					} else {
						// FIX: Utilizziamo actor_idx e non 'i' per garantire l'indice e i colori della maglietta corretti
						p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
					}
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
				RestartType = 0;  // Azzera il flag di esito per il prossimo
			}
		}
		else if (*game_state == 17) { // STATO 17: Vittoria Rigori e Uscita Sconfitti
			u8 winning_team = (ScoreTeam1 > ScoreTeam2) ? TEAM_1 : TEAM_2;
			u8 losing_team = (winning_team == TEAM_1) ? TEAM_2 : TEAM_1;
			bool losers_offscreen = TRUE;

			for (u8 i = 0; i <= 26; i++) {
				if (i >= 14 && i < 26) continue; // Salta Palla e UI
				
				struct ObjectInfo* p = &SwSprite[i];
				u8 team = (i < 7) ? TEAM_1 : ((i < 14) ? TEAM_2 : 0xFF);
				
				if (team == losing_team || i == 26) {
					// Sconfitti e arbitro escono verso sud
					if (p->ly < 512) {
						losers_offscreen = FALSE;
						p->dy = 2; p->dx = 0;
						p->ly += p->dy;
						p->anim++;
						const u8 walk_seq[4] = {0, 1, 2, 1};
						p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
					} else {
						p->ly = 1000;
					}
				} else if (team == winning_team) {
					// Vincenti festeggiano convergendo al centro
					u16 center_x = 128;
					u16 center_y = Field.ly + 96;
					
					// Aggiungiamo caos controllato per farli correre in modo arioso nel campo visibile
					u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
					u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
					
					if (p->lx < t_x - 2) p->dx = 2; else if (p->lx > t_x + 2) p->dx = -2; else p->dx = 0;
					if (p->ly < t_y - 2) p->dy = 2; else if (p->ly > t_y + 2) p->dy = -2; else p->dy = 0;
					
					p->lx += p->dx; p->ly += p->dy; p->anim++;
					
					u8 step = (p->anim / 3) % 4;
					if (step == 3) step = 1;
					
					if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
						p->frame = (team == TEAM_1) ? 
							((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
							((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
					} else {
						p->frame = (team == TEAM_1) ? 
							((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
							((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
					}
				}
			}

			if (losers_offscreen) {
				if (*wait_secs > 0) {
					if (*start_sec < Frms) { 
						(*wait_secs)--; 
					}
					*start_sec = Frms;
				} else {
					CallFnc_VOID(SEG_MENU, ShowMenu);
				}
			} else {
				*wait_secs = 6; // Resetta il timer a 6 finché non sono usciti tutti gli sconfitti
				*start_sec = Frms;
			}
		}
	}
}