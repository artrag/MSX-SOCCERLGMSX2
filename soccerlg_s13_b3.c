// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 13 - Game State functions Init (States 0, 1, 2)
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

void UpdateGameState_Init(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
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
		// Nessun giocatore deve avere il focus durante le animazioni di riposizionamento passivo
		T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;

		bool all_in_position = TRUE;

		// Rientro morbido della telecamera verso centrocampo se era un Goal
		if (RestartType == RESTART_KICKOFF_SCROLL) {
			if (Field.ly > target_ly + 3) {
				Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
			} else if (Field.ly + 3 < target_ly) {
				Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE;
			} else if (Field.ly != target_ly) {
				Field.dy = (i8)(target_ly - Field.ly); Field.ly = target_ly; all_in_position = FALSE;
			} else {
				Field.dy = 0;
			}
		}

		// Imposta dinamicamente il target dell'arbitro in base alla posizione della palla
		u16 ball_ref_x = (RestartType == RESTART_GKSAVE || RestartType == RESTART_OFFSIDE) ? RestartSideX : SwSprite[14].lx;
		u16 ball_ref_y = (RestartType == RESTART_GKSAVE || RestartType == RESTART_OFFSIDE) ? RestartSideY : SwSprite[14].ly;
		u16 ref_tx = (ball_ref_x < 128) ? (ball_ref_x + 40) : (ball_ref_x - 40);
		u16 ref_ty = (ball_ref_y < 256) ? (ball_ref_y + 48) : (ball_ref_y - 48);
		if (ref_tx < 16) ref_tx = 16;
		if (ref_tx > 224) ref_tx = 224;
		if (ref_ty < 24) ref_ty = 24;
		if (ref_ty > 488) ref_ty = 488;
		SwSprite[26].tx = ref_tx;
		SwSprite[26].ty = ref_ty;

		for (u8 i = 0; i <= 26; i++) {
			if (i >= 14 && i < 26) continue;
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
				p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
			} else {
				i8 dir_x = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
				i8 dir_y = (i < 7) ? 1 : -1; // Team 1 guarda sempre a Sud, Team 2 sempre a Nord
				if (i == 26) {
					u16 face_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : SwSprite[14].ly;
					u16 face_x = (RestartType == RESTART_GKSAVE) ? RestartSideX : SwSprite[14].lx;
					dir_x = (face_x > p->lx) ? 1 : ((face_x < p->lx) ? -1 : 0);
					dir_y = (face_y > p->ly) ? 1 : ((face_y < p->ly) ? -1 : 0);
					if (dir_x == 0 && dir_y == 0) dir_y = 1;
				}
				p->dx = 0; p->dy = 0;
				
				if (RestartType == RESTART_THROWIN && i == g_thrower_id) {
					if (i < 7) {
						p->frame = (RestartSideX < 128) ? SPR_T1_PLAYER_THROWIN_FROM_WEST_1 : SPR_T1_PLAYER_THROWIN_FROM_EAST_1;
					} else {
						p->frame = (RestartSideX < 128) ? SPR_T2_PLAYER_THROWIN_FROM_WEST_1 : SPR_T2_PLAYER_THROWIN_FROM_EAST_1;
					}
				} else if (RestartType == RESTART_GKSAVE && i == ((RestartSideY < 256) ? 0 : 7)) {
					p->frame = (i == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_NORTH_1;
				} else {
					p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, dir_x, dir_y, 0); // Posa ferma (0) verso la palla
				}
			}
		}
		if (all_in_position) {
			// FIX: Azzera i counter per evitare scivolate fantasma memorizzate da azioni precedenti
			for (u8 i = 0; i < 14; i++) {
				SwSprite[i].count = 0;
			}
			LastTouchPlayer = 0xFF; // Nessuno ha toccato la palla finora nella nuova azione

			if (RestartType == RESTART_THROWIN || RestartType == RESTART_CORNERKICK || RestartType == RESTART_OFFSIDE) {
				*game_state = 7;
				u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
				bool is_human = FALSE;
				if (throw_team == TEAM_2) is_human = TRUE;
				else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human = TRUE;
				
				*wait_secs = is_human ? 5 : 1; // 5 secondi per il giocatore, 1 per la CPU
				*start_sec = Frms;
				g_last_input_dir = DIRECTION_NONE; // Resetta l'input per la selezione
				// NOTA: L'input viene sincronizzato da UpdateAllInputs nel loop principale
				return;
			} else if (RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
				*game_state = 8; // Stato di attesa e rincorsa rinvio
				
				u8 gk = (RestartSideY < 256) ? 0 : 7;
				u8 team_to_kick = (gk == 0) ? TEAM_1 : TEAM_2;
				bool is_human = FALSE;
				if (team_to_kick == TEAM_2) is_human = TRUE;
				else if (team_to_kick == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human = TRUE;
				
				*wait_secs = is_human ? 5 : 1; // 5s per l'umano, 1s per la CPU
				*start_sec = Frms;
				g_last_input_dir = DIRECTION_NONE; // Resetta l'input per la selezione
				// NOTA: L'input viene sincronizzato da UpdateAllInputs nel loop principale
				return;
			}
			if (RestartType == RESTART_KICKOFF_SCROLL) RestartType = 0;
			*game_state = 3;
			
			// Assegna Carrier e Receiver per il Kickoff
			if (KickOffTeam == TEAM_1) {
				T1_Carrier = 3; // Giocatore a sinistra della palla
						T1_Receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, T1_Carrier, 4, 0, 1); // Ignora il compagno (4)
				T2_Carrier = T2_Receiver = 0xFF; // Difesa senza palla
			} else {
				T2_Carrier = 11; // Giocatore a destra della palla
						T2_Receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, T2_Carrier, 10, 0, -1); // Ignora il compagno (10)
				T1_Carrier = T1_Receiver = 0xFF; // Difesa senza palla
			}
			
			LastTouchTeam = KickOffTeam; // Assegna possesso fittizio al team che batte per far allargare i compagni
			
			*wait_secs = 2;
			*start_sec = Frms;
			CallFnc_VOID(SEG_EVENTS, EventKickOffReady);
		}
	}
}