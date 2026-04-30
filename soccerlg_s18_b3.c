// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 18 - Game State functions 4
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"

void UpdateBallPhysics()
{
	struct ObjectInfo* Ball = &SwSprite[14];
	
	if (Ball->anim > 0) {
		if (Ball->anim == 5) {
			// === PASSAGGIO CON TRAIETTORIA INTERPOLATA E EFFETTO DI VOLO ===
			u8 progress = Ball->count; // 0 = inizio da tiratore, max = fine verso ricevitore
			u8 half_frame = g_pass_max_frames >> 1; // metà del percorso
			
			i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
			i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
			bool hit_post = FALSE;

			// Interpolazione lineare della posizione XY verso il destinatario
			if (progress == 0) {
				Ball->lx = g_pass_start_x;
				Ball->ly = g_pass_start_y;
			} else if (progress >= g_pass_max_frames) {
				Ball->lx = g_pass_target_x;
				Ball->ly = g_pass_target_y;
			} else {
				// Calcola la posizione interpolata: start + (target - start) * progress / max
				Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
				Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
			}
			
			// CONTROLLO PALO (solo per i tiri, altezza max 2)
			if (g_pass_max_height <= 2 && progress > 0) {
				u16 top_boundary = 24;
				u16 bottom_boundary = 478;
				u8 goal_left = 82;
				u8 goal_right = 146;
				
				i16 old_ly = (i16)g_pass_start_y + (dy_total * (progress - 1)) / g_pass_max_frames;
				i16 new_ly = Ball->ly;
				i16 old_lx = (i16)g_pass_start_x + (dx_total * (progress - 1)) / g_pass_max_frames;
				i16 new_lx = Ball->lx;

				// Controllo palo nord (attraversamento della linea di porta)
				if (old_ly > top_boundary && new_ly <= top_boundary) {
					i16 cross_x = old_lx + ((new_lx - old_lx) * (old_ly - top_boundary)) / (old_ly - new_ly);
					if ((cross_x >= goal_left - 4 && cross_x <= goal_left + 4) ||
						(cross_x >= goal_right - 4 && cross_x <= goal_right + 4)) {
						hit_post = TRUE;
					}
				} 
				// Controllo palo sud
				else if (old_ly < bottom_boundary && new_ly >= bottom_boundary) {
					i16 cross_x = old_lx + ((new_lx - old_lx) * (bottom_boundary - old_ly)) / (new_ly - old_ly);
					if ((cross_x >= goal_left - 4 && cross_x <= goal_left + 4) ||
						(cross_x >= goal_right - 4 && cross_x <= goal_right + 4)) {
						hit_post = TRUE;
					}
				}
				
				if (hit_post) {
					i16 in_dx = dx_total; 
					i16 in_dy = dy_total; 
					
					// Angolo specchiato rispetto alla linea di porta
					i16 out_dx = in_dx;
					i16 out_dy = -in_dy;
					
					// Limita il rimbalzo a circa 20 pixel
					i16 len = (out_dx > 0 ? out_dx : -out_dx) + (out_dy > 0 ? out_dy : -out_dy);
					if (len == 0) len = 1;
					
					out_dx = (out_dx * 60) / len;
					out_dy = (out_dy * 60) / len;
					
					// Forza la palla in campo per evitare falli di fondo o goal al frame successivo
					if (out_dy > 0) {
						if (Ball->ly < top_boundary + 2) Ball->ly = top_boundary + 2;
					} else {
						if (Ball->ly > bottom_boundary - 2) Ball->ly = bottom_boundary - 2;
					}
					
					g_pass_start_x = Ball->lx;
					g_pass_start_y = Ball->ly;
					
					g_pass_target_x = g_pass_start_x + out_dx;
					g_pass_target_y = g_pass_start_y + out_dy;
					
					g_pass_max_frames = 10; // Rimbalzo rapido
					Ball->count = 0; 
				}
			}
			
			// Effetto di volo: scala da 0 a g_pass_max_height e viceversa
			u8 scale;
			if (progress <= half_frame) {
				scale = (progress * g_pass_max_height) / half_frame;
			} else {
				u8 progress_down = progress - half_frame;
				scale = g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
			}
			if (scale > 7) scale = 7; 
			CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
			
			Ball->count++;
			if (Ball->count >= g_pass_max_frames) {
				Ball->anim = 0; // Passaggio completato
				Ball->count = 0;
				Ball->dx = Ball->dy = 0;
				CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); 
			}
		} else {
			u8 speed = Ball->anim + 1;
			if (Ball->dx > 0) Ball->lx += speed; else if (Ball->dx < 0) Ball->lx -= speed;
			if (Ball->dy > 0) Ball->ly += speed; else if (Ball->dy < 0) Ball->ly -= speed;
			Ball->anim--;
		}
	}

	// Decrementa il timer di immunità ai contrasti
	if (Ball->anim < 5 && Ball->count > 0) {
		Ball->count--;
	}
}

void UpdateReferee()
{
	struct ObjectInfo* Ball = &SwSprite[14];
	struct ObjectInfo* Referee = &SwSprite[26];

	u16 target_x = (Ball->lx < 128) ? ((u16)Ball->lx + 40) : ((u16)Ball->lx - 40);
	u16 target_y = (Ball->ly < 256) ? (Ball->ly + 48) : (Ball->ly - 48);

	if (target_x < 16) target_x = 16;
	if (target_x > 224) target_x = 224;
	if (target_y < 24) target_y = 24;
	if (target_y > 488) target_y = 488;

	i8 ref_dx = 0;
	i8 ref_dy = 0;
	u8 speed = 1; 

	if (target_x > Referee->lx + speed) ref_dx = speed;
	else if (target_x < Referee->lx - speed) ref_dx = -speed;

	if (target_y > Referee->ly + speed) ref_dy = speed;
	else if (target_y < Referee->ly - speed) ref_dy = -speed;

	Referee->lx += ref_dx;
	Referee->ly += ref_dy;

	i8 look_dx = (Ball->lx > Referee->lx) ? 1 : ((Ball->lx < Referee->lx) ? -1 : 0);
	i8 look_dy = (Ball->ly > Referee->ly) ? 1 : ((Ball->ly < Referee->ly) ? -1 : 0);
	if (look_dx == 0 && look_dy == 0) look_dy = 1; 

	if (ref_dx != 0 || ref_dy != 0) {
		Referee->anim++;
		const u8 walk_seq[4] = {0, 1, 2, 1};
		Referee->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, 26, look_dx, look_dy, walk_seq[(Referee->anim / 3) % 4]);
	} else {
		Referee->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, 26, look_dx, look_dy);
	}
}