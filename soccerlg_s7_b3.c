// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 7 - Game logic functions
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "soccerlg.h"
#include "debug.h"
#include "input.h"

// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Check joystick trigger pression +++
bool IsTeamJoystickTriggerPressed(u8 player){		
	if (player == 0) { // Player 1 (Joystick 1 + Tastiera)
		u8 joyStat = Joystick_Read(JOY_PORT_1);
		if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
		{
			return true;
		}
		if(Keyboard_IsKeyPressed(KEY_SPACE))
		{
			return true;
		}
	} else { // Player 2 (Solo Joystick 2)
		u8 joyStat = Joystick_Read(JOY_PORT_2);
		if (IS_JOY_PRESSED(joyStat, JOY_INPUT_TRIGGER_A))
		{
			return true;
		}
	}
	return FALSE;
}

// +++ Get joystick status +++
u8 GetJoystickDirection(u8 player){
	u8 port = (player == 0) ? JOY_PORT_1 : JOY_PORT_2;
	u8 dir = Joystick_GetDirection(port);
	u8 retValue=DIRECTION_NONE;
	switch (dir){
		case JOY_INPUT_DIR_UP:
			retValue=DIRECTION_UP;
			break;
		case JOY_INPUT_DIR_DOWN:
			retValue=DIRECTION_DOWN;
			break;
		case JOY_INPUT_DIR_LEFT:
			retValue=DIRECTION_LEFT;
			break;
		case JOY_INPUT_DIR_RIGHT:
			retValue=DIRECTION_RIGHT;
			break;
		case JOY_INPUT_DIR_UP_RIGHT:
			retValue=DIRECTION_UP_RIGHT;
			break;
		case JOY_INPUT_DIR_UP_LEFT:
			retValue=DIRECTION_UP_LEFT;
			break;
		case JOY_INPUT_DIR_DOWN_RIGHT:
			retValue=DIRECTION_DOWN_RIGHT;
			break;
		case JOY_INPUT_DIR_DOWN_LEFT:
			retValue=DIRECTION_DOWN_LEFT;
			break;
	}
	if(retValue==DIRECTION_NONE && player == 0){
		if(Keyboard_IsKeyPressed(KEY_LEFT) && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP_LEFT;
		}
		if(Keyboard_IsKeyPressed(KEY_LEFT) && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN_LEFT;
		}
		if(Keyboard_IsKeyPressed(KEY_RIGHT) && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN_RIGHT;
		}
		if(Keyboard_IsKeyPressed(KEY_RIGHT) && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP_RIGHT;
		}		
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_LEFT))
		{
			retValue=DIRECTION_LEFT;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_RIGHT))
		{
			retValue=DIRECTION_RIGHT;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_UP))
		{
			retValue=DIRECTION_UP;
		}
		if(retValue==DIRECTION_NONE && Keyboard_IsKeyPressed(KEY_DOWN))
		{
			retValue=DIRECTION_DOWN;
		}
	}
	return retValue;
}

// +++ Update all player inputs once per frame +++
void UpdateAllInputs()
{
	// Static variable to hold the previous frame's trigger state for edge detection.
	// Index 0 for Team 1 (P2/CPU), Index 1 for Team 2 (P1).
	static bool s_prev_trigger_state[2] = {FALSE, FALSE};

	// --- Player 1 (Team 2, joy 0) ---
	// This player is always human-controlled.
	g_player_input[1].direction = GetJoystickDirection(0);
	bool p1_trigger_down = IsTeamJoystickTriggerPressed(0);
	g_player_input[1].trigger_pressed = p1_trigger_down && !s_prev_trigger_state[1];
	g_player_input[1].trigger_down = p1_trigger_down;
	s_prev_trigger_state[1] = p1_trigger_down;

	// --- Player 2 (Team 1, joy 1) or CPU ---
	if (GameMode == GAMEMODE_P1_VS_P2)
	{
		// In 2-player mode, read joystick 2.
		g_player_input[0].direction = GetJoystickDirection(1);
		bool p2_trigger_down = IsTeamJoystickTriggerPressed(1);
		g_player_input[0].trigger_pressed = p2_trigger_down && !s_prev_trigger_state[0];
		g_player_input[0].trigger_down = p2_trigger_down;
		s_prev_trigger_state[0] = p2_trigger_down;
	}
	else // In 1-player mode, this is the CPU, so clear inputs.
	{
		g_player_input[0].direction = DIRECTION_NONE;
		g_player_input[0].trigger_down = FALSE;
		g_player_input[0].trigger_pressed = FALSE;
		s_prev_trigger_state[0] = FALSE; // Ensure state is clean
	}
}
