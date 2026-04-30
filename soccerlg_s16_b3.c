// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 16 - Game State Penalties
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

void UpdateGameState_Penalties(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
{
	(void)target_ly; // Evita il warning 85 per parametro non utilizzato

	if (*game_state >= 12 && *game_state <= 14) { // --- RIGORI ---		
		struct ObjectInfo* Ball = &SwSprite[14];

		// Dischetto del rigore visibile in area nord, a meno che la palla non sia sopra
		SwSprite[38].lx = PENALTY_DISH_X; SwSprite[38].frame = SPR_BIG_PENALTY_DISH;
		SwSprite[38].ly = (Ball->lx == PENALTY_DISH_X && Ball->ly == PENALTY_NORTH_Y) ? 1000 : PENALTY_NORTH_Y;
		u8 keeper_idx = (g_penalty_team == TEAM_1) ? 7 : 0; // Il portiere che deve parare

		if(*game_state == 12) { // STATO 12: Setup del prossimo rigore
			g_is_penalty_shootout = TRUE; // Attiva la modalità rigori

			// Determina se la serie è finita (Vittoria matematica o Sudden Death conclusa)
			bool match_over = FALSE;
			if (g_penalty_shot_count[0] == g_penalty_shot_count[1] && g_penalty_shot_count[0] >= 5) {
				if (ScoreTeam1 != ScoreTeam2) {
					match_over = TRUE;
				} else if (g_penalty_shot_count[0] == 5) {
					// Inizia la Sudden Death (Oltranza): nascondi i pallini
					for (u8 i = 27; i < 37; i++) SwSprite[i].ly = 1000;
				}
			} else if (g_penalty_shot_count[0] <= 5 && g_penalty_shot_count[1] <= 5) {
				u8 rem1 = 5 - g_penalty_shot_count[0];
				u8 rem2 = 5 - g_penalty_shot_count[1];
				if (ScoreTeam1 > ScoreTeam2 + rem2) match_over = TRUE;
				if (ScoreTeam2 > ScoreTeam1 + rem1) match_over = TRUE;
			}

			if (match_over) {
				*game_state = 17; // Vittoria rigori
				*wait_secs = 6; *start_sec = Frms;
				g_is_penalty_shootout = FALSE; // Turn off to allow generic behavior if needed
				return;
			}

			// Determina il prossimo tiratore (5 per squadra, poi a oltranza)
			u8 shooter_role = 1 + (g_penalty_shot_count[g_penalty_team] % 6);
			g_penalty_shooter_idx = (g_penalty_team == TEAM_1) ? shooter_role : shooter_role + 7;

			// La palla va posizionata sul dischetto del rigore (PENALTY_NORTH_Y)
			Ball->lx = PENALTY_DISH_X; Ball->ty = PENALTY_NORTH_Y; Ball->tx = PENALTY_DISH_X; Ball->ly = PENALTY_NORTH_Y;
			Ball->anim = 0; Ball->frame = SPR_BALL_SIZE_1;

			// Imposta le posizioni target
			SwSprite[g_penalty_shooter_idx].tx = PENALTY_DISH_X;  // Tiratore dietro la palla
			SwSprite[g_penalty_shooter_idx].ty = PENALTY_NORTH_Y + 16; // 16px dietro il dischetto
			SwSprite[keeper_idx].tx = 120;                // Portiere al centro della porta
			SwSprite[keeper_idx].ty = 32;
			SwSprite[26].tx = 62;                         // Arbitro a lato dell'area
			SwSprite[26].ty = 56;

			// Riporta i giocatori a centrocampo alle loro pose di attesa
			for(u8 i=0; i<=26; i++) {
				if(i == g_penalty_shooter_idx || i == keeper_idx || i == 26 || (i>=14 && i<26)) continue;
				SwSprite[i].lx = SwSprite[i].tx;
				SwSprite[i].ly = SwSprite[i].ty;
			}

			*game_state = 13; // Passa alla fase di avvicinamento
		}
		else if(*game_state == 13) { // STATO 13: Avvicinamento al dischetto
			bool all_in_position = TRUE;

			// Movimento telecamera per seguire il portiere verso la porta
			u16 cam_target = (SwSprite[keeper_idx].ly < 96) ? 0 : SwSprite[keeper_idx].ly - 96;
			if (Field.ly > cam_target + 3) { Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE; }
			else if (Field.ly + 3 < cam_target) { Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE; }
			else if (Field.ly != cam_target) { Field.dy = (i8)(cam_target - Field.ly); Field.ly = cam_target; all_in_position = FALSE; }
			else { Field.dy = 0; }

			for(u8 i=0; i<3; i++) {
				u8 actor_idx = (i == 0) ? g_penalty_shooter_idx : ((i == 1) ? keeper_idx : 26);
				struct ObjectInfo* p = &SwSprite[actor_idx];
				
				// Offset per evitare sovrapposizione in camminata (corsie separate)
				u8 final_tx = (actor_idx == 26) ? 62 : 120; 
				u8 current_tx = final_tx;
				if (actor_idx == g_penalty_shooter_idx && p->ly > p->ty + 4) current_tx = 96;
				if (actor_idx == keeper_idx && p->ly > p->ty + 4) current_tx = 144;

				if (p->lx != current_tx || p->ly != p->ty) {
					all_in_position = FALSE;
					
					if (current_tx > p->lx) p->dx = (i8)((current_tx - p->lx >= 2) ? 2 : 1); 
					else if (current_tx < p->lx) p->dx = (i8)((p->lx - current_tx >= 2) ? -2 : -1); 
					else p->dx = 0;
					
					if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
					else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
					else p->dy = 0;
					
					p->lx += p->dx; p->ly += p->dy; p->anim++;
					const u8 walk_seq[4] = {0, 1, 2, 1};
					p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
				} else {
					p->dx = 0; p->dy = 0;
					p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, actor_idx, 0, (i8)((actor_idx == keeper_idx) ? 1 : -1));
				}
			}

			if (all_in_position) {
				CallFnc_VOID(SEG_EVENTS, EventPenaltyWhistle);
				*wait_secs = 5; *start_sec = Frms;
				SwSprite[keeper_idx].dx = 1; // Default fermo al centro per il portiere
				SwSprite[g_penalty_shooter_idx].dx = 1; // Default dritto per il tiratore
				*game_state = 14;
			}
		}
		else if(*game_state == 14) { // STATO 14: Mira e Tiro
			struct ObjectInfo* Keeper = &SwSprite[keeper_idx];
			u8 keeper_team_idx = (keeper_idx == 0) ? 0 : 1;
			bool is_keeper_human = (keeper_team_idx == TEAM_2) || (keeper_team_idx == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2);
			bool is_shooter_human = (g_penalty_team == TEAM_2) || (g_penalty_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2);
			bool do_shot = FALSE;
			u8 shot_dir = 1; // 0=sx, 1=centro, 2=dx

			// Togli la freccia
			SwSprite[25].ly = 1000;

			// Legge in tempo reale la scelta del portiere (deve tenere premuto al momento del tiro per tuffarsi)
			if(is_keeper_human) {
				u8 k_dir = g_player_input[keeper_team_idx].direction;
				if(k_dir == DIRECTION_LEFT || k_dir == DIRECTION_UP_LEFT || k_dir == DIRECTION_DOWN_LEFT) Keeper->dx = 0; // Sinistra del tiratore (Ovest)
				else if (k_dir == DIRECTION_RIGHT || k_dir == DIRECTION_UP_RIGHT || k_dir == DIRECTION_DOWN_RIGHT) Keeper->dx = 2; // Destra del tiratore (Est)
				else Keeper->dx = 1; // Nessuna direzione = Fermo al centro
			}

			// Logica tiratore
			struct ObjectInfo* Shooter = &SwSprite[g_penalty_shooter_idx];
			if(is_shooter_human) {
				u8 dir = g_player_input[g_penalty_team].direction;
				if(dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT) Shooter->dx = 0; // Sinistra
				else if(dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) Shooter->dx = 2; // Destra
				else if(dir != DIRECTION_NONE) Shooter->dx = 1; // Premendo Su o Giù si reimposta il tiro dritto
				// Se il joystick viene rilasciato (DIRECTION_NONE), la scelta rimane memorizzata per quando scadrà il timer

				shot_dir = Shooter->dx;

				if(g_player_input[g_penalty_team].trigger_pressed) do_shot = TRUE; // Impedisce tiri accidentali
			} else { // CPU Shooter
				// Attende da 1 a 3 secondi prima di tirare per far preparare il portiere
				u8 target_wait = 2 + (Frms % 3); // random tra 2, 3 o 4 (pari a 3s, 2s, 1s di attesa)
				if(*wait_secs <= target_wait) {
					do_shot = TRUE;
					shot_dir = ((Frms % 2) == 0) ? 0 : 2; // CPU sceglie a caso tra sx e dx
				}
			}

			if (*start_sec < Frms) { if (*wait_secs > 0) (*wait_secs)--; }
			*start_sec = Frms;

			// Se scadono i 5 secondi, il player tira (Time-Out) nella direzione attualmente selezionata
			if (*wait_secs == 0) {
				do_shot = TRUE;
				if (is_shooter_human) shot_dir = Shooter->dx;
			}

			if(do_shot) {
				*wait_secs = 0; // Prepara il timer per lo stato 15

				u8 target_x_pos[] = {92, 120, 140};
				g_pass_start_x = Ball->lx; g_pass_start_y = Ball->ly;
				g_pass_target_x = target_x_pos[shot_dir]; g_pass_target_y = 16;
				g_pass_max_frames = 15; g_pass_max_height = 1; // Tiro basso e veloce (dimensione 1)
				g_pass_receiver = 0xFF;
				Ball->anim = 5; Ball->count = 1;

				// Animazione tiro
				Shooter->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, g_penalty_shooter_idx, 0, (i8)-1);

				// Logica tuffo portiere al momento del tiro
				u8 dive_dir; // 0=sx, 1=centro, 2=dx
				if(is_keeper_human) {
					dive_dir = Keeper->dx; // Usa la direzione corrente
				} else { // CPU
					// L'abilità del portiere (1-5) determina la percentuale di successo nell'indovinare l'angolo
					u8 skill_chance = g_ActiveStats[keeper_team_idx].gk_penalty_skill * 12; // Es: Stat 5 = 60%
					if ((Frms % 100) < skill_chance) {
						dive_dir = shot_dir; // Il portiere intuisce la direzione corretta!
					} else {
						// Se sbaglia a intuire, sceglie una delle altre due a caso
						if (shot_dir == 0) dive_dir = ((Frms % 2) == 0) ? 1 : 2;
						else if (shot_dir == 2) dive_dir = ((Frms % 2) == 0) ? 0 : 1;
						else dive_dir = ((Frms % 2) == 0) ? 0 : 2;
					}
				}

				// Imposta sprite e posizione esatta per la parata in base alla fisica dello sprite (mani sulla palla)
				if(dive_dir == 0) { // Tuffo a Sinistra (X=92)
					Keeper->frame = SPR_GK_PLAYER_DOWN_WEST_NORTH; // Ovest = Tuffo a Sinistra
					Keeper->lx = 100; // Sposta il body a 100, mani della maglietta a 92
				}
				else if(dive_dir == 2) { // Tuffo a Destra (X=140)
					Keeper->frame = SPR_GK_PLAYER_DOWN_EAST_NORTH; // Est = Tuffo a Destra
					Keeper->lx = 132; // Sposta il body a 132, mani della maglietta a 140
				}
				else { // Parata centrale
					Keeper->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, keeper_idx, 0, 1); // Posa in attesa centrale
					Keeper->lx = 120;
				}

				// Controlla se il portiere para
				if(dive_dir == shot_dir) {
					g_pass_max_frames = 10; // Tiro smorzato
					if (shot_dir == 1) {
						g_pass_target_y = 40;   // Fermiamo la palla prima per farla fermare sul petto
					} else {
						g_pass_target_y = 32;   // Tuffo laterale, manteniamo 32
					}
				}

				*game_state = 15;
			}
		}
		return;
	}
}