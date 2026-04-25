// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 19 - Player Animation Frames (Moved from Segment 11 to avoid overflow)
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"

u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step) 
{
	bool is_gk = (i == 0 || i == 7);
	if (i == 26) { // Arbitro
		if (dy < 0 && dx == 0) return (step==0) ? SPR_REFEREE_NORTH_DIRECTION_1 : (step==1) ? SPR_REFEREE_NORTH_DIRECTION_2 : SPR_REFEREE_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_REFEREE_SOUTH_DIRECTION_1 : (step==1) ? SPR_REFEREE_SOUTH_DIRECTION_2 : SPR_REFEREE_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_REFEREE_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_EAST_DIRECTION_2 : SPR_REFEREE_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_REFEREE_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_WEST_DIRECTION_2 : SPR_REFEREE_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_REFEREE_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_NORTH_EAST_DIRECTION_2 : SPR_REFEREE_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_REFEREE_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_NORTH_WEST_DIRECTION_2 : SPR_REFEREE_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_REFEREE_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_SOUTH_EAST_DIRECTION_2 : SPR_REFEREE_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_REFEREE_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_SOUTH_WEST_DIRECTION_2 : SPR_REFEREE_SOUTH_WEST_DIRECTION_3;
		return SPR_REFEREE_FACE_TO_SOUTH;
	}
	u8 team = (i < 7) ? 1 : 2;
	bool is_celebrating = (RestartType == RESTART_GOAL && ((team == 1 && KickOffTeam == TEAM_2) || (team == 2 && KickOffTeam == TEAM_1)));
	
	if (is_gk) {
		if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_EAST_DIRECTION_2 : SPR_GK_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_WEST_DIRECTION_2 : SPR_GK_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_GK_PLAYER_FACE_TO_SOUTH;
	} 
	else if (team == 1) {
		if (is_celebrating && dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : (step==1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3;
		if (is_celebrating && dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : (step==1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3;

		if (dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_DIRECTION_2 : SPR_T1_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_EAST_DIRECTION_2 : SPR_T1_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_WEST_DIRECTION_2 : SPR_T1_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_T1_PLAYER_FACE_TO_SOUTH;
	} 
	else {
		if (is_celebrating && dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : (step==1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3;
		if (is_celebrating && dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : (step==1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3;

		if (dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_DIRECTION_2 : SPR_T2_PLAYER_NORTH_DIRECTION_3;
		if (dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_DIRECTION_3;
		if (dy == 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_EAST_DIRECTION_2 : SPR_T2_PLAYER_EAST_DIRECTION_3;
		if (dy == 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_WEST_DIRECTION_2 : SPR_T2_PLAYER_WEST_DIRECTION_3;
		if (dy < 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3;
		if (dy < 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3;
		if (dy > 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3;
		if (dy > 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3;
		return SPR_T2_PLAYER_FACE_TO_NORTH;
	}
}

u16 GetPlayerIdleFrame(u8 i, i8 dx, i8 dy) 
{
	bool is_gk = (i == 0 || i == 7);
	if (i == 26) { // Arbitro
		if (dy < 0 && dx == 0) return SPR_REFEREE_FACE_TO_NORTH;
		if (dy > 0 && dx == 0) return SPR_REFEREE_FACE_TO_SOUTH;
		if (dy == 0 && dx > 0) return SPR_REFEREE_FACE_TO_EAST;
		if (dy == 0 && dx < 0) return SPR_REFEREE_FACE_TO_WEST;
		if (dy < 0 && dx > 0) return SPR_REFEREE_FACE_TO_NORTH_EAST;
		if (dy < 0 && dx < 0) return SPR_REFEREE_FACE_TO_NORTH_WEST;
		if (dy > 0 && dx > 0) return SPR_REFEREE_FACE_TO_SOUTH_EAST;
		if (dy > 0 && dx < 0) return SPR_REFEREE_FACE_TO_SOUTH_WEST;
		return SPR_REFEREE_FACE_TO_SOUTH;
	}
	u8 team = (i < 7) ? 1 : 2;
	
	if (is_gk) {
		if (dy < 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_NORTH;
		if (dy > 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_SOUTH;
		if (dy == 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_EAST;
		if (dy == 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_WEST;
		if (dy < 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_NORTH_EAST;
		if (dy < 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_NORTH_WEST;
		if (dy > 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_EAST;
		if (dy > 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_WEST;
		return SPR_GK_PLAYER_FACE_TO_SOUTH;
	} 
	else if (team == 1) {
		if (dy < 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_NORTH;
		if (dy > 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_SOUTH;
		if (dy == 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_EAST;
		if (dy == 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_WEST;
		if (dy < 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_NORTH_EAST;
		if (dy < 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_NORTH_WEST;
		if (dy > 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_EAST;
		if (dy > 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_WEST;
		return SPR_T1_PLAYER_FACE_TO_SOUTH;
	} 
	else {
		if (dy < 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_NORTH;
		if (dy > 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_SOUTH;
		if (dy == 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_EAST;
		if (dy == 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_WEST;
		if (dy < 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_NORTH_EAST;
		if (dy < 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_NORTH_WEST;
		if (dy > 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_EAST;
		if (dy > 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_WEST;
		return SPR_T2_PLAYER_FACE_TO_NORTH;
	}
}