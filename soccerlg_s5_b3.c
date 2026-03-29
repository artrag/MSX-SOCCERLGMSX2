// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 5 - Drawing functions
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "Tools/OutField/FieldMap.h"

void PlotField(u16 y,u16 page)
{
	for (u16 i=y;i<y+192;i+=16)
		VDP_CommandYMMM(FieldMap[i]+768,0,i+page,16, 0);		
}

void AddLines(void) 
{
	u16 v;
	
	if (Field.dy==0) return;
	
	if (Field.dy>0) {
		v = (Field.ly + 192) & 511;
	}
	else	{
		v = (Field.ly -   1) & 511;
	}
	VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) +   0,1,0);
	VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 256,1,0);
	VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 512,1,0);
}

void RemoveSwSprite(u8 px,u16 py,u16 page) 
{
	if OnScreen(py) 
	{
		if SplitSprite(py) {
			u8 t = 256 - (py & 255) ;
			VDP_CommandHMMM(px,FieldMap[(py)    &511]+768,px,((py)&255)+page,16,  t);	
			VDP_CommandHMMM(px,FieldMap[((py)+t)&511]+768,px,           page,16,16-t);	
		}
		else
		VDP_CommandHMMM(px,FieldMap[(py)&511]+768,px, ((py)&255)+page,16, 16);	
	}
}

void RemoveScoreBoardLeft(u8 px,u16 py,u16 page)
{
	if (((py&255)>256-ScoreBoardNY_Left) ) 
	{
		u8 t = 256 - (py & 255) ;
		VDP_CommandHMMM(px, FieldMap[(py)&511]+768,   px, ((py)&255)+page, ScoreBoardNX_Left, t);
		VDP_CommandHMMM(px, FieldMap[((py)+t)&511]+768, px, page,            ScoreBoardNX_Left, ScoreBoardNY_Left-t);
	}
	else
		VDP_CommandHMMM(px, FieldMap[(py)&511]+768, px, ((py)&255)+page, ScoreBoardNX_Left, ScoreBoardNY_Left);
}

void PrintScoreBoardLeft(u8 px,u16 py,u16 page)
{
	if (((py&255)>256-ScoreBoardNY_Left) ) 
	{
		u8 t = 256 - (py & 255) ;
		VDP_CommandHMMM(0, 768,   px, ((py)&255)+page, ScoreBoardNX_Left, t);
		VDP_CommandHMMM(0, 768+t, px, page,            ScoreBoardNX_Left, ScoreBoardNY_Left-t);
	}
	else
		VDP_CommandHMMM(0, 768, px, ((py)&255)+page, ScoreBoardNX_Left, ScoreBoardNY_Left);
}

void RemoveScoreBoardRight(u8 px,u16 py,u16 page)
{
	if (((py&255)>256-ScoreBoardNY_Right) ) 
	{
		u8 t = 256 - (py & 255) ;
		VDP_CommandHMMM(px, FieldMap[(py)&511]+768,   px, ((py)&255)+page, ScoreBoardNX_Right, t);
		VDP_CommandHMMM(px, FieldMap[((py)+t)&511]+768, px, page,            ScoreBoardNX_Right, ScoreBoardNY_Right-t);
	}
	else
		VDP_CommandHMMM(px, FieldMap[(py)&511]+768, px, ((py)&255)+page, ScoreBoardNX_Right, ScoreBoardNY_Right);
}

void PrintScoreBoardRight(u8 px,u16 py,u16 page)
{
	if (((py&255)>256-ScoreBoardNY_Right) ) 
	{
		u8 t = 256 - (py & 255) ;
		VDP_CommandHMMM(px, 768,   px, ((py)&255)+page, ScoreBoardNX_Right, t);
		VDP_CommandHMMM(px, 768+t, px, page,            ScoreBoardNX_Right, ScoreBoardNY_Right-t);
	}
	else
		VDP_CommandHMMM(px, 768, px, ((py)&255)+page, ScoreBoardNX_Right, ScoreBoardNY_Right);
}

