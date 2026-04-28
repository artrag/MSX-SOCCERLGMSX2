// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────



// ------------------
// *** STRUCTURES ***
// ------------------
struct ObjectInfo {
	u8 lx;			// Logical x
	u8 x0,x1,x2;	// Physical x's in the 3 pages
	u16 ly;			// Logical Y
	u16 y0,y1,y2;	// Physical y's in the 3 pages
	u8 tx;			// Target x
	u16 ty;			// Target y
	u16 frame;
	i8 dx;			// x direction
	i8 dy;			// y direction
	u16 anim;
	u16 count;
};

struct InputState {
    u8 direction;
    bool trigger_pressed;
    bool trigger_down;
};

struct TeamColors {
    u16 Shirt;
    u16 Shorts;
    u16 Stripes;
};

struct TeamStats {
    u8 speed_carrier;      // Velocità portatore palla (1-5)
    u8 speed_chasing;      // Velocità inseguimento (1-5)
    u8 pass_tendency;      // Propensione passaggi e cambi (1-5)
    u8 dribble_variation;  // Propensione a cambi direzione (1-5)
    u8 aggro_defense;      // Aggressività difesa/tackle (1-5)
    u8 aggro_attack;       // Aggressività attacco/tiro (1-5)
    u8 gk_penalty_skill;   // Bravura portiere rigori (1-5)
};

// ---------------
// *** DEFINES ***
// ---------------

#define DIRECTION_NONE  			        0
#define DIRECTION_UP    			        1
#define DIRECTION_UP_RIGHT  		        2
#define DIRECTION_RIGHT  		            3
#define DIRECTION_DOWN_RIGHT  	            4
#define DIRECTION_DOWN         	            5
#define DIRECTION_DOWN_LEFT  	            6
#define DIRECTION_LEFT  			        7
#define DIRECTION_UP_LEFT  		            8

#define SPR_T1_PLAYER_PRESENTATION   				3
#define SPR_T1_PLAYER_EAST_DIRECTION_1				29
#define SPR_T1_PLAYER_EAST_DIRECTION_2				28
#define SPR_T1_PLAYER_EAST_DIRECTION_3				27
#define SPR_T1_PLAYER_WEST_DIRECTION_1				24
#define SPR_T1_PLAYER_WEST_DIRECTION_2				25
#define SPR_T1_PLAYER_WEST_DIRECTION_3				26
#define SPR_T1_PLAYER_NORTH_DIRECTION_1				19
#define SPR_T1_PLAYER_NORTH_DIRECTION_2				20
#define SPR_T1_PLAYER_NORTH_DIRECTION_3				21
#define SPR_T1_PLAYER_SOUTH_DIRECTION_1				0
#define SPR_T1_PLAYER_SOUTH_DIRECTION_2				1
#define SPR_T1_PLAYER_SOUTH_DIRECTION_3				2
#define SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1		10
#define SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2		11
#define SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3		12
#define SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1		9
#define SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2		8
#define SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3		7
#define SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1		15
#define SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2		14
#define SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3		13
#define SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1		16
#define SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2		17
#define SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3		18
#define SPR_T1_PLAYER_TACKLE_FROM_EAST				31
#define SPR_T1_PLAYER_TACKLE_FROM_WEST				30
#define SPR_T1_PLAYER_THROWIN_FROM_WEST_1			37
#define SPR_T1_PLAYER_THROWIN_FROM_WEST_2			36
#define SPR_T1_PLAYER_THROWIN_FROM_WEST_3			35
#define SPR_T1_PLAYER_THROWIN_FROM_EAST_1			34
#define SPR_T1_PLAYER_THROWIN_FROM_EAST_2			33
#define SPR_T1_PLAYER_THROWIN_FROM_EAST_3			32
#define SPR_T1_PLAYER_FACE_TO_NORTH 				20
#define SPR_T1_PLAYER_FACE_TO_SOUTH 				1
#define SPR_T1_PLAYER_FACE_TO_EAST 					26
#define SPR_T1_PLAYER_FACE_TO_WEST 					27
#define SPR_T1_PLAYER_FACE_TO_NORTH_EAST 			15
#define SPR_T1_PLAYER_FACE_TO_NORTH_WEST 			16
#define SPR_T1_PLAYER_FACE_TO_SOUTH_EAST 			27
#define SPR_T1_PLAYER_FACE_TO_SOUTH_WEST 			26
#define SPR_T1_PLAYER_SHOT_TO_NORTH 				38
#define SPR_T1_PLAYER_SHOT_TO_SOUTH 				39
#define SPR_T1_PLAYER_SHOT_TO_EAST 					41
#define SPR_T1_PLAYER_SHOT_TO_WEST 					40
#define SPR_T1_PLAYER_SHOT_TO_NORTH_EAST 			38
#define SPR_T1_PLAYER_SHOT_TO_NORTH_WEST 			38
#define SPR_T1_PLAYER_SHOT_TO_SOUTH_EAST        	42
#define SPR_T1_PLAYER_SHOT_TO_SOUTH_WEST        	41
#define SPR_T1_PLAYER_HAPPY_TO_SOUTH_1        		60
#define SPR_T1_PLAYER_HAPPY_TO_SOUTH_2        		61
#define SPR_T1_PLAYER_HAPPY_TO_SOUTH_3        		62
#define SPR_T1_PLAYER_HAPPY_TO_NORTH_1        		92
#define SPR_T1_PLAYER_HAPPY_TO_NORTH_2        		93
#define SPR_T1_PLAYER_HAPPY_TO_NORTH_3        		94
#define SPR_T2_PLAYER_PRESENTATION   				118
#define SPR_T2_PLAYER_EAST_DIRECTION_1          	141
#define SPR_T2_PLAYER_EAST_DIRECTION_2          	140
#define SPR_T2_PLAYER_EAST_DIRECTION_3          	139
#define SPR_T2_PLAYER_WEST_DIRECTION_1          	136
#define SPR_T2_PLAYER_WEST_DIRECTION_2          	137
#define SPR_T2_PLAYER_WEST_DIRECTION_3          	138
#define SPR_T2_PLAYER_NORTH_DIRECTION_1         	131
#define SPR_T2_PLAYER_NORTH_DIRECTION_2         	132
#define SPR_T2_PLAYER_NORTH_DIRECTION_3         	133
#define SPR_T2_PLAYER_SOUTH_DIRECTION_1         	112
#define SPR_T2_PLAYER_SOUTH_DIRECTION_2         	113
#define SPR_T2_PLAYER_SOUTH_DIRECTION_3         	114
#define SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1    	124
#define SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2    	123
#define SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3    	122
#define SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1    	119
#define SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2    	120
#define SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3    	121
#define SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1    	127
#define SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2    	126
#define SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3    	125
#define SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1    	128
#define SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2    	129
#define SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3    	130
#define SPR_T2_PLAYER_TACKLE_FROM_EAST          	143
#define SPR_T2_PLAYER_TACKLE_FROM_WEST          	142
#define SPR_T2_PLAYER_THROWIN_FROM_WEST_1       	149
#define SPR_T2_PLAYER_THROWIN_FROM_WEST_2       	148
#define SPR_T2_PLAYER_THROWIN_FROM_WEST_3       	147
#define SPR_T2_PLAYER_THROWIN_FROM_EAST_1       	146
#define SPR_T2_PLAYER_THROWIN_FROM_EAST_2       	145
#define SPR_T2_PLAYER_THROWIN_FROM_EAST_3       	144
#define SPR_T2_PLAYER_FACE_TO_NORTH             	131
#define SPR_T2_PLAYER_FACE_TO_SOUTH             	112
#define SPR_T2_PLAYER_FACE_TO_EAST              	139
#define SPR_T2_PLAYER_FACE_TO_WEST              	138
#define SPR_T2_PLAYER_FACE_TO_NORTH_EAST        	127
#define SPR_T2_PLAYER_FACE_TO_NORTH_WEST        	128
#define SPR_T2_PLAYER_FACE_TO_SOUTH_EAST        	139
#define SPR_T2_PLAYER_FACE_TO_SOUTH_WEST        	138
#define SPR_T2_PLAYER_SHOT_TO_NORTH             	150
#define SPR_T2_PLAYER_SHOT_TO_SOUTH             	151
#define SPR_T2_PLAYER_SHOT_TO_EAST              	153
#define SPR_T2_PLAYER_SHOT_TO_WEST              	152
#define SPR_T2_PLAYER_SHOT_TO_NORTH_EAST        	150
#define SPR_T2_PLAYER_SHOT_TO_NORTH_WEST        	150
#define SPR_T2_PLAYER_SHOT_TO_SOUTH_EAST        	154
#define SPR_T2_PLAYER_SHOT_TO_SOUTH_WEST        	153
#define SPR_T2_PLAYER_HAPPY_TO_SOUTH_1        		156
#define SPR_T2_PLAYER_HAPPY_TO_SOUTH_2        		157
#define SPR_T2_PLAYER_HAPPY_TO_SOUTH_3        		158
#define SPR_T2_PLAYER_HAPPY_TO_NORTH_1        		204
#define SPR_T2_PLAYER_HAPPY_TO_NORTH_2        		205
#define SPR_T2_PLAYER_HAPPY_TO_NORTH_3        		206
#define SPR_GK_PLAYER_EAST_DIRECTION_1          	237
#define SPR_GK_PLAYER_EAST_DIRECTION_2          	236
#define SPR_GK_PLAYER_EAST_DIRECTION_3          	235
#define SPR_GK_PLAYER_WEST_DIRECTION_1          	232
#define SPR_GK_PLAYER_WEST_DIRECTION_2          	233
#define SPR_GK_PLAYER_WEST_DIRECTION_3          	234
#define SPR_GK_PLAYER_NORTH_DIRECTION_1         	227
#define SPR_GK_PLAYER_NORTH_DIRECTION_2         	228
#define SPR_GK_PLAYER_NORTH_DIRECTION_3         	229
#define SPR_GK_PLAYER_SOUTH_DIRECTION_1         	208
#define SPR_GK_PLAYER_SOUTH_DIRECTION_2         	209
#define SPR_GK_PLAYER_SOUTH_DIRECTION_3         	210
#define SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1    	220
#define SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2    	219
#define SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3    	218
#define SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1    	215
#define SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2    	216
#define SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3    	217
#define SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1    	223
#define SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2    	222
#define SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3    	221
#define SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1    	224
#define SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2    	225
#define SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3    	226
#define SPR_GK_PLAYER_FACE_TO_NORTH             	214
#define SPR_GK_PLAYER_FACE_TO_SOUTH             	213
#define SPR_GK_PLAYER_FACE_TO_EAST              	234
#define SPR_GK_PLAYER_FACE_TO_WEST              	235
#define SPR_GK_PLAYER_FACE_TO_NORTH_EAST        	223
#define SPR_GK_PLAYER_FACE_TO_NORTH_WEST        	224
#define SPR_GK_PLAYER_FACE_TO_SOUTH_EAST        	235
#define SPR_GK_PLAYER_FACE_TO_SOUTH_WEST        	234
#define SPR_GK_PLAYER_SHOT_TO_NORTH             	246
#define SPR_GK_PLAYER_SHOT_TO_SOUTH             	247
#define SPR_GK_PLAYER_SHOT_TO_EAST              	249
#define SPR_GK_PLAYER_SHOT_TO_WEST              	248
#define SPR_GK_PLAYER_SHOT_TO_NORTH_EAST        	246
#define SPR_GK_PLAYER_SHOT_TO_NORTH_WEST        	246
#define SPR_GK_PLAYER_SHOT_TO_SOUTH_EAST        	250
#define SPR_GK_PLAYER_SHOT_TO_SOUTH_WEST        	249
#define SPR_GK_PLAYER_SOUTH_WITH_BALL           	243
#define SPR_GK_PLAYER_NORTH_WITH_BALL        		240
#define SPR_GK_PLAYER_SOUTH_1			        	242
#define SPR_GK_PLAYER_SOUTH_2			        	245
#define SPR_GK_PLAYER_SOUTH_SHOT			    	246
#define SPR_GK_PLAYER_NORTH_1			        	242
#define SPR_GK_PLAYER_NORTH_2			        	245
#define SPR_GK_PLAYER_NORTH_SHOT			    	247
#define SPR_GK_PLAYER_DOWN_EAST_NORTH				239
#define SPR_GK_PLAYER_DOWN_WEST_NORTH			 	238
#define SPR_GK_PLAYER_DOWN_EAST_SOUTH				226
#define SPR_GK_PLAYER_DOWN_WEST_SOUTH	    		248
#define SPR_GK_PLAYER_HAPPY_1					    253
#define SPR_GK_PLAYER_HAPPY_2					    254
#define SPR_GK_PLAYER_HAPPY_3					    255
#define SPR_REFEREE_SOUTH_DIRECTION_1        		256
#define SPR_REFEREE_SOUTH_DIRECTION_2        		257
#define SPR_REFEREE_SOUTH_DIRECTION_3        		258
#define SPR_REFEREE_NORTH_DIRECTION_1        		275
#define SPR_REFEREE_NORTH_DIRECTION_2        		276
#define SPR_REFEREE_NORTH_DIRECTION_3        		277
#define SPR_REFEREE_EAST_DIRECTION_1     			285
#define SPR_REFEREE_EAST_DIRECTION_2         		284
#define SPR_REFEREE_EAST_DIRECTION_3         		283
#define SPR_REFEREE_WEST_DIRECTION_1         		280
#define SPR_REFEREE_WEST_DIRECTION_2         		281
#define SPR_REFEREE_WEST_DIRECTION_3         		282
#define SPR_REFEREE_SOUTH_EAST_DIRECTION_1   		268
#define SPR_REFEREE_SOUTH_EAST_DIRECTION_2   		267
#define SPR_REFEREE_SOUTH_EAST_DIRECTION_3   		266
#define SPR_REFEREE_SOUTH_WEST_DIRECTION_1   		263
#define SPR_REFEREE_SOUTH_WEST_DIRECTION_2   		265
#define SPR_REFEREE_SOUTH_WEST_DIRECTION_3   		264
#define SPR_REFEREE_NORTH_EAST_DIRECTION_1   		271
#define SPR_REFEREE_NORTH_EAST_DIRECTION_2   		270
#define SPR_REFEREE_NORTH_EAST_DIRECTION_3   		269
#define SPR_REFEREE_NORTH_WEST_DIRECTION_1   		272
#define SPR_REFEREE_NORTH_WEST_DIRECTION_2   		273
#define SPR_REFEREE_NORTH_WEST_DIRECTION_3   		274
#define SPR_REFEREE_FACE_TO_NORTH            		261
#define SPR_REFEREE_FACE_TO_SOUTH            		262
#define SPR_REFEREE_FACE_TO_EAST             		282
#define SPR_REFEREE_FACE_TO_WEST             		283
#define SPR_REFEREE_FACE_TO_NORTH_EAST       		272
#define SPR_REFEREE_FACE_TO_NORTH_WEST       		271
#define SPR_REFEREE_FACE_TO_SOUTH_EAST       		265
#define SPR_REFEREE_FACE_TO_SOUTH_WEST       		264
#define SPR_BALL_SIZE_1								96
#define SPR_BALL_SIZE_2								97
#define SPR_BALL_SIZE_3								98
#define SPR_BALL_SIZE_4								99
#define SPR_BALL_SIZE_5								100
#define SPR_BALL_SIZE_6								101
#define SPR_BALL_SIZE_7								102
#define SPR_BALL_SIZE_8								103
#define SPR_LITTLE_ARROW_TOP						304
#define SPR_LITTLE_ARROW_BOTTOM						305
#define SPR_MENU_SELECTOR							306
#define SPR_BIG_ARROW_TOP						    108
#define SPR_BIG_ARROW_BOTTOM						107
#define SPR_BIG_PENALTY_DISH						109
#define SPR_T1_O                                    47
#define SPR_T1_X                                    22
#define SPR_T2_O                                    159
#define SPR_T2_X                                    134

#define SPR_MSG_KICKOFF								288
#define SPR_MSG_GOALKICK							292
#define SPR_MSG_THROWIN								297
#define SPR_MSG_CORNERKICK							304
#define SPR_MSG_INGOAL								313
#define SPR_MSG_TIMEUP								320
#define SPR_MSG_HALFTIME							324
#define SPR_MSG_PENALTIES							329
#define SPR_MSG_OFFSIDE								248

#define SPRITE_FOCUSED_PLAYER_OFFSET				48

#define SPRITE_MSG_KICKOFF_LENGTH					4
#define SPRITE_MSG_GOALKICK_LENGTH					5
#define SPRITE_MSG_THROWIN_LENGTH					5
#define SPRITE_MSG_CORNERKICK_LENGTH				6
#define SPRITE_MSG_INGOAL_LENGTH					4
#define SPRITE_MSG_OFFSIDE_LENGTH					4

#define SPRITE_MSG_TIMEUP_LENGTH					4
#define SPRITE_MSG_HALFTIME_LENGTH					5
#define SPRITE_MSG_PENALTIES_LENGTH					5

#define RESTART_THROWIN                             1
#define RESTART_GOALKICK                            2
#define RESTART_CORNERKICK                          3
#define RESTART_GKSAVE                              4
#define RESTART_GOAL                                5
#define RESTART_KICKOFF_SCROLL                      6
#define RESTART_OFFSIDE                             7

#define TEAM_1                                      0
#define TEAM_2                                      1

#define TEAM_ITA_COLORS                             0
#define TEAM_FRA_COLORS                             1
#define TEAM_BRA_COLORS                             2
#define TEAM_GER_COLORS                             3
#define TEAM_NLD_COLORS                             4
#define TEAM_ESP_COLORS                             5

#define GAMEMODE_P1_VS_CPU                          0
#define GAMEMODE_P1_VS_P2                           1

#define HALF_TIME_MINS                              1
#define HALF_TIME_SECS                              0

#define PRESENTATION_WAIT_TIME                      (2 * 60) // 2 secondi a 60 fps

#define BALL_START_X                                120
#define BALL_START_Y                                256

#define PENALTY_NORTH_Y                              74
#define PENALTY_SOUTH_Y                             434
#define PENALTY_DISH_X                              120

#define SCREEN_LINES            212     // righe visibili Screen 5
#define BANK3_BASE              0xA000
#define FIELD_SEG_COUNT         4

#define SEG_LOOP 		4
#define SEG_DRAW 		5
#define SEG_LOGIC 		6
#define SEG_INPUT 		7
#define SEG_EVENTS  	8
#define SEG_GAMESTATE_1 9
#define SEG_FIELD		10
#define SEG_GAMESTATE_2 11
#define SEG_GAMESTATE_3 12
#define SEG_GAMESTATE_4 13
#define SEG_MENU        14
#define SEG_GAMESTATE_5 15
#define SEG_GAMESTATE_6 16
#define SEG_GAMESTATE_7 17
#define SEG_GAMESTATE_8 18
#define SEG_GAMESTATE_9 19
#define SEG_HELPERS     20
#define SEG_LOGIC_2     21

#define OnScreen(y)  	((y) < 512 && (((y) + 527 - Field.ly) & 511) < 207)
#define SplitSprite(y)  (((y & 255))>240)
#define NumSprite	(39)

#define SCOREBOARD_NX_LEFT 8
#define SCOREBOARD_NY_LEFT 212
#define SCOREBOARD_NX_RIGHT 8
#define SCOREBOARD_NY_RIGHT 212

#define FIELD_HEIGHT 512


// -----------------
// *** CONSTANTS ***
// -----------------

extern const unsigned char g_Fonts[];
extern const struct TeamColors g_TeamColorsArray[];
extern const struct TeamStats g_TeamStatsArray[];

// -----------------
// *** VARIABLES ***
// -----------------

extern  struct ObjectInfo SwSprite[NumSprite];
extern 	struct ObjectInfo Field;
extern 	struct ObjectInfo ScoreBoardLeft;
extern 	struct ObjectInfo ScoreBoardRight;
extern	u8	Frms;
extern	u8	Secs;
extern	u8	Mins;
extern  u8  LastSecs;
extern  u8  ScoreTeam1;
extern  u8  ScoreTeam2;
extern  u8  LastScoreTeam1;
extern  u8  LastScoreTeam2;
extern  struct ObjectInfo Field;
extern  bool g_is_penalty_shootout;
extern  u8  g_penalty_shot_count[2];
extern  u8  g_penalty_shooter_idx;
extern  u8  g_penalty_team;
extern  u8  g_penalty_arrow_pos;
extern  i8  g_penalty_arrow_dir;
extern  struct ObjectInfo ScoreBoardLeft;
extern  struct ObjectInfo ScoreBoardRight;

extern	u8  Team1Code;
extern	u8  Team2Code;
extern  u8  KickOffTeam;
extern  u8  Half;
extern  u8  GameMode;
extern  u8  T1_Carrier;
extern  u8  T1_Receiver;
extern  u8  T2_Carrier;
extern  u8  T2_Receiver;
extern  bool TimerEnabled;
extern  u8  LastTouchTeam;
extern  u8  LastTouchPlayer;
extern  u8  RestartType;
extern  u8  RestartSideX;
extern  u16 RestartSideY;
extern  u8  g_throw_rec_1;
extern  u8  g_throw_rec_2;
extern  u8  g_selected_rec;
extern  u8  g_thrower_id;
extern  u16 g_pass_start_x;
extern  u16 g_pass_start_y;
extern  u16 g_pass_target_x;
extern  u16 g_pass_target_y;
extern  u8  g_pass_max_frames;
extern  u8  g_pass_max_height;
extern  u8  g_pass_receiver;
extern  i8  g_last_dx[2];
extern  i8  g_last_dy[2];
extern  u8  g_prev_trigger[2];
extern  u8  g_last_input_dir;
extern  u16 g_h_arrow_x;
extern  i8  g_h_arrow_dir;
extern  u8  g_closest_t1;
extern  u8  g_closest_t2;
extern  bool g_is_ball_carried;

extern struct InputState g_player_input[2];
extern struct TeamStats g_ActiveStats[2];



// ------------------
// *** PROTOTYPES ***
// ------------------

// +++ SEGMENT 0 +++
void main();
void VSyncCallback();
void WaitForVBlank();
void CallSpriteFrame(u8 x, u16 y, u16 frame);
void LoadField(u8);
void CallFnc_VOID(u8 bank, void (*func)());
void CallFnc_VOID_P1(u8 bank, void (*func)(u8), u8 p1);
void CallFnc_VOID_U8_PTR(u8 bank, void (*func)(u8, const struct TeamColors*), u8 p1, const struct TeamColors* p2);
void CallFnc_VOID_U8U16U16(u8 bank, void (*func)(u8, u16, u16), u8 p1, u16 p2, u16 p3);
void CallFnc_VOID_3PTR(u8 bank, void (*func)(u8*, u8*, u8*), u8* p1, u8* p2, u8* p3);
void CallFnc_VOID_3PTR_U16(u8 bank, void (*func)(u8*, u8*, u8*, u16), u8* p1, u8* p2, u8* p3, u16 p4);
void CallFnc_VOID_16_P1(u8 segment, void (*func)(u16), u16 p1);
bool CallFnc_BOOL(u8 bank, u8 (*func)()) ;
u8 CallFnc_U8(u8 bank, u8 (*func)());
void CallFnc_VOID_16_P2(u8 bank, void (*func)(u16,u16), u16 p1, u16 p2);
bool CallFnc_BOOL_P1(u8 bank, u8 (*func)(u8), u8 p1);
void CallFnc_VOID_U8U8(u8 bank, void (*func)(u8, u8), u8 p1, u8 p2);
u8 CallFnc_U8_P2(u8 bank, u8 (*func)(u8, u8), u8 p1, u8 p2);
u8 CallFnc_U8_P1(u8 bank, u8 (*func)(u8), u8 p1);
u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1);
u16 CallFnc_U16_P3(u8 segment, u16 (*func)(u8, i8, i8), u8 p1, i8 p2, i8 p3);
u16 CallFnc_U16_P4(u8 segment, u16 (*func)(u8, i8, i8, u8), u8 p1, i8 p2, i8 p3, u8 p4);
u16 CallFnc_U16_P4B(u8 segment, u16 (*func)(u8, u8, i8, i8), u8 p1, u8 p2, i8 p3, i8 p4);
void AddLines(struct ObjectInfo* Field);
void SetTeamColors(u8 team, const struct TeamColors* colors);


// +++ SEGMENT SEG_LOOP (4) +++
void MainLoop();
u16 GetDrawFrame(u8 i);

// +++ SEGMENT SEG_DRAW (5) +++
void PlotField(u16 y,u16 page);
void RemoveSwSprite(u8 px,u16 py,u16 page);
void RemoveScoreBoardLeft(u8 px,u16 py,u16 page);
void PrintScoreBoardLeft(u8 px,u16 py,u16 page);
void RemoveScoreBoardRight(u8 px,u16 py,u16 page);
void PrintScoreBoardRight(u8 px,u16 py,u16 page);
bool IsBallForeground();
void ShowSpriteMessage(u16 messageId);
void HideSpriteMessage();



// +++ SEGMENT SEG_LOGIC (6) +++
void PlayerAI(u8 i);
void SetBallSprite(u8 height);

// +++ SEGMENT SEG_HELPERS (20) +++
u16 FindReceiver(u8 carrier, u8 ignore_player, i8 c_dx, i8 c_dy);

// +++ SEGMENT SEG_INPUT (7) +++
bool IsTeamJoystickTriggerPressed(u8 player);
u8 GetJoystickDirection(u8 player);
void UpdateAllInputs();

// +++ SEGMENT SEG_EVENTS (8) +++
void EventStartPresentationScrollig();
void EventPlayerFirstPresentationStarted();
void EventKickOffReady();
void EventBallKicked();
void EventHalfTime();
void EventTimeUp();
void EventThrowIn();
void EventCornerKick();
void EventGoalKick();
void EventOffside();
void EventGoal();
void EventPenaltyWhistle();

// +++ SEGMENT SEG_GAMESTATE_1 (9) +++
void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly);

// +++ SEGMENT SEG_GAMESTATE_2 (11) +++
void AssignKickOffTargets();
void AssignThrowInTargets();
void AssignGoalKickTargets();
void AssignCornerKickTargets();
void AssignOffsideTargets();
void ExecuteThrowIn(u8 thrower, u8 receiver);
void ExecuteCornerKick(u8 thrower, u8 receiver);

// +++ SEGMENT SEG_GAMESTATE_3 (12) +++
void UpdateGameState_Restarts(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly);

// +++ SEGMENT SEG_GAMESTATE_4 (13) +++
void UpdateGameState_Init(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly);

// +++ SEGMENT SEG_MENU (14) +++
void ShowMenu();

// +++ SEGMENT SEG_GAMESTATE_5 (15) +++
void UpdateGameState_SetPieces(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly);
void UpdateGameState_Penalties_End(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly);

// +++ SEGMENT SEG_GAMESTATE_6 (16) +++
void UpdateGameState_Penalties(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly);

// +++ SEGMENT SEG_GAMESTATE_7 (17) +++
void UpdateBallPhysics();
void UpdateReferee();

// +++ SEGMENT SEG_GAMESTATE_9 (19) +++
u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step);
u16 GetPlayerIdleFrame(u8 i, i8 dx, i8 dy);

// +++ SEGMENT SEG_FIELD (10) +++
void UpdateFieldCamera();
void CheckFieldBoundaries(u8* game_state, u8* wait_secs, u8* start_sec);

// +++ SEGMENT SEG_LOGIC_2 (21) +++
void PlayerAI_Movement(u8 i);