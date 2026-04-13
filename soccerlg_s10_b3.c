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
	
	// Margini di scorrimento: la telecamera si aggancia se la palla supera i 64 pixel dal bordo
	if (Ball->ly < Field.ly + 64 && Field.ly > 0) {
		i16 diff = (i16)(Field.ly + 64) - (i16)Ball->ly;
		if (diff > 5) camera_dy = -5;
		else camera_dy = -diff;
		
		// Evita l'underflow della Y del campo
		if ((i16)Field.ly + camera_dy < 0) {
			camera_dy = -(i16)Field.ly;
		}
	}
	else if (Ball->ly > Field.ly + 192 - 64 && Field.ly < (FIELD_HEIGHT - 192)) {
		i16 diff = (i16)Ball->ly - (i16)(Field.ly + 192 - 64);
		if (diff > 5) camera_dy = 5;
		else camera_dy = diff;
		
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
	
	// Limiti del campo: oltre 35 pixel dai bordi viene considerato fuori gioco
	u8 left_boundary = 35;      // Fallo laterale a sinistra
	u8 right_boundary = 221;    // Fallo laterale a destra (256 - 35)
	u16 top_boundary = 30;      // Fallo di fondo sopra (Team 2 goal)
	u16 bottom_boundary = 482;  // Fallo di fondo sotto (Team 1 goal) = 512 - 30
	
	// Se la palla è fisicamente rientrata nei limiti di gioco, ripuliamo il flag di Restart
	if (Ball->lx >= left_boundary && Ball->lx <= right_boundary && Ball->ly >= top_boundary && Ball->ly <= bottom_boundary) {
		RestartType = 0;
	}
	
	// Specchio porta: 100 pixel da sinistra per ... (area di gol)
	u8 goal_left = 100;
	u8 goal_right = 200;  // 100 + 100 pixels di larghezza
	
	// ========== CONTROLLO GOAL ==========
	// Goal alla squadra 2 se la palla è prima della linea superiore ma nello specchio della porta
	if (Ball->ly < top_boundary && Ball->lx >= goal_left && Ball->lx <= goal_right) {
		*game_state = 6;
		Field.dy = 0; // Ferma il motore di scrolling per evitare che AddLines cancelli la UI
		RestartType = 0;
		CallFnc_VOID(SEG_EVENTS, EventGoal);  // Team 1 segna
		Ball->anim = Ball->dx = Ball->dy = 0;
		T1_Carrier = T2_Carrier = 0xFF;
		TimerEnabled = FALSE;
		*wait_secs = 3; *start_sec = Frms;  // Pausa più lunga per il goal
		return;
	}
	
	// Goal alla squadra 1 se la palla è oltre la linea inferiore ma nello specchio della porta
	if (Ball->ly > bottom_boundary && Ball->lx >= goal_left && Ball->lx <= goal_right) {
		*game_state = 6;
		Field.dy = 0;
		RestartType = 0;
		CallFnc_VOID(SEG_EVENTS, EventGoal);  // Team 2 segna
		Ball->anim = Ball->dx = Ball->dy = 0;
		T1_Carrier = T2_Carrier = 0xFF;
		TimerEnabled = FALSE;
		*wait_secs = 3; *start_sec = Frms;  // Pausa più lunga per il goal
		return;
	}
	
	// ========== CONTROLLO FALLO LATERALE (Throw-In) ==========
	if (Ball->lx < left_boundary || Ball->lx > right_boundary) {
		// Se stiamo battendo una rimessa e la palla è in volo verso il campo, ignora il controllo
		if (RestartType == 1 && Ball->anim == 5) {
			// Attendi che la palla rientri in campo
		} else {
			*game_state = 6;
			Field.dy = 0;
			RestartType = 1;
			RestartSideX = (Ball->lx < 128) ? left_boundary : right_boundary;
			RestartSideY = Ball->ly;
			CallFnc_VOID(SEG_EVENTS, EventThrowIn);
			Ball->anim = Ball->dx = Ball->dy = 0;
			T1_Carrier = T2_Carrier = 0xFF;
			TimerEnabled = FALSE;
			*wait_secs = 2; *start_sec = Frms;
			return;
		}
	}
	
	// ========== CONTROLLO FALLO DI FONDO (Corner o Goal Kick) ==========
	if (Ball->ly < top_boundary || Ball->ly > bottom_boundary) {
		*game_state = 6;
		Field.dy = 0;
		RestartType = 0;
		
		// Determina Corner o Goal Kick secondo il team che ha toccato per ultimo
		// Se Team 1 ha toccato per ultimo e la palla esce dal fondo superiore → CORNER (attacco riuscito)
		// Se Team 2 ha toccato per ultimo e la palla esce dal fondo inferiore → CORNER (attacco riuscito)
		// Altrimenti → GOAL KICK (difesa fallita nel respingere)
		
		if ((Ball->ly < top_boundary && LastTouchTeam == TEAM_1) || 
		    (Ball->ly > bottom_boundary && LastTouchTeam == TEAM_2)) {
			CallFnc_VOID(SEG_EVENTS, EventCornerKick);
		} else {
			CallFnc_VOID(SEG_EVENTS, EventGoalKick);
		}
		
		Ball->anim = Ball->dx = Ball->dy = 0;
		T1_Carrier = T2_Carrier = 0xFF;
		TimerEnabled = FALSE;
		*wait_secs = 2; *start_sec = Frms;
		return;
	}
}