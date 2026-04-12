// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 9 - Game State functions
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

void AssignKickOffTargets() {
	SwSprite[0].tx = 120; SwSprite[0].ty = 32;   
	SwSprite[1].tx = 64;  SwSprite[1].ty = 96;   
	SwSprite[2].tx = 176; SwSprite[2].ty = 96;   
	SwSprite[5].tx = 40;  SwSprite[5].ty = 160;  
	SwSprite[6].tx = 200; SwSprite[6].ty = 160;  

	SwSprite[7].tx = 120; SwSprite[7].ty = 480;  
	SwSprite[8].tx = 64;  SwSprite[8].ty = 416;  
	SwSprite[9].tx = 176; SwSprite[9].ty = 416;  
	SwSprite[12].tx= 40;  SwSprite[12].ty= 312;  
	SwSprite[13].tx= 200; SwSprite[13].ty= 312;  

	if (KickOffTeam == TEAM_1) {
		SwSprite[3].tx = 112; SwSprite[3].ty = 236;
		SwSprite[4].tx = 128; SwSprite[4].ty = 236;
		SwSprite[10].tx= 100; SwSprite[10].ty= 296;
		SwSprite[11].tx= 140; SwSprite[11].ty= 296;
	} else {
		SwSprite[3].tx = 100; SwSprite[3].ty = 200;
		SwSprite[4].tx = 140; SwSprite[4].ty = 200;
		SwSprite[10].tx= 112; SwSprite[10].ty= 254;
		SwSprite[11].tx= 128; SwSprite[11].ty= 254;
	}
}

u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step) 
{
	bool is_gk = (i == 0 || i == 7);
	u8 team = (i < 7) ? 1 : 2;
	
	if (is_gk) {
		if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_EAST_DIRECTION_2 : SPR_GK_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_WEST_DIRECTION_2 : SPR_GK_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_GK_PLAYER_FACE_TO_SOUTH;
	} 
	else if (team == 1) {
		if (dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_DIRECTION_2 : SPR_T1_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_EAST_DIRECTION_2 : SPR_T1_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_WEST_DIRECTION_2 : SPR_T1_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_T1_PLAYER_FACE_TO_SOUTH;
	} 
	else {
		if (dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_DIRECTION_2 : SPR_T2_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_EAST_DIRECTION_2 : SPR_T2_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_WEST_DIRECTION_2 : SPR_T2_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_T2_PLAYER_FACE_TO_NORTH;
	}
}

u16 GetPlayerIdleFrame(u8 i, i8 dx, i8 dy) 
{
	bool is_gk = (i == 0 || i == 7);
	u8 team = (i < 7) ? 1 : 2;
	
	if (is_gk) {
		if (dy < 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_NORTH;
		if (dy > 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_SOUTH;
		if (dy == 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_EAST;
		if (dy == 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_WEST;
		if (dy < 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_NORTH_EAST;
		if (dy < 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_NORTH_WEST;
		if (dy > 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_EAST;
		if (dy > 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_WEST;
		return SPR_GK_PLAYER_FACE_TO_SOUTH;
	} 
	else if (team == 1) {
		if (dy < 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_NORTH;
		if (dy > 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_SOUTH;
		if (dy == 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_EAST;
		if (dy == 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_WEST;
		if (dy < 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_NORTH_EAST;
		if (dy < 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_NORTH_WEST;
		if (dy > 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_EAST;
		if (dy > 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_WEST;
		return SPR_T1_PLAYER_FACE_TO_SOUTH;
	} 
	else {
		if (dy < 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_NORTH;
		if (dy > 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_SOUTH;
		if (dy == 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_EAST;
		if (dy == 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_WEST;
		if (dy < 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_NORTH_EAST;
		if (dy < 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_NORTH_WEST;
		if (dy > 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_EAST;
		if (dy > 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_WEST;
		return SPR_T2_PLAYER_FACE_TO_NORTH;
	}
}

static i8 g_last_dx[2] = {0, 0};
static i8 g_last_dy[2] = {1, -1};

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
				AssignKickOffTargets();
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
				p->frame = GetPlayerAnimFrame(i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
			} else {
				i8 dir_x = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
				i8 dir_y = (i < 7) ? 1 : -1; // Team 1 guarda sempre a Sud, Team 2 sempre a Nord
				p->dx = 0; p->dy = 0;
				p->frame = GetPlayerAnimFrame(i, dir_x, dir_y, 0); // Posa ferma (0) verso la palla
			}
		}
		if (all_in_position) {
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
			// Velocità decrescente: 5, 4, 3, 2 (totale 14 pixel). Supera i 2 px del portatore per staccarsi visibilmente!
			u8 speed = Ball->anim + 1;
			if (Ball->dx > 0) Ball->lx += speed;
			else if (Ball->dx < 0) Ball->lx -= speed;
			
			if (Ball->dy > 0) Ball->ly += speed;
			else if (Ball->dy < 0) Ball->ly -= speed;
			
			Ball->anim--;
		}

		// 2. Gestione portatori (Player 1 e Player 2)
		u8 carriers[2] = {T1_Carrier, T2_Carrier};
		u8 dirs[2] = { DIRECTION_NONE, DIRECTION_NONE };
		
		if (T2_Carrier != 0xFF) dirs[1] = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, 0); // P1 controlla Team 2
		if (T1_Carrier != 0xFF && GameMode == GAMEMODE_P1_VS_P2) dirs[0] = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, 1); // P2 controlla Team 1

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
				Carrier->frame = GetPlayerAnimFrame(carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
				
				// Calcolo della distanza assoluta con supporto al wrapping circolare (256 per X, 512 per Y)
				u8 dx_diff = (u8)(Carrier->lx - Ball->lx);
				u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
				u16 dy_diff = (u16)(Carrier->ly - Ball->ly) & 511;
				u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
				
				// Se il portatore tocca la palla (hitbox 24 pixel per sicurezza assoluta arcade)
				if (dist_x <= 24 && dist_y <= 24) {
					// Controllo Fuorigioco al momento della ricezione
					bool offside = FALSE;
					if (carrier < 7 && LastTouchTeam == TEAM_1) {
						u16 offside_line = (SwSprite[8].ly < SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
						if (Carrier->ly > offside_line + 8 && Carrier->ly > 256) offside = TRUE;
					} else if (carrier >= 7 && LastTouchTeam == TEAM_2) {
						u16 offside_line = (SwSprite[1].ly > SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
						if (Carrier->ly < offside_line - 8 && Carrier->ly < 256) offside = TRUE;
					}
					if (offside) {
						*game_state = 6; // Ferma il gioco
						CallFnc_VOID(SEG_EVENTS, EventOffside);
						Ball->anim = Ball->dx = Ball->dy = 0;
						T1_Carrier = T2_Carrier = 0xFF;
						TimerEnabled = FALSE;
						*wait_secs = 2; *start_sec = Frms;
						continue; // Salta il controllo palla
					}

					LastTouchTeam = (carrier < 7) ? TEAM_1 : TEAM_2;
					
					i8 c_dx = (Carrier->dx > 0) ? 1 : ((Carrier->dx < 0) ? -1 : 0);
					i8 c_dy = (Carrier->dy > 0) ? 1 : ((Carrier->dy < 0) ? -1 : 0);
					
					if (Ball->dx != c_dx || Ball->dy != c_dy) {
						// Cambio direzione: riposiziona la palla davanti ruotandola, mantieni l'animazione
						u8 cur_dist = (u8)((dist_x > dist_y) ? dist_x : dist_y);
						if (cur_dist > 12) cur_dist = 12; // Evita di "spararla" troppo lontano
						
						i8 off_x = 0; i8 off_y = 4;
						if (c_dx > 0) off_x = 6 + cur_dist; else if (c_dx < 0) off_x = -6 - cur_dist;
						if (c_dy > 0) off_y = 6 + cur_dist; else if (c_dy < 0) off_y = 2 - cur_dist;
						
						Ball->dx = c_dx;
						Ball->dy = c_dy;
						Ball->lx = (u8)(Carrier->lx + off_x);
						Ball->ly = (Carrier->ly + off_y) & 511;
					} else {
						// Stessa direzione: se la palla è ai piedi, dalle un calcetto
						if (Ball->anim == 0) {
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
			} else {
				// Se è fermo, usa l'ultima direzione di movimento per la posa di attesa
				Carrier->frame = GetPlayerIdleFrame(carrier, g_last_dx[i], g_last_dy[i]);
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
					
					AssignKickOffTargets();
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
					
					// Ritorno provvisorio a centrocampo per poter continuare a testare
					SwSprite[14].lx = BALL_START_X;
					SwSprite[14].ly = BALL_START_Y;
					SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
					
					Field.ly = target_ly; // Teletrasporta telecamera al centro
					Field.dy = 0;
					CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
					CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
					CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
					
					AssignKickOffTargets();
					*game_state = 2; // Riparte la coreografia di schieramento
				}
			}
			*start_sec = Frms;
		}
	}
}