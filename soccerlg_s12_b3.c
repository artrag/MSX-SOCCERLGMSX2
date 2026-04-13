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
					
					if (RestartType == RESTART_THROWIN) {
						CallFnc_VOID(SEG_GAMESTATE_2, AssignThrowInTargets);
					} else if (RestartType == RESTART_GOALKICK) {
						CallFnc_VOID(SEG_GAMESTATE_2, AssignGoalKickTargets);
					} else {
						// Ritorno provvisorio a centrocampo per Goal o KickOff
						SwSprite[14].lx = BALL_START_X;
						SwSprite[14].ly = BALL_START_Y;
						SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
						
						Field.ly = target_ly; // Teletrasporta telecamera al centro
						CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
					}
					
					// Centra la telecamera e pulisce il focus
					if (RestartType == RESTART_THROWIN || RestartType == RESTART_GOALKICK) {
						if (SwSprite[14].ly < 96) Field.ly = 0;
						else if (SwSprite[14].ly > 512 - 192) Field.ly = 512 - 192;
						else Field.ly = SwSprite[14].ly - 96;
						
						T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;
					}
					
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
		
		u16 target_gk_x = Ball->lx - (dir_x * 6);
		u16 target_gk_y = Ball->ly - (dir_y * 8);

		if (*wait_secs == 0) {
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
				u16 min_y = (gk == 0) ? 92 : 276;
				u16 max_y = (gk == 0) ? 236 : 420;
				
				u16 r_dy = min_y + ((Frms * 7) % (max_y - min_y + 1));
				u16 r_dx = 55 + ((Frms * 11) % (201 - 55 + 1));
				
				g_pass_start_x = Ball->lx;
				g_pass_start_y = Ball->ly;
				g_pass_target_x = r_dx;
				g_pass_target_y = r_dy;
				
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
				
				GK->frame = (gk == 0) ? SPR_GK_PLAYER_SHOT_TO_SOUTH : SPR_GK_PLAYER_SHOT_TO_NORTH;
				
				*game_state = 3; // Riparte il gioco istantaneamente
				TimerEnabled = TRUE;
			}
		} else {
			// Durante l'attesa iniziale (1 secondo), il portiere sta fermo a guardare diagonalmente la palla
			i8 look_dx = (Ball->lx > GK->lx) ? 1 : ((Ball->lx < GK->lx) ? -1 : 0);
			i8 look_dy = (Ball->ly > GK->ly) ? 1 : ((Ball->ly < GK->ly) ? -1 : 0);
			if (look_dx == 0 && look_dy == 0) look_dy = (gk == 0) ? 1 : -1;
			GK->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, gk, look_dx, look_dy);
		}
		return;
	}
}