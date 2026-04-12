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
	
	// Limiti del campo (da calibrare in base al tuo disegno .PNG)
	u8 left_line = 16;
	u8 right_line = 240;
	u16 top_line = 24;
	u16 bottom_line = 488;
	
	if (Ball->lx < left_line || Ball->lx > right_line) {
		*game_state = 6; // Rimessa laterale
		CallFnc_VOID(SEG_EVENTS, EventThrowIn);
	}
	else if (Ball->ly < top_line || Ball->ly > bottom_line) {
		*game_state = 6;
		// Calcola Corner o Goal Kick valutando incrociatamente lato bucato e ultimo tocco
		if ((Ball->ly < top_line && LastTouchTeam == TEAM_1) || (Ball->ly > bottom_line && LastTouchTeam == TEAM_2)) {
			CallFnc_VOID(SEG_EVENTS, EventCornerKick);
		} else {
			CallFnc_VOID(SEG_EVENTS, EventGoalKick);
		}
	}
	
	if (*game_state == 6) {
		Ball->anim = Ball->dx = Ball->dy = 0;
		T1_Carrier = T2_Carrier = 0xFF;
		TimerEnabled = FALSE;
		*wait_secs = 2; *start_sec = Frms;
	}
}