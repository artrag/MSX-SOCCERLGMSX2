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
