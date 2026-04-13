// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 11 - Game State functions 2
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"

void AssignKickOffTargets() {
	SwSprite[0].tx = 120; SwSprite[0].ty = 32;   
	SwSprite[1].tx = 64;  SwSprite[1].ty = 96;   
	SwSprite[2].tx = 176; SwSprite[2].ty = 96;   
	SwSprite[5].tx = 40;  SwSprite[5].ty = 160;  
	SwSprite[6].tx = 200; SwSprite[6].ty = 160;  

	SwSprite[7].tx = 120; SwSprite[7].ty = 480;  
	SwSprite[8].tx = 64;  SwSprite[8].ty = 416;  
	SwSprite[9].tx = 176; SwSprite[9].ty = 416;  
	SwSprite[12].tx= 40;  SwSprite[12].ty= 312;  
	SwSprite[13].tx= 200; SwSprite[13].ty= 312;  

	if (KickOffTeam == TEAM_1) {
		SwSprite[3].tx = 112; SwSprite[3].ty = 236;
		SwSprite[4].tx = 128; SwSprite[4].ty = 236;
		SwSprite[10].tx= 100; SwSprite[10].ty= 296;
		SwSprite[11].tx= 140; SwSprite[11].ty= 296;
		
	} else {
		SwSprite[3].tx = 100; SwSprite[3].ty = 200;
		SwSprite[4].tx = 140; SwSprite[4].ty = 200;
		SwSprite[10].tx= 112; SwSprite[10].ty= 254;
		SwSprite[11].tx= 128; SwSprite[11].ty= 254;
	}
}

void AssignThrowInTargets() {
	u8 team_to_throw = (LastTouchTeam == TEAM_1) ? TEAM_2 : TEAM_1;
	if (LastTouchTeam == 0xFF) team_to_throw = TEAM_1;

	// Assicuriamoci che la Y non finisca fuori camera in basso/alto
	if (RestartSideY < 48) RestartSideY = 48;
	if (RestartSideY > 464) RestartSideY = 464;

	// 1. Trova il battitore (il giocatore più vicino alla palla escluso il portiere)
	u8 start_t = (team_to_throw == TEAM_1) ? 1 : 8;
	u8 end_t = start_t + 6;
	u8 thrower = start_t;
	u16 min_dist = 0xFFFF;
	
	for (u8 i = start_t; i < end_t; i++) {
		u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
		u16 dy = (SwSprite[i].ly > RestartSideY) ? (SwSprite[i].ly - RestartSideY) : (RestartSideY - SwSprite[i].ly);
		if (dx + dy < min_dist) {
			min_dist = dx + dy;
			thrower = i;
		}
	}
	
	// 2. Trova i due destinatari più vicini
	u8 rec1 = (thrower == start_t) ? start_t + 1 : start_t;
	u8 rec2 = (thrower == start_t) ? start_t + 2 : ((thrower == start_t + 1) ? start_t + 2 : start_t + 1);
	u16 min1 = 0xFFFF, min2 = 0xFFFF;
	
	for (u8 i = start_t; i < end_t; i++) {
		if (i == thrower) continue;
		u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
		u16 dy = (SwSprite[i].ly > RestartSideY) ? (SwSprite[i].ly - RestartSideY) : (RestartSideY - SwSprite[i].ly);
		if (dx + dy < min1) {
			min2 = min1; rec2 = rec1;
			min1 = dx + dy; rec1 = i;
		} else if (dx + dy < min2) {
			min2 = dx + dy; rec2 = i;
		}
	}
	
	// 3. Trova i 2 difensori più vicini per la marcatura
	u8 def_t = (team_to_throw == TEAM_1) ? 8 : 1;
	u8 def_end = def_t + 6;
	u8 def1 = def_t, def2 = def_t + 1;
	min1 = 0xFFFF; min2 = 0xFFFF;
	
	for (u8 i = def_t; i < def_end; i++) {
		u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
		u16 dy = (SwSprite[i].ly > RestartSideY) ? (SwSprite[i].ly - RestartSideY) : (RestartSideY - SwSprite[i].ly);
		if (dx + dy < min1) {
			min2 = min1; def2 = def1;
			min1 = dx + dy; def1 = i;
		} else if (dx + dy < min2) {
			min2 = dx + dy; def2 = i;
		}
	}

	// 4. Salva stato globale per la battuta
	u16 thrower_y = RestartSideY - 8;
	i8 dir_x = (RestartSideX < 128) ? 1 : -1;
	u16 thrower_x = RestartSideX - (dir_x * 10); // Arretra di 10 pixel fuori dal campo

	SwSprite[14].lx = thrower_x;
	SwSprite[14].ly = thrower_y - 6; // Palla sopra la testa del battitore
	SwSprite[14].frame = SPR_BALL_SIZE_2; 
	SwSprite[14].dx = SwSprite[14].dy = SwSprite[14].anim = SwSprite[14].count = 0;
	g_thrower_id = thrower;

	g_throw_rec_1 = rec1;
	g_throw_rec_2 = rec2;
	g_selected_rec = 0;

	// 5. Posiziona i Portieri
	SwSprite[0].tx = 128; SwSprite[0].ty = 32;
	SwSprite[7].tx = 128; SwSprite[7].ty = 480;

	// 6. Sposta tutta la squadra in posizioni tattiche relative alla palla
	for(u8 i=1; i<14; i++) {
		if (i == 7 || i == thrower || i == rec1 || i == rec2 || i == def1 || i == def2) continue;
		
		u8 team = (i < 7) ? TEAM_1 : TEAM_2;
		u8 role = (team == TEAM_1) ? i : (i - 7);
		u16 base_x = 128;
		u16 base_y = 256;

		if (role == 1) { base_x = 64;  base_y = (team == TEAM_1) ? 120 : 392; }
		else if (role == 2) { base_x = 192; base_y = (team == TEAM_1) ? 120 : 392; }
		else if (role == 3) { base_x = 64;  base_y = (team == TEAM_1) ? 200 : 312; }
		else if (role == 4) { base_x = 192; base_y = (team == TEAM_1) ? 200 : 312; }
		else if (role == 5) { base_x = 80;  base_y = (team == TEAM_1) ? 280 : 232; }
		else if (role == 6) { base_x = 176; base_y = (team == TEAM_1) ? 280 : 232; }
		
		// Comprimi la squadra verso la palla (seguono l'azione)
		i16 ball_offset_y = (i16)RestartSideY - 256;
		SwSprite[i].tx = base_x;
		SwSprite[i].ty = base_y + (ball_offset_y / 2);
		
		if (SwSprite[i].tx < 16) SwSprite[i].tx = 16;
		if (SwSprite[i].tx > 240) SwSprite[i].tx = 240;
		if (SwSprite[i].ty < 48) SwSprite[i].ty = 48;
		if (SwSprite[i].ty > 464) SwSprite[i].ty = 464;
	}

	SwSprite[thrower].tx = thrower_x;
	SwSprite[thrower].ty = thrower_y;
	
	// 7. Piazzamento preciso dei ricevitori e dei marcatori
	SwSprite[rec1].tx = RestartSideX + dir_x * 50; SwSprite[rec1].ty = RestartSideY - 48;
	SwSprite[rec2].tx = RestartSideX + dir_x * 70; SwSprite[rec2].ty = RestartSideY + 32;
	SwSprite[def1].tx = RestartSideX + dir_x * 40; SwSprite[def1].ty = RestartSideY - 24;
	SwSprite[def2].tx = RestartSideX + dir_x * 60; SwSprite[def2].ty = RestartSideY + 48;

	u8 players_to_check[4] = {rec1, rec2, def1, def2};
	for(u8 p=0; p<4; p++) {
		u8 idx = players_to_check[p];
		if (SwSprite[idx].tx < 16) SwSprite[idx].tx = 16;
		if (SwSprite[idx].tx > 240) SwSprite[idx].tx = 240;
		if (SwSprite[idx].ty < 30) SwSprite[idx].ty = 30;
		if (SwSprite[idx].ty > 482) SwSprite[idx].ty = 482;
	}
}

void ExecuteThrowIn(u8 thrower, u8 receiver) {
	g_pass_start_x = SwSprite[thrower].lx;
	g_pass_start_y = SwSprite[thrower].ly - 6; 
	g_pass_target_x = SwSprite[receiver].lx;
	g_pass_target_y = SwSprite[receiver].ly;
	
	u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	
	g_pass_max_frames = (r_dx + r_dy) / 4; 
	if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	if (g_pass_max_frames > 40) g_pass_max_frames = 40;
	g_pass_max_height = 3; // Altezza ridotta per il fallo laterale
	
	SwSprite[14].lx = g_pass_start_x;
	SwSprite[14].ly = g_pass_start_y;
	SwSprite[14].anim = 5; 
	SwSprite[14].count = 0; 
	CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	LastTouchTeam = (thrower < 7) ? TEAM_1 : TEAM_2;
	LastTouchPlayer = thrower;
}

u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step) 
{
	bool is_gk = (i == 0 || i == 7);
	u8 team = (i < 7) ? 1 : 2;
	
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