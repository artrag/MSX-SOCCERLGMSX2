// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 12 - Game State Restarts
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

void UpdateGameState_Restarts(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
{
	if (*game_state == 4) {
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
					SwSprite[14].frame = SPR_BALL_SIZE_1;
					
					Field.ly = target_ly; // Centra campo immediatamente per 2T
					Field.dy = 0; // Impedisce ad AddLines di far scorrere lo sfondo non esistente
					
					// Allinea istantaneamente l'hardware VDP ed evita lo schermo nero
					ScoreBoardLeft.y0 = ScoreBoardLeft.y1 = ScoreBoardLeft.y2 = Field.ly;
					ScoreBoardRight.y0 = ScoreBoardRight.y1 = ScoreBoardRight.y2 = Field.ly;
					VDP_SetVerticalOffset(Field.ly & 255);
					
					CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
					for (u8 i = 0; i < 14; i++) {
						SwSprite[i].lx = SwSprite[i].tx;
						SwSprite[i].ly = SwSprite[i].ty;
						SwSprite[i].dx = 0; SwSprite[i].dy = 0;
					}
					
					// Ridisegno di background con rinfresco sprite per evitare sparizioni
					bool ball_fg = CallFnc_BOOL(SEG_DRAW, IsBallForeground);
					for (u16 page = 0; page <= 512; page += 256) {
						CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, page);
						if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
						for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
						if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
						for (u8 i=15; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
					}
					
					// Aggiorna la storia del triplo buffer per evitare che gli sprite spariscano
					for (u8 i = 0; i < NumSprite; i++) {
						SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
						SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
					}
					
					// Ridisegna i tabelloni su tutte le pagine dopo il wipe di PlotField
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
					
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
					
					if (ScoreTeam1 != ScoreTeam2) {
						*game_state = 10; // Vittoria: Esultanza e Uscita
						*wait_secs = 3;
						*start_sec = Frms;
					} else {
						*game_state = 11; // Pareggio: Setup Rigori
						CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_PENALTIES);
						
						// Assegna posizioni "disordinate ma vicine" a centrocampo per i rigori
						for(u8 i=0; i<14; i++) {
							u8 role = (i < 7) ? i : i - 7;
							u8 t_cx = (i < 7) ? 64 : 192;
							SwSprite[i].tx = t_cx + (role % 3) * 16 - 16;
							SwSprite[i].ty = 256 + (role / 3) * 16 - 8;
						}
						// Arbitro in disparte a guardare
						SwSprite[26].tx = 128;
						SwSprite[26].ty = 210;
						
						// Nascondi la palla
						SwSprite[14].tx = 0; SwSprite[14].ty = 1000;
						SwSprite[14].dx = 0; SwSprite[14].dy = 0;
						SwSprite[14].lx = 0; SwSprite[14].ly = 1000;
					}
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
					
					if (RestartType == RESTART_THROWIN) {
						CallFnc_VOID(SEG_GAMESTATE_2, AssignThrowInTargets);
					} else if (RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
						CallFnc_VOID(SEG_GAMESTATE_2, AssignGoalKickTargets);
					} else if (RestartType == RESTART_CORNERKICK) {
						CallFnc_VOID(SEG_GAMESTATE_2, AssignCornerKickTargets);
					} else {
						// Ritorno provvisorio a centrocampo per Goal o KickOff
						SwSprite[14].lx = BALL_START_X;
						SwSprite[14].ly = BALL_START_Y;
						SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
						SwSprite[14].frame = SPR_BALL_SIZE_1;
						
						if (RestartType != RESTART_GOAL) Field.ly = target_ly; // Teletrasporta solo se NON è un Goal
						CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
					}
					
					// Centra la telecamera e pulisce il focus
					if (RestartType == RESTART_THROWIN || RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
						u16 cam_target_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : SwSprite[14].ly;
						if (cam_target_y < 96) Field.ly = 0;
						else if (cam_target_y > 512 - 192) Field.ly = 512 - 192;
						else Field.ly = cam_target_y - 96;
						
						T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;
					}
					
					Field.dy = 0;
					
					// Ridisegno di background con rinfresco sprite per evitare sparizioni
					bool ball_fg = CallFnc_BOOL(SEG_DRAW, IsBallForeground);
					for (u16 page = 0; page <= 512; page += 256) {
						CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, page);
						if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
						for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
						if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
						for (u8 i=15; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
					}
					
					// Aggiorna la storia del triplo buffer per evitare che gli sprite vecchi corrompano il campo
					for (u8 i = 0; i < NumSprite; i++) {
						SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
						SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
					}
					
					// Ripristina l'interfaccia
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
					CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);

					*game_state = 2; // Riparte la coreografia di schieramento
					if (RestartType == RESTART_GOAL) RestartType = RESTART_KICKOFF_SCROLL;
				}
			}
			*start_sec = Frms;
		}
	} else if (*game_state == 9) {
		// --- FESTEGGIAMENTI GOAL ---
		if (*wait_secs > 0) {
			if (*start_sec < Frms) { // Frms wrapped from 1 to 60
				(*wait_secs)--;
				if (*wait_secs == 0) {
					*game_state = 6; // Passa al reset del campo
					*wait_secs = 1;  // Pausa minima per permettere il ridisegno pulito
					*start_sec = 0;  // FIX: Questo valore forza lo Stato 6 a triggerare istantaneamente il prossimo frame (No lag)
					return;
				}
			}
			*start_sec = Frms;
		}

		u8 scoring_team = (KickOffTeam == TEAM_1) ? TEAM_2 : TEAM_1;

		for (u8 i = 0; i < 14; i++) {
			u8 team = (i < 7) ? TEAM_1 : TEAM_2;
			struct ObjectInfo* p = &SwSprite[i];
			
			if (team == scoring_team && i != 0 && i != 7) { 
				// Movimento circolare per i festeggiamenti
				u8 phase = ((Frms / 6) + i * 3) % 8; // Velocità e sfasamento
				i8 dx = 0, dy = 0;
				switch(phase) {
					case 0: dx =  0; dy = -2; break; // N
					case 1: dx =  2; dy = -2; break; // NE
					case 2: dx =  2; dy =  0; break; // E
					case 3: dx =  2; dy =  2; break; // SE
					case 4: dx =  0; dy =  2; break; // S
					case 5: dx = -2; dy =  2; break; // SW
					case 6: dx = -2; dy =  0; break; // W
					case 7: dx = -2; dy = -2; break; // NW
				}

				// Mantieni i giocatori all'interno dei limiti dello schermo/campo
				i16 next_x = p->lx + dx;
				i16 next_y = p->ly + dy;
				if (next_x < 32 && dx < 0) dx = 2;
				if (next_x > 224 && dx > 0) dx = -2;
				if (next_y < Field.ly + 32 && dy < 0) dy = 2;
				if (next_y > Field.ly + 192 - 32 && dy > 0) dy = -2;

				p->dx = dx;
				p->dy = dy;
				p->lx += dx;
				p->ly += dy;
				p->anim++;

				const u8 walk_seq[4] = {0, 1, 2, 1};
				p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
			} else {
				// Giocatori sconfitti fermi guardano la palla triste a terra
				i8 look_dx = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
				i8 look_dy = (SwSprite[14].ly > p->ly) ? 1 : ((SwSprite[14].ly < p->ly) ? -1 : 0);
				if (look_dx == 0 && look_dy == 0) look_dy = 1;
				p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, look_dx, look_dy);
			}
		}

		// Aggiorniamo anche lo sguardo dell'arbitro
		struct ObjectInfo* ref = &SwSprite[26];
		i8 look_dx = (SwSprite[14].lx > ref->lx) ? 1 : ((SwSprite[14].lx < ref->lx) ? -1 : 0);
		i8 look_dy = (SwSprite[14].ly > ref->ly) ? 1 : ((SwSprite[14].ly < ref->ly) ? -1 : 0);
		if (look_dx == 0 && look_dy == 0) look_dy = 1;
		ref->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, 26, look_dx, look_dy);
		return;
	} else if (*game_state == 10) {
		// --- FESTEGGIAMENTI FINE PARTITA E USCITA DAL CAMPO ---
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

		i8 exit_dy = (Field.ly < 256) ? -1 : 1; // Escono verso il bordo schermo più vicino

		for (u8 i = 0; i <= 26; i++) {
			if (i >= 15 && i < 26) continue; // Salta UI e Frecce
			
			struct ObjectInfo* p = &SwSprite[i];
			u8 team = (i < 7) ? TEAM_1 : ((i < 14) ? TEAM_2 : 0xFF);
			
			if (team == winning_team && i != 0 && i != 7) {
				// Movimento circolare per i festeggiamenti
				u8 phase = ((Frms / 6) + i * 3) % 8;
				i8 dx = 0, dy = 0;
				switch(phase) {
					case 0: dx =  0; dy = -2; break; case 1: dx =  2; dy = -2; break;
					case 2: dx =  2; dy =  0; break; case 3: dx =  2; dy =  2; break;
					case 4: dx =  0; dy =  2; break; case 5: dx = -2; dy =  2; break;
					case 6: dx = -2; dy =  0; break; case 7: dx = -2; dy = -2; break;
				}
				i16 next_x = p->lx + dx; i16 next_y = p->ly + dy;
				if (next_x < 32 && dx < 0) dx = 2;   if (next_x > 224 && dx > 0) dx = -2;
				if (next_y < Field.ly + 32 && dy < 0) dy = 2; if (next_y > Field.ly + 192 - 32 && dy > 0) dy = -2;

				p->dx = dx; p->dy = dy; p->lx += dx; p->ly += dy; p->anim++;
				const u8 walk_seq[4] = {0, 1, 2, 1};
				p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
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
						p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
					}
				} else {
					p->ly = 1000; // Nascondi del tutto quando fuori visuale
				}
			}
			else if (i == 0 || i == 7) {
				// Il portiere vincente esulta sul posto guardando a sud
				p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, 0, 1);
			}
		}

		// Se il tempo della festa è scaduto e i perdenti sono spariti, va al Menu
		if (time_up && all_offscreen) {
			CallFnc_VOID(SEG_MENU, ShowMenu);
		}
		return;
	} else if (*game_state == 11) {
		// --- PAREGGIO E SETUP RIGORI ---
		bool all_in_position = TRUE;

		// Rientro della telecamera verso centrocampo
		if (Field.ly > 156 + 3) {
			Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
		} else if (Field.ly + 3 < 156) {
			Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE;
		} else {
			Field.dy = 0; Field.ly = 156;
		}

		// Muovi giocatori e arbitro verso le postazioni dei rigori
		for (u8 i = 0; i <= 26; i++) {
			if (i >= 14 && i < 26) continue; // Salta UI e Palla
			struct ObjectInfo* p = &SwSprite[i];
			if (p->lx != p->tx || p->ly != p->ty) {
				all_in_position = FALSE;
				if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx); else if (p->tx < p->lx) p->dx = (p->lx - p->tx >= 2) ? -2 : -(p->lx - p->tx); else p->dx = 0;
				if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly); else if (p->ty < p->ly) p->dy = (p->ly - p->ty >= 2) ? -2 : -(p->ly - p->ty); else p->dy = 0;
				p->lx += p->dx; p->ly += p->dy; p->anim++;
				const u8 walk_seq[4] = {0, 1, 2, 1};
				p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
			} else {
				p->dx = 0; p->dy = 0;
				p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, 0, 1);
			}
		}
		if (all_in_position) *game_state = 12; // Va in Loop infinito dei Rigori
		return;
	} else if (*game_state == 12) {
		return; // CICLO INFINITO IN ATTESA DEI RIGORI
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
			u8 dir = g_player_input[throw_team].direction;
			if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
			g_last_input_dir = dir;

			bool do_throw = g_player_input[throw_team].trigger_pressed;

			if (*wait_secs == 0) do_throw = TRUE; // Lancio automatico scaduto il tempo

			if (do_throw) {
				if (RestartType == RESTART_THROWIN) {
					CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
				} else {
					CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteCornerKick, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
				}
				g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
				*game_state = 3; TimerEnabled = TRUE;
			}
		} else {
			if (*wait_secs == 0) {
				u8 target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
				if (RestartType == RESTART_THROWIN) {
					CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, target);
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
					
					CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteCornerKick, g_thrower_id, target);
				}
				g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
				*game_state = 3; TimerEnabled = TRUE;
			}
		}
		return;
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
		return;
	}
}