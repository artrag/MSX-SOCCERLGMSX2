// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
// ─────────────────────────────────────────────────────────────────────────────

// ----------------
// *** INCLUDES ***
// ----------------

#include "msxgl.h"
#include "soccerlg.h"
#include "memory.h"
#include "debug.h"
#include "soccerlg_rawdef.h"
#include "bin/FieldMap.h"

// -----------------
// *** CONSTANTS ***
// -----------------

// Palette
const c8 g_Palette[] = {
    0x00, 0x00, // [0]  #000000  TRASPARENTE 
    0x00, 0x00, // [1]  #010101  Nero (Campo - Capelli - Scarpe Arbitro)
    0x71, 0x00, // [2]  #ED1C24  Rosso (Campo)
    0x72, 0x06, // [3]  #F7D647  Giallo caldo (Campo - Pelle)
    0x77, 0x07, // [4]  #FFFFFF  Bianco (Campo - Calzoncini portieri)
    0x03, 0x00, // [5]  #000C7B  Var - Maglietta squadra 2
    0x00, 0x05, // [6]  #00B800  Verde (Campo)
    0x33, 0x03, // [7]  #7F7F7F  Grigio  (Campo)
    0x55, 0x02, // [8]  #A349A4  Viola (Maglietta portieri)
    0x45, 0x06, // [9]  #E18AC4  Var - Pantaloncini squadra 2
    0x40, 0x00, // [A]  #880015  Var - Righe squadra 1
    0x26, 0x05, // [B]  #4CB7DA  Var - Maglietta squadra 1
    0x55, 0x02, // [C]  #A9A84C  Var - Righe squadra 2
    0x06, 0x06, // [D]  #C70CB3  Var - Pantaloncini squadra 1
    0x16, 0x02, // [E]  #3F48CC  Blu chiaro (Campo)
    0x66, 0x06, // [F]  #D3CACA  Verde oliva acceso (Non usato)
};

static const c8 s_ScrollText[] =
    "   2026 MSX WORLD SOCCER  BY FAUSTO PRACEK  -  ASSOCIAZIONE ITALIANA MSX - POWERED BY MSXGL  -  "
    "SPECIAL THANKS TO ARTURO RAGOZINI FOR HIS HELP WITH SPRITES SOFTWARE AND SOUND EFFECTS  - "
	"SPECIAL THANKS ALSO TO NICOLA BROGELLI FOR HIS TESTING AND SUPPORT THROUGHOUT THE GAMES' DEVELOPMENT ";
	

// Teams colours array (Formato MSX2: 0x0GRB)
const struct TeamColors g_TeamColorsArray[] = {
    { 0x0526, 0x0777, 0x0777 }, // 0: ITA (Shirt: Azzurra, Shorts: Bianchi, Righe: Bianche)
    { 0x0215, 0x0777, 0x0777 }, // 1: FRA (Shirt: Blu, Shorts: Bianchi, Righe: Bianche)
    { 0x0511, 0x0671, 0x0671 }, // 2: BRA (Shirt: Verde, Shorts: Oro, Righe: Oro)
    { 0x0777, 0x0111, 0x0111 }, // 3: GER (Shirt: Bianca, Shorts: Neri, Righe: Nere)
    { 0x0470, 0x0111, 0x0111 }, // 4: NLD (Shirt: Arancione, Shorts: Neri, Righe: Nere)
    { 0x0071, 0x0071, 0x0777 }  // 5: ESP (Shirt: Rossa, Shorts: Rosse, Righe: Bianche)
};

// Teams stats array (Scala 1-5 per ogni caratteristica)
const struct TeamStats g_TeamStatsArray[] = {
    { 3, 3, 3, 2, 5, 2, 4 }, // 0: ITA (Catenaccio: Difesa 5, Portiere 4, Attacco 2)
    { 2, 2, 2, 2, 2, 2, 2 }, // 1: FRA (La più debole: tutto 2)
    { 5, 5, 4, 5, 3, 5, 3 }, // 2: BRA (Campioni: Velocità 5, Attacco 5, Dribbling 5)
    { 3, 4, 4, 3, 4, 4, 5 }, // 3: GER (Rocciosi: Difesa 4, Attacco 4, Portiere 5)
    { 4, 4, 5, 4, 3, 4, 3 }, // 4: NLD (Calcio Totale: Passaggi 5, Velocità 4)
    { 3, 3, 5, 3, 3, 3, 3 }  // 5: ESP (Tiki-Taka: Passaggi 5, resto nella media)
};

// -----------------
// *** VARIABLES ***
// -----------------

	u8	Frms = 60;
	u8	Secs = HALF_TIME_SECS;
	u8	Mins = HALF_TIME_MINS;
    u8  LastSecs=0xFF;
    u8  Half = 1;
	u8  ScoreTeam1 = 0;
	u8  ScoreTeam2 = 0;
	u8  LastScoreTeam1 = 0;
	u8  LastScoreTeam2 = 0;
	bool g_is_penalty_shootout = FALSE;
	u8  g_penalty_shot_count[2] = {0, 0};
	u8  g_penalty_shooter_idx = 0;
	u8  g_penalty_team = TEAM_2; // Inizia il P1 (Team 2)
	u8  g_penalty_arrow_pos = 1; // Centro
	i8  g_penalty_arrow_dir = 1;
	u8  Team1Code=TEAM_ITA_COLORS;
	u8  Team2Code=TEAM_NLD_COLORS;
	u8  KickOffTeam=TEAM_2; // P1 (Team 2) batte nel primo tempo
	u8  GameMode = GAMEMODE_P1_VS_CPU;
	u8  T1_Carrier = 0xFF;
	u8  T1_Receiver = 0xFF;
	u8  T2_Carrier = 0xFF;
	u8  T2_Receiver = 0xFF;
	bool TimerEnabled = FALSE;
	u8  LastTouchTeam = 0xFF;
	u8  LastTouchPlayer = 0xFF;
	u8  RestartType = 0;
	u8  RestartSideX = 0;
	u16 RestartSideY = 0;
	u8  g_throw_rec_1 = 0xFF;
	u8  g_throw_rec_2 = 0xFF;
	u8  g_selected_rec = 0;
	u8  g_thrower_id = 0xFF;
	u16 g_pass_start_x = 0;
	u16 g_pass_start_y = 0;
	u16 g_pass_target_x = 0;
	u16 g_pass_target_y = 0;
	u8  g_pass_max_frames = 10;
	u8  g_pass_max_height = 7;
	u8  g_pass_receiver = 0xFF;
	i8  g_last_dx[2] = {0, 0};
	i8  g_last_dy[2] = {1, -1};
	u8  g_last_input_dir = DIRECTION_NONE;
	u16 g_h_arrow_x = 100;
	i8  g_h_arrow_dir = 1;
	u8  g_closest_t1 = 0xFF;
	u8  g_closest_t2 = 0xFF;
	bool g_is_ball_carried = FALSE;

	extern  unsigned char g_Menu_Fonts[];

	extern unsigned char g_SplashScreen1[];
	extern unsigned char g_SplashScreen2[];
	extern unsigned char g_SplashScreen3[];
	extern unsigned char g_SplashScreen4[];
	extern unsigned char g_SplashScreen5[];
    extern unsigned char g_SplashScreen6[];
	extern unsigned char g_SplashScreen7[];

	extern unsigned char g_MenuColorScreen1[];
	extern unsigned char g_MenuColorScreen2[];
	extern unsigned char g_MenuColorScreen3[];
	extern unsigned char g_MenuColorScreen4[];
	extern unsigned char g_MenuColorScreen5[];
    extern unsigned char g_MenuColorScreen6[];
	extern unsigned char g_MenuColorScreen7[];

	extern unsigned char g_MenuGrayScreen1[];
	extern unsigned char g_MenuGrayScreen2[];
	extern unsigned char g_MenuGrayScreen3[];
	extern unsigned char g_MenuGrayScreen4[];
	extern unsigned char g_MenuGrayScreen5[];
    extern unsigned char g_MenuGrayScreen6[];
	extern unsigned char g_MenuGrayScreen7[];

	struct InputState g_player_input[2];
	struct ObjectInfo SwSprite[NumSprite];
	struct ObjectInfo Field;
	struct ObjectInfo ScoreBoardLeft;
	struct ObjectInfo ScoreBoardRight;
	struct TeamStats g_ActiveStats[2];

	volatile bool g_VSynch=FALSE;


// -----------------------------
// *** TRAMPOLINES FUNCTIONS ***
// -----------------------------

// +++ Call void function without parameters +++
void CallFnc_VOID(u8 segment, void (*func)()) {
    u8 _old = GET_BANK_SEGMENT(3);
    SET_BANK_SEGMENT(3, segment);
    func();
    SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 1 parameter +++
void CallFnc_VOID_P1(u8 segment, void (*func)(u8), u8 p1) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 3 pointers +++
void CallFnc_VOID_3PTR(u8 segment, void (*func)(u8*, u8*, u8*), u8* p1, u8* p2, u8* p3) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1, p2, p3);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 3 pointers and 1 u16 parameter +++
void CallFnc_VOID_3PTR_U16(u8 segment, void (*func)(u8*, u8*, u8*, u16), u8* p1, u8* p2, u8* p3, u16 p4) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1, p2, p3, p4);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call void function with 3 parameters (u8, u16, u16) +++
void CallFnc_VOID_U8U16U16(u8 segment, void (*func)(u8, u16, u16), u8 p1, u16 p2, u16 p3) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1, p2, p3);
	SET_BANK_SEGMENT(3, _old);
}


// +++ Call void function with 1 parameter +++
void CallFnc_VOID_P2(u8 segment, void (*func)(u8, bool), u8 p1, bool p2) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
}

// +++ Call void function with 1 u16 parameter +++
void CallFnc_VOID_16_P1(u8 segment, void (*func)(u16), u16 p1) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1);
	SET_BANK_SEGMENT(3, _old);
}

// +++ Call void function with 2 u16 parameters +++
void CallFnc_VOID_16_P2(u8 segment, void (*func)(u16,u16), u16 p1, u16 p2) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
}
// +++ Call function without parameters with u8 returned value +++
u8 CallFnc_U8(u8 segment, u8 (*func)()) {
	u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func();
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u8 returned value +++
u8 CallFnc_U8_P1(u8 segment, u8 (*func)(u8), u8 p1) {
	u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u16 returned value +++
u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1) {
	u16 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 3 parameters with u16 returned value +++
u16 CallFnc_U16_P3(u8 segment, u16 (*func)(u8, i8, i8), u8 p1, i8 p2, i8 p3) 
{
	u16 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1, p2, p3);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 4 parameters with u16 returned value +++
u16 CallFnc_U16_P4(u8 segment, u16 (*func)(u8, i8, i8, u8), u8 p1, i8 p2, i8 p3, u8 p4) {
	u16 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1, p2, p3, p4);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 4 parameters with u16 returned value +++
u16 CallFnc_U16_P4B(u8 segment, u16 (*func)(u8, u8, i8, i8), u8 p1, u8 p2, i8 p3, i8 p4) {
	u16 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1, p2, p3, p4);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 2 parameters with u8 returned value +++
u8 CallFnc_U8_P2(u8 segment, u8 (*func)(u8, u8), u8 p1, u8 p2) {
    u8 _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
	return _res;
}
// +++ Call function without parameter and with bool returned value +++
bool CallFnc_BOOL(u8 segment, bool (*func)()) {
    bool _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func();
	SET_BANK_SEGMENT(3, _old);
    return _res;
}
// +++ Call function with 1 u8 parameter and with bool returned value +++
bool CallFnc_BOOL_P1(u8 segment, bool (*func)(u8), u8 p1) {
    bool _res;
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    _res = func(p1);
	SET_BANK_SEGMENT(3, _old);
    return _res;
}

// +++ Call void function with 2 u8 parameters +++
void CallFnc_VOID_U8U8(u8 segment, void (*func)(u8, u8), u8 p1, u8 p2) {
	u8 _old = GET_BANK_SEGMENT(3);
	SET_BANK_SEGMENT(3, segment);
    func(p1,p2);
	SET_BANK_SEGMENT(3, _old);
}

// -----------------
// *** FUNCTIONS ***
// -----------------

// +++ Splash screen load +++
void SplashScreenLoad()
{
    VDP_SetMode(VDP_MODE_SCREEN8);
	VDP_ClearVRAM();
    VDP_SetPalette(g_Palette);
    VDP_SetColor(0);
    // Inizializziamo l'offset per la parte bassa dell'indirizzo VRAM
    u16 vram_low = 0; 

    // Segmento 50
    SET_BANK_SEGMENT(3, 50);
    VDP_WriteVRAM_128K(g_SplashScreen1, vram_low, 0, 8192);

    // Segmento 51
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 51);
    VDP_WriteVRAM_128K(g_SplashScreen2, vram_low, 0, 8192);

    // Segmento 52
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 52);
    VDP_WriteVRAM_128K(g_SplashScreen3, vram_low, 0, 8192);
    
    // Segmento 53
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 53);
    VDP_WriteVRAM_128K(g_SplashScreen4, vram_low, 0, 8192);

    // Segmento 54
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 54);
    VDP_WriteVRAM_128K(g_SplashScreen5, vram_low, 0, 8192);

    // Segmento 55
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 55);
    VDP_WriteVRAM_128K(g_SplashScreen6, vram_low, 0, 8192);

    // Segmento 56
    vram_low += 8192; 
    SET_BANK_SEGMENT(3, 56);
    // Ultimo chunk (256*212 = 54272 byte totali)
    VDP_WriteVRAM_128K(g_SplashScreen7, vram_low, 0, 5120);

    // Attesa di 2 secondi (circa 120 VBlank) prima di proseguire
    for (u8 i = 0; i < 120; i++) {
        __asm halt __endasm;
    }
}

// +++ Show menu +++
void ShowMenu()
{
	
	

	MenuScreenLoad();
	MenuGrayScreenLoad();
	SET_BANK_SEGMENT(3,4);
	Print_SetBitmapFont(g_Menu_Fonts);
	Print_SetPosition(25,  2);
	Print_DrawText("TEAM 1 SELECTION (PLAYER)");

	Print_SetColor(0xFF, 0x00); // Testo bianco (0xFF) su sfondo nero (0x00)

	const c8* text_ptr = s_ScrollText;
	u8 char_width = 8;
	u8 shift_accum = 8; // Inizializza al massimo per stampare subito il primo carattere

	// Coordinate off-screen per renderizzare il carattere in modo invisibile
	// Questo previene l'effetto "storto" (tearing) causato dalla lentezza della CPU
	u8 off_x = 0;
	u16 off_y = 220; 

	u8 menu_state = 0; // 0=Team1_Joy1, 1=Team2_Joy1(CPU), 2=Team2_Joy2(P2)
	u8 cursor_id = 0;
	u8 prev_cursor_id = 0xFF;
	u8 t1_id = 0;
	u8 t2_id = 1;
	u8 prev_dir[2] = {DIRECTION_NONE, DIRECTION_NONE};
	u8 input_delay = 0;

	// Posizioni indicative sullo schermo per i 6 Team (modificabili se necessario)
	static const u8 cursor_pos[6][2] = {
		{ 30,  95}, {111,  95}, {194,  95},
		{ 30, 181}, {110, 181}, {194, 181}
	};

	// Posizioni e dimensioni dei riquadri delle squadre (X, Y, Larghezza, Altezza)
	static const u8 team_box[6][4] = {
		{  6,  16, 80, 86}, // NLD
		{ 86,  16, 80, 86}, // GER
		{168,  16, 80, 86}, // ITA
		{  6, 104, 80, 86}, // BRA
		{ 86, 104, 80, 86}, // FRA
		{168, 104, 80, 86}  // ESP
	};

	// Forza GameMode a P1 vs P2 nel menu per poter leggere anche l'input di JOY 2 / Tastiera P2
	GameMode = GAMEMODE_P1_VS_P2;

	for(;;) {
		WaitForVBlank();

		CallFnc_VOID(SEG_INPUT, UpdateAllInputs);
		
		u8 joy1_dir = g_player_input[1].direction; // P1 (Joy1)
		u8 joy2_dir = g_player_input[0].direction; // P2 (Joy2)
		bool joy1_trig = g_player_input[1].trigger_pressed;
		bool joy2_trig = g_player_input[0].trigger_pressed;

		bool move_left = FALSE;
		bool move_right = FALSE;
		bool move_toggle = FALSE;
		bool trig = FALSE;

		if (input_delay > 0) {
			input_delay--;
		} else {
			if (menu_state == 0) {
				if (joy1_dir == DIRECTION_LEFT && prev_dir[1] != DIRECTION_LEFT) move_left = TRUE;
				if (joy1_dir == DIRECTION_RIGHT && prev_dir[1] != DIRECTION_RIGHT) move_right = TRUE;
			} else if (menu_state == 1) {
				if (joy1_dir == DIRECTION_LEFT && prev_dir[1] != DIRECTION_LEFT) move_left = TRUE;
				if (joy1_dir == DIRECTION_RIGHT && prev_dir[1] != DIRECTION_RIGHT) move_right = TRUE;
				if (joy1_dir == DIRECTION_UP && prev_dir[1] != DIRECTION_UP) move_toggle = TRUE;
				if (joy1_dir == DIRECTION_DOWN && prev_dir[1] != DIRECTION_DOWN) move_toggle = TRUE;
			} else if (menu_state == 2) {
				if (joy2_dir == DIRECTION_LEFT && prev_dir[0] != DIRECTION_LEFT) move_left = TRUE;
				if (joy2_dir == DIRECTION_RIGHT && prev_dir[0] != DIRECTION_RIGHT) move_right = TRUE;
				if (joy1_dir == DIRECTION_UP && prev_dir[1] != DIRECTION_UP) move_toggle = TRUE;
				if (joy1_dir == DIRECTION_DOWN && prev_dir[1] != DIRECTION_DOWN) move_toggle = TRUE;
				if (joy2_dir == DIRECTION_UP && prev_dir[0] != DIRECTION_UP) move_toggle = TRUE;
				if (joy2_dir == DIRECTION_DOWN && prev_dir[0] != DIRECTION_DOWN) move_toggle = TRUE;
			}
			
			// Aggiorna lo stato precedente solo al di fuori del periodo di debounce
			prev_dir[1] = joy1_dir;
			prev_dir[0] = joy2_dir;
		}

		if (menu_state == 0) {
			if (joy1_trig) trig = TRUE;
		} else if (menu_state == 1) {
			if (joy1_trig) trig = TRUE;
		} else if (menu_state == 2) {
			if (joy2_trig) trig = TRUE;
		}

		if (move_left || move_right || move_toggle) {
			input_delay = 12; // Circa 200ms di debounce per evitare input sporchi o movimenti doppi
		}

		if (move_left) {
			do {
				cursor_id = (cursor_id == 0) ? 5 : cursor_id - 1;
			} while (menu_state > 0 && cursor_id == t1_id);
		}
		if (move_right) {
			do {
				cursor_id = (cursor_id == 5) ? 0 : cursor_id + 1;
			} while (menu_state > 0 && cursor_id == t1_id);
		}

		// Cambio modalità di gioco (CPU / JOY2)
		if (move_toggle && menu_state > 0) {
			if (menu_state == 1) {
				menu_state = 2;
				VDP_CommandHMMV(0, 2, 256, 11, 0x00);
				Print_SetPosition(25, 2);
				Print_DrawText("TEAM 2 SELECTION (^JOY2_)");
			} else {
				menu_state = 1;
				VDP_CommandHMMV(0, 2, 256, 11, 0x00);
				Print_SetPosition(25, 2);
				Print_DrawText("TEAM 2 SELECTION (^CPU_)");
			}
		}

		if (prev_cursor_id != cursor_id) {
			if (prev_cursor_id != 0xFF) {
				VDP_CommandHMMV(cursor_pos[prev_cursor_id][0], cursor_pos[prev_cursor_id][1], 24, 11, 0x00);
			}
			Print_SetPosition(cursor_pos[cursor_id][0], cursor_pos[cursor_id][1]);
			Print_DrawText("$$$");
			prev_cursor_id = cursor_id;
		}

		if (trig) {
				// 1. Cancella i caratteri "$$$" della squadra selezionata
			VDP_CommandHMMV(cursor_pos[cursor_id][0], cursor_pos[cursor_id][1], 24, 11, 0x00);
			
			// 2. "Fotocopia" il riquadro grigio dalla pagina nascosta (Y+256) allo schermo visibile (Y)
			VDP_CommandHMMM(team_box[cursor_id][0], team_box[cursor_id][1] + 256, team_box[cursor_id][0], team_box[cursor_id][1], team_box[cursor_id][2], team_box[cursor_id][3]);

			if (menu_state == 0) {
				t1_id = cursor_id;
				Team1Code = t1_id;
				CallFnc_VOID_P1(SEG_EVENTS, EventTeamSelected, t1_id);

				menu_state = 1;
				cursor_id = (t1_id == 0) ? 1 : 0;
				prev_cursor_id = 0xFF; // Forza il ridisegno nella nuova posizione
				
				VDP_CommandHMMV(0, 2, 256, 11, 0x00);
				Print_SetPosition(25, 2);
				Print_DrawText("TEAM 2 SELECTION (^CPU_)");
			} else {
				t2_id = cursor_id;
				Team2Code = t2_id;
				CallFnc_VOID_P1(SEG_EVENTS, EventTeamSelected, t2_id);
				GameMode = (menu_state == 1) ? GAMEMODE_P1_VS_CPU : GAMEMODE_P1_VS_P2;

				// Attesa di 1 secondo mantenendo il testo scorrevole per evidenziare il team 2 prima del break
				for (u8 wait = 0; wait < 60; wait++) {
					WaitForVBlank();
					VDP_CommandHMMM(1, 200, 0, 200, 255, 11);
					if (shift_accum >= char_width) {
						shift_accum = 0;
						if (*text_ptr == '\0') text_ptr = s_ScrollText;
						c8 str[2] = { *text_ptr, '\0' };
						VDP_CommandHMMV(off_x, off_y, 8, 11, 0x00);
						Print_SetPosition(off_x, off_y);
						Print_DrawText(str);
						text_ptr++;
					}
					VDP_CommandHMMM(off_x + shift_accum, off_y, 255, 200, 1, 11);
					shift_accum += 1;
				}

				DEBUG_BREAK();
				break; // Uscita dal menu ed avvio del gioco vero e proprio
			}
		}

		// Scrolla l'area visibile a sinistra di 1 pixel (altezza 11 pixel)
		VDP_CommandHMMM(1, 200, 0, 200, 255, 11);

		// Se abbiamo finito di scorrere il carattere corrente, ne prepariamo un altro off-screen
		if (shift_accum >= char_width) {
			shift_accum = 0;
			
			if (*text_ptr == '\0') {
				text_ptr = s_ScrollText; // Ricomincia il testo
			}
			
			c8 str[2] = { *text_ptr, '\0' };
			
			// Pulisce l'area off-screen
			VDP_CommandHMMV(off_x, off_y, 8, 11, 0x00);

			// Disegna il carattere nell'area off-screen (nessun tearing visibile)
			Print_SetPosition(off_x, off_y);
			Print_DrawText(str);
			
			text_ptr++;
		}

		// Copia 1 singola colonna di pixel dall'area off-screen al margine destro dello schermo
		VDP_CommandHMMM(off_x + shift_accum, off_y, 255, 200, 1, 11);

		shift_accum += 1;
	}
	
	StartGame();
}

// +++ Menu screen load +++
void MenuScreenLoad()
{
    VDP_SetMode(VDP_MODE_SCREEN8);
	VDP_ClearVRAM();
    VDP_SetPalette(g_Palette);
    VDP_SetColor(0);
    // Inizializziamo l'offset per la parte bassa dell'indirizzo VRAM
    u16 vram_low = 0; 

    // Segmento 50
    SET_BANK_SEGMENT(3, 57);
    VDP_WriteVRAM_128K(g_MenuColorScreen1, vram_low, 0, 8192);

    // Segmento 51
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 58);
    VDP_WriteVRAM_128K(g_MenuColorScreen2, vram_low, 0, 8192);

    // Segmento 52
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 59);
    VDP_WriteVRAM_128K(g_MenuColorScreen3, vram_low, 0, 8192);
    
    // Segmento 53
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 60);
    VDP_WriteVRAM_128K(g_MenuColorScreen4, vram_low, 0, 8192);

    // Segmento 54
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 61);
    VDP_WriteVRAM_128K(g_MenuColorScreen5, vram_low, 0, 8192);

    // Segmento 55
    vram_low += 8192;
    SET_BANK_SEGMENT(3, 62);
    VDP_WriteVRAM_128K(g_MenuColorScreen6, vram_low, 0, 8192);

    // Segmento 56
    vram_low += 8192; 
    SET_BANK_SEGMENT(3, 63);
    // Ultimo chunk (256*212 = 54272 byte totali)
    VDP_WriteVRAM_128K(g_MenuColorScreen7, vram_low, 0, 5120);

    
}
// +++ Menu gray screen load +++
void MenuGrayScreenLoad()
{
    // Inizializziamo l'offset per la parte bassa dell'indirizzo VRAM
    u16 vram_low = 0; 
    u8 vram_high = 1; // Scrive a partire dall'indirizzo VRAM 0x10000, che corrisponde a Y=256 (Pagina nascosta)

    SET_BANK_SEGMENT(3, 64); VDP_WriteVRAM_128K(g_MenuGrayScreen1, vram_low, vram_high, 8192); vram_low += 8192;
    SET_BANK_SEGMENT(3, 65); VDP_WriteVRAM_128K(g_MenuGrayScreen2, vram_low, vram_high, 8192); vram_low += 8192;
    SET_BANK_SEGMENT(3, 66); VDP_WriteVRAM_128K(g_MenuGrayScreen3, vram_low, vram_high, 8192); vram_low += 8192;
    SET_BANK_SEGMENT(3, 67); VDP_WriteVRAM_128K(g_MenuGrayScreen4, vram_low, vram_high, 8192); vram_low += 8192;
    SET_BANK_SEGMENT(3, 68); VDP_WriteVRAM_128K(g_MenuGrayScreen5, vram_low, vram_high, 8192); vram_low += 8192;
    SET_BANK_SEGMENT(3, 69); VDP_WriteVRAM_128K(g_MenuGrayScreen6, vram_low, vram_high, 8192); vram_low += 8192;
    SET_BANK_SEGMENT(3, 70); 
    
    // Ultimo chunk (256*212 = 54272 byte totali)
    VDP_WriteVRAM_128K(g_MenuGrayScreen7, vram_low, vram_high, 5120);
}

// +++ Set team colors +++
void SetTeamColors(u8 team, const struct TeamColors* colors)
{
	if (team == TEAM_1)
	{
		VDP_SetPaletteEntry(10, colors->Stripes); // [A] Righe Squadra 1
		VDP_SetPaletteEntry(11, colors->Shirt);   // [B] Maglietta Squadra 1
		VDP_SetPaletteEntry(13, colors->Shorts);  // [D] Pantaloncini Squadra 1
	}
	else if (team == TEAM_2)
	{
		VDP_SetPaletteEntry(12, colors->Stripes); // [C] Righe Squadra 2
		VDP_SetPaletteEntry(5,  colors->Shirt);   // [5] Maglietta Squadra 2
		VDP_SetPaletteEntry(9,  colors->Shorts);  // [9] Pantaloncini Squadra 2
	}
}
// +++ Add field lines +++
void AddLines(struct ObjectInfo* Field) 
{
	u16 v;
	
	if (Field->dy==0) return;
	
	if (Field->dy>0) {
		for(i8 i=Field->dy; i>0; i--) {
			v = (Field->ly + 192 - i) & 511;
			VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) +   0,1,0);	
			VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 256,1,0);	
			VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 512,1,0);	
		}
	}
	else {
		for(i8 i=-Field->dy; i>0; i--) {
			v = (Field->ly + i - 1) & 511;
			VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) +   0,1,0);	
			VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 256,1,0);	
			VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 512,1,0);	
		}
	}
}

void CallSpriteFrame(u8 x, u16 y, u16 frame)  __naked
{
	x;			// A
	y;			// DE
	frame;		// SP
	__asm
ENAR 			.equ 		0x7FFF 			; enable register interface
OFFR 			.equ 		0x7FFE 			; offset register (more on this later)
CFGR 			.equ 		0x7FFD 			; configuration bits
	
	
	ld  b,a		; b = x  , de = y
	pop af		; pop return
	pop hl		; hl = frame
	push af		; push return

	// ld 		a,#1
	// ld		(ENAR),a		; <- !!! potrebbe causare problemi a MSXGL ma senza ci sono altri problemi nel codice @ 0x7FFF
	ld 		a,#(SPRITES_BIN_SEG>>2) & #$%11000000
	ld		(OFFR),a				; Data offset
	
	ld	a,(#(_g_Bank0Segment + 6) + 0)
	push 	af								; save the current mapper page (!!) has to be < 256
	call  SpriteFrame
	xor 	a,a								; lower 2MB
	ld 		(OFFR),a
	// ld		(ENAR),a		; <- !!! potrebbe causare problemi a MSXGL ma senza ci sono altri problemi nel codice @ 0x7FFF
	pop 	af
	ld	(#0xB000),a							; restore the mapper page
	ld	(#(_g_Bank0Segment + 6) + 0),a		
	ret

SpriteFrame::
	ld	a,l
	and #3		; 4 sprite per pagina
	add a,a
	add a,a			
	ld	c,a		; in c the low address of the function to be called
	
	srl h		; page = SPRITES_BIN_SEG + frame / 4
	rr  l
	srl h
	rr  l
	ld	a,#SPRITES_BIN_SEG
	add a,l		; segments in the current offset (!)
	ld	(#0xB000),a		
	ld	(#(_g_Bank0Segment + 6) + 0),a		; prevent future possible issues on the ISR

	ld	h,d			; HLB  = y*256+X = 2 * VRAM_address
	ld	l,e

	add hl,hl		; in h 3 bit di indirizzo per R14
	ld 	a,h 
	and #1
	.db #0xFD	
	ld	l,a			;ld  iyl,a		; save R14 in iyl
	ld 	a,h 
	and #6
	.db #0xFD
	ld h,a 			;ld  iyh,a		; save vram page in iyh

	srl d
	rr  e
	rr  b 
	ld  d,e
	ld  e,b			; DE = (x + y*256)/2 & 0xFFFF

	ld	l,c
	ld	h,#BANK3_BASE/256
	
	ld a,d
	or #0xC0
	ld d,a
	
	jp	(hl)

	__endasm;
}

//	u8 FieldMap[] 
	#include "bin/FieldMap.h"

	const u8 dummy[] = {0,0,0,0,0,0,0,0};

// -----------
// *** ISR ***
// -----------



void VSyncCallback()
{
	g_VSynch = TRUE;
	
	Frms--;
	if (Frms==0) {
		Frms = 60;
		if (TimerEnabled) {
			if (Mins > 0 || Secs > 0) {
				if (Secs==0) {
					Secs = 59;
					Mins--;
				} else {
					Secs--;
				}
			}
		}
	}
}

void WaitForVBlank(){
    while(!g_VSynch) {}
    g_VSynch = FALSE;
}

void LoadField(u8 vdp_page)
{
    u32 base     = (u32)vdp_page * 0x8000;
    u8  u = GET_BANK_SEGMENT_HIGH(3);
    u8  v = GET_BANK_SEGMENT_LOW(3);

    for (u8 i = 0; i < FIELD_SEG_COUNT; i++)
    {
        u32 addr    = base + (u32)i * 8192;

        SET_BANK_SEGMENT_LOW (3, (FIELD_BIN_SEG + i) & 255);
        SET_BANK_SEGMENT_HIGH(3, (FIELD_BIN_SEG + i) >>8);
        VDP_WriteVRAM_128K((u8*)BANK3_BASE, (addr & 0xFFFF), (addr >> 16), 8192);
    }

	SET_BANK_SEGMENT_HIGH(3, u);
	SET_BANK_SEGMENT_LOW (3, v);
}



// ------------
// *** MAIN ***
// ------------
void main()
{
	
	if (Sys_GetMSXVersion() == MSXVER_1)
	{
		Bios_ClearScreen();
		Bios_TextPrintSting("This game need MSX2 or above");
		Bios_GetCharacter();
		return;
	}
	
	DEBUG_INIT();
    Bios_SetKeyClick(FALSE);
	SplashScreenLoad();
	// Installa l'hook del VBlank, essenziale affinché WaitForVBlank() non si blocchi
	Bios_SetHookCallback(H_TIMI, VSyncCallback);
	ShowMenu();
}
void StartGame(){
	VDP_SetMode(VDP_MODE_SCREEN5);
	VDP_EnableTransparency(FALSE);
    VDP_SetPalette(g_Palette);
    VDP_SetBackdropColor(0x1);
 	VDP_SetLineCount(VDP_LINE_192);
	VDP_DisableSprite();
	VDP_ClearVRAM();
	VDP_FillVRAM(0x77, 0x0000, 0, 0x8000);
  

  
  
	LoadField(3);
	
	VDP_CommandHMMV(0,768,SCOREBOARD_NX_LEFT,SCOREBOARD_NY_LEFT,0x77);
    VDP_CommandHMMV(0,768,SCOREBOARD_NX_RIGHT,SCOREBOARD_NY_RIGHT,0x77);

    SET_BANK_SEGMENT(3,4);
	Print_SetBitmapFont(g_Fonts);
	Print_SetColor(4, 7);

	Print_SetPosition(0,  8+768);Print_DrawText("A");
    Print_SetPosition(0,  16+768);Print_DrawText("U");
    Print_SetPosition(0,  24+768);Print_DrawText("S");
    Print_SetPosition(0,  32+768);Print_DrawText(" ");
    Print_SetPosition(0,  40+768);Print_DrawText("0");

	Print_SetPosition(0,  56+768);Print_DrawText("I");
    Print_SetPosition(0,  64+768);Print_DrawText("T");
    Print_SetPosition(0,  72+768);Print_DrawText("A");
    Print_SetPosition(0,  80+768);Print_DrawText(" ");
    Print_SetPosition(0,  88+768);Print_DrawText("0");


    Print_SetPosition(248,  8+768);Print_DrawText("T");
    Print_SetPosition(248,  16+768);Print_DrawText("I");
    Print_SetPosition(248,  24+768);Print_DrawText("M");
    Print_SetPosition(248,  32+768);Print_DrawText("E");

	Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins);//Print_DrawText("3");	
	Print_SetPosition(248,  60+768);Print_DrawFormat("%i",Secs/10);	
    Print_SetPosition(248,  68+768);Print_DrawFormat("%i",Secs-Secs/10*10);	
// Passi del triplo buffering
//
// 1) vedo 	0, cancello 2, scrivo 	1
// 2) vedo 	1, cancello 0, scrivo 	2
// 3) vedo 	2, cancello 1, scrivo 	0
	


	Field.dy = 1;
	Field.ly = 0;
	
	ScoreBoardLeft.lx = 0;
	ScoreBoardLeft.ly = Field.ly;
	
	ScoreBoardRight.lx = 248;
	ScoreBoardRight.ly = Field.ly;
	
	VDP_EnableDisplay(false);
	CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
	CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
	CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
//


	//RemoveScoreBoardLeft(0,0,0);
    //RemoveScoreBoardLeft(0,0,1);
    //RemoveScoreBoardLeft(0,0,2);
    //RemoveScoreBoardRight(ScoreBoardRight.x0,ScoreBoardRight.y0,  0);


	//Bios_SetHookCallback(H_TIMI, VSyncCallback);

	ScoreBoardLeft.x0 = ScoreBoardLeft.lx;
	ScoreBoardLeft.x1 = ScoreBoardLeft.lx;
	ScoreBoardLeft.x2 = ScoreBoardLeft.lx;

    ScoreBoardRight.x0 = ScoreBoardRight.lx;
	ScoreBoardRight.x1 = ScoreBoardRight.lx;
	ScoreBoardRight.x2 = ScoreBoardRight.lx;


// loop 
    VDP_EnableDisplay(true);
	CallFnc_VOID(4,MainLoop);

}
