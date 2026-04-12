// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 10 - Field Camera & Boundaries
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"

void UpdateFieldCamera()
{
	struct ObjectInfo* Ball = &SwSprite[14];
	
	u16 screen_top = Field.ly;
	u16 screen_bottom = Field.ly + 192;
	
	// Margini di scorrimento (la telecamera si aggancia solo quando superi i 64 pixel dal bordo)
	u16 margin_top = screen_top + 64;
	u16 margin_bottom = screen_bottom - 64;
	
	i8 camera_dy = 0;
	
	if (Ball->ly < margin_top && Field.ly > 0) {
		u16 diff = margin_top - Ball->ly;
		camera_dy = (diff > 5) ? -5 : -diff;
		if (Field.ly < -camera_dy) camera_dy = -Field.ly;
	}
	else if (Ball->ly > margin_bottom && Field.ly < (FIELD_HEIGHT - 192)) {
		u16 diff = Ball->ly - margin_bottom;
		camera_dy = (diff > 5) ? 5 : diff;
		if (Field.ly + camera_dy > (FIELD_HEIGHT - 192)) camera_dy = (FIELD_HEIGHT - 192) - Field.ly;
	}
	
	Field.ly += camera_dy;
	Field.dy = camera_dy;
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