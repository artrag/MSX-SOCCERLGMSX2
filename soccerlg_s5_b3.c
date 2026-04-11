// ─────────────────────────────────────────────────────────────────────────────
//  soccerlg SCC - 2026 Fausto Pracek (fpracek@gmail.com)
//  Segment 5 - Drawing functions
// ─────────────────────────────────────────────────────────────────────────────

#include "msxgl.h"
#include "soccerlg.h"
#include "bin/FieldMap.h"

void PlotField(u16 y,u16 page)
{
	for (u16 i=y;i<y+192;i+=16)
		VDP_CommandYMMM(FieldMap[i]+768,0,i+page,16, 0);		
}



void RemoveSwSprite(u8 px,u16 py,u16 page) 
{
	u16 diff = (py + 512 - Field.ly) & 511;
	if (diff < 224 || diff > 480) 
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


// +++ Set ball frame +++
void SetBallSprite(u8 height) 
{
	if (height > 7) height = 7;
	SwSprite[14].frame = SPR_BALL_SIZE_1 + height;
}