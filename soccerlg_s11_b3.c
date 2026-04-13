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

	u8 thrower = (team_to_throw == TEAM_1) ? 5 : 12;
	
	// Assicuriamoci che la Y non finisca fuori camera in basso/alto
	if (RestartSideY < 48) RestartSideY = 48;
	if (RestartSideY > 464) RestartSideY = 464;

	u16 thrower_y = RestartSideY - 8;
	i8 dir_x = (RestartSideX < 128) ? 1 : -1;
	u16 thrower_x = RestartSideX - (dir_x * 10); // Arretra di 10 pixel fuori dal campo

	SwSprite[14].lx = thrower_x;
	SwSprite[14].ly = thrower_y - 6; // Palla sopra la testa del battitore
	SwSprite[14].frame = SPR_BALL_SIZE_2; // Forza il Foreground per disegnare la palla sopra il giocatore
	SwSprite[14].dx = SwSprite[14].dy = SwSprite[14].anim = SwSprite[14].count = 0;
	g_thrower_id = thrower;

	// Lasciamo gli altri giocatori sul posto senza muoverli (per maggiore realismo visivo)
	for(u8 i=1; i<14; i++) {
		if (i == 0 || i == 7) continue;
		SwSprite[i].tx = SwSprite[i].lx;
		SwSprite[i].ty = SwSprite[i].ly;
	}

	SwSprite[thrower].tx = thrower_x;
	SwSprite[thrower].ty = thrower_y;
	
	u8 t1_p1 = (thrower == 3) ? 5 : 3; u8 t1_p2 = (thrower == 4) ? 6 : 4;
	u8 t2_p1 = (thrower == 10) ? 12 : 10; u8 t2_p2 = (thrower == 11) ? 13 : 11;
	
	// Salva in memoria chi sono i 2 destinatari validi per la squadra che batte
	if (team_to_throw == TEAM_1) {
		g_throw_rec_1 = t1_p1; g_throw_rec_2 = t1_p2;
	} else {
		g_throw_rec_1 = t2_p1; g_throw_rec_2 = t2_p2;
	}
	g_selected_rec = 0; // Default di partenza
	
	// Più in profondità nel campo e fortemente spaziati in altezza per non accavallarsi mai
	SwSprite[t1_p1].tx = RestartSideX + dir_x * 50; SwSprite[t1_p1].ty = RestartSideY - 64;
	SwSprite[t1_p2].tx = RestartSideX + dir_x * 70; SwSprite[t1_p2].ty = RestartSideY + 32;
	SwSprite[t2_p1].tx = RestartSideX + dir_x * 40; SwSprite[t2_p1].ty = RestartSideY - 32;
	SwSprite[t2_p2].tx = RestartSideX + dir_x * 60; SwSprite[t2_p2].ty = RestartSideY + 64;

	u8 players_to_check[4] = {t1_p1, t1_p2, t2_p1, t2_p2};
	for(u8 p=0; p<4; p++) {
		u8 idx = players_to_check[p];
		if (SwSprite[idx].tx < 16) SwSprite[idx].tx = 16;
		if (SwSprite[idx].tx > 240) SwSprite[idx].tx = 240;
		if (SwSprite[idx].ty < 30) SwSprite[idx].ty = 30;
		if (SwSprite[idx].ty > 482) SwSprite[idx].ty = 482;
	}

	// Allontana gli altri giocatori dalla riga laterale per fare spazio
	for(u8 i=1; i<14; i++) {
		if (i == 0 || i == 7 || i == thrower || i == t1_p1 || i == t1_p2 || i == t2_p1 || i == t2_p2) continue;
		
		if (RestartSideX < 128) {
			if (SwSprite[i].tx < 64) SwSprite[i].tx = 64 + (i * 2);
		} else {
			if (SwSprite[i].tx > 192) SwSprite[i].tx = 192 - (i * 2);
		}
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
	
	SwSprite[14].lx = g_pass_start_x;
	SwSprite[14].ly = g_pass_start_y;
	SwSprite[14].anim = 5; 
	SwSprite[14].count = 0; 
	CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	LastTouchTeam = (thrower < 7) ? TEAM_1 : TEAM_2;
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