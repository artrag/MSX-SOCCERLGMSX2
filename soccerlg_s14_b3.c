// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 14 - Menu & UI
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "print.h"
#include "vdp.h"
#include "debug.h"

void ShowMenu()
{
	
	MenuScreenLoad();
	SET_BANK_SEGMENT(3,4);
	Print_SetBitmapFont(g_Fonts);
	//Print_SetPosition(0,  0);
	//Print_DrawText("TEST");
	for(;;); // Ciclo infinito provvisorio
}