// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 21 - Game logic functions (Field Players AI)
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"

static i8 ai_last_dx[14] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0};
static i8 ai_last_dy[14] = {1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1};

void PlayerAI_Movement(u8 i) 
{
	struct ObjectInfo* Ball = &SwSprite[14];
	struct ObjectInfo* Player = &SwSprite[i];
	u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	
	u16 target_x = Player->lx;
	u16 target_y = Player->ly;

	u8 role = (team == TEAM_1) ? i : (i - 7); // 1,2: Dif, 3,4: Cen, 5,6: Att
	
	// Trova il giocatore più vicino alla palla per la propria squadra
	u8 closest_mate = (team == TEAM_1) ? g_closest_t1 : g_closest_t2;

	// Calcola distanza dalla palla una sola volta, usata sia per intercetto che per pressing
	u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);

	// INTERCETTO PALLA LIBERA: qualsiasi giocatore entro 48px va direttamente sulla palla
	// senza passare per la logica tattica. Bypassa tutti i target role-based.
	bool ball_free_nearby = (!g_is_ball_carried && b_dist_x <= 48 && b_dist_y <= 48);
	if (Ball->anim == 5 && LastTouchTeam == team) ball_free_nearby = FALSE; // Non disturbare i propri passaggi
	if (ball_free_nearby) {
		target_x = Ball->lx;
		target_y = Ball->ly;
	} else {
	if (LastTouchTeam == team) {
		// FASE OFFENSIVA: I compagni si posizionano per aprire il gioco
		u8 run_dist = g_ActiveStats[team].aggro_attack * 10; 
		u8 wide_dist = 24 + (g_ActiveStats[team].pass_tendency * 8); 
		
		// Calcolo globale della linea di fuorigioco
		u16 offside_line = 256;
		if (team == TEAM_1) {
			offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
			if (offside_line < 256) offside_line = 256; // Il fuorigioco esiste solo nella metà campo offensiva
		} else {
			offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
			if (offside_line > 256) offside_line = 256;
		}

		if (role >= 5) { // Attaccanti (Ali)
			target_y = Ball->ly + ((team == TEAM_1) ? (60 + run_dist) : -(60 + run_dist));
			// Ali larghe, mantengono maggiormente la posizione laterale per dare un riferimento di passaggio
			if (role == 5) {
				target_x = (Ball->lx > 180) ? 100 : 36; // Ala Sx (si accentra solo se palla a estrema dx)
			} else {
				target_x = (Ball->lx < 76) ? 156 : 220; // Ala Dx (si accentra solo se palla a estrema sx)
			}
		} else if (role >= 3) { // Centrocampisti a supporto
			target_y = Ball->ly + ((team == TEAM_1) ? 24 : -24);
			target_x = (role == 3) ? 64 : 192; // Più larghi per coprire le fasce
		} else { // Difensori rimangono dietro
			target_y = Ball->ly + ((team == TEAM_1) ? -64 : 64);
			target_x = (role == 1) ? 80 : 144;
			// I difensori non superano mai la metà della propria metà campo
			if (team == TEAM_1 && target_y > 192) target_y = 192;
			if (team == TEAM_2 && target_y < 320) target_y = 320;
		}
		
		// Applicazione globale dei limiti del fuorigioco (per tutti i ruoli) e della linea di fondo
		if (team == TEAM_1) {
			// Solo il ruolo 6 può tentare di scattare in fuorigioco (1 secondo ogni 5)
			u16 max_y = (role == 6 && (Secs % 5) == 0) ? offside_line + 16 : offside_line - 12;
			if (target_y > max_y) target_y = max_y;
			if (target_y > 440) target_y = 440; // Evita di schiacciarsi sulla linea di fondo avversaria
		} else {
			// Solo il ruolo 6 per il Team 2
			u16 min_y = (role == 6 && (Secs % 5) == 0) ? offside_line - 16 : offside_line + 12;
			if (target_y < min_y) target_y = min_y;
			if (target_y < 72) target_y = 72; // Evita di schiacciarsi sulla linea di fondo avversaria
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
		
		// Distanziamento aggiuntivo tra compagni di squadra (evita sovrapposizioni in campo aperto)
		u8 twin_role = (role % 2 == 1) ? role + 1 : role - 1;
		u8 twin_idx = (team == TEAM_1) ? twin_role : twin_role + 7;
		if (twin_idx != LastTouchPlayer && twin_idx != i) {
			u16 d_mx = (SwSprite[twin_idx].lx > target_x) ? (SwSprite[twin_idx].lx - target_x) : (target_x - SwSprite[twin_idx].lx);
			u16 d_my = (SwSprite[twin_idx].ly > target_y) ? (SwSprite[twin_idx].ly - target_y) : (target_y - SwSprite[twin_idx].ly);
			if (d_mx < 40 && d_my < 40) {
				target_x += (target_x > SwSprite[twin_idx].lx) ? 24 : -24;
			}
		}
		
		// Limiti laterali per evitare di incollarsi ai bordi campo
		if (target_x < 36) target_x = 36;
		if (target_x > 204) target_x = 204;
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

		// Limiti laterali per la difesa
		if (target_x < 36) target_x = 36;
		if (target_x > 204) target_x = 204;
	} else {
		// Palla libera: mantieni una zona di copertura neutra
		target_x = (role % 2 == 1) ? 80 : 144;
		target_y = Ball->ly + ((team == TEAM_1) ? -32 : 32);
		// I difensori non superano mai la metà della propria metà campo
		if (role <= 2) {
			if (team == TEAM_1 && target_y > 192) target_y = 192;
			if (team == TEAM_2 && target_y < 320) target_y = 320;
		}
		
		// Limiti laterali per la palla libera
		if (target_x < 36) target_x = 36;
		if (target_x > 204) target_x = 204;
	} // fine if-else tattica (LastTouchTeam)
	} // fine blocco else ball_free_nearby

	// Intervento attivo: SOLO il compagno più vicino va sulla palla (se avversari o palla libera)
	// Usa b_dist_x/b_dist_y già calcolati all'inizio
	if ((ball_free_nearby || (LastTouchTeam != team) || (!g_is_ball_carried && (Ball->anim < 5 || LastTouchTeam != team))) && i == closest_mate) {
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
			
			// Decide se tentare la scivolata (orizzontale o laterale quando si insegue di fianco)
			if (g_is_ball_carried && LastTouchTeam != team && b_dist_x <= 48 && b_dist_y <= 24 && Player->count == 0 && RestartType == 0) {
				u8 slide_chance = 20 + (g_ActiveStats[team].aggro_defense * 15); 
				if ((Frms + i * 7) % 100 < slide_chance) {
					Player->count = 8; // durata scivolata (corta e chirurgica)
					Player->dx = (Ball->lx > Player->lx) ? 4 : -4;
					Player->dy = 0; // Solo scivolata orizzontale
					return; // Esce e inizia la scivolata dal prossimo frame
				}
			}

			// Furto della palla / raccolta palla libera
			bool is_free_ball = (!g_is_ball_carried);
			bool can_steal_standing = FALSE;
			
			if (LastTouchTeam == team || is_free_ball) {
				if (b_dist_x <= 20 && b_dist_y <= 20) can_steal_standing = TRUE;
			} else if (b_dist_x <= 14 && b_dist_y <= 14) {
				u8 opp_idx = LastTouchPlayer;
				if (opp_idx != 0xFF) {
					i8 opp_dx = SwSprite[opp_idx].dx;
					i8 opp_dy = SwSprite[opp_idx].dy;
					
					if (opp_dx == 0 && opp_dy == 0) {
						can_steal_standing = TRUE; // Avversario fermo
					} else {
						// Scontro frontale
						bool face_to_face = FALSE;
						if (opp_dx > 0 && Player->lx > SwSprite[opp_idx].lx) face_to_face = TRUE;
						if (opp_dx < 0 && Player->lx < SwSprite[opp_idx].lx) face_to_face = TRUE;
						if (opp_dy > 0 && Player->ly > SwSprite[opp_idx].ly) face_to_face = TRUE;
						if (opp_dy < 0 && Player->ly < SwSprite[opp_idx].ly) face_to_face = TRUE;
						
						// Inseguimento da dietro (superamento)
						bool overtaking = FALSE;
						if (opp_dx > 0 && Player->dx > 0 && Player->lx >= Ball->lx - 4) overtaking = TRUE;
						if (opp_dx < 0 && Player->dx < 0 && Player->lx <= Ball->lx + 4) overtaking = TRUE;
						if (opp_dy > 0 && Player->dy > 0 && Player->ly >= Ball->ly - 4) overtaking = TRUE;
						if (opp_dy < 0 && Player->dy < 0 && Player->ly <= Ball->ly + 4) overtaking = TRUE;
						
						if (face_to_face || overtaking) can_steal_standing = TRUE;
					}
				}
			}

			// Modifica: consentire il furto in piedi anche dei passaggi (anim == 5)
			bool is_flying_pass = (Ball->anim == 5);
			if (can_steal_standing && (Ball->anim < 5 || (is_flying_pass && LastTouchTeam != team)) && Ball->count == 0 && RestartType == 0) {
				if (LastTouchTeam != team) { // Solo se furto da avversario o palla libera
					Ball->count = is_free_ball ? 2 : 16;
					LastTouchTeam = team;
					LastTouchPlayer = i;
					g_pass_receiver = 0xFF;
					if (is_flying_pass) {
						Ball->anim = 3; // Blocca la palla a terra
						Ball->dx = 0; Ball->dy = 0;
						CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0);
					} else if (Ball->anim > 3) Ball->anim = 3; 
					Ball->frame = SPR_BALL_SIZE_1;
				} else if (is_free_ball && LastTouchTeam == team && LastTouchPlayer != i) {
					// Palla libera già reclamata dalla squadra ma non portata: aggiorna il portatore
					LastTouchPlayer = i;
					g_pass_receiver = 0xFF;
					if (Ball->anim > 3) Ball->anim = 3; 
					Ball->frame = SPR_BALL_SIZE_1;
				}
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
						
					// Tiro in porta: valuta probabilità di tiro in base alla posizione del giocatore
					// Vincolo fotocamera ripristinato: tira solo se lo scorrimento è arrivato in fondo
					if (Player->ly > 258 && Field.ly == 320) {
						u8 rand_shot = (Player->lx + Frms) % 100;
						u8 shot_prob = 0;
						if (Player->ly > 380) {
							// Zona ravvicinata / bordo area: probabilità alta
							shot_prob = 50 + (g_ActiveStats[team].aggro_attack * 6); // 56-80%
						} else if (Player->ly > 300) {
							// Zona di tiro media: prima dell'area
							shot_prob = 18 + (g_ActiveStats[team].aggro_attack * 5); // 23-43%
						} else if (Player->ly > 260) {
							// Tiro lungo: possibile ma raro
							shot_prob = 6 + (g_ActiveStats[team].aggro_attack * 3); // 9-21%
						}
						if (shot_prob > 0 && rand_shot < shot_prob) {
							action_taken = TRUE;
							Ball->anim = 0; Ball->count = 0;
							g_pass_receiver = 0xFF;
							g_pass_start_x = Player->lx;
							g_pass_start_y = Player->ly;
							g_pass_target_x = g_h_arrow_x; // Freccia non visibile ma oscilla come quella umana
							g_pass_target_y = 496; // Dentro la porta Sud
								
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
								u8 receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, i, 0xFF, pass_dx, pass_dy);
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
							i8 move_dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
							
							// Non dribblare fuori dal campo: se vicino al bordo Sud, ferma tutto
							if (Player->ly > 450) {
								Ball->dx = 0; Ball->dy = 0;
								Ball->anim = 0;
							} else {
								i8 off_x = 0;
								i8 off_y = (move_dx != 0) ? 13 : 8;
								if (move_dx > 0) off_x = 8; else if (move_dx < 0) off_x = -8;
								
								Ball->lx = (u8)((i16)Player->lx + off_x);
								Ball->ly = (u16)((i16)Player->ly + off_y) & 511;
								
								if (move_dx == 0) {
									// Dritto verso sud: kick animato (nessun drift laterale)
									Ball->dx = 0; Ball->dy = 1;
									Ball->anim = 4; Ball->count = 0;
									CallFnc_VOID(SEG_EVENTS, EventBallKicked);
								} else {
									// Diagonale: kick corto (anim=2 = 5px per asse, rimane entro soglia 26px)
									Ball->dx = move_dx; Ball->dy = 1;
									Ball->anim = 2; Ball->count = 0;
									CallFnc_VOID(SEG_EVENTS, EventBallKicked);
								}
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
		Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
	} else {
		// Posa ferma orientata verso la palla
		i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
		i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
		if (dir_x == 0 && dir_y == 0) {
			dir_y = (team == TEAM_1) ? 1 : -1;
		}
		Player->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, dir_x, dir_y);
	}
}