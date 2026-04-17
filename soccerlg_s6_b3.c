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

	struct ObjectInfo* Ball = &SwSprite[14];
	// I giocatori destinatari di passaggi in volo NON vengono mossi dall'AI
	if (Ball->anim == 5 && i == g_pass_receiver) {
		SwSprite[i].dx = 0; SwSprite[i].dy = 0;
		SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, 0, (i < 7) ? 1 : -1);
		return;
	}

	// Il giocatore che ha appena effettuato un lancio o cross resta fermo a guardare la palla in volo
	if (Ball->anim == 5 && i == LastTouchPlayer) {
		SwSprite[i].dx = 0; SwSprite[i].dy = 0;
		if (i == 0 || i == 7) {
			SwSprite[i].frame = (i == 0) ? SPR_GK_PLAYER_SHOT_TO_SOUTH : SPR_GK_PLAYER_SHOT_TO_NORTH;
		} else {
		i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
		i8 look_dy = (Ball->ly > SwSprite[i].ly) ? 1 : ((Ball->ly < SwSprite[i].ly) ? -1 : 0);
		if (look_dx == 0 && look_dy == 0) look_dy = (i < 7) ? 1 : -1;
		SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, look_dx, look_dy);
		}
		return;
	}

	struct ObjectInfo* Player = &SwSprite[i];
	
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
		
		target_y = (team == TEAM_1) ? 32 : 452;
		
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
			u16 dx = (SwSprite[j].lx > Ball->lx) ? (SwSprite[j].lx - Ball->lx) : (Ball->lx - SwSprite[j].lx);
			u16 dy = (SwSprite[j].ly > Ball->ly) ? (SwSprite[j].ly - Ball->ly) : (Ball->ly - SwSprite[j].ly);
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

					// Scelta tra Tiro, Passaggio e Dribbling
					if (min_dist <= 12 && Ball->anim == 0) {
						bool action_taken = FALSE;
						
						// Tiro in porta (se campo scrollato e abbastanza vicino)
						if (Field.ly >= 320 && Player->ly > 360) { // Scrolling completo e in area di tiro
							u8 rand_shot = (Player->lx + Frms) % 100;
							if (rand_shot < 15) { // 15% di probabilità di tirare
								action_taken = TRUE;
								Ball->anim = 0; Ball->count = 0;
								g_pass_receiver = 0xFF;
								g_pass_start_x = Player->lx;
								g_pass_start_y = Player->ly;
								g_pass_target_x = 96 + (Frms % 48); // Posizione casuale nello specchio della porta (96-143)
								g_pass_target_y = 496; // Dentro la porta
								
								u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
								u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
								
								g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente
								if (g_pass_max_frames < 10) g_pass_max_frames = 10;
								if (g_pass_max_frames > 25) g_pass_max_frames = 25;
								g_pass_max_height = 2; // Tiro rasoterra e limitato
								
								Ball->anim = 5;
								CallFnc_VOID(SEG_EVENTS, EventBallKicked);
							}
						}

						// Passaggio intelligente verso un compagno in direzione dello sguardo
						if (!action_taken && Frms % 16 == 0) {
							u8 rand_pass = (Player->lx * 5 + Player->ly * 3 + Frms) % 100;
							if (rand_pass < 40) { // 40% di probabilità di passare
								u8 receiver = FindReceiver(i, 0xFF, Player->dx, Player->dy);
								if (receiver != 0xFF) {
									u16 r_dx = (SwSprite[receiver].lx > Player->lx) ? (SwSprite[receiver].lx - Player->lx) : (Player->lx - SwSprite[receiver].lx);
									u16 r_dy = (SwSprite[receiver].ly > Player->ly) ? (SwSprite[receiver].ly - Player->ly) : (Player->ly - SwSprite[receiver].ly);
									
									if (r_dx + r_dy >= 48) {
										action_taken = TRUE;
										Ball->anim = 0; Ball->count = 0;
										g_pass_receiver = receiver;
										g_pass_start_x = Player->lx;
										g_pass_start_y = Player->ly;
										g_pass_target_x = SwSprite[receiver].lx;
										g_pass_target_y = SwSprite[receiver].ly;
										g_pass_max_frames = (r_dx + r_dy) / 5; // Velocità di volo passaggi
										if (g_pass_max_frames < 8) g_pass_max_frames = 8;
										if (g_pass_max_frames > 34) g_pass_max_frames = 34;
										g_pass_max_height = 7;
										
										Ball->anim = 5;
										CallFnc_VOID(SEG_EVENTS, EventBallKicked);
									}
								}
							}
						}
						
						// Dribbling se non ha passato
						if (!action_taken) {
							Ball->dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
							Ball->dy = (Player->dy > 0) ? 1 : ((Player->dy < 0) ? -1 : 0);
							if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
							
							i8 off_x = 0; i8 off_y = 6;
							if (Ball->dx > 0) off_x = 9; else if (Ball->dx < 0) off_x = -9;
							if (Ball->dy > 0) off_y = 8; else if (Ball->dy < 0) off_y = -3; 
							
							Ball->lx = (u8)(Player->lx + off_x);
							Ball->ly = (Player->ly + off_y) & 511;
							Ball->anim = 3; Ball->count = 0;
							CallFnc_VOID(SEG_EVENTS, EventBallKicked);
						}
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
		u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
		u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
		
		if (b_dist_x < 32 && b_dist_y < 32) {
			target_x = Ball->lx;
			target_y = Ball->ly;
			
			// Furto della palla (Tackle) intercettazione fisica
			u8 steal_dist = (LastTouchTeam == 0xFF) ? 24 : 8;
			if (Ball->anim >= 6) steal_dist = 8; // I tiri potenti sfuggono più facilmente al tackle
			if (b_dist_x <= steal_dist && b_dist_y <= steal_dist && Ball->count == 0) {
				LastTouchTeam = team;
				LastTouchPlayer = i; // Protezione dal fischio di fuorigioco
				if (Ball->anim > 3) Ball->anim = 3; // L'AI stoppa la palla
				Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
			}
		}
	}

	// Limiti fisici del campo per i giocatori di movimento
	if (target_x < 16) target_x = 16; 
	if (target_x > 240) target_x = 240;
	if (target_y < 24) target_y = 24;
	if (target_y > 478) target_y = 478;

	// --- ESECUZIONE MOVIMENTO E ANIMAZIONE ---
	
	u16 dist_x = (target_x > Player->lx) ? (target_x - Player->lx) : (Player->lx - target_x);
	u16 dist_y = (target_y > Player->ly) ? (target_y - Player->ly) : (Player->ly - target_y);

	// Regola la velocità: corsa veloce se molto distante, camminata se vicino
	u8 speed = 1;
	if (dist_x > 24 || dist_y > 24) speed = 2;

	Player->dx = 0; Player->dy = 0;
	
	if (dist_x > speed) Player->dx = (target_x > Player->lx) ? speed : -speed;
	if (dist_y > speed) Player->dy = (target_y > Player->ly) ? speed : -speed;

	if (Player->dx != 0 || Player->dy != 0) {
		ai_last_dx[i] = Player->dx;
		ai_last_dy[i] = Player->dy;
		
		Player->lx += Player->dx;
		Player->ly += Player->dy;
		
		Player->anim++;
		const u8 walk_seq[4] = {0, 1, 2, 1};
		Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
	} else {
		// Posa ferma orientata verso la palla
		i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
		i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
		if (dir_x == 0 && dir_y == 0) {
			dir_y = (team == TEAM_1) ? 1 : -1;
		}
		Player->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, dir_x, dir_y);
	}
}

// Trova il compagno più vicino nella direzione di attacco
u16 FindReceiver(u8 carrier, u8 ignore_player, i8 c_dx, i8 c_dy) 
{
	u8 start_idx = (carrier < 7) ? 1 : 8; // Esclude i portieri
	u8 end_idx = start_idx + 6;
	u8 best_match = 0xFF;
	u16 min_dist = 0xFFFF;

	if (c_dx == 0 && c_dy == 0) {
		c_dy = (carrier < 7) ? 1 : -1;
	}

	for (u8 i = start_idx; i < end_idx; i++) {
		if (i == carrier || i == ignore_player) continue; 

		u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
		u16 dy = (SwSprite[i].ly > SwSprite[carrier].ly) ? (SwSprite[i].ly - SwSprite[carrier].ly) : (SwSprite[carrier].ly - SwSprite[i].ly);
		u16 dist = dx + dy; 

		// Filtro cono visivo direzionale:
		if (c_dx > 0 && SwSprite[i].lx < SwSprite[carrier].lx) continue; 
		if (c_dx < 0 && SwSprite[i].lx > SwSprite[carrier].lx) continue; 
		
		if (c_dy > 0 && SwSprite[i].ly < SwSprite[carrier].ly) continue; 
		if (c_dy < 0 && SwSprite[i].ly > SwSprite[carrier].ly) continue; 

		if (dist < min_dist) {
			min_dist = dist;
			best_match = i;
		}
	}

	return best_match;
}
