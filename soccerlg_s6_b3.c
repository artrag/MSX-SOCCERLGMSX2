// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 6 - Game logic functions
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"

static i8 ai_last_dx[14] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0};
static i8 ai_last_dy[14] = {1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1};

void PlayerAI(u8 i) 
{
	// Escludi i giocatori governati dai player umani
	if (GameMode == GAMEMODE_P1_VS_CPU) {
		if (i == T2_Carrier) return;
	} else { // GAMEMODE_P1_VS_P2
		if (i == T1_Carrier || i == T2_Carrier) return;
	}

	struct ObjectInfo* Player = &SwSprite[i];
	struct ObjectInfo* Ball = &SwSprite[14];
	
	u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	bool is_gk = (i == 0 || i == 7);
	
	u16 target_x = Player->lx;
	u16 target_y = Player->ly;

	// --- PORTIERI ---
	// Il portiere si muove solo orizzontalmente seguendo la palla
	if (is_gk) {
		if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
		else if (Ball->lx < Player->lx - 4) target_x = Player->lx - 2;
		else target_x = Ball->lx;
		
		// Limiti dell'area di porta (circa 104 - 152)
		if (target_x < 104) target_x = 104;
		if (target_x > 152) target_x = 152;
		
		target_y = (team == TEAM_1) ? 32 : 480;
		
		Player->dx = (target_x > Player->lx) ? 1 : ((target_x < Player->lx) ? -1 : 0);
		Player->dy = 0;
		
		Player->lx += Player->dx;
		Player->ly = target_y; // Forza la Y corretta
		
		Player->anim++;
		if (Player->dx != 0) {
			if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
			else                Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_NORTH_1 : SPR_GK_PLAYER_NORTH_2;
		} else {
			Player->frame = (team == TEAM_1) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
		}
		return;
	}

	// --- GIOCATORI DI MOVIMENTO ---
	
	u8 role = (team == TEAM_1) ? i : (i - 7); // 1,2: Dif, 3,4: Cen, 5,6: Att
	
	u16 base_x = 128;
	u16 base_y = 256;

	// Formazione base 2-2-2 (rispetto al centro del campo)
	if (role == 1) { base_x = 64;  base_y = (team == TEAM_1) ? 120 : 392; } // Difensore sx
	else if (role == 2) { base_x = 192; base_y = (team == TEAM_1) ? 120 : 392; } // Difensore dx
	else if (role == 3) { base_x = 64;  base_y = (team == TEAM_1) ? 200 : 312; } // Centro sx
	else if (role == 4) { base_x = 192; base_y = (team == TEAM_1) ? 200 : 312; } // Centro dx
	else if (role == 5) { base_x = 80;  base_y = (team == TEAM_1) ? 280 : 232; } // Attaccante sx
	else if (role == 6) { base_x = 176; base_y = (team == TEAM_1) ? 280 : 232; } // Attaccante dx

	// I giocatori si spostano per seguire la palla (mantenendo la struttura)
	i16 ball_offset_x = (i16)Ball->lx - 128;
	i16 ball_offset_y = (i16)Ball->ly - 256;

	target_x = base_x + (ball_offset_x / 2);
	target_y = base_y + (ball_offset_y / 3);

	// Tattica di squadra: spingere in avanti o ritirarsi in base al possesso
	if (LastTouchTeam == team) {
		target_y += (team == TEAM_1) ? 40 : -40; // Fase offensiva
	} else if (LastTouchTeam != 0xFF) {
		target_y += (team == TEAM_1) ? -24 : 24; // Fase difensiva (ripiegamento controllato)

		// Difesa: i difensori non scappano in porta, ma accorciano per contrastare la palla
		if (team == TEAM_1) {
			// Evita di farsi schiacciare troppo in area se la palla è lontana
			if (target_y < 72 && Ball->ly > 72) target_y = 72;
			// Convergenza verso la palla quando è nella propria metà campo (chiudono gli spazi)
			if (Ball->ly < 256) {
				target_y = (target_y + Ball->ly - 16) / 2;
				target_x = (target_x + Ball->lx) / 2;
			}
		} else {
			// Evita di farsi schiacciare troppo in area se la palla è lontana
			if (target_y > 440 && Ball->ly < 440) target_y = 440;
			// Convergenza verso la palla quando è nella propria metà campo
			if (Ball->ly > 256) {
				target_y = (target_y + Ball->ly + 16) / 2;
				target_x = (target_x + Ball->lx) / 2;
			}
		}
	}

	// Controllo CPU Team per inseguimento e dribbling
	bool is_cpu_team = (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1);
	
	if (is_cpu_team) {
		// Trova il giocatore più vicino alla palla
		u8 closest_cpu = 0xFF;
		u16 min_dist = 0xFFFF;
		u8 start_cpu = 1; 
		u8 end_cpu = 7;
		
		for (u8 j = start_cpu; j < end_cpu; j++) {
			u8 dx_diff = (u8)(SwSprite[j].lx - Ball->lx);
			u16 dx = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
			u16 dy_diff = (u16)(SwSprite[j].ly - Ball->ly) & 511;
			u16 dy = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
			if (dx + dy < min_dist) {
				min_dist = dx + dy;
				closest_cpu = j;
			}
		}

		if (i == closest_cpu) {
			if (LastTouchTeam != team) {
				// Il CPU non ha la palla: vai a pressare/inseguire
				target_x = Ball->lx;
				target_y = Ball->ly;
			} else {
				// Il CPU ha la palla
				if (min_dist <= 24) {
					// Punta alla porta avversaria (Sud per il Team 1)
					target_x = 128; 
					target_y = 480; 

					// Dribbling automatico (se vicino)
					if (min_dist <= 12 && Ball->anim == 0) {
						Ball->dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
						Ball->dy = (Player->dy > 0) ? 1 : ((Player->dy < 0) ? -1 : 0);
						if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
						
						Ball->lx = Player->lx + (Ball->dx * 6);
						Ball->ly = (Player->ly + (Ball->dy * 6)) & 511;
						Ball->anim = 4;
						CallFnc_VOID(SEG_EVENTS, EventBallKicked);
					}
					
					// Tiro in porta (se abbastanza vicino)
					if (Player->ly > 380 && Ball->anim == 0) {
						Ball->dx = (Player->lx < 110) ? 1 : ((Player->lx > 146) ? -1 : 0);
						Ball->dy = 1;
						Ball->lx = Player->lx + (Ball->dx * 6);
						Ball->ly = (Player->ly + (Ball->dy * 6)) & 511;
						Ball->anim = 8; // Tiro potente
						CallFnc_VOID(SEG_EVENTS, EventBallKicked);
						LastTouchTeam = 0xFF;
					}
				} else {
					// Palla in transito (es: appena tirata), continua a seguirla
					target_x = Ball->lx;
					target_y = Ball->ly;
				}
			}
		}
	}

	// Intervento attivo: se un giocatore (anche non governato in quel momento dal player) 
	// passa molto vicino alla palla in fase difensiva, abbandona il piazzamento tattico per il contrasto
	if (LastTouchTeam != team) {
		u8 b_dx_diff = (u8)(Player->lx - Ball->lx);
		u16 b_dist_x = (b_dx_diff < 128) ? b_dx_diff : (256 - b_dx_diff);
		u16 b_dy_diff = (u16)(Player->ly - Ball->ly) & 511;
		u16 b_dist_y = (b_dy_diff < 256) ? b_dy_diff : (512 - b_dy_diff);
		
		if (b_dist_x < 32 && b_dist_y < 32) {
			target_x = Ball->lx;
			target_y = Ball->ly;
		}
	}

	// Limiti fisici del campo per i giocatori di movimento
	if (target_x < 16) target_x = 16; 
	if (target_x > 240) target_x = 240;
	if (target_y < 24) target_y = 24;
	if (target_y > 488) target_y = 488;

	// --- ESECUZIONE MOVIMENTO E ANIMAZIONE ---
	
	u8 dx_diff = (u8)(target_x - Player->lx);
	u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	u16 dy_diff = (u16)(target_y - Player->ly) & 511;
	u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);

	// Regola la velocità: corsa veloce se molto distante, camminata se vicino
	u8 speed = 1;
	if (dist_x > 24 || dist_y > 24) speed = 2;

	Player->dx = 0; Player->dy = 0;
	
	if (dist_x > speed) Player->dx = (dx_diff < 128) ? speed : -speed;
	if (dist_y > speed) Player->dy = (dy_diff < 256) ? speed : -speed;

	if (Player->dx != 0 || Player->dy != 0) {
		ai_last_dx[i] = Player->dx;
		ai_last_dy[i] = Player->dy;
		
		Player->lx += Player->dx;
		Player->ly += Player->dy;
		
		Player->anim++;
		const u8 walk_seq[4] = {0, 1, 2, 1};
		Player->frame = CallFnc_U16_P4(SEG_GAMESTATE, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
	} else {
		// Posa ferma orientata verso la palla
		i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
		i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
		if (dir_x == 0 && dir_y == 0) {
			dir_y = (team == TEAM_1) ? 1 : -1;
		}
		Player->frame = CallFnc_U16_P3(SEG_GAMESTATE, GetPlayerIdleFrame, i, dir_x, dir_y);
	}
}

// Trova il compagno più vicino nella direzione di attacco
u16 FindReceiver(u8 carrier, u8 ignore_player, i8 c_dx, i8 c_dy) 
{
	u8 start_idx = (carrier < 7) ? 1 : 8; // Esclude i portieri
	u8 end_idx = start_idx + 6;
	u8 best_match = 0xFF;
	u16 min_dist = 0xFFFF;
	u16 max_dist = 130; // Massima distanza per passaggi

	// Ricerca 1: Cerca nel cono visivo direzionale
	for (u8 i = start_idx; i < end_idx; i++) {
		if (i == carrier || i == ignore_player) continue; 

		u8 dx_diff = (u8)(SwSprite[i].lx - SwSprite[carrier].lx);
		u16 dx = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
		u16 dy_diff_16 = (u16)(SwSprite[i].ly - SwSprite[carrier].ly) & 511;
		u16 dy = (dy_diff_16 < 256) ? dy_diff_16 : (512 - dy_diff_16);
		u16 dist = dx + dy; 

		// Limite massimo distanza
		if (dist > max_dist) continue;

		// Filtro cono visivo direzionale:
		// Permetti deviazioni piccole dalla direzione principale (~32 pixel)
		bool is_south = (dy_diff_16 < 256);
		u16 deviation_y = dy_diff_16 < 256 ? dy_diff_16 : (512 - dy_diff_16);
		u8 deviation_x_u8 = dx_diff < 128 ? dx_diff : (256 - dx_diff);
		u16 deviation_x = deviation_x_u8;
		
		if (c_dy != 0) {
			// Movimento verticale: controlla Y primaria, tollerante su X se deviazione piccola
			if (c_dy > 0 && !is_south) {
				// Cerchi a SUD ma è a NORD: scarta solo se lontano lateralmente
				if (deviation_x > 40) continue;
			}
			if (c_dy < 0 && is_south) {
				// Cerchi a NORD ma è a SUD: scarta solo se lontano lateralmente
				if (deviation_x > 40) continue;
			}
		} else if (c_dx != 0) {
			// Movimento orizzontale: controlla X primaria, tollerante su Y se deviazione piccola
			bool is_right = (dx_diff < 128);
			if (c_dx > 0 && !is_right) {
				// Cerchi a DX ma è a SX: scarta solo se lontano verticalmente
				if (deviation_y > 40) continue;
			}
			if (c_dx < 0 && is_right) {
				// Cerchi a SX ma è a DX: scarta solo se lontano verticalmente
				if (deviation_y > 40) continue;
			}
		}

		if (dist < min_dist) {
			min_dist = dist;
			best_match = i;
		}
	}

	// Fallback 1: Se nessuno trovato nel cono, prendi il più vicino assoluto entro max_dist
	if (best_match == 0xFF) {
		for (u8 i = start_idx; i < end_idx; i++) {
			if (i == carrier || i == ignore_player) continue;
			u8 dx_diff = (u8)(SwSprite[i].lx - SwSprite[carrier].lx);
			u16 dx = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
			u16 dy_diff_16 = (u16)(SwSprite[i].ly - SwSprite[carrier].ly) & 511;
			u16 dy = (dy_diff_16 < 256) ? dy_diff_16 : (512 - dy_diff_16);
			u16 dist = dx + dy;
			if (dist <= max_dist && dist < min_dist) {
				min_dist = dist;
				best_match = i;
			}
		}
	}

	// Fallback 2: Se ancora nessuno, prendi il più vicino senza limite (escluso il portiere)
	if (best_match == 0xFF) {
		for (u8 i = start_idx; i < end_idx; i++) {
			if (i == carrier || i == ignore_player) continue;
			u8 dx_diff = (u8)(SwSprite[i].lx - SwSprite[carrier].lx);
			u16 dx = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
			u16 dy_diff_16 = (u16)(SwSprite[i].ly - SwSprite[carrier].ly) & 511;
			u16 dy = (dy_diff_16 < 256) ? dy_diff_16 : (512 - dy_diff_16);
			u16 dist = dx + dy;
			if (dist < min_dist) {
				min_dist = dist;
				best_match = i;
			}
		}
	}

	return best_match;
}
