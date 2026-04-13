// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 9 - Game State functions 1
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

static i8 g_last_dx[2] = {0, 0};
static i8 g_last_dy[2] = {1, -1};
static u8 g_prev_trigger[2] = {0, 0}; // Traccia stato precedente del trigger

void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
{
	if (*game_state == 0) {
		if (Field.ly >= target_ly) {
			Field.dy = 0; // Ferma lo scorrimento
			*game_state = 1;
			*wait_secs = 2; 
			*start_sec = Frms;
		} else {
			Field.ly += Field.dy;
			// Nello scorrimento iniziale non serve il rimbalzo
			// se si volesse usare: if ((Field.ly+192>=FIELD_HEIGHT)||(Field.ly<=0)) Field.dy =- Field.dy;
		}
	} else if (*game_state == 1) {
		if (*start_sec < Frms) { // Frms wrapped from 1 to 60
			(*wait_secs)--;
			if (*wait_secs == 0) {
				*game_state = 2; // Passa al posizionamento
				CallFnc_VOID(SEG_EVENTS, EventPlayerFirstPresentationStarted);
					CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
			}
		}
		*start_sec = Frms;
	} else if (*game_state == 2) {
		bool all_in_position = TRUE;
		for (u8 i = 0; i < 14; i++) {
			struct ObjectInfo* p = &SwSprite[i];
			if (p->lx != p->tx || p->ly != p->ty) {
				all_in_position = FALSE;
				
				if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
				else if (p->tx < p->lx) p->dx = (p->lx - p->tx >= 2) ? -2 : -(p->lx - p->tx);
				else p->dx = 0;
				
				if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
				else if (p->ty < p->ly) p->dy = (p->ly - p->ty >= 2) ? -2 : -(p->ly - p->ty);
				else p->dy = 0;
				
				p->lx += p->dx;
				p->ly += p->dy;
				p->anim++;
				
				const u8 walk_seq[4] = {0, 1, 2, 1}; // 1->2->3->2->1...
				p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
			} else {
				i8 dir_x = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
				i8 dir_y = (i < 7) ? 1 : -1; // Team 1 guarda sempre a Sud, Team 2 sempre a Nord
				p->dx = 0; p->dy = 0;
				
				if (RestartType == 1 && i == g_thrower_id) {
					if (i < 7) {
						p->frame = (RestartSideX < 128) ? SPR_T1_PLAYER_THROWIN_FROM_WEST_1 : SPR_T1_PLAYER_THROWIN_FROM_EAST_1;
					} else {
						p->frame = (RestartSideX < 128) ? SPR_T2_PLAYER_THROWIN_FROM_WEST_1 : SPR_T2_PLAYER_THROWIN_FROM_EAST_1;
					}
				} else {
					p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, dir_x, dir_y, 0); // Posa ferma (0) verso la palla
				}
			}
		}
		if (all_in_position) {
			if (RestartType == 1) {
				*game_state = 7;
				u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
				bool is_human = FALSE;
				if (throw_team == TEAM_2) is_human = TRUE;
				else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human = TRUE;
				
				*wait_secs = is_human ? 5 : 1; // 5 secondi per il giocatore, 1 per la CPU
				*start_sec = Frms;
				return;
			}
			*game_state = 3;
			
			// Assegna Carrier e Receiver per il Kickoff
			if (KickOffTeam == TEAM_1) {
				T1_Carrier = 3; // Giocatore a sinistra della palla
				T1_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T1_Carrier, 4, 0, 1); // Ignora il compagno (4)
				T2_Carrier = T2_Receiver = 0xFF; // Difesa senza palla
			} else {
				T2_Carrier = 11; // Giocatore a destra della palla
				T2_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T2_Carrier, 10, 0, -1); // Ignora il compagno (10)
				T1_Carrier = T1_Receiver = 0xFF; // Difesa senza palla
			}
			
			LastTouchTeam = KickOffTeam; // Assegna possesso fittizio al team che batte per far allargare i compagni
			
			*wait_secs = 2;
			*start_sec = Frms;
			CallFnc_VOID(SEG_EVENTS, EventKickOffReady);
		}
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
			return; // Ferma l'IA e il gioco finché la scritta non sparisce
		}

		// --- TELECAMERA E LIMITI ---
		CallFnc_VOID(SEG_FIELD, UpdateFieldCamera);
		CallFnc_VOID_3PTR(SEG_FIELD, CheckFieldBoundaries, game_state, wait_secs, start_sec);

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
		if (min_dist_t2 <= 24) T2_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T2_Carrier, 0xFF, g_last_dx[1], g_last_dy[1]);
		else T2_Receiver = 0xFF;
		
		if (GameMode == GAMEMODE_P1_VS_P2) {
			if (min_dist_t1 <= 24) T1_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T1_Carrier, 0xFF, g_last_dx[0], g_last_dy[0]);
			else T1_Receiver = 0xFF;
		}

		// --- ANIMAZIONE DRIBBLING PALLA E PORTATORE ---
		
		// 1. Fisica della palla
		if (Ball->anim > 0) {
			if (Ball->anim == 5) {
				// === PASSAGGIO CON TRAIETTORIA INTERPOLATA E EFFETTO DI VOLO ===
				u8 progress = Ball->count; // 0 = inizio da tiratore, max = fine verso ricevitore
				u8 half_frame = g_pass_max_frames >> 1; // metà del percorso
				
				// Interpolazione lineare della posizione XY verso il destinatario
				if (progress == 0) {
					Ball->lx = g_pass_start_x;
					Ball->ly = g_pass_start_y;
				} else if (progress >= g_pass_max_frames) {
					Ball->lx = g_pass_target_x;
					Ball->ly = g_pass_target_y;
				} else {
					// Calcola la posizione interpolata: start + (target - start) * progress / max
					i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
					i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
					Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
					Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
				}
				
				// Effetto di volo: scala da 1 a 8 (andata) e 8 a 1 (ritorno)
				u8 scale;
				if (progress <= half_frame) {
					// Prima metà: scale da 1 a 8
					scale = 1 + (progress * 7) / half_frame;
				} else {
					// Seconda metà: scale da 8 a 1
					u8 progress_down = progress - half_frame;
					scale = 8 - (progress_down * 7) / (g_pass_max_frames - half_frame);
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
		u8 dirs[2] = { DIRECTION_NONE, DIRECTION_NONE };
		bool triggers[2] = { FALSE, FALSE };
		
		if (T2_Carrier != 0xFF) {
			dirs[1] = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, 0); // P1 controlla Team 2
			u8 cur_trig = CallFnc_U8_P1(SEG_INPUT, IsTeamJoystickTriggerPressed, 0);
			if (cur_trig != 0 && g_prev_trigger[1] == 0) triggers[1] = TRUE;
			g_prev_trigger[1] = cur_trig;
		}
		if (T1_Carrier != 0xFF && GameMode == GAMEMODE_P1_VS_P2) {
			dirs[0] = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, 1); // P2 controlla Team 1
			u8 cur_trig = CallFnc_U8_P1(SEG_INPUT, IsTeamJoystickTriggerPressed, 1);
			if (cur_trig != 0 && g_prev_trigger[0] == 0) triggers[0] = TRUE;
			g_prev_trigger[0] = cur_trig;
		}

		for (u8 i = 0; i < 2; i++) {
			u8 carrier = carriers[i];
			if (carrier == 0xFF) continue;
			
			struct ObjectInfo* Carrier = &SwSprite[carrier];
			
			Carrier->dx = 0; Carrier->dy = 0;
			switch(dirs[i]) {
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
				
				Carrier->lx += Carrier->dx;
				Carrier->ly += Carrier->dy;
				
				Carrier->anim++;
				const u8 walk_seq[4] = {0, 1, 2, 1}; 
				Carrier->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
			} else {
				// Se è fermo, usa l'ultima direzione di movimento per la posa di attesa
				Carrier->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, carrier, g_last_dx[i], g_last_dy[i]);
			}
			
			// Calcolo della distanza dalla palla (SEMPRE, sia che si muova che fermo)
			u8 dx_diff = (u8)(Carrier->lx - Ball->lx);
			u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
			u16 dy_diff = (u16)(Carrier->ly - Ball->ly) & 511;
			u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
			
			// Se il portatore tocca la palla (hitbox 24 pixel per sicurezza assoluta arcade)
			if (dist_x <= 24 && dist_y <= 24) {
					// Controllo Fuorigioco al momento della ricezione
					bool offside = FALSE;
					if (carrier < 7 && LastTouchTeam == TEAM_1 && LastTouchPlayer != carrier) {
						u16 offside_line = (SwSprite[8].ly < SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
						if (Carrier->ly > offside_line + 8 && Carrier->ly > 256) offside = TRUE;
					} else if (carrier >= 7 && LastTouchTeam == TEAM_2 && LastTouchPlayer != carrier) {
						u16 offside_line = (SwSprite[1].ly > SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
						if (Carrier->ly < offside_line - 8 && Carrier->ly < 256) offside = TRUE;
					}
					if (offside) {
						*game_state = 6; // Ferma il gioco
						RestartType = 0; // Temporaneo fallback a KickOff per la ripresa
						CallFnc_VOID(SEG_EVENTS, EventOffside);
						Ball->anim = Ball->dx = Ball->dy = 0;
						T1_Carrier = T2_Carrier = 0xFF;
						TimerEnabled = FALSE;
						*wait_secs = 2; *start_sec = Frms;
						continue; // Salta il controllo palla
					}

					LastTouchTeam = (carrier < 7) ? TEAM_1 : TEAM_2;
					LastTouchPlayer = carrier;
					
					// Ricalcola il ricevitore adesso che il portatore ha la palla
					i8 c_dx = (Carrier->dx > 0) ? 1 : ((Carrier->dx < 0) ? -1 : 0);
					i8 c_dy = (Carrier->dy > 0) ? 1 : ((Carrier->dy < 0) ? -1 : 0);
					receivers[i] = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, carrier, 0xFF, c_dx, c_dy);
					
					// AZIONE DEL GIOCATORE: Passaggio o Dribbling
					if (triggers[i]) {
						// Il giocatore ha premuto il trigger -> SEMPRE tenta il passaggio se c'è un ricevitore
						u8 receiver = receivers[i];
						
						if (receiver != 0xFF) {
							// === PASSAGGIO DIRETTO AL DESTINATARIO - FORZA PASSAGGIO ===
							// Resetta lo stato della palla prima di lanciare il passaggio
							Ball->anim = 0;
							Ball->count = 0;
							
							g_pass_start_x = Carrier->lx;
							g_pass_start_y = Carrier->ly;
							g_pass_target_x = SwSprite[receiver].lx;
							g_pass_target_y = SwSprite[receiver].ly;
							g_pass_max_frames = 10; // Durata del passaggio in frame
							
							Ball->lx = g_pass_start_x;
							Ball->ly = g_pass_start_y;
							Ball->anim = 5; // Flag per passaggio
							Ball->count = 0; // Inizio dell'interpolazione
							Ball->dx = Ball->dy = 0; // Non usato nel passaggio, ma azzera lo stato
							CallFnc_VOID(SEG_EVENTS, EventBallKicked);
						}
					} else if (Ball->anim == 0 && (Ball->dx != c_dx || Ball->dy != c_dy)) {
						// Cambio direzione: riposiziona la palla davanti ruotandola
						u8 cur_dist = (u8)((dist_x > dist_y) ? dist_x : dist_y);
						if (cur_dist > 12) cur_dist = 12; // Evita di "spararla" troppo lontano
						
						i8 off_x = 0; i8 off_y = 4;
						if (c_dx > 0) off_x = 6 + cur_dist; else if (c_dx < 0) off_x = -6 - cur_dist;
						if (c_dy > 0) off_y = 6 + cur_dist; else if (c_dy < 0) off_y = 2 - cur_dist;
						
						Ball->dx = c_dx;
						Ball->dy = c_dy;
						Ball->lx = (u8)(Carrier->lx + off_x);
						Ball->ly = (Carrier->ly + off_y) & 511;
					} else if (Ball->anim == 0) {
						// Stessa direzione: se la palla è ai piedi, dalle un calcetto
						i8 off_x = 0; i8 off_y = 4;
						if (c_dx > 0) off_x = 6; else if (c_dx < 0) off_x = -6;
						if (c_dy > 0) off_y = 6; else if (c_dy < 0) off_y = 2;
						
						Ball->lx = (u8)(Carrier->lx + off_x);
						Ball->ly = (Carrier->ly + off_y) & 511;
						Ball->anim = 4; 
						CallFnc_VOID(SEG_EVENTS, EventBallKicked);
					}
				}
		}

		// 3. Esegui AI per tutti gli altri giocatori (movimento e tattica senza palla)
		for (u8 i = 0; i < 14; i++) {
			CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
		}
	} else if (*game_state == 4) {
		// Pausa di fine primo tempo
		if (*wait_secs > 0) {
			if (*start_sec < Frms) { // Frms wrapped from 1 to 60
				(*wait_secs)--;
				if (*wait_secs == 0) {
					CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
					
					// Inizia il secondo tempo
					Half = 2;
					Mins = HALF_TIME_DURATION; Secs = 0;
					KickOffTeam = TEAM_1; // Secondo tempo batte il Team 1
					TimerEnabled = FALSE; // Congela il timer fino al prossimo tocco
					
					// Reset palla
					SwSprite[14].lx = BALL_START_X;
					SwSprite[14].ly = BALL_START_Y;
					SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
					
					Field.ly = target_ly; // Centra campo immediatamente per 2T
					Field.dy = 0; // Impedisce ad AddLines di far scorrere lo sfondo non esistente
					
					// Ridisegno di background pesante per il salto temporale
					CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
					CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
					CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
					
					// Ridisegna i tabelloni su tutte le pagine dopo il wipe di PlotField
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
					
					CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
					for (u8 i = 0; i < 14; i++) {
						SwSprite[i].lx = SwSprite[i].tx;
						SwSprite[i].ly = SwSprite[i].ty;
						SwSprite[i].dx = 0; SwSprite[i].dy = 0;
					}
					
					*game_state = 2;
				}
			}
			*start_sec = Frms;
		}
	} else if (*game_state == 5) {
		// Pausa di fine partita
		if (*wait_secs > 0) {
			if (*start_sec < Frms) { // Frms wrapped from 1 to 60
				(*wait_secs)--;
				if (*wait_secs == 0) {
					CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
					CallFnc_VOID(SEG_EVENTS, EventTimeUp);
				}
			}
			*start_sec = Frms;
		}
	} else if (*game_state == 6) {
		// Pausa per palla fuori campo
		if (*wait_secs > 0) {
			if (*start_sec < Frms) { // Frms wrapped from 1 to 60
				(*wait_secs)--;
				if (*wait_secs == 0) {
					CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
					
					if (RestartType == 1) {
						CallFnc_VOID(SEG_GAMESTATE_2, AssignThrowInTargets);
						
						if (SwSprite[14].ly < 96) Field.ly = 0;
						else if (SwSprite[14].ly > 512 - 192) Field.ly = 512 - 192;
						else Field.ly = SwSprite[14].ly - 96;
						
						Field.dy = 0;
						CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
						CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
						CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
						
						// Ripristina l'interfaccia 
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
						
						T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Disabilita Focus visivo camminata
					} else {
						// Ritorno provvisorio a centrocampo per poter continuare a testare
						SwSprite[14].lx = BALL_START_X;
						SwSprite[14].ly = BALL_START_Y;
						SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
						
						Field.ly = target_ly; // Teletrasporta telecamera al centro
						Field.dy = 0;
						CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
						CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
						CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
						
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
						CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
						
						CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
					}
					*game_state = 2; // Riparte la coreografia di schieramento
				}
			}
			*start_sec = Frms;
		}
	} else if (*game_state == 7) {
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
			u8 dir = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, joy_port);
			static u8 last_throw_dir = DIRECTION_NONE;
			if (dir != DIRECTION_NONE && last_throw_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
			last_throw_dir = dir;

			u8 cur_trig = CallFnc_U8_P1(SEG_INPUT, IsTeamJoystickTriggerPressed, joy_port);
			bool do_throw = FALSE;
			if (cur_trig != 0 && g_prev_trigger[joy_port] == 0) do_throw = TRUE;
			g_prev_trigger[joy_port] = cur_trig;

			if (*wait_secs == 0) do_throw = TRUE; // Lancio automatico scaduto il tempo

			if (do_throw) {
				CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
				*game_state = 3; TimerEnabled = TRUE;
			}
		} else {
			if (*wait_secs == 0) {
				u8 target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
				CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, target);
				*game_state = 3; TimerEnabled = TRUE;
			}
		}
		return;
	}
}