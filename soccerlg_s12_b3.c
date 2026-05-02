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
					
					VDP_EnableDisplay(FALSE); // Disattiva il video per nascondere il glitch di ridisegno
					
					// Inizia il secondo tempo
					Half = 2;
					Mins = HALF_TIME_MINS; Secs = HALF_TIME_SECS;
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
						for (u8 i=37; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
						if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
						for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
						if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
						for (u8 i=15; i<37; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
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
					
					VDP_EnableDisplay(TRUE); // Riattiva il video a campo ricostruito
					
					*game_state = 2;
				}
			}
			*start_sec = Frms;
		}
	} else if (*game_state == 5) {
		// Pausa di fine partita: nessun focus durante il messaggio TIMEUP
		T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;
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
						g_is_penalty_shootout = FALSE;
					} else {
						*game_state = 11; // Pareggio: Setup Rigori
						CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_PENALTIES);
						*wait_secs = 2;
						*start_sec = Frms;
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
						CallFnc_VOID(SEG_GAMESTATE_7, AssignThrowInTargets);
					} else if (RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
						CallFnc_VOID(SEG_GAMESTATE_7, AssignGoalKickTargets);
					} else if (RestartType == RESTART_CORNERKICK) {
						CallFnc_VOID(SEG_GAMESTATE_7, AssignCornerKickTargets);
					} else if (RestartType == RESTART_OFFSIDE) {
						CallFnc_VOID(SEG_GAMESTATE_7, AssignOffsideTargets);
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
					if (RestartType == RESTART_THROWIN || RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE || RestartType == RESTART_OFFSIDE) {
						u16 cam_target_y = (RestartType == RESTART_GKSAVE || RestartType == RESTART_OFFSIDE) ? RestartSideY : SwSprite[14].ly;
						if (cam_target_y < 96) Field.ly = 0;
						else if (cam_target_y > 512 - 192) Field.ly = 512 - 192;
						else Field.ly = cam_target_y - 96;
						
						T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;
					}
					
					Field.dy = 0;
					
					// Ridisegno di background con rinfresco sprite per evitare sparizioni
					// Per GKSAVE la camera è già in posizione → saltiamo PlotField e scoreboards
					if (RestartType != RESTART_GKSAVE) {
						bool ball_fg = CallFnc_BOOL(SEG_DRAW, IsBallForeground);
						for (u16 page = 0; page <= 512; page += 256) {
							CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, page);
							for (u8 i=37; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
							if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
							for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
							if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
							for (u8 i=15; i<37; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
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
					} else {
						// GKSAVE: erase esplicito del pallone grande dalle 3 pagine VRAM,
						// poi ridisegno del pallone piccolo alla posizione GK su tutte e 3 le pagine.
						// Le save avvengono sempre con la palla su schermo, quindi niente controllo OnScreen.
						struct ObjectInfo* Ball = &SwSprite[14];
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, Ball->x0, Ball->y0, 0);
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, Ball->x1, Ball->y1, 256);
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, Ball->x2, Ball->y2, 512);

						// Cancella anche le frecce di mira che altrimenti rimarrebbero "stampate" sul prato
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[24].x0, SwSprite[24].y0, 0);
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[24].x1, SwSprite[24].y1, 256);
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[24].x2, SwSprite[24].y2, 512);
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[25].x0, SwSprite[25].y0, 0);
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[25].x1, SwSprite[25].y1, 256);
						CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[25].x2, SwSprite[25].y2, 512);

						
						CallSpriteFrame(Ball->lx, (Ball->ly & 255) + 0,   Ball->frame);
						CallSpriteFrame(Ball->lx, (Ball->ly & 255) + 256, Ball->frame);
						CallSpriteFrame(Ball->lx, (Ball->ly & 255) + 512, Ball->frame);
						for (u8 i = 0; i < NumSprite; i++) {
							SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
							SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
						}
					}

					*game_state = 2; // Riparte la coreografia di schieramento
					if (RestartType == RESTART_GOAL) RestartType = RESTART_KICKOFF_SCROLL;
				}
			}
			*start_sec = Frms;
		}
	} else if (*game_state >= 9 && *game_state <= 11) {
		CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_10, UpdateGameState_Celebrations, game_state, wait_secs, start_sec, target_ly);
		return;
	} else if (*game_state == 7 || *game_state == 8) {
		CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_5, UpdateGameState_SetPieces, game_state, wait_secs, start_sec, target_ly);
		return;
	} else if (*game_state >= 12 && *game_state <= 14) {
		CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_6, UpdateGameState_Penalties, game_state, wait_secs, start_sec, target_ly);
		return;
	} else if (*game_state >= 15 && *game_state <= 17) {
		// Dischetto rigore visibile anche durante il volo palla e la risoluzione rigore
		SwSprite[38].lx = PENALTY_DISH_X; SwSprite[38].frame = SPR_BIG_PENALTY_DISH;
		SwSprite[38].ly = (SwSprite[14].lx == PENALTY_DISH_X && SwSprite[14].ly == PENALTY_NORTH_Y) ? 1000 : PENALTY_NORTH_Y;
		CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_5, UpdateGameState_Penalties_End, game_state, wait_secs, start_sec, target_ly);
		return;
	}
}