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
	if (Ball->anim == 5 && i == (g_pass_receiver & 0x7F)) {
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
	
	// --- GESTIONE SCIVOLATA (Tackle) ---
	if (Player->count > 0 && !is_gk) {
		Player->count--;
		Player->lx += Player->dx;
		Player->ly += Player->dy;
		
		if (Player->lx < 16) Player->lx = 16;
		if (Player->lx > 224) Player->lx = 224;
		if (Player->ly < 24) Player->ly = 24;
		if (Player->ly > 478) Player->ly = 478;

		Player->frame = (Player->dx > 0) ? 
					((team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_WEST : SPR_T2_PLAYER_TACKLE_FROM_WEST) :
					((team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_EAST : SPR_T2_PLAYER_TACKLE_FROM_EAST);

		// Controllo furto durante la scivolata
		u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
		u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
		if (b_dist_x <= 12 && b_dist_y <= 12 && Ball->anim < 5 && RestartType == 0) {
			if (LastTouchTeam != team) Ball->count = 16; // Immunità dopo il furto
			LastTouchTeam = team;
			LastTouchPlayer = i;
			if (Ball->anim > 3) Ball->anim = 3;
			Ball->frame = SPR_BALL_SIZE_1;
			Player->count = 0; // Ferma la scivolata appena ruba palla
		}
		return; // Salta il resto della logica finché è in scivolata
	}

	u16 target_x = Player->lx;
	u16 target_y = Player->ly;

	// --- PORTIERI ---
	// Il portiere si muove solo orizzontalmente seguendo la palla
	if (is_gk) {
		if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
		else if (Ball->lx < Player->lx - 4) target_x = Player->lx - 2;
		else target_x = Ball->lx;
		
		// Limiti dell'area di porta (specchio esteso tra i due pali 82 - 156)
		if (target_x < 88) target_x = 88;
		if (target_x > 150) target_x = 150;
		
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
	
	// Trova il giocatore più vicino alla palla per la propria squadra
	u8 closest_mate = (team == TEAM_1) ? g_closest_t1 : g_closest_t2;

	// Calcola distanza dalla palla una sola volta, usata sia per intercetto che per pressing
	u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);

	// INTERCETTO PALLA LIBERA: qualsiasi giocatore entro 48px va direttamente sulla palla
	// senza passare per la logica tattica. Bypassa tutti i target role-based.
	bool ball_free_nearby = (!g_is_ball_carried && Ball->anim < 5 && b_dist_x <= 48 && b_dist_y <= 48);
	if (ball_free_nearby) {
		target_x = Ball->lx;
		target_y = Ball->ly;
	} else {
	if (LastTouchTeam == team) {
		// FASE OFFENSIVA: I compagni si posizionano per aprire il gioco
		u8 run_dist = g_ActiveStats[team].aggro_attack * 10; 
		u8 wide_dist = 24 + (g_ActiveStats[team].pass_tendency * 8); 
		
		if (role >= 5) { // Attaccanti molto avanti
			target_y = Ball->ly + ((team == TEAM_1) ? (60 + run_dist) : -(60 + run_dist));
			target_x = (role == 5) ? 64 : 160;
			
			// Gestione intelligente del Fuorigioco e dei limiti del campo
			if (team == TEAM_1) {
				u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
				if (offside_line < 256) offside_line = 256; // Il fuorigioco esiste solo nella metà campo offensiva
				
				// Il ruolo 6 fa la punta di sfondamento: scatta in fuorigioco solo 1 secondo ogni 5 per farsi rincorrere
				u16 max_y = (role == 6 && (Secs % 5) == 0) ? offside_line + 16 : offside_line - 12;
				if (target_y > max_y) target_y = max_y;
				if (target_y > 440) target_y = 440; // Evita di schiacciarsi sulla linea di fondo avversaria
			} else {
				u16 offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
				if (offside_line > 256) offside_line = 256;
				
				// Punta di sfondamento per il Team 2
				u16 min_y = (role == 6 && (Secs % 5) == 0) ? offside_line - 16 : offside_line + 12;
				if (target_y < min_y) target_y = min_y;
				if (target_y < 72) target_y = 72; // Evita di schiacciarsi sulla linea di fondo avversaria
			}
		} else if (role >= 3) { // Centrocampisti a supporto largo
			target_y = Ball->ly + ((team == TEAM_1) ? 24 : -24);
			target_x = Ball->lx + ((role == 3) ? -wide_dist : wide_dist);
			if (team == TEAM_1 && target_y > 420) target_y = 420;
			if (team == TEAM_2 && target_y < 92) target_y = 92;
		} else { // Difensori rimangono dietro
			target_y = Ball->ly + ((team == TEAM_1) ? -64 : 64);
			target_x = (role == 1) ? 80 : 144;
			if (team == TEAM_1 && target_y < 72) target_y = 72;
			if (team == TEAM_2 && target_y > 440) target_y = 440;
			// I difensori non superano mai la metà della propria metà campo
			if (team == TEAM_1 && target_y > 192) target_y = 192;
			if (team == TEAM_2 && target_y < 320) target_y = 320;
		}
		
		// Evita assolutamente di intralciare il portatore di palla (si spingono verso l'esterno)
		if (LastTouchPlayer != 0xFF && LastTouchPlayer != i) {
			u16 dist_c_x = (SwSprite[LastTouchPlayer].lx > target_x) ? (SwSprite[LastTouchPlayer].lx - target_x) : (target_x - SwSprite[LastTouchPlayer].lx);
			u16 dist_c_y = (SwSprite[LastTouchPlayer].ly > target_y) ? (SwSprite[LastTouchPlayer].ly - target_y) : (target_y - SwSprite[LastTouchPlayer].ly);
			if (dist_c_x < 48 && dist_c_y < 48) {
				target_x += (target_x > 112) ? 48 : -48;
				target_y += (team == TEAM_1) ? 32 : -32; 
			}
		}
	} else if (LastTouchTeam != 0xFF) {
		// FASE DIFENSIVA: Si frappongono tra la palla e la propria porta
		if (role >= 5) { // Attaccanti alti
			target_y = Ball->ly + ((team == TEAM_1) ? -40 : 40);
			target_x = (role == 5) ? 80 : 144;
		} else if (role >= 3) { // Centrocampisti chiudono il centro
			target_y = Ball->ly + ((team == TEAM_1) ? 32 : -32);
			target_x = Ball->lx + ((role == 3) ? -32 : 32);
		} else { // Difensori coprono l'area
			// Pressing alternato nell'area difensiva: il difensore sul lato della palla preme,
			// l'altro copre la porta. Fuori dall'area si posizionano normalmente.
			bool ball_in_own_area = (team == TEAM_1) ? (Ball->ly < 140) : (Ball->ly > 372);
			bool side_presses = (role == 1) ? (Ball->lx < 128) : (Ball->lx >= 128);
			
			if (ball_in_own_area && side_presses) {
				// Questo difensore esce a pressare l'avversario
				target_x = Ball->lx;
				target_y = Ball->ly;
			} else if (ball_in_own_area) {
				// L'altro difensore rimane a coprire il centro dell'area
				target_x = (role == 1) ? 80 : 144;
				target_y = (team == TEAM_1) ? 88 : 424;
			} else {
				target_y = Ball->ly + ((team == TEAM_1) ? 80 : -80);
				target_x = Ball->lx + ((role == 1) ? -24 : 24);
				// Non indietreggiare troppo dentro la propria area
				if (team == TEAM_1 && target_y < 72) target_y = 72;
				if (team == TEAM_2 && target_y > 440) target_y = 440;
				// Non avanzare oltre la metà della propria metà campo
				if (team == TEAM_1 && target_y > 192) target_y = 192;
				if (team == TEAM_2 && target_y < 320) target_y = 320;
			}
		}
	} else {
		// Palla libera: mantieni una zona di copertura neutra
		target_x = (role % 2 == 1) ? 80 : 144;
		target_y = Ball->ly + ((team == TEAM_1) ? -32 : 32);
		// I difensori non superano mai la metà della propria metà campo
		if (role <= 2) {
			if (team == TEAM_1 && target_y > 192) target_y = 192;
			if (team == TEAM_2 && target_y < 320) target_y = 320;
		}
	} // fine if-else tattica (LastTouchTeam)
	} // fine blocco else ball_free_nearby

	// Intervento attivo: SOLO il compagno più vicino va sulla palla (se avversari o palla libera)
	// Usa b_dist_x/b_dist_y già calcolati all'inizio
	if ((ball_free_nearby || LastTouchTeam != team || (!g_is_ball_carried && Ball->anim < 5)) && i == closest_mate) {
		// Raggio di pressing dinamico basato sull'aggressività
		u16 press_radius = 24 + (g_ActiveStats[team].aggro_defense * 8);
		if (LastTouchTeam == 0xFF || !g_is_ball_carried) press_radius = 500; // Palla libera o non controllata: vai a prenderla!
		
		bool is_human_team = FALSE;
		if (team == TEAM_2) is_human_team = TRUE;
		else if (team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human_team = TRUE;

		bool should_press = TRUE;

		if (LastTouchTeam != 0xFF) {
			if (is_human_team && g_is_ball_carried) {
				// Il player umano usa il trigger per selezionare il difensore più vicino e gestirlo.
				// L'IA non deve intervenire a rubare palla al portatore in automatico,
				// MA deve andare sulla palla se questa è libera e vagante.
				should_press = FALSE;
			} else {
				// CPU: in modalità P1vsCPU il Team 1 preme sempre (a prescindere dalla posizione della palla)
				if (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1) press_radius = 500;
				// Aumenta il pressing quando l'avversario si avvicina alla porta da difendere.
				else if (team == TEAM_1 && Ball->ly < 220) press_radius = 500; // Pressing asfissiante in trequarti
				else if (team == TEAM_2 && Ball->ly > 292) press_radius = 500;
				else if (team == TEAM_1 && Ball->ly < 256) press_radius += 48; // Inizia il pressing nella propria metà campo
				else if (team == TEAM_2 && Ball->ly > 256) press_radius += 48;
			}
		}

		if (should_press && b_dist_x < press_radius && b_dist_y < press_radius) {
			target_x = Ball->lx;
			target_y = Ball->ly;
			
			// Decide se tentare la scivolata (SOLO in orizzontale e solo se vicino all'avversario)
			if (g_is_ball_carried && b_dist_x <= 36 && b_dist_y <= 12 && b_dist_x > 12 && Player->count == 0 && RestartType == 0) {
				if (Frms % 8 == 0) { // Molto più reattivo
					u8 slide_chance = 20 + (g_ActiveStats[team].aggro_defense * 15); 
					if ((Frms + i * 7) % 100 < slide_chance) {
						Player->count = 8; // durata scivolata (corta e chirurgica)
						Player->dx = (Ball->lx > Player->lx) ? 4 : -4;
						Player->dy = 0; // Solo scivolata orizzontale
						return; // Esce e inizia la scivolata dal prossimo frame
					}
				}
			}

			// Furto della palla / raccolta palla libera
			// steal_dist più generoso per palla libera (non portata e non avversario attivo)
			bool is_free_ball = (!g_is_ball_carried && (LastTouchTeam == 0xFF || LastTouchTeam == team));
			u8 steal_dist = g_is_ball_carried ? 10 : (is_free_ball ? 20 : 14); 
			if (b_dist_x <= steal_dist && b_dist_y <= steal_dist && Ball->count == 0 && RestartType == 0) {
				if (LastTouchTeam != team) { // Solo se furto da avversario o palla libera: non trasferire possesso tra compagni
					// Immunità breve per palla libera (nessun avversario da proteggere), lunga per furto da avversario
					Ball->count = is_free_ball ? 2 : 16;
					LastTouchTeam = team;
					LastTouchPlayer = i;
				} else if (is_free_ball && LastTouchTeam == team && LastTouchPlayer != i) {
					// Palla libera già reclamata dalla squadra ma non portata: aggiorna il portatore
					LastTouchPlayer = i;
				}
				if (Ball->anim > 3) Ball->anim = 3; 
				Ball->frame = SPR_BALL_SIZE_1; 
			}
		}
	}

	// Controllo CPU Team per dribbling e tiri in attacco
	bool is_cpu_team = (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1);
	if (is_cpu_team && i == closest_mate && LastTouchTeam == team && g_is_ball_carried) {
				u16 d_bx = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
				u16 d_by = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
				if (d_bx + d_by <= 26) {
					// Palla davvero ai piedi: punta alla porta avversaria (Sud per il Team 1)
					target_x = 128; 
					target_y = 480; 

					// Scelta tra Tiro, Passaggio e Dribbling
					if (d_bx + d_by <= 26 && Ball->anim == 0) {
						bool action_taken = FALSE;
						
						// Tiro in porta (se campo scrollato e abbastanza vicino)
						if (Field.ly >= 320 && Player->ly > 360) { // Scrolling completo e in area di tiro
							u8 rand_shot = (Player->lx + Frms) % 100;
							
							// Propensione al tiro: da 5% (Stat 1) a 25% (Stat 5)
							u8 shot_prob = 5 + (g_ActiveStats[team].aggro_attack * 4);
							if (rand_shot < shot_prob) { 
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

						// Passaggio intelligente verso un compagno in direzione OFFENSIVA (sempre verso Sud per TEAM_1)
						if (!action_taken && Frms % 16 == 0) {
							u8 rand_pass = (Player->lx * 5 + Player->ly * 3 + Frms) % 100;
							
							// Propensione passaggi: da 20% (Stat 1) a 60% (Stat 5)
							u8 pass_prob = 10 + (g_ActiveStats[team].pass_tendency * 10);
							if (rand_pass < pass_prob) {
								// CPU TEAM_1 attacca verso Sud: forza la ricerca in avanti (dy=1)
								// mai passare all'indietro indipendentemente da dove si stava muovendo
								i8 pass_dx = (ai_last_dx[i] > 0) ? 1 : ((ai_last_dx[i] < 0) ? -1 : 0);
								i8 pass_dy = 1; // TEAM_1 attacca sempre verso Sud
								u8 receiver = FindReceiver(i, 0xFF, pass_dx, pass_dy);
								if (receiver != 0xFF) {
									// Verifica che il ricevitore sia effettivamente davanti (a Sud) - mai passare indietro
									if (SwSprite[receiver].ly > Player->ly - 16) {
										u16 r_dx = (SwSprite[receiver].lx > Player->lx) ? (SwSprite[receiver].lx - Player->lx) : (Player->lx - SwSprite[receiver].lx);
										u16 r_dy = (SwSprite[receiver].ly > Player->ly) ? (SwSprite[receiver].ly - Player->ly) : (Player->ly - SwSprite[receiver].ly);
									
										if (r_dx + r_dy >= 48) {
											action_taken = TRUE;
											
											// === CONTROLLO OFFSIDE AL MOMENTO DEL PASSAGGIO ===
											bool is_offside = FALSE;
											if (team == TEAM_1) {
												u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
												if (Player->ly > offside_line) offside_line = Player->ly;
												if (SwSprite[receiver].ly > offside_line + 8 && SwSprite[receiver].ly > 256) is_offside = TRUE;
											}

											Ball->anim = 0; Ball->count = 0;
											g_pass_receiver = receiver | (is_offside ? 0x80 : 0);
											g_pass_start_x = Player->lx;
											g_pass_start_y = Player->ly;
											g_pass_target_x = SwSprite[receiver].lx;
											g_pass_target_y = SwSprite[receiver].ly;
											g_pass_max_frames = (r_dx + r_dy) / 5;
											if (g_pass_max_frames < 8) g_pass_max_frames = 8;
											if (g_pass_max_frames > 34) g_pass_max_frames = 34;
											g_pass_max_height = 7;
											
											Ball->anim = 5;
											CallFnc_VOID(SEG_EVENTS, EventBallKicked);
										}
									}
								}
							}
						}
						
						// Dribbling se non ha passato
						if (!action_taken) {
							// Usa la direzione attuale del giocatore (verso target 128,480) non l'ultima salvata.
							// Questo evita che la palla derivi verso il fallo laterale perché Ball->dx
							// viene poi spostato da UpdateBallPhysics ogni frame.
							i8 move_dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
							Ball->dx = move_dx;
							Ball->dy = 1; // TEAM_1 dribble sempre verso Sud (porta avversaria)
							
							// Non dribblare fuori dal campo: se vicino al bordo Sud, smetti di calciare
							if (Player->ly > 450) {
								Ball->dx = 0; Ball->dy = 0;
								Ball->anim = 0;
							} else {
								i8 off_x = 0;
								// off_y più alto per le diagonali (il giocatore T1 ha il corpo più in alto nello sprite box)
								i8 off_y = (move_dx != 0) ? 13 : 8;
								if (move_dx > 0) off_x = 8; else if (move_dx < 0) off_x = -8;
								
							// Palla incollata ai piedi senza velocità: evita il drift di UpdateBallPhysics
							Ball->dx = 0; Ball->dy = 0; Ball->anim = 0; Ball->count = 0;
							Ball->lx = (u8)((i16)Player->lx + off_x);
							Ball->ly = (u16)((i16)Player->ly + off_y) & 511;
							}
						}
					}
				} else {
					// Palla in transito (es: appena tirata), continua a seguirla
					target_x = Ball->lx;
					target_y = Ball->ly;
				}
	}

	// Limiti fisici del campo per i giocatori di movimento
	if (target_x < 16) target_x = 16; 
	if (target_x > 224) target_x = 224;
	if (target_y < 24) target_y = 24;
	if (target_y > 478) target_y = 478;

	// --- ESECUZIONE MOVIMENTO E ANIMAZIONE ---
	
	u16 dist_x = (target_x > Player->lx) ? (target_x - Player->lx) : (Player->lx - target_x);
	u16 dist_y = (target_y > Player->ly) ? (target_y - Player->ly) : (Player->ly - target_y);

	// Regola la velocità: corsa veloce se molto distante, camminata se vicino
	u8 speed = 1;
	// Forza speed=2 se: lontano dal target, è il portatore della propria squadra, o sta inseguendo una palla non portata
	if (dist_x > 24 || dist_y > 24 || (LastTouchTeam == team && i == closest_mate) || (!g_is_ball_carried && Ball->anim < 5 && i == closest_mate)) speed = 2;

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
