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
	u16 frame;
	i8 dx;			// x direction
	i8 dy;			// y direction
	u16 anim;
	u16 count;
};

struct TeamColors {
    u16 Shirt;
    u16 Shorts;
    u16 Stripes;
};

// ---------------
// *** DEFINES ***
// ---------------

#define SPR_T1_PLAYER_EAST_DIRECTION_1				24
#define SPR_T1_PLAYER_EAST_DIRECTION_2				25
#define SPR_T1_PLAYER_EAST_DIRECTION_3				26
#define SPR_T1_PLAYER_WEST_DIRECTION_1				29
#define SPR_T1_PLAYER_WEST_DIRECTION_2				28
#define SPR_T1_PLAYER_WEST_DIRECTION_3				27
#define SPR_T1_PLAYER_NORTH_DIRECTION_1				19
#define SPR_T1_PLAYER_NORTH_DIRECTION_2				20
#define SPR_T1_PLAYER_NORTH_DIRECTION_3				21
#define SPR_T1_PLAYER_SOUTH_DIRECTION_1				0
#define SPR_T1_PLAYER_SOUTH_DIRECTION_2				1
#define SPR_T1_PLAYER_SOUTH_DIRECTION_3				2
#define SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1		7
#define SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2		8
#define SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3		9
#define SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1		12
#define SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2		11
#define SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3		10
#define SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1		16
#define SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2		17
#define SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3		18
#define SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1		15
#define SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2		14
#define SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3		13
#define SPR_T1_PLAYER_TACKLE_FROM_EAST				30
#define SPR_T1_PLAYER_TACKLE_FROM_WEST				31
#define SPR_T1_PLAYER_THROWIN_FROM_EAST_1			32
#define SPR_T1_PLAYER_THROWIN_FROM_EAST_2			33
#define SPR_T1_PLAYER_THROWIN_FROM_EAST_3			34
#define SPR_T1_PLAYER_THROWIN_FROM_WEST_1			37
#define SPR_T1_PLAYER_THROWIN_FROM_WEST_2			36
#define SPR_T1_PLAYER_THROWIN_FROM_WEST_3			35
#define SPR_T1_PLAYER_FACE_TO_NORTH 				6
#define SPR_T1_PLAYER_FACE_TO_SOUTH 				5
#define SPR_T1_PLAYER_FACE_TO_EAST 					27
#define SPR_T1_PLAYER_FACE_TO_WEST 					26
#define SPR_T1_PLAYER_FACE_TO_NORTH_EAST 			16
#define SPR_T1_PLAYER_FACE_TO_NORTH_WEST 			15
#define SPR_T1_PLAYER_FACE_TO_SOUTH_EAST 			26
#define SPR_T1_PLAYER_FACE_TO_SOUTH_WEST 			27
#define SPR_T1_PLAYER_SHOT_TO_NORTH 				38
#define SPR_T1_PLAYER_SHOT_TO_SOUTH 				39
#define SPR_T1_PLAYER_SHOT_TO_EAST 					40
#define SPR_T1_PLAYER_SHOT_TO_WEST 					41
#define SPR_T1_PLAYER_SHOT_TO_NORTH_EAST 			38
#define SPR_T1_PLAYER_SHOT_TO_NORTH_WEST 			38
#define SPR_T1_PLAYER_SHOT_TO_SOUTH_EAST        	41
#define SPR_T1_PLAYER_SHOT_TO_SOUTH_WEST        	42
#define SPR_T2_PLAYER_EAST_DIRECTION_1          	136
#define SPR_T2_PLAYER_EAST_DIRECTION_2          	137
#define SPR_T2_PLAYER_EAST_DIRECTION_3          	138
#define SPR_T2_PLAYER_WEST_DIRECTION_1          	141
#define SPR_T2_PLAYER_WEST_DIRECTION_2          	140
#define SPR_T2_PLAYER_WEST_DIRECTION_3          	139
#define SPR_T2_PLAYER_NORTH_DIRECTION_1         	131
#define SPR_T2_PLAYER_NORTH_DIRECTION_2         	132
#define SPR_T2_PLAYER_NORTH_DIRECTION_3         	133
#define SPR_T2_PLAYER_SOUTH_DIRECTION_1         	112
#define SPR_T2_PLAYER_SOUTH_DIRECTION_2         	113
#define SPR_T2_PLAYER_SOUTH_DIRECTION_3         	114
#define SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1    	119
#define SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2    	120
#define SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3    	121
#define SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1    	124
#define SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2    	123
#define SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3    	122
#define SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1    	128
#define SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2    	129
#define SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3    	130
#define SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1    	127
#define SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2    	126
#define SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3    	125
#define SPR_T2_PLAYER_TACKLE_FROM_EAST          	142
#define SPR_T2_PLAYER_TACKLE_FROM_WEST          	143
#define SPR_T2_PLAYER_THROWIN_FROM_EAST_1       	144
#define SPR_T2_PLAYER_THROWIN_FROM_EAST_2       	145
#define SPR_T2_PLAYER_THROWIN_FROM_EAST_3       	146
#define SPR_T2_PLAYER_THROWIN_FROM_WEST_1       	149
#define SPR_T2_PLAYER_THROWIN_FROM_WEST_2       	148
#define SPR_T2_PLAYER_THROWIN_FROM_WEST_3       	147
#define SPR_T2_PLAYER_FACE_TO_NORTH             	118
#define SPR_T2_PLAYER_FACE_TO_SOUTH             	117
#define SPR_T2_PLAYER_FACE_TO_EAST              	139
#define SPR_T2_PLAYER_FACE_TO_WEST              	138
#define SPR_T2_PLAYER_FACE_TO_NORTH_EAST        	128
#define SPR_T2_PLAYER_FACE_TO_NORTH_WEST        	127
#define SPR_T2_PLAYER_FACE_TO_SOUTH_EAST        	138
#define SPR_T2_PLAYER_FACE_TO_SOUTH_WEST        	139
#define SPR_T2_PLAYER_SHOT_TO_NORTH             	150
#define SPR_T2_PLAYER_SHOT_TO_SOUTH             	151
#define SPR_T2_PLAYER_SHOT_TO_EAST              	152
#define SPR_T2_PLAYER_SHOT_TO_WEST              	153
#define SPR_T2_PLAYER_SHOT_TO_NORTH_EAST        	150
#define SPR_T2_PLAYER_SHOT_TO_NORTH_WEST        	150
#define SPR_T2_PLAYER_SHOT_TO_SOUTH_EAST        	153
#define SPR_T2_PLAYER_SHOT_TO_SOUTH_WEST        	154
#define SPR_GK_PLAYER_EAST_DIRECTION_1          	232
#define SPR_GK_PLAYER_EAST_DIRECTION_2          	233
#define SPR_GK_PLAYER_EAST_DIRECTION_3          	234
#define SPR_GK_PLAYER_WEST_DIRECTION_1          	237
#define SPR_GK_PLAYER_WEST_DIRECTION_2          	236
#define SPR_GK_PLAYER_WEST_DIRECTION_3          	235
#define SPR_GK_PLAYER_NORTH_DIRECTION_1         	227
#define SPR_GK_PLAYER_NORTH_DIRECTION_2         	228
#define SPR_GK_PLAYER_NORTH_DIRECTION_3         	229
#define SPR_GK_PLAYER_SOUTH_DIRECTION_1         	208
#define SPR_GK_PLAYER_SOUTH_DIRECTION_2         	209
#define SPR_GK_PLAYER_SOUTH_DIRECTION_3         	210
#define SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1    	215
#define SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2    	216
#define SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3    	217
#define SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1    	220
#define SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2    	219
#define SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3    	218
#define SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1    	224
#define SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2    	225
#define SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3    	226
#define SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1    	223
#define SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2    	222
#define SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3    	221
#define SPR_GK_PLAYER_FACE_TO_NORTH             	214
#define SPR_GK_PLAYER_FACE_TO_SOUTH             	213
#define SPR_GK_PLAYER_FACE_TO_EAST              	235
#define SPR_GK_PLAYER_FACE_TO_WEST              	234
#define SPR_GK_PLAYER_FACE_TO_NORTH_EAST        	224
#define SPR_GK_PLAYER_FACE_TO_NORTH_WEST        	223
#define SPR_GK_PLAYER_FACE_TO_SOUTH_EAST        	234
#define SPR_GK_PLAYER_FACE_TO_SOUTH_WEST        	235
#define SPR_GK_PLAYER_SHOT_TO_NORTH             	246
#define SPR_GK_PLAYER_SHOT_TO_SOUTH             	247
#define SPR_GK_PLAYER_SHOT_TO_EAST              	248
#define SPR_GK_PLAYER_SHOT_TO_WEST              	249
#define SPR_GK_PLAYER_SHOT_TO_NORTH_EAST        	246
#define SPR_GK_PLAYER_SHOT_TO_NORTH_WEST        	246
#define SPR_GK_PLAYER_SHOT_TO_SOUTH_EAST        	249
#define SPR_GK_PLAYER_SHOT_TO_SOUTH_WEST        	250
#define SPR_GK_PLAYER_SOUTH_WITH_BALL           	240
#define SPR_GK_PLAYER_NORTH_WITH_BALL        		241
#define SPR_GK_PLAYER_SOUTH_1			        	242
#define SPR_GK_PLAYER_SOUTH_2			        	245
#define SPR_GK_PLAYER_SOUTH_SHOT			    	246
#define SPR_GK_PLAYER_NORTH_1			        	243
#define SPR_GK_PLAYER_NORTH_2			        	244
#define SPR_GK_PLAYER_NORTH_SHOT			    	247
#define SPR_REFEREE_PLAYER_SOUTH_DIRECTION_1        256
#define SPR_REFEREE_PLAYER_SOUTH_DIRECTION_2        257
#define SPR_REFEREE_PLAYER_SOUTH_DIRECTION_3        258
#define SPR_REFEREE_PLAYER_NORTH_DIRECTION_1        275
#define SPR_REFEREE_PLAYER_NORTH_DIRECTION_2        276
#define SPR_REFEREE_PLAYER_NORTH_DIRECTION_3        277
#define SPR_REFEREE_PLAYER_EAST_DIRECTION_1     	280
#define SPR_REFEREE_PLAYER_EAST_DIRECTION_2         281
#define SPR_REFEREE_PLAYER_EAST_DIRECTION_3         282
#define SPR_REFEREE_PLAYER_WEST_DIRECTION_1         285
#define SPR_REFEREE_PLAYER_WEST_DIRECTION_2         284
#define SPR_REFEREE_PLAYER_WEST_DIRECTION_3         283
#define SPR_REFEREE_PLAYER_SOUTH_EAST_DIRECTION_1   263
#define SPR_REFEREE_PLAYER_SOUTH_EAST_DIRECTION_2   264
#define SPR_REFEREE_PLAYER_SOUTH_EAST_DIRECTION_3   265
#define SPR_REFEREE_PLAYER_SOUTH_WEST_DIRECTION_1   268
#define SPR_REFEREE_PLAYER_SOUTH_WEST_DIRECTION_2   267
#define SPR_REFEREE_PLAYER_SOUTH_WEST_DIRECTION_3   266
#define SPR_REFEREE_PLAYER_NORTH_EAST_DIRECTION_1   272
#define SPR_REFEREE_PLAYER_NORTH_EAST_DIRECTION_2   273
#define SPR_REFEREE_PLAYER_NORTH_EAST_DIRECTION_3   274
#define SPR_REFEREE_PLAYER_NORTH_WEST_DIRECTION_1   271
#define SPR_REFEREE_PLAYER_NORTH_WEST_DIRECTION_2   270
#define SPR_REFEREE_PLAYER_NORTH_WEST_DIRECTION_3   269
#define SPR_REFEREE_PLAYER_FACE_TO_NORTH            261
#define SPR_REFEREE_PLAYER_FACE_TO_SOUTH            262
#define SPR_REFEREE_PLAYER_FACE_TO_EAST             282
#define SPR_REFEREE_PLAYER_FACE_TO_WEST             283
#define SPR_REFEREE_PLAYER_FACE_TO_NORTH_EAST       272
#define SPR_REFEREE_PLAYER_FACE_TO_NORTH_WEST       271
#define SPR_REFEREE_PLAYER_FACE_TO_SOUTH_EAST       264
#define SPR_REFEREE_PLAYER_FACE_TO_SOUTH_WEST       265
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
#define SPR_BIG_ARROW_TOP						    307
#define SPR_BIG_ARROW_BOTTOM						308

#define SPRITE_FOCUSED_PLAYER_OFFSET				48

#define TEAM_1                                      0
#define TEAM_2                                      1

#define TEAM_ITA_COLORS                             0
#define TEAM_FRA_COLORS                             1
#define TEAM_BRA_COLORS                             2
#define TEAM_GER_COLORS                             3
#define TEAM_ITA_COLORS                             4
#define TEAM_ESP_COLORS                             5

#define BALL_START_X                                120
#define BALL_START_Y                                256

#define SCREEN_LINES            212     // righe visibili Screen 5
#define BANK3_BASE              0xA000
#define FIELD_SEG_COUNT         4

#define SEG_DRAW 5
#define SEG_LOGIC 6

#define OnScreen(y)  	(((y)+15)>=Field.ly && (y)<Field.ly+192)
#define SplitSprite(y)  (((y & 255))>240)
#define NumSprite	(24)

#define ScoreBoardNX_Left 8
#define ScoreBoardNY_Left 212
#define ScoreBoardNX_Right 8
#define ScoreBoardNY_Right 212

#define PlayFieldHeight 512

extern struct ObjectInfo SwSprite[NumSprite];
extern struct ObjectInfo Field;
extern struct ObjectInfo ScoreBoardLeft;
extern struct ObjectInfo ScoreBoardRight;
extern const unsigned char g_Fonts[];
extern const struct TeamColors g_TeamColorsArray[];

// -----------------
// *** VARIABLES ***
// -----------------

extern	u8	Frms;
extern	u8	Secs;
extern	u8	Mins;
extern  u8  LastSecs;
extern  struct ObjectInfo Field;
extern  struct ObjectInfo ScoreBoardLeft;
extern  struct ObjectInfo ScoreBoardRight;

extern	u8  Team1Code;
extern	u8  Team2Code;



// ------------------
// *** PROTOTYPES ***
// ------------------

// +++ SEGMENT 0 +++
void main();
void VSyncCallback();
void CallSpriteFrame(u8 frame, u16 x, u16 y);
void LoadField(u8);
void CallFnc_VOID(u8 bank, void (*func)());
void CallFnc_VOID_P1(u8 bank, void (*func)(u8), u8 p1);
void CallFnc_VOID_U8_PTR(u8 bank, void (*func)(u8, const struct TeamColors*), u8 p1, const struct TeamColors* p2);
void CallFnc_VOID_U8U16U16(u8 bank, void (*func)(u8, u16, u16), u8 p1, u16 p2, u16 p3);
bool CallFnc_BOOL(u8 bank, u8 (*func)()) ;
u8 CallFnc_U8(u8 bank, u8 (*func)());
void CallFnc_VOID_16_P2(u8 bank, void (*func)(u16,u16), u16 p1, u16 p2);
bool CallFnc_BOOL_P1(u8 bank, u8 (*func)(u8), u8 p1);
u8 CallFnc_U8_P2(u8 bank, u8 (*func)(u8, u8), u8 p1, u8 p2);
u8 CallFnc_U8_P1(u8 bank, u8 (*func)(u8), u8 p1);
u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1);
void AddLines(struct ObjectInfo* Field);
void SetTeamColors(u8 team, const struct TeamColors* colors);

// +++ SEGMENT SEG_DRAW (4) +++
void MainLoop();

// +++ SEGMENT SEG_DRAW (5) +++
void PlotField(u16 y,u16 page);
void RemoveSwSprite(u8 px,u16 py,u16 page);
void RemoveScoreBoardLeft(u8 px,u16 py,u16 page);
void PrintScoreBoardLeft(u8 px,u16 py,u16 page);
void RemoveScoreBoardRight(u8 px,u16 py,u16 page);
void PrintScoreBoardRight(u8 px,u16 py,u16 page);



// +++ SEGMENT SEG_LOGIC (6) +++
void PlayerAI(u8 i);
void SetBallSprite(u8 height);