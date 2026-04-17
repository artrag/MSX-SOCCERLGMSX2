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