// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 6 - Game logic functions
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"

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
		SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, 0, (i < 7) ? 1 : -1);
		return;
	}

	// Il giocatore che ha appena effettuato un lancio o cross resta fermo a guardare la palla in volo
	if (Ball->anim == 5 && i == LastTouchPlayer) {
		SwSprite[i].dx = 0; SwSprite[i].dy = 0;
		if (i == 0 || i == 7) {
			// Mostra il frame del tiro per i primi 5 frame, poi torna alla posa normale
			if (Ball->count <= 5) {
				SwSprite[i].frame = (i == 0) ? SPR_GK_PLAYER_SHOT_TO_SOUTH : SPR_GK_PLAYER_SHOT_TO_NORTH;
			} else {
				SwSprite[i].frame = (i == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
			}
		} else {
		i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
		i8 look_dy = (Ball->ly > SwSprite[i].ly) ? 1 : ((Ball->ly < SwSprite[i].ly) ? -1 : 0);
		if (look_dx == 0 && look_dy == 0) look_dy = (i < 7) ? 1 : -1;
		SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, look_dx, look_dy);
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
		
		bool can_steal = (b_dist_x <= 24 && b_dist_y <= 24);
		if (!can_steal && g_is_ball_carried && LastTouchPlayer != 0xFF && LastTouchTeam != team) {
			u16 c_dist_y = (Player->ly > SwSprite[LastTouchPlayer].ly) ? (Player->ly - SwSprite[LastTouchPlayer].ly) : (SwSprite[LastTouchPlayer].ly - Player->ly);
			if (b_dist_x <= 28 && c_dist_y <= 16) can_steal = TRUE;
		}

		if (can_steal && Ball->anim < 5 && RestartType == 0) {
			if (LastTouchTeam != team) {
				Ball->count = 16; // Immunità dopo il furto
				g_pass_receiver = 0xFF;
			}
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
		
		// Limiti dell'area di porta (specchio esteso tra i due pali 82 - 146)
		if (target_x < 88) target_x = 88;
		if (target_x > 140) target_x = 140;
		
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
			// Fermo: alterna tra le due pose di guardia della porta
			if (team == TEAM_1) Player->frame = ((Player->anim / 30) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
			else                Player->frame = ((Player->anim / 30) % 2 == 0) ? SPR_GK_PLAYER_NORTH_1 : SPR_GK_PLAYER_NORTH_2;
		}
		return;
	}

	// --- GIOCATORI DI MOVIMENTO ---
	CallFnc_VOID_P1(SEG_LOGIC_2, PlayerAI_Movement, i);
}
