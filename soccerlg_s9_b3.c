// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 9 - Game State functions 1
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
{
	if (*game_state < 3) {
		CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_4, UpdateGameState_Init, game_state, wait_secs, start_sec, target_ly);
	} else if (*game_state == 3) {
		// Gestione cambio tempo
		if (Mins == 0 && Secs == 0) {
			if (Half == 1) {
				*game_state = 4;
				*wait_secs = 2;
				*start_sec = Frms;
				CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_HALFTIME);
				CallFnc_VOID(SEG_EVENTS, EventHalfTime);
			} else if (Half == 2) {
				*game_state = 5;
				*wait_secs = 2;
				*start_sec = Frms;
				CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_TIMEUP);
			}
			return;
		}

		// Ciclo infinito attivo, pronti per giocare
		if (*wait_secs > 0) {
			if (*start_sec < Frms) { // Frms wrapped from 1 to 60
				(*wait_secs)--;
				if (*wait_secs == 0) {
					CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
					TimerEnabled = TRUE; // Avvia il cronometro alla sparizione della scritta
				}
			}
			*start_sec = Frms;
			// NOTA: L'input viene sincronizzato da UpdateAllInputs nel loop principale
			return; // Ferma l'IA e il gioco finché la scritta non sparisce
		}

		// --- TELECAMERA E LIMITI ---
		CallFnc_VOID(SEG_FIELD, UpdateFieldCamera);
		CallFnc_VOID_3PTR(SEG_FIELD, CheckFieldBoundaries, game_state, wait_secs, start_sec);

		// --- AGGIORNAMENTO FRECCE ORIZZONTALI ---
		g_h_arrow_x += g_h_arrow_dir;
		if (g_h_arrow_x < 80) { g_h_arrow_x = 80; g_h_arrow_dir = 1; }
		else if (g_h_arrow_x > 162) { g_h_arrow_x = 162; g_h_arrow_dir = -1; }
		
		// Freccia in alto (per Team 1 che attacca verso il basso)
		// Visibile se P2 è umano (P1 vs P2)
		if (GameMode == GAMEMODE_P1_VS_P2) {
			SwSprite[24].lx = (u8)g_h_arrow_x;
			SwSprite[24].ly = 440; 
			SwSprite[24].frame = SPR_BIG_ARROW_BOTTOM;
		} else {
			SwSprite[24].ly = 1000; // Nascondimento assoluto
		}
		// Freccia in basso (per Team 2 che attacca verso l'alto)
		SwSprite[25].lx = (u8)g_h_arrow_x; SwSprite[25].ly = 50; SwSprite[25].frame = SPR_BIG_ARROW_TOP;


		// --- AGGIORNAMENTO POSSESSO E FOCUS UMANO ---
		struct ObjectInfo* Ball = &SwSprite[14];
		
		u8 closest_t1 = 1; u16 min_dist_t1 = 0xFFFF;
		u8 closest_t2 = 8; u16 min_dist_t2 = 0xFFFF;
		
		for (u8 i = 1; i < 7; i++) { 
			u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
			u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
			u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
			u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
			if (dist_x + dist_y < min_dist_t1) { min_dist_t1 = dist_x + dist_y; closest_t1 = i; }
		}
		for (u8 i = 8; i < 14; i++) {
			u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
			u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
			u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
			u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
			if (dist_x + dist_y < min_dist_t2) { min_dist_t2 = dist_x + dist_y; closest_t2 = i; }
		}

		// Assegna il cursore di controllo al giocatore più vicino
		T2_Carrier = closest_t2;
		if (GameMode == GAMEMODE_P1_VS_P2) T1_Carrier = closest_t1;
		else T1_Carrier = 0xFF;

		// Aggiorna il bersaglio del passaggio in base alla direzione dello sguardo
		// Mostra il bersaglio SOLO se la propria squadra ha il possesso della palla (o è palla contesa iniziale)
		if (min_dist_t2 <= 24 && (LastTouchTeam == TEAM_2 || LastTouchTeam == 0xFF)) T2_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T2_Carrier, 0xFF, g_last_dx[1], g_last_dy[1]);
		else T2_Receiver = 0xFF;
		
		if (GameMode == GAMEMODE_P1_VS_P2) {
			if (min_dist_t1 <= 24 && (LastTouchTeam == TEAM_1 || LastTouchTeam == 0xFF)) T1_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T1_Carrier, 0xFF, g_last_dx[0], g_last_dy[0]);
			else T1_Receiver = 0xFF;
		}

		// --- ANIMAZIONE DRIBBLING PALLA E PORTATORE ---

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
					return;
				}

				*game_state = 6; // Ferma il gioco per preparare il rinvio
				Field.dy = 0;
				RestartType = RESTART_GKSAVE;
				RestartSideX = SwSprite[gk_idx].lx;
				RestartSideY = SwSprite[gk_idx].ly;
				Ball->anim = Ball->dx = Ball->dy = 0;
				Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
				T1_Carrier = T2_Carrier = 0xFF;
				TimerEnabled = FALSE;
				*wait_secs = 1; *start_sec = Frms;
				return; // Esci dall'update per avviare la routine di pausa e ripresa
			}
		}
		
		// 1. Fisica della palla
		if (Ball->anim > 0) {
			if (Ball->anim == 5) {
				// === PASSAGGIO CON TRAIETTORIA INTERPOLATA E EFFETTO DI VOLO ===
				u8 progress = Ball->count; // 0 = inizio da tiratore, max = fine verso ricevitore
				u8 half_frame = g_pass_max_frames >> 1; // metà del percorso
				
				i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
				i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
				bool hit_post = FALSE;

				// Interpolazione lineare della posizione XY verso il destinatario
				if (progress == 0) {
					Ball->lx = g_pass_start_x;
					Ball->ly = g_pass_start_y;
				} else if (progress >= g_pass_max_frames) {
					Ball->lx = g_pass_target_x;
					Ball->ly = g_pass_target_y;
				} else {
					// Calcola la posizione interpolata: start + (target - start) * progress / max
					Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
					Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
				}
				
				// CONTROLLO PALO (solo per i tiri, altezza max 2)
				if (g_pass_max_height <= 2 && progress > 0) {
					u16 top_boundary = 24;
					u16 bottom_boundary = 478;
					u8 goal_left = 82;
					u8 goal_right = 156;
					
					i16 old_ly = (i16)g_pass_start_y + (dy_total * (progress - 1)) / g_pass_max_frames;
					i16 new_ly = Ball->ly;
					i16 old_lx = (i16)g_pass_start_x + (dx_total * (progress - 1)) / g_pass_max_frames;
					i16 new_lx = Ball->lx;

					// Controllo palo nord (attraversamento della linea di porta)
					if (old_ly > top_boundary && new_ly <= top_boundary) {
						i16 cross_x = old_lx + ((new_lx - old_lx) * (old_ly - top_boundary)) / (old_ly - new_ly);
						if ((cross_x >= goal_left - 4 && cross_x <= goal_left + 4) ||
							(cross_x >= goal_right - 4 && cross_x <= goal_right + 4)) {
							hit_post = TRUE;
						}
					} 
					// Controllo palo sud
					else if (old_ly < bottom_boundary && new_ly >= bottom_boundary) {
						i16 cross_x = old_lx + ((new_lx - old_lx) * (bottom_boundary - old_ly)) / (new_ly - old_ly);
						if ((cross_x >= goal_left - 4 && cross_x <= goal_left + 4) ||
							(cross_x >= goal_right - 4 && cross_x <= goal_right + 4)) {
							hit_post = TRUE;
						}
					}
					
					if (hit_post) {
						i16 in_dx = dx_total; 
						i16 in_dy = dy_total; 
						
						// Angolo specchiato rispetto alla linea di porta
						i16 out_dx = in_dx;
						i16 out_dy = -in_dy;
						
						// Limita il rimbalzo a circa 20 pixel
						i16 len = (out_dx > 0 ? out_dx : -out_dx) + (out_dy > 0 ? out_dy : -out_dy);
						if (len == 0) len = 1;
						
						out_dx = (out_dx * 60) / len;
						out_dy = (out_dy * 60) / len;
						
						// Forza la palla in campo per evitare falli di fondo o goal al frame successivo
						if (out_dy > 0) {
							if (Ball->ly < top_boundary + 2) Ball->ly = top_boundary + 2;
						} else {
							if (Ball->ly > bottom_boundary - 2) Ball->ly = bottom_boundary - 2;
						}
						
						g_pass_start_x = Ball->lx;
						g_pass_start_y = Ball->ly;
						
						g_pass_target_x = g_pass_start_x + out_dx;
						g_pass_target_y = g_pass_start_y + out_dy;
						
						g_pass_max_frames = 10; // Rimbalzo rapido
						Ball->count = 0; 
					}
				}
				
				// Effetto di volo: scala da 0 a g_pass_max_height e viceversa
				u8 scale;
				if (progress <= half_frame) {
					// Prima metà: sale fino all'altezza massima stabilita
					scale = (progress * g_pass_max_height) / half_frame;
				} else {
					// Seconda metà: scende dall'altezza massima a 0
					u8 progress_down = progress - half_frame;
					scale = g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
				}
				if (scale > 7) scale = 7; // Clamp a 7 (SPR_BALL_SIZE_8 = SPR_BALL_SIZE_1 + 7)
				CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
				
				Ball->count++;
				if (Ball->count >= g_pass_max_frames) {
					Ball->anim = 0; // Passaggio completato
					Ball->count = 0;
					Ball->dx = Ball->dy = 0;
					CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); // Torna a scale 1
				}
			} else {
				// Dribbling velocità decrescente: 5, 4, 3, 2 (totale 14 pixel). Supera i 2 px del portatore per staccarsi visibilmente!
				u8 speed = Ball->anim + 1;
				if (Ball->dx > 0) Ball->lx += speed;
				else if (Ball->dx < 0) Ball->lx -= speed;
				
				if (Ball->dy > 0) Ball->ly += speed;
				else if (Ball->dy < 0) Ball->ly -= speed;
				
				Ball->anim--;
			}
		}

		// 2. Gestione portatori (Player 1 e Player 2)
		u8 carriers[2] = {T1_Carrier, T2_Carrier};
		u8 receivers[2] = {T1_Receiver, T2_Receiver};

		for (u8 i = 0; i < 2; i++) { // i=0 per Team 1 (P2/CPU), i=1 per Team 2 (P1)
			u8 carrier = carriers[i];
			if (carrier == 0xFF) continue;
			
			u8 dir = g_player_input[i].direction;
			bool trigger_pressed = g_player_input[i].trigger_pressed;
			struct ObjectInfo* Carrier = &SwSprite[carrier];
			u8 carrier_team = (carrier < 7) ? TEAM_1 : TEAM_2;

			// --- GESTIONE SCIVOLATA UMANA ---
			if (Carrier->count > 0) {
				Carrier->count--;
				Carrier->lx += Carrier->dx;
				Carrier->ly += Carrier->dy;
				
				if (Carrier->lx < 16) Carrier->lx = 16;
				if (Carrier->lx > 224) Carrier->lx = 224;
				if (Carrier->ly < 24) Carrier->ly = 24;
				if (Carrier->ly > 488) Carrier->ly = 488;

				Carrier->frame = (Carrier->dx > 0) ? 
							((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_WEST : SPR_T2_PLAYER_TACKLE_FROM_WEST) :
							((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_EAST : SPR_T2_PLAYER_TACKLE_FROM_EAST);

				// Controllo furto durante la scivolata
				u16 b_dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
				u16 b_dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
				if (b_dist_x <= 12 && b_dist_y <= 12 && Ball->anim < 5 && RestartType == 0) {
					LastTouchTeam = carrier_team;
					LastTouchPlayer = carrier;
					if (Ball->anim > 3) Ball->anim = 3;
					Ball->frame = SPR_BALL_SIZE_1;
					Carrier->count = 0; // Ferma la scivolata appena ruba palla
				}
				continue; // Salta il resto dei comandi e dell'animazione
			}
			
			Carrier->dx = 0; Carrier->dy = 0;
			switch(dir) {
				case DIRECTION_UP: Carrier->dy = -2; break;
				case DIRECTION_UP_RIGHT: Carrier->dy = -2; Carrier->dx = 2; break;
				case DIRECTION_RIGHT: Carrier->dx = 2; break;
				case DIRECTION_DOWN_RIGHT: Carrier->dy = 2; Carrier->dx = 2; break;
				case DIRECTION_DOWN: Carrier->dy = 2; break;
				case DIRECTION_DOWN_LEFT: Carrier->dy = 2; Carrier->dx = -2; break;
				case DIRECTION_LEFT: Carrier->dx = -2; break;
				case DIRECTION_UP_LEFT: Carrier->dy = -2; Carrier->dx = -2; break;
			}
			
			// Se il giocatore si muove
			if (Carrier->dx != 0 || Carrier->dy != 0) {
				g_last_dx[i] = Carrier->dx;
				g_last_dy[i] = Carrier->dy;
				
				i16 next_x = (i16)Carrier->lx + Carrier->dx;
				if (next_x < 16) Carrier->lx = 16;
				else if (next_x > 224) Carrier->lx = 224;
				else Carrier->lx = (u8)next_x;
				
				i16 next_y = (i16)Carrier->ly + Carrier->dy;
				if (next_y < 24) Carrier->ly = 24;
				else if (next_y > 488) Carrier->ly = 488;
				else Carrier->ly = (u16)next_y;
				
				Carrier->anim++;
				const u8 walk_seq[4] = {0, 1, 2, 1}; 
				Carrier->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
			} else {
				// Se è fermo, usa l'ultima direzione di movimento per la posa di attesa
				Carrier->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, carrier, g_last_dx[i], g_last_dy[i]);
			}
			
			// Calcolo della distanza dalla palla (SEMPRE, sia che si muova che fermo)
			u16 dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
			u16 dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
			
			u8 touch_dist = (LastTouchTeam == carrier_team || LastTouchTeam == 0xFF) ? 24 : 10; // 10 pixel per il tackle
			if (Ball->anim >= 6) touch_dist = 8; // I tiri potenti sfuggono facilmente al tackle
			
			// Se il giocatore tocca fisicamente la palla (e non è in volo)
			if (dist_x <= touch_dist && dist_y <= touch_dist && Ball->anim != 5 && RestartType == 0) {
					// Controllo Fuorigioco al momento della ricezione
					bool offside = FALSE;
					if (carrier < 7 && LastTouchTeam == TEAM_1 && LastTouchPlayer != carrier) {
						u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
						if (Carrier->ly > offside_line + 8 && Carrier->ly > 256) offside = TRUE;
					} else if (carrier >= 7 && LastTouchTeam == TEAM_2 && LastTouchPlayer != carrier) {
						u16 offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
						if (Carrier->ly < offside_line - 8 && Carrier->ly < 256) offside = TRUE;
					}
					if (offside) {
						*game_state = 6; // Ferma il gioco
						RestartType = RESTART_OFFSIDE; // Imposta battuta punizione
						RestartSideX = Carrier->lx; // Punto esatto in cui ha toccato la palla
						RestartSideY = Carrier->ly;
						CallFnc_VOID(SEG_EVENTS, EventOffside);
						Ball->anim = Ball->dx = Ball->dy = 0;
						Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
						T1_Carrier = T2_Carrier = 0xFF;
						TimerEnabled = FALSE;
						*wait_secs = 2; *start_sec = Frms;
						continue; // Salta il controllo palla
					}

					LastTouchTeam = (carrier < 7) ? TEAM_1 : TEAM_2;
					LastTouchPlayer = carrier;
					Ball->frame = SPR_BALL_SIZE_1; // Assicura che la palla sia a terra quando tra i piedi
					
					// Ricalcola il ricevitore adesso che il portatore ha la palla
					i8 c_dx, c_dy;
					if (Carrier->dx != 0 || Carrier->dy != 0) {
						c_dx = (Carrier->dx > 0) ? 1 : ((Carrier->dx < 0) ? -1 : 0);
						c_dy = (Carrier->dy > 0) ? 1 : ((Carrier->dy < 0) ? -1 : 0);
					} else {
						// Se fermo, usa l'ultima direzione conosciuta per orientare la palla
						c_dx = (g_last_dx[i] > 0) ? 1 : ((g_last_dx[i] < 0) ? -1 : 0);
						c_dy = (g_last_dy[i] > 0) ? 1 : ((g_last_dy[i] < 0) ? -1 : 0);
					}
					receivers[i] = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, carrier, 0xFF, c_dx, c_dy);
					
					// AZIONE DEL GIOCATORE: Passaggio o Dribbling
					bool action_taken = FALSE;
					if (trigger_pressed) {						
						bool is_shooting = FALSE;
						u8 dir = g_player_input[i].direction;

						// Condizioni per il tiro
						// Team 2 (P1, sud) attacca verso Nord
						if (i == 1 && Carrier->ly < 256 && Field.ly == 0) {
							if (dir == DIRECTION_UP || dir == DIRECTION_UP_LEFT || dir == DIRECTION_UP_RIGHT) {
								is_shooting = TRUE;
							}
						}
						// Team 1 (P2, nord) attacca verso Sud
						else if (i == 0 && GameMode == GAMEMODE_P1_VS_P2 && Carrier->ly > 256 && Field.ly == (FIELD_HEIGHT - 192)) {
							if (dir == DIRECTION_DOWN || dir == DIRECTION_DOWN_LEFT || dir == DIRECTION_DOWN_RIGHT) {
								is_shooting = TRUE;
							}
						}

						if (is_shooting) {
							action_taken = TRUE;
							Ball->anim = 0; Ball->count = 0;
							g_pass_receiver = 0xFF; 
							
							g_pass_start_x = Carrier->lx;
							g_pass_start_y = Carrier->ly;
							
							g_pass_target_x = g_h_arrow_x; // Direzione della freccia
							g_pass_target_y = (i == 1) ? 16 : 496; // Dentro la porta
							
							u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
							u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
							
							g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente e veloce
							if (g_pass_max_frames < 10) g_pass_max_frames = 10;
							if (g_pass_max_frames > 25) g_pass_max_frames = 25;
							g_pass_max_height = 2; // Tiro rasoterra e limitato
							
							Ball->anim = 5;
							CallFnc_VOID(SEG_EVENTS, EventBallKicked);
						} else {
							// Se non si tira, si passa
							u8 receiver = receivers[i];
						
							if (receiver != 0xFF) {
								// === PASSAGGIO DIRETTO AL DESTINATARIO - FORZA PASSAGGIO ===
								Ball->anim = 0; Ball->count = 0;
								
								g_pass_receiver = receiver;
								g_pass_start_x = Carrier->lx;
								g_pass_start_y = Carrier->ly;
								g_pass_target_x = SwSprite[receiver].lx;
								g_pass_target_y = SwSprite[receiver].ly;
								
								u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
								u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
								g_pass_max_frames = (r_dx + r_dy) / 5; // Velocità di volo passaggi
								if (g_pass_max_frames < 8) g_pass_max_frames = 8;
								if (g_pass_max_frames > 34) g_pass_max_frames = 34;
								g_pass_max_height = 7; // Passaggio normale alto
								
								Ball->anim = 5; // Flag per passaggio
								CallFnc_VOID(SEG_EVENTS, EventBallKicked);
								action_taken = TRUE;
							}
						}
					}
					
					if (!action_taken && Ball->anim == 0 && (Ball->dx != c_dx || Ball->dy != c_dy)) {
						// Cambio direzione istantaneo e sicuro (senza perdere mai il controllo)
						i8 off_x = 0; i8 off_y = 6;
						if (c_dx > 0) off_x = 9; else if (c_dx < 0) off_x = -9;
						if (c_dy > 0) off_y = 8; else if (c_dy < 0) off_y = -3;
						
						Ball->dx = c_dx;
						Ball->dy = c_dy;
						Ball->lx = (u8)(Carrier->lx + off_x);
						Ball->ly = (Carrier->ly + off_y) & 511;
					} else if (!action_taken && Ball->anim == 0) {
						// Stessa direzione: ricalibra la palla e dai un calcetto in avanti
						i8 off_x = 0; i8 off_y = 6;
						if (c_dx > 0) off_x = 9; else if (c_dx < 0) off_x = -9;
						if (c_dy > 0) off_y = 8; else if (c_dy < 0) off_y = -3;
						
						Ball->lx = (u8)(Carrier->lx + off_x);
						Ball->ly = (Carrier->ly + off_y) & 511;
						
						if (Carrier->dx != 0 || Carrier->dy != 0) {
							Ball->anim = 3; // Colpetto in avanti medio-corto
							CallFnc_VOID(SEG_EVENTS, EventBallKicked);
						}
					}
				} else {
					// Non ha la palla: innesco della scivolata su comando!
					if (trigger_pressed && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF && Carrier->count == 0 && RestartType == 0) {
						bool opponent_has_ball = FALSE;
						if (LastTouchPlayer != 0xFF && Ball->anim < 5) {
							u16 opp_bx = (SwSprite[LastTouchPlayer].lx > Ball->lx) ? (SwSprite[LastTouchPlayer].lx - Ball->lx) : (Ball->lx - SwSprite[LastTouchPlayer].lx);
							u16 opp_by = (SwSprite[LastTouchPlayer].ly > Ball->ly) ? (SwSprite[LastTouchPlayer].ly - Ball->ly) : (Ball->ly - SwSprite[LastTouchPlayer].ly);
							if (opp_bx <= 16 && opp_by <= 16) opponent_has_ball = TRUE;
						}
						
						if (opponent_has_ball) {
							Carrier->count = 12; // 12 frames di scivolata
							Carrier->dx = (Ball->lx > Carrier->lx) ? 4 : -4;
							if (dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT) Carrier->dx = -4;
							else if (dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) Carrier->dx = 4;
							
							Carrier->dy = (Ball->ly > Carrier->ly) ? 3 : -3;
							if (dir == DIRECTION_UP || dir == DIRECTION_UP_LEFT || dir == DIRECTION_UP_RIGHT) Carrier->dy = -3;
							else if (dir == DIRECTION_DOWN || dir == DIRECTION_DOWN_LEFT || dir == DIRECTION_DOWN_RIGHT) Carrier->dy = 3;
						}
					}
				}
			}

		// 3. Esegui AI per tutti gli altri giocatori (movimento e tattica senza palla)
		for (u8 i = 0; i < 14; i++) {
			CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
		}

		// --- AGGIORNAMENTO ARBITRO ---
		struct ObjectInfo* Referee = &SwSprite[26];

		// L'arbitro segue la palla mantenendosi a debita distanza (in diagonale)
		u16 target_x = (Ball->lx < 128) ? ((u16)Ball->lx + 40) : ((u16)Ball->lx - 40);
		u16 target_y = (Ball->ly < 256) ? (Ball->ly + 48) : (Ball->ly - 48);

		// Limiti per non uscire troppo dal campo
		if (target_x < 16) target_x = 16;
		if (target_x > 224) target_x = 224;
		if (target_y < 24) target_y = 24;
		if (target_y > 488) target_y = 488;

		// Movimento graduale verso il target
		i8 ref_dx = 0;
		i8 ref_dy = 0;
		u8 speed = 1; // L'arbitro si muove più lentamente

		if (target_x > Referee->lx + speed) ref_dx = speed;
		else if (target_x < Referee->lx - speed) ref_dx = -speed;

		if (target_y > Referee->ly + speed) ref_dy = speed;
		else if (target_y < Referee->ly - speed) ref_dy = -speed;

		Referee->lx += ref_dx;
		Referee->ly += ref_dy;

		// Sguardo sempre orientato verso la palla
		i8 look_dx = (Ball->lx > Referee->lx) ? 1 : ((Ball->lx < Referee->lx) ? -1 : 0);
		i8 look_dy = (Ball->ly > Referee->ly) ? 1 : ((Ball->ly < Referee->ly) ? -1 : 0);
		if (look_dx == 0 && look_dy == 0) look_dy = 1; // Guarda in basso di default

		// Animazione
		if (ref_dx != 0 || ref_dy != 0) {
			Referee->anim++;
			const u8 walk_seq[4] = {0, 1, 2, 1};
			// Usa la direzione dello sguardo per l'animazione, così l'arbitro "scivola" guardando l'azione
			Referee->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, 26, look_dx, look_dy, walk_seq[(Referee->anim / 3) % 4]);
		} else {
			// Posa ferma orientata verso la palla
			Referee->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, 26, look_dx, look_dy);
		}
	} else {
		SwSprite[24].ly = 1000; // Nascondimento assoluto
		SwSprite[25].ly = 1000; // Nascondimento assoluto
		CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_3, UpdateGameState_Restarts, game_state, wait_secs, start_sec, target_ly);
	}
}