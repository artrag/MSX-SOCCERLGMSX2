// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 10 - Field Camera & Boundaries
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"

void UpdateFieldCamera()
{
	struct ObjectInfo* Ball = &SwSprite[14];
	
	i16 camera_dy = 0;
	
	// Calcolo dinamico dei margini per anticipare lo scrolling verso le porte.
	// Man mano che la palla si avvicina al fondo campo, il margine aumenta
	// costringendo la telecamera a inquadrare in anticipo la trequarti/area.
	u16 top_margin = 64;
	u16 bottom_margin = 64;
	
	if (Ball->ly < 256) {
		top_margin = 64 + (256 - Ball->ly) / 2;
		if (top_margin > 140) top_margin = 140;
	} else if (Ball->ly > 256) {
		bottom_margin = 64 + (Ball->ly - 256) / 2;
		if (bottom_margin > 140) bottom_margin = 140;
	}

	// Margini di scorrimento: la telecamera si aggancia se la palla supera i limiti dinamici
	if (Ball->ly < Field.ly + top_margin && Field.ly > 0) {
		i16 diff = (i16)(Field.ly + top_margin) - (i16)Ball->ly;
		if (diff > 5) {
			camera_dy = -(5 + diff / 16); // Accelera dolcemente se è molto indietro
			if (camera_dy < -8) camera_dy = -8; // Velocità massima di recupero (fluida)
		} else {
			camera_dy = -diff;
		}
		
		// Evita l'underflow della Y del campo
		if ((i16)Field.ly + camera_dy < 0) {
			camera_dy = -(i16)Field.ly;
		}
	}
	else if (Ball->ly > Field.ly + 192 - bottom_margin && Field.ly < (FIELD_HEIGHT - 192)) {
		i16 diff = (i16)Ball->ly - (i16)(Field.ly + 192 - bottom_margin);
		if (diff > 5) {
			camera_dy = 5 + diff / 16; // Accelera dolcemente
			if (camera_dy > 8) camera_dy = 8; // Velocità massima di recupero
		} else {
			camera_dy = diff;
		}
		
		// Evita l'overflow oltre il fondo del campo
		if (Field.ly + camera_dy > (FIELD_HEIGHT - 192)) {
			camera_dy = (FIELD_HEIGHT - 192) - Field.ly;
		}
	}
	
	Field.ly += camera_dy;
	Field.dy = (i8)camera_dy;
}

void CheckFieldBoundaries(u8* game_state, u8* wait_secs, u8* start_sec)
{
	struct ObjectInfo* Ball = &SwSprite[14];
	
	// Limiti fisici del campo (in base al disegno del prato)
	u8 left_boundary = 16;      // Fallo laterale a sinistra
	u8 right_boundary = 223;    // Fallo laterale a destra
	u16 top_boundary = 24;      // Fallo di fondo sopra (Team 2 goal)
	u16 bottom_boundary = 478;  // Fallo di fondo sotto (Team 1 goal)
	
	// Se la palla è fisicamente rientrata nei limiti di gioco, ripuliamo il flag di Restart
	if (Ball->lx >= left_boundary && Ball->lx <= right_boundary && Ball->ly >= top_boundary && Ball->ly <= bottom_boundary) {
		RestartType = 0;
	}
	
	// Specchio porta: ricalibrato e perfettamente simmetrico rispetto al centro
	u8 goal_left = 90;
	u8 goal_right = 150;
	
	// ========== CONTROLLO GOAL ==========
	// Goal alla squadra 2 se la palla è prima della linea superiore ma nello specchio della porta
	if (Ball->ly < top_boundary && Ball->lx >= goal_left && Ball->lx <= goal_right) {
		*game_state = 9;
		Field.dy = 0; // Ferma il motore di scrolling per evitare che AddLines cancelli la UI
		RestartType = RESTART_GOAL;
		KickOffTeam = TEAM_1; // Il Team 1 subisce gol, quindi batte
		CallFnc_VOID(SEG_EVENTS, EventGoal);  // Team 1 segna
		Ball->anim = Ball->dx = Ball->dy = 0;
		Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
		T1_Carrier = T2_Carrier = 0xFF;
		TimerEnabled = FALSE;
		*wait_secs = 3; *start_sec = Frms;  // 3 secondi di festeggiamenti
		return;
	}
	
	// Goal alla squadra 1 se la palla è oltre la linea inferiore ma nello specchio della porta
	if (Ball->ly > bottom_boundary && Ball->lx >= goal_left && Ball->lx <= goal_right) {
		*game_state = 9;
		Field.dy = 0;
		RestartType = RESTART_GOAL;
		KickOffTeam = TEAM_2; // Il Team 2 subisce gol, quindi batte
		CallFnc_VOID(SEG_EVENTS, EventGoal);  // Team 2 segna
		Ball->anim = Ball->dx = Ball->dy = 0;
		Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
		T1_Carrier = T2_Carrier = 0xFF;
		TimerEnabled = FALSE;
		*wait_secs = 3; *start_sec = Frms;  // 3 secondi di festeggiamenti
		return;
	}
	
	// ========== CONTROLLO FALLO LATERALE (Throw-In) ==========
	if (Ball->lx < left_boundary || Ball->lx > right_boundary) {
		// Ignora il fuoricampo se la palla è in volo per una rimessa o calcio piazzato
		if (RestartType != 0 && Ball->anim == 5) {
			// Attendi che la palla rientri in campo
		} else {
			*game_state = 6;
			Field.dy = 0;
			RestartType = RESTART_THROWIN;
			// Spostiamo il punto di battuta a destra verso l'interno (219) per mantenere il giocatore ben visibile
			RestartSideX = (Ball->lx < 128) ? left_boundary : right_boundary - 1;
			RestartSideY = Ball->ly;
			CallFnc_VOID(SEG_EVENTS, EventThrowIn);
			Ball->anim = Ball->dx = Ball->dy = 0;
			Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
			T1_Carrier = T2_Carrier = 0xFF;
			TimerEnabled = FALSE;
			*wait_secs = 2; *start_sec = Frms;
			return;
		}
	}
	
	// ========== CONTROLLO FALLO DI FONDO (Corner o Goal Kick) ==========
	if (Ball->ly < top_boundary || Ball->ly > bottom_boundary) {
		// Ignora il fuoricampo se la palla è in volo per un rinvio o corner
		if (RestartType != 0 && Ball->anim == 5) {
			// Attendi che la palla rientri in campo
		} else {
			*game_state = 6;
			Field.dy = 0;
			RestartType = 0;
			
			// Determina Corner o Goal Kick secondo il team che ha toccato per ultimo
			if ((Ball->ly < top_boundary && LastTouchTeam == TEAM_1) || 
				(Ball->ly > bottom_boundary && LastTouchTeam == TEAM_2)) {
				RestartType = RESTART_CORNERKICK;
				RestartSideX = Ball->lx;
				RestartSideY = Ball->ly;
				CallFnc_VOID(SEG_EVENTS, EventCornerKick);
			} else {
				RestartType = RESTART_GOALKICK;
				RestartSideX = Ball->lx;
				RestartSideY = Ball->ly;
				CallFnc_VOID(SEG_EVENTS, EventGoalKick);
			}
			
			Ball->anim = Ball->dx = Ball->dy = 0;
			Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
			T1_Carrier = T2_Carrier = 0xFF;
			TimerEnabled = FALSE;
			*wait_secs = 2; *start_sec = Frms;
			return;
		}
	}
}