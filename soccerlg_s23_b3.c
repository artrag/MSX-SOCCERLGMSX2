// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 23 - Game State Play
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"
#include "soccerlg_rawdef.h"
#include "libs/yscc/yscc_player.h"

// Prototipo esplicito per garantire la visibilità al compilatore
extern void UpdateGameState_Carriers(u16 flags);

void UpdateGameState_Play(u8* game_state, u8* wait_secs, u8* start_sec)
{
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
	bool t1_human = (Half == 2) || (GameMode == GAMEMODE_P1_VS_P2);
	bool t2_human = (Half == 1) || (GameMode == GAMEMODE_P1_VS_P2);

	if (t1_human) {
		SwSprite[24].lx = (u8)g_h_arrow_x;
		SwSprite[24].ly = 440; 
		SwSprite[24].frame = SPR_BIG_ARROW_BOTTOM;
	} else {
		SwSprite[24].ly = 1000; // Nascondimento assoluto
	}
	// Freccia in basso (per Team 2 che attacca verso l'alto)
	if (t2_human) {
		SwSprite[25].lx = (u8)g_h_arrow_x; SwSprite[25].ly = 50; SwSprite[25].frame = SPR_BIG_ARROW_TOP;
	} else {
		SwSprite[25].ly = 1000;
	}

	struct ObjectInfo* Ball = &SwSprite[14];

	// Dischetti rigore visibili in entrambe le aree durante il gioco
	SwSprite[37].lx = PENALTY_DISH_X; SwSprite[37].frame = SPR_BIG_PENALTY_DISH;
	SwSprite[37].ly = (Ball->lx == PENALTY_DISH_X && Ball->ly == PENALTY_SOUTH_Y) ? 1000 : PENALTY_SOUTH_Y;
	SwSprite[38].lx = PENALTY_DISH_X; SwSprite[38].frame = SPR_BIG_PENALTY_DISH;
	SwSprite[38].ly = (Ball->lx == PENALTY_DISH_X && Ball->ly == PENALTY_NORTH_Y) ? 1000 : PENALTY_NORTH_Y;

	// --- AGGIORNAMENTO POSSESSO E FOCUS UMANO ---
	
	u8 closest_t1 = 1; u16 min_dist_t1 = 0xFFFF;
	u8 closest_t2 = 8; u16 min_dist_t2 = 0xFFFF;
	
	for (u8 i = 1; i < 7; i++) { 
		u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
		u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
		u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
		u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
		u16 dist = dist_x + dist_y;
		if (LastTouchTeam == TEAM_1 && i == LastTouchPlayer && Ball->anim < 5 && g_is_ball_carried) dist = 0; // Forza il focus sul portatore (solo se ha davvero palla ai piedi)
		if (dist < min_dist_t1) { min_dist_t1 = dist; closest_t1 = i; }
	}
	for (u8 i = 8; i < 14; i++) {
		u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
		u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
		u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
		u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
		u16 dist = dist_x + dist_y;
		if (LastTouchTeam == TEAM_2 && i == LastTouchPlayer && Ball->anim < 5 && g_is_ball_carried) dist = 0; // Forza il focus sul portatore (solo se ha davvero palla ai piedi)
		if (dist < min_dist_t2) { min_dist_t2 = dist; closest_t2 = i; }
	}

	g_closest_t1 = closest_t1;
	g_closest_t2 = closest_t2;

	// Memorizza se il trigger è stato usato per il cambio giocatore
	bool t1_switched = FALSE;
	bool t2_switched = FALSE;

	// Assegna il cursore di controllo al giocatore più vicino
	if (t2_human) {
		if (LastTouchTeam == TEAM_2 || LastTouchTeam == 0xFF || T2_Carrier == 0xFF) {
			T2_Carrier = closest_t2;
		} else if (g_player_input[1].trigger_pressed) {
			u16 b_dist_x = (SwSprite[T2_Carrier].lx > Ball->lx) ? (SwSprite[T2_Carrier].lx - Ball->lx) : (Ball->lx - SwSprite[T2_Carrier].lx);
			u16 b_dist_y = (SwSprite[T2_Carrier].ly > Ball->ly) ? (SwSprite[T2_Carrier].ly - Ball->ly) : (Ball->ly - SwSprite[T2_Carrier].ly);
			if ((b_dist_x > 48 || b_dist_y > 24) && closest_t2 != T2_Carrier) {
				T2_Carrier = closest_t2; // Cambio manuale del giocatore in difesa!
				t2_switched = TRUE;
			}
		}
	} else {
		T2_Carrier = 0xFF;
	}
	
	if (t1_human) {
		if (LastTouchTeam == TEAM_1 || LastTouchTeam == 0xFF || T1_Carrier == 0xFF) {
			T1_Carrier = closest_t1;
		} else if (g_player_input[0].trigger_pressed) {
			u16 b_dist_x = (SwSprite[T1_Carrier].lx > Ball->lx) ? (SwSprite[T1_Carrier].lx - Ball->lx) : (Ball->lx - SwSprite[T1_Carrier].lx);
			u16 b_dist_y = (SwSprite[T1_Carrier].ly > Ball->ly) ? (SwSprite[T1_Carrier].ly - Ball->ly) : (Ball->ly - SwSprite[T1_Carrier].ly);
			if ((b_dist_x > 48 || b_dist_y > 24) && closest_t1 != T1_Carrier) {
				T1_Carrier = closest_t1; // Cambio manuale del giocatore in difesa!
				t1_switched = TRUE;
			}
		}
	} else {
		T1_Carrier = 0xFF;
	}

	// Aggiorna il bersaglio del passaggio in base alla direzione dello sguardo
	// Mostra il bersaglio SOLO se la propria squadra ha il possesso della palla (o è palla contesa iniziale)
	if (t2_human) {
		if (min_dist_t2 <= 24 && (LastTouchTeam == TEAM_2 || LastTouchTeam == 0xFF)) {
			if (T2_Receiver == 0xFF || (Frms % 8) == 0) // Throttle: evita il cambio repentino di destinatario
				T2_Receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, T2_Carrier, 0xFF, g_last_dx[1], g_last_dy[1]);
		} else T2_Receiver = 0xFF;
	} else T2_Receiver = 0xFF;
	
	if (t1_human) {
		if (min_dist_t1 <= 24 && (LastTouchTeam == TEAM_1 || LastTouchTeam == 0xFF)) {
			if (T1_Receiver == 0xFF || (Frms % 8) == 0) // Throttle: evita il cambio repentino di destinatario
				T1_Receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, T1_Carrier, 0xFF, g_last_dx[0], g_last_dy[0]);
		} else T1_Receiver = 0xFF;
	} else T1_Receiver = 0xFF;

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
				// Il GK si è spostato lateralmente: cancella le 3 posizioni VRAM vecchie e ridisegna.
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
			Ball->lx = SwSprite[gk_idx].lx; // Teletrasporta la palla sulle braccia del portiere
			Ball->ly = SwSprite[gk_idx].ly;
			T1_Carrier = T2_Carrier = 0xFF;
			TimerEnabled = FALSE;
			g_scc_resume_timer = 120; // Ripristina l'audio dopo 2 secondi
			*wait_secs = 1; *start_sec = 0; // start_sec=0: la pausa scade al frame successivo (nessun freeze)
			return; // Esci dall'update per avviare la routine di pausa e ripresa
		}
	}
	
	// 1. Fisica della palla
	CallFnc_VOID(SEG_GAMESTATE_8, UpdateBallPhysics);

	// --- CONTROLLO OFFSIDE GLOBALE (CPU e UMANI) ---
	if ((g_pass_receiver & 0x80) && Ball->anim < 5) {
		u8 rec = g_pass_receiver & 0x7F;
		u8 pass_team = (rec < 7) ? TEAM_1 : TEAM_2;
		
		if (LastTouchTeam != 0xFF && LastTouchTeam != pass_team) {
			g_pass_receiver = 0xFF; // Intercettata dagli avversari
		} else {
			u16 dist_x = (SwSprite[rec].lx > Ball->lx) ? (SwSprite[rec].lx - Ball->lx) : (Ball->lx - SwSprite[rec].lx);
			u16 dist_y = (SwSprite[rec].ly > Ball->ly) ? (SwSprite[rec].ly - Ball->ly) : (Ball->ly - SwSprite[rec].ly);
			
			// Se il destinatario (in offside) tocca la palla
			if (dist_x <= 20 && dist_y <= 20) {
				*game_state = 6; 
				RestartType = RESTART_OFFSIDE; 
				RestartSideX = SwSprite[rec].lx; 
				RestartSideY = SwSprite[rec].ly;
				CallFnc_VOID(SEG_EVENTS, EventOffside);
				Ball->anim = Ball->dx = Ball->dy = 0;
				Ball->frame = SPR_BALL_SIZE_1; 
				T1_Carrier = T2_Carrier = 0xFF;
				g_pass_receiver = 0xFF; 
				TimerEnabled = FALSE;
				*wait_secs = 2; *start_sec = Frms;
				return; // Interrompe il frame e passa allo stato restart
			}
		}
	}

	g_is_ball_carried = FALSE;
	if (LastTouchPlayer != 0xFF && Ball->anim < 5) {
		u16 c_dist_x = (SwSprite[LastTouchPlayer].lx > Ball->lx) ? (SwSprite[LastTouchPlayer].lx - Ball->lx) : (Ball->lx - SwSprite[LastTouchPlayer].lx);
		u16 c_dist_y = (SwSprite[LastTouchPlayer].ly > Ball->ly) ? (SwSprite[LastTouchPlayer].ly - Ball->ly) : (Ball->ly - SwSprite[LastTouchPlayer].ly);
		if (c_dist_x <= 24 && c_dist_y <= 24) g_is_ball_carried = TRUE;
	}

	// 2. Gestione portatori (Player 1 e Player 2)
	u16 flags = (t1_human ? 1 : 0) | (t2_human ? 2 : 0) | (t1_switched ? 4 : 0) | (t2_switched ? 8 : 0);
	CallFnc_VOID_16_P1(SEG_HELPERS, UpdateGameState_Carriers, flags);

	// 3. Esegui AI per tutti gli altri giocatori (movimento e tattica senza palla)
	for (u8 i = 0; i < 14; i++) {
		CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
	}

	// --- AGGIORNAMENTO ARBITRO ---
	CallFnc_VOID(SEG_GAMESTATE_8, UpdateReferee);
}