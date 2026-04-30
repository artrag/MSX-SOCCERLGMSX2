;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s12_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _UpdateGameState_Penalties
	.globl _UpdateGameState_Penalties_End
	.globl _ShowMenu
	.globl _AssignOffsideTargets
	.globl _AssignCornerKickTargets
	.globl _AssignGoalKickTargets
	.globl _AssignThrowInTargets
	.globl _AssignKickOffTargets
	.globl _EventTimeUp
	.globl _HideSpriteMessage
	.globl _ShowSpriteMessage
	.globl _IsBallForeground
	.globl _PrintScoreBoardRight
	.globl _PrintScoreBoardLeft
	.globl _RemoveSwSprite
	.globl _PlotField
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
	.globl _CallFnc_VOID_16_P2
	.globl _CallFnc_BOOL
	.globl _CallFnc_VOID_16_P1
	.globl _CallFnc_VOID_3PTR_U16
	.globl _CallFnc_VOID_U8U16U16
	.globl _CallFnc_VOID
	.globl _CallSpriteFrame
	.globl _VDP_RegWrite
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _g_BDOS
	.globl _g_MASTER
	.globl _g_RAMAD3
	.globl _g_RAMAD2
	.globl _g_RAMAD1
	.globl _g_RAMAD0
	.globl _g_BREAKV
	.globl _g_DISKVE
	.globl _g_KANJTABLE
	.globl _g_STRSRC
	.globl _g_SUBRID
	.globl _g_CHAR_16
	.globl _g_MSXMID
	.globl _g_MSXVER
	.globl _g_ROMVersion
	.globl _g_BASRVN
	.globl _g_VDP_DW
	.globl _g_VDP_DR
	.globl _g_CGTABL
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
	.globl _UpdateGameState_Restarts
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_g_PortPrimarySlot	=	0x00a8
_g_PortReadKeyboard	=	0x00a9
_g_PortAccessKeyboard	=	0x00aa
_g_PortControl	=	0x00ab
_g_VDP_DataPort	=	0x0098
_g_VDP_RegPort	=	0x0099
_g_VDP_AddrPort	=	0x0099
_g_VDP_StatPort	=	0x0099
_g_VDP_PalPort	=	0x009a
_g_VDP_IRegPort	=	0x009b
_g_PSG_RegPort	=	0x00a0
_g_PSG_DataPort	=	0x00a1
_g_PSG_StatPort	=	0x00a2
_g_PSG_Ext_RegPort	=	0x0010
_g_PSG_Ext_DataPort	=	0x0011
_g_PSG_Ext_StatPort	=	0x0012
_g_MSXMusic_IndexPort	=	0x007c
_g_MSXMusic_DataPort	=	0x007d
_g_MSXAudio_IndexPort	=	0x00c0
_g_MSXAudio_DataPort	=	0x00c1
_g_MSXAudio_IndexPort2	=	0x00c2
_g_MSXAudio_DataPort2	=	0x00c3
_g_RTC_AddrPort	=	0x00b4
_g_RTC_DataPort	=	0x00b5
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _SEG12
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:11: void UpdateGameState_Restarts(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
;	---------------------------------
; Function UpdateGameState_Restarts
; ---------------------------------
_UpdateGameState_Restarts::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-32
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:13: if (*game_state == 4) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	sub	a, #0x04
	jp	NZ,00371$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:15: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jp	Z, 00420$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:16: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	a, 4 (ix)
	ld	-18 (ix), a
	ld	a, 5 (ix)
	ld	-17 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	ld	hl, #_Frms
	ld	a, c
	sub	a, (hl)
	jp	NC, 00127$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:17: (*wait_secs)--;
	ld	a, -1 (ix)
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:18: if (*wait_secs == 0) {
	or	a, a
	jp	NZ, 00127$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:19: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:22: Half = 2;
	ld	hl, #_Half
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:23: Mins = HALF_TIME_MINS; Secs = HALF_TIME_SECS;
	ld	hl, #_Mins
	ld	(hl), #0x01
	ld	hl, #_Secs
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:24: KickOffTeam = TEAM_1; // Secondo tempo batte il Team 1
	ld	hl, #_KickOffTeam
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:25: TimerEnabled = FALSE; // Congela il timer fino al prossimo tocco
	ld	hl, #_TimerEnabled
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:28: SwSprite[14].lx = BALL_START_X;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:29: SwSprite[14].ly = BALL_START_Y;
	ld	hl, #0x0100
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:30: SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:31: SwSprite[14].frame = SPR_BALL_SIZE_1;
	ld	l, #0x60
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:33: Field.ly = target_ly; // Centra campo immediatamente per 2T
	ld	hl, #(_Field + 4)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:34: Field.dy = 0; // Impedisce ad AddLines di far scorrere lo sfondo non esistente
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:37: ScoreBoardLeft.y0 = ScoreBoardLeft.y1 = ScoreBoardLeft.y2 = Field.ly;
	ld	hl, #(_ScoreBoardLeft + 10)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
	ld	hl, #(_ScoreBoardLeft + 8)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
	ld	hl, #(_ScoreBoardLeft + 6)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:38: ScoreBoardRight.y0 = ScoreBoardRight.y1 = ScoreBoardRight.y2 = Field.ly;
	ld	hl, #(_ScoreBoardRight + 10)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
	ld	hl, #(_ScoreBoardRight + 8)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
	ld	hl, #(_ScoreBoardRight + 6)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:39: VDP_SetVerticalOffset(Field.ly & 255);
	ld	l, 6 (ix)
;	spillPairReg hl
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:41: CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:42: for (u8 i = 0; i < 14; i++) {
	ld	c, #0x00
00375$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:43: SwSprite[i].lx = SwSprite[i].tx;
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ex	de, hl
	push	de
	pop	iy
	ld	a, 12 (iy)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:44: SwSprite[i].ly = SwSprite[i].ty;
	ld	hl, #0x0004
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	push	de
	pop	iy
	ld	a, 13 (iy)
	ld	-7 (ix), a
	ld	a, 14 (iy)
	ld	-6 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:45: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	hl, #0x0011
	add	hl, de
	ld	(hl), #0x00
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:42: for (u8 i = 0; i < 14; i++) {
	inc	c
	jp	00375$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:49: bool ball_fg = CallFnc_BOOL(SEG_DRAW, IsBallForeground);
	ld	de, #_IsBallForeground
	ld	a, #0x05
	call	_CallFnc_BOOL
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:50: for (u16 page = 0; page <= 512; page += 256) {
	xor	a, a
	ld	-15 (ix), a
	ld	-14 (ix), a
00387$:
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	xor	a, a
	cp	a, c
	ld	a, #0x02
	sbc	a, b
	jp	C, 00585$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:51: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, page);
	ld	hl, (#(_Field + 4) + 0)
	ld	e, -15 (ix)
	ld	d, -14 (ix)
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:52: for (u8 i=37; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
	ld	-1 (ix), #0x25
00378$:
	ld	a, -1 (ix)
	sub	a, #0x27
	jr	NC, 00105$
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	bc,#4
	add	hl,bc
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), c
	ld	-6 (ix), a
	sub	a, #0x02
	jr	NC, 00379$
	ld	a, -7 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -6 (ix)
	adc	a, #0x02
	ld	d, a
	ld	bc, (#(_Field + 4) + 0)
	ex	de, hl
	cp	a, a
	sbc	hl, bc
	ld	a, h
	and	a, #0x01
	ld	c, a
	ld	a, l
	sub	a, #0xcf
	ld	a, c
	sbc	a, #0x00
	jr	NC, 00379$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	hl, #15
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -7 (ix)
	ld	d, #0x00
	add	a, -15 (ix)
	ld	e, a
	ld	a, d
	adc	a, -14 (ix)
	ld	d, a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
00379$:
	inc	-1 (ix)
	jp	00378$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:53: if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -16 (ix)
	or	a, a
	jr	NZ, 00575$
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, d
	sub	a, #0x02
	jr	NC, 00575$
	ld	hl, #0x020f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, (#(_Field + 4) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	and	a, #0x01
	ld	b, a
	ld	a, c
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00575$
	ld	bc, (#(_SwSprite + 337) + 0)
	ld	d, #0x00
	ld	a, e
	add	a, -15 (ix)
	ld	e, a
	ld	a, d
	adc	a, -14 (ix)
	ld	d, a
	ld	hl, #(_SwSprite + 322)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:54: for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00575$:
	ld	-1 (ix), #0x00
00381$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00113$
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	bc,#4
	add	hl,bc
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), c
	ld	-10 (ix), a
	sub	a, #0x02
	jr	NC, 00382$
	ld	a, -11 (ix)
	add	a, #0x0f
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x02
	ld	-8 (ix), a
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	b, -8 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -6 (ix)
	and	a, #0x01
	ld	b, a
	ld	a, c
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00382$
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	hl, #15
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -11 (ix)
	ld	d, #0x00
	add	a, -15 (ix)
	ld	e, a
	ld	a, d
	adc	a, -14 (ix)
	ld	d, a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
00382$:
	inc	-1 (ix)
	jp	00381$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:55: if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00582$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:53: if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	de, (#(_SwSprite + 326) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:55: if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, d
	sub	a, #0x02
	jr	NC, 00582$
	ld	hl, #0x020f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, (#(_Field + 4) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	and	a, #0x01
	ld	b, a
	ld	a, c
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00582$
	ld	bc, (#(_SwSprite + 337) + 0)
	ld	d, #0x00
	ld	a, e
	add	a, -15 (ix)
	ld	e, a
	ld	a, d
	adc	a, -14 (ix)
	ld	d, a
	ld	hl, #(_SwSprite + 322)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:56: for (u8 i=15; i<37; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00582$:
	ld	c, #0x0f
00384$:
	ld	a, c
	sub	a, #0x25
	jr	NC, 00388$
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_SwSprite
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	de, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), b
	ld	-6 (ix), a
	sub	a, #0x02
	jr	NC, 00385$
	ld	a, -7 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -6 (ix)
	adc	a, #0x02
	ld	d, a
	ld	hl, (#(_Field + 4) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
	ld	b, a
	ld	a, e
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00385$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	hl, #15
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	push	bc
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	add	iy, bc
	pop	bc
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	b, (hl)
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, b
	call	_CallSpriteFrame
	pop	bc
00385$:
	inc	c
	jp	00384$
00388$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:50: for (u16 page = 0; page <= 512; page += 256) {
	ld	c, -15 (ix)
	ld	a, -14 (ix)
	inc	a
	ld	-15 (ix), c
	ld	-14 (ix), a
	jp	00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:60: for (u8 i = 0; i < NumSprite; i++) {
00585$:
	ld	c, #0x00
00390$:
	ld	a, c
	sub	a, #0x27
	jr	NC, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:61: SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_SwSprite
	add	hl, de
	ld	e, l
	ld	d, h
	inc	hl
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	hl, #0x0002
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (de)
	ld	(hl), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:62: SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
	ld	hl, #0x0006
	add	hl, de
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	hl, #0x0008
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	hl, #0x000a
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	hl, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:60: for (u8 i = 0; i < NumSprite; i++) {
	inc	c
	jp	00390$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:66: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	ld	hl, #0x0000
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:67: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	ld	hl, #0x0000
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:68: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	ld	hl, #0x0100
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:69: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	ld	hl, #0x0100
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:70: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:71: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:73: *game_state = 2;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:76: *start_sec = Frms;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00420$
00371$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:78: } else if (*game_state == 5) {
	ld	a, -1 (ix)
	sub	a, #0x05
	jp	NZ,00368$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:80: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:81: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	Z, 00420$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:82: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:83: (*wait_secs)--;
	ld	a, c
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:84: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:85: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	de
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	ld	de, #_EventTimeUp
	ld	a, #0x08
	call	_CallFnc_VOID
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:88: if (ScoreTeam1 != ScoreTeam2) {
	ld	a, (_ScoreTeam1+0)
	ld	hl, #_ScoreTeam2
	sub	a, (hl)
	jr	Z, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:89: *game_state = 10; // Vittoria: Esultanza e Uscita
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:90: *wait_secs = 3;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:91: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:92: g_is_penalty_shootout = FALSE;
	ld	iy, #_g_is_penalty_shootout
	ld	0 (iy), #0x00
	jp	00136$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:94: *game_state = 11; // Pareggio: Setup Rigori
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:95: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_PENALTIES);
	push	de
	ld	hl, #0x0149
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:96: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:97: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:101: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
	jp	00420$
00368$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:103: } else if (*game_state == 6) {
	ld	a, -1 (ix)
	sub	a, #0x06
	jp	NZ,00365$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:105: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	Z, 00420$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:106: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	a, 4 (ix)
	ld	-15 (ix), a
	ld	a, 5 (ix)
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	b, (hl)
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jp	NC, 00196$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:107: (*wait_secs)--;
	ld	a, c
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:108: if (*wait_secs == 0) {
	or	a, a
	jp	NZ, 00196$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:109: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:111: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00152$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:112: CallFnc_VOID(SEG_GAMESTATE_7, AssignThrowInTargets);
	ld	de, #_AssignThrowInTargets
	ld	a, #0x11
	call	_CallFnc_VOID
	jp	00153$
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:113: } else if (RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
	ld	a,(_RestartType+0)
	cp	a,#0x02
	jr	Z, 00147$
	sub	a, #0x04
	jr	NZ, 00148$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:114: CallFnc_VOID(SEG_GAMESTATE_7, AssignGoalKickTargets);
	ld	de, #_AssignGoalKickTargets
	ld	a, #0x11
	call	_CallFnc_VOID
	jp	00153$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:115: } else if (RestartType == RESTART_CORNERKICK) {
	ld	a, (_RestartType+0)
	sub	a, #0x03
	jr	NZ, 00145$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:116: CallFnc_VOID(SEG_GAMESTATE_7, AssignCornerKickTargets);
	ld	de, #_AssignCornerKickTargets
	ld	a, #0x11
	call	_CallFnc_VOID
	jp	00153$
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:117: } else if (RestartType == RESTART_OFFSIDE) {
	ld	a, (_RestartType+0)
	sub	a, #0x07
	jr	NZ, 00142$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:118: CallFnc_VOID(SEG_GAMESTATE_7, AssignOffsideTargets);
	ld	de, #_AssignOffsideTargets
	ld	a, #0x11
	call	_CallFnc_VOID
	jp	00153$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:121: SwSprite[14].lx = BALL_START_X;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:122: SwSprite[14].ly = BALL_START_Y;
	ld	hl, #0x0100
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:123: SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:124: SwSprite[14].frame = SPR_BALL_SIZE_1;
	ld	l, #0x60
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:126: if (RestartType != RESTART_GOAL) Field.ly = target_ly; // Teletrasporta solo se NON è un Goal
	ld	a, (_RestartType+0)
	sub	a, #0x05
	jr	Z, 00140$
	ld	hl, #(_Field + 4)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:127: CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:113: } else if (RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
	ld	a, (_RestartType+0)
	sub	a, #0x04
	ld	a, #0x01
	jr	Z, 01604$
	xor	a, a
01604$:
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:131: if (RestartType == RESTART_THROWIN || RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE || RestartType == RESTART_OFFSIDE) {
	ld	a, (_RestartType+0)
	dec	a
	jr	Z, 00160$
	ld	a, (_RestartType+0)
	sub	a, #0x02
	jr	Z, 00160$
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00160$
	ld	a, (_RestartType+0)
	sub	a, #0x07
	jp	NZ,00161$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:132: u16 cam_target_y = (RestartType == RESTART_GKSAVE || RestartType == RESTART_OFFSIDE) ? RestartSideY : SwSprite[14].ly;
	bit	0, -1 (ix)
	jr	NZ, 00425$
	ld	a, (_RestartType+0)
	sub	a, #0x07
	jr	NZ, 00422$
00425$:
	ld	hl, (_RestartSideY)
	ld	-7 (ix), l
	ld	-6 (ix), h
	jp	00423$
00422$:
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
00423$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:133: if (cam_target_y < 96) Field.ly = 0;
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, #0x60
	ld	a, -8 (ix)
	sbc	a, #0x00
	jr	NC, 00158$
	ld	hl, #0x0000
	ld	((_Field + 4)), hl
	jp	00159$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:134: else if (cam_target_y > 512 - 192) Field.ly = 512 - 192;
	ld	a, #0x40
	cp	a, -9 (ix)
	ld	a, #0x01
	sbc	a, -8 (ix)
	jr	NC, 00155$
	ld	hl, #0x0140
	ld	((_Field + 4)), hl
	jp	00159$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:135: else Field.ly = cam_target_y - 96;
	ld	a, -9 (ix)
	add	a, #0xa0
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-6 (ix), a
	ld	hl, #(_Field + 4)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:137: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:140: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:144: if (RestartType != RESTART_GKSAVE) {
	ld	a, (_RestartType+0)
	sub	a, #0x04
	jp	Z,00189$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:145: bool ball_fg = CallFnc_BOOL(SEG_DRAW, IsBallForeground);
	ld	de, #_IsBallForeground
	ld	a, #0x05
	call	_CallFnc_BOOL
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:146: for (u16 page = 0; page <= 512; page += 256) {
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
00402$:
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	xor	a, a
	cp	a, c
	ld	a, #0x02
	sbc	a, b
	jp	C, 00629$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:147: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, page);
	ld	hl, (#(_Field + 4) + 0)
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:148: for (u8 i=37; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
	ld	-1 (ix), #0x25
00393$:
	ld	a, -1 (ix)
	sub	a, #0x27
	jr	NC, 00168$
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	bc,#4
	add	hl,bc
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), c
	ld	-6 (ix), a
	sub	a, #0x02
	jr	NC, 00394$
	ld	a, -7 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -6 (ix)
	adc	a, #0x02
	ld	d, a
	ld	bc, (#(_Field + 4) + 0)
	ex	de, hl
	cp	a, a
	sbc	hl, bc
	ld	a, h
	and	a, #0x01
	ld	c, a
	ld	a, l
	sub	a, #0xcf
	ld	a, c
	sbc	a, #0x00
	jr	NC, 00394$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	hl, #15
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -7 (ix)
	ld	d, #0x00
	add	a, -11 (ix)
	ld	e, a
	ld	a, d
	adc	a, -10 (ix)
	ld	d, a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
00394$:
	inc	-1 (ix)
	jp	00393$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:149: if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -12 (ix)
	or	a, a
	jr	NZ, 00619$
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, d
	sub	a, #0x02
	jr	NC, 00619$
	ld	hl, #0x020f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, (#(_Field + 4) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	and	a, #0x01
	ld	b, a
	ld	a, c
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00619$
	ld	bc, (#_SwSprite + 337)
	ld	d, #0x00
	ld	a, e
	add	a, -11 (ix)
	ld	e, a
	ld	a, d
	adc	a, -10 (ix)
	ld	d, a
	ld	hl, #(_SwSprite + 322)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:150: for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00619$:
	ld	-1 (ix), #0x00
00396$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC, 00176$
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	bc,#4
	add	hl,bc
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), c
	ld	-6 (ix), a
	sub	a, #0x02
	jr	NC, 00397$
	ld	a, -7 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -6 (ix)
	adc	a, #0x02
	ld	d, a
	ld	bc, (#(_Field + 4) + 0)
	ex	de, hl
	cp	a, a
	sbc	hl, bc
	ld	a, h
	and	a, #0x01
	ld	c, a
	ld	a, l
	sub	a, #0xcf
	ld	a, c
	sbc	a, #0x00
	jr	NC, 00397$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	hl, #15
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -7 (ix)
	ld	d, #0x00
	add	a, -11 (ix)
	ld	e, a
	ld	a, d
	adc	a, -10 (ix)
	ld	d, a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
00397$:
	inc	-1 (ix)
	jp	00396$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:151: if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00626$
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, d
	sub	a, #0x02
	jr	NC, 00626$
	ld	hl, #0x020f
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, (#(_Field + 4) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	and	a, #0x01
	ld	b, a
	ld	a, c
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00626$
	ld	bc, (#_SwSprite + 337)
	ld	d, #0x00
	ld	a, e
	add	a, -11 (ix)
	ld	e, a
	ld	a, d
	adc	a, -10 (ix)
	ld	d, a
	ld	hl, #(_SwSprite + 322)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:152: for (u8 i=15; i<37; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00626$:
	ld	c, #0x0f
00399$:
	ld	a, c
	sub	a, #0x25
	jr	NC, 00403$
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_SwSprite
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ex	de,hl
	ld	hl, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), b
	ld	-6 (ix), a
	sub	a, #0x02
	jr	NC, 00400$
	ld	a, -7 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -6 (ix)
	adc	a, #0x02
	ld	b, a
	ld	hl, (#(_Field + 4) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, b
	sbc	a, h
	and	a, #0x01
	ld	d, a
	ld	a, e
	sub	a, #0xcf
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00400$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	hl, #15
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	push	bc
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	add	iy, bc
	pop	bc
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	b, (hl)
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, b
	call	_CallSpriteFrame
	pop	bc
00400$:
	inc	c
	jp	00399$
00403$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:146: for (u16 page = 0; page <= 512; page += 256) {
	ld	c, -11 (ix)
	ld	e, -10 (ix)
	ld	a, e
	inc	a
	ld	-11 (ix), c
	ld	-10 (ix), a
	jp	00402$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:156: for (u8 i = 0; i < NumSprite; i++) {
00629$:
	ld	-1 (ix), #0x00
00405$:
	ld	a, -1 (ix)
	sub	a, #0x27
	jr	NC, 00186$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:157: SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ex	de, hl
	ld	c, e
	ld	b, d
	inc	bc
	ld	hl, #0x0002
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (de)
	ld	(hl), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:158: SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
	ld	hl, #0x0006
	add	hl, de
	ld	c, l
	ld	b, h
	ld	hl, #0x0008
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	hl, #0x000a
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:156: for (u8 i = 0; i < NumSprite; i++) {
	inc	-1 (ix)
	jp	00405$
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:162: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	ld	hl, #0x0000
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:163: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	ld	hl, #0x0000
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:164: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	ld	hl, #0x0100
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:165: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	ld	hl, #0x0100
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:166: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:167: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	jp	00190$
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:172: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:173: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, Ball->x0, Ball->y0, 0);
	ld	hl, #(_SwSprite + 322) + 6
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#(_SwSprite + 322) + 1)
	ld	hl, #0x0000
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:174: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, Ball->x1, Ball->y1, 256);
	ld	hl, #(_SwSprite + 322) + 8
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#(_SwSprite + 322) + 2)
	ld	hl, #0x0100
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:175: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, Ball->x2, Ball->y2, 512);
	ld	hl, #(_SwSprite + 322) + 10
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#(_SwSprite + 322) + 3)
	ld	hl, #0x0200
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:176: CallSpriteFrame(Ball->lx, (Ball->ly & 255) + 0,   Ball->frame);
	ld	hl, #(_SwSprite + 337)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, c
	call	_CallSpriteFrame
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:177: CallSpriteFrame(Ball->lx, (Ball->ly & 255) + 256, Ball->frame);
	ld	hl, #(_SwSprite + 337)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	inc	a
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, c
	call	_CallSpriteFrame
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:178: CallSpriteFrame(Ball->lx, (Ball->ly & 255) + 512, Ball->frame);
	ld	hl, #(_SwSprite + 337)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	add	a, #0x02
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, c
	call	_CallSpriteFrame
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:179: for (u8 i = 0; i < NumSprite; i++) {
	ld	-1 (ix), #0x00
00408$:
	ld	a, -1 (ix)
	sub	a, #0x27
	jp	NC, 00190$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:180: SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_SwSprite
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, -7 (ix)
	add	a, #0x01
	ld	-17 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	a, -7 (ix)
	add	a, #0x02
	ld	-12 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
	ld	a, -7 (ix)
	add	a, #0x03
	ld	-10 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:181: SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
	ld	a, -7 (ix)
	add	a, #0x06
	ld	-13 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	a, -7 (ix)
	add	a, #0x08
	ld	-11 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	a, -7 (ix)
	add	a, #0x0a
	ld	-9 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:179: for (u8 i = 0; i < NumSprite; i++) {
	inc	-1 (ix)
	jp	00408$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:185: *game_state = 2; // Riparte la coreografia di schieramento
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:186: if (RestartType == RESTART_GOAL) RestartType = RESTART_KICKOFF_SCROLL;
	ld	a, (_RestartType+0)
	sub	a, #0x05
	jr	NZ, 00196$
	ld	iy, #_RestartType
	ld	0 (iy), #0x06
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:189: *start_sec = Frms;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00420$
00365$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:191: } else if (*game_state == 9) {
	ld	a, -1 (ix)
	sub	a, #0x09
	jp	NZ,00362$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:193: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Nascondi i focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:195: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00204$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:196: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00202$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:197: (*wait_secs)--;
	ld	a, c
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:198: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00202$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:199: *game_state = 6; // Passa al reset del campo
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:200: *wait_secs = 1;  // Pausa minima per permettere il ridisegno pulito
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:201: *start_sec = 0;  // FIX: Questo valore forza lo Stato 6 a triggerare istantaneamente il prossimo frame (No lag)
	xor	a, a
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:202: return;
	jp	00420$
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:205: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:208: u8 scoring_team = (KickOffTeam == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	NZ, 00427$
	ld	bc, #0x0001
	jp	00428$
00427$:
	ld	bc, #0x0000
00428$:
	ld	-22 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:210: for (u8 i = 0; i < 14; i++) {
	ld	-1 (ix), #0x00
00411$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00238$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:211: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00429$
	ld	bc, #0x0000
	jp	00430$
00429$:
	ld	bc, #0x0001
00430$:
	ld	-21 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:212: struct ObjectInfo* p = &SwSprite[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_SwSprite
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:222: u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
	ld	-20 (ix), l
	ld	-19 (ix), h
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:223: u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
	ld	a, -20 (ix)
	add	a, #0x04
	ld	-18 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-17 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:237: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -20 (ix)
	add	a, #0x0f
	ld	-16 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:214: if (team == scoring_team) { 
	ld	a, -21 (ix)
	sub	a, -22 (ix)
	jp	NZ,00236$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:217: u16 center_y = Field.ly + 96;
	ld	hl, (#(_Field + 4) + 0)
	ld	bc, #0x0060
	add	hl, bc
	push	hl
	pop	iy
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:219: u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	a, (_Frms+0)
	ld	-24 (ix), a
	ld	-23 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	add	hl, de
	push	bc
	push	iy
	ld	de, #0x00a0
	call	__modsint
	pop	iy
	pop	bc
	ld	hl, #0x0030
	add	hl, de
	ld	-11 (ix), l
	ld	-10 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:220: u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
	push	iy
	pop	de
	ld	a, e
	add	a, #0xc4
	ld	-8 (ix), a
	ld	a, d
	adc	a, #0xff
	ld	-7 (ix), a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	e, -24 (ix)
	ld	d, -23 (ix)
	add	hl, de
	ld	de, #0x0078
	call	__modsint
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	add	hl, de
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:222: u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -6 (ix)
	ld	d, #0x00
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sub	a, l
	ld	a, -10 (ix)
	sbc	a, h
	jr	NC, 00431$
	ld	a, e
	sub	a, -11 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -10 (ix)
	jp	00432$
00431$:
	ld	a, -9 (ix)
	sub	a, e
	ld	e, a
	ld	a, -8 (ix)
	sbc	a, d
00432$:
	ld	-11 (ix), e
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:223: u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
	ld	a, c
	sub	a, -13 (ix)
	ld	a, b
	sbc	a, -12 (ix)
	jr	NC, 00433$
	ld	a, -13 (ix)
	sub	a, c
	ld	e, a
	ld	a, -12 (ix)
	sbc	a, b
	jp	00434$
00433$:
	ld	a, c
	sub	a, -13 (ix)
	ld	e, a
	ld	a, b
	sbc	a, -12 (ix)
00434$:
	ld	-13 (ix), e
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:224: u8 speed = (dist_x > 100 || dist_y > 100) ? 6 : ((dist_x > 50 || dist_y > 50) ? 4 : 2);
	ld	a, #0x64
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00438$
	ld	e, -13 (ix)
	ld	d, -12 (ix)
	ld	a, #0x64
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00435$
00438$:
	ld	-11 (ix), #0x06
	ld	-10 (ix), #0
	jp	00436$
00435$:
	ld	a, #0x32
	cp	a, -11 (ix)
	ld	a, #0x00
	sbc	a, -10 (ix)
	jr	C, 00443$
	ld	a, #0x32
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00440$
00443$:
	ld	de, #0x0004
	jp	00441$
00440$:
	ld	de, #0x0002
00441$:
	ld	-11 (ix), e
	ld	-10 (ix), d
00436$:
	ld	a, -11 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:226: if (p->lx < t_x - speed) p->dx = speed; else if (p->lx > t_x + speed) p->dx = -speed; else p->dx = 0;
	ld	-14 (ix), a
	ld	e, a
	ld	d, #0x00
	ld	a, -9 (ix)
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -8 (ix)
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -20 (ix)
	add	a, #0x11
	ld	-13 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	a, -7 (ix)
	sub	a, l
	ld	a, -6 (ix)
	sbc	a, h
	jr	NC, 00209$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, -14 (ix)
	ld	(hl), a
	jp	00210$
00209$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	add	hl, de
	ld	a, l
	sub	a, -7 (ix)
	ld	a, h
	sbc	a, -6 (ix)
	jr	NC, 00206$
	xor	a, a
	sub	a, -14 (ix)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), a
	jp	00210$
00206$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x00
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:227: if (p->ly < t_y - speed) p->dy = speed; else if (p->ly > t_y + speed) p->dy = -speed; else p->dy = 0;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, e
	ld	-11 (ix), a
	ld	a, b
	sbc	a, d
	ld	-10 (ix), a
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -20 (ix)
	add	a, #0x12
	ld	-7 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00215$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -14 (ix)
	ld	(hl), a
	jp	00216$
00215$:
	ld	l, c
	ld	h, b
	add	hl, de
	ld	a, l
	sub	a, -9 (ix)
	ld	a, h
	sbc	a, -8 (ix)
	jr	NC, 00212$
	xor	a, a
	sub	a, -14 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
	jp	00216$
00212$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x00
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:229: p->lx += p->dx; p->ly += p->dy; 
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	c, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:230: p->anim++;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	de, #0x0013
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	inc	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:232: u8 step = (p->anim / 3) % 4;
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ld	a, e
	and	a, #0x03
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:233: if (step == 3) step = 1;
	ld	-8 (ix), a
	sub	a, #0x03
	jr	NZ, 00218$
	ld	-8 (ix), #0x01
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:229: p->lx += p->dx; p->ly += p->dy; 
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:235: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	bit	7, -6 (ix)
	jr	NZ, 00227$
	ld	a, -6 (ix)
	or	a, a
	jp	NZ, 00228$
	ld	a, (_Frms+0)
	and	a, #0x3f
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x20
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00228$
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:236: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00219$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00220$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:237: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00445$
	ld	-7 (ix), #0xfd
	ld	-6 (ix), #0
	jp	00446$
00445$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00447$
	ld	-7 (ix), #0xfe
	ld	-6 (ix), #0
	jp	00448$
00447$:
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0
00448$:
00446$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00412$
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:239: p->frame = (team == TEAM_1) ? 
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00449$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:240: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00451$
	ld	-7 (ix), #0x5c
	ld	-6 (ix), #0
	jp	00450$
00451$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00453$
	ld	-7 (ix), #0x5d
	ld	-6 (ix), #0
	jp	00450$
00453$:
	ld	-7 (ix), #0x5e
	ld	-6 (ix), #0
	jp	00450$
00449$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:241: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00455$
	ld	-7 (ix), #0xcc
	ld	-6 (ix), #0
	jp	00456$
00455$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00457$
	ld	-7 (ix), #0xcd
	ld	-6 (ix), #0
	jp	00458$
00457$:
	ld	-7 (ix), #0xce
	ld	-6 (ix), #0
00458$:
00456$:
00450$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00412$
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:244: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00223$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00224$
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:245: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, step);
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00412$
00224$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:247: p->frame = (team == TEAM_1) ? 
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00459$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:248: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00461$
	ld	de, #0x003c
	jp	00460$
00461$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00463$
	ld	de, #0x003d
	jp	00460$
00463$:
	ld	de, #0x003e
	jp	00460$
00459$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:249: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00465$
	ld	de, #0x009c
	jp	00466$
00465$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00467$
	ld	de, #0x009d
	jp	00468$
00467$:
	ld	de, #0x009e
00468$:
00466$:
00460$:
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00412$
00236$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:254: i8 look_dx = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	a, -6 (ix)
	sub	a, c
	jr	NC, 00469$
	ld	de, #0x0001
	jp	00470$
00469$:
	ld	a, c
	sub	a, -6 (ix)
	jr	NC, 00471$
	ld	de, #0xffff
	jp	00472$
00471$:
	ld	de, #0x0000
00472$:
00470$:
	ld	c, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:255: i8 look_dy = (SwSprite[14].ly > p->ly) ? 1 : ((SwSprite[14].ly < p->ly) ? -1 : 0);
	ld	hl, (#_SwSprite + 326)
	ld	a, -13 (ix)
	sub	a, l
	ld	a, -12 (ix)
	sbc	a, h
	jr	NC, 00473$
	ld	de, #0x0001
	jp	00474$
00473$:
	ld	a, l
	sub	a, -13 (ix)
	ld	a, h
	sbc	a, -12 (ix)
	jr	NC, 00475$
	ld	de, #0xffff
	jp	00476$
00475$:
	ld	de, #0x0000
00476$:
00474$:
	ld	b, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:256: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, c
	or	a,a
	jr	NZ, 00233$
	or	a,b
	jr	NZ, 00233$
	ld	b, #0x01
00233$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:257: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, look_dx, look_dy);
	push	bc
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00412$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:210: for (u8 i = 0; i < 14; i++) {
	inc	-1 (ix)
	jp	00411$
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:262: struct ObjectInfo* ref = &SwSprite[26];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:263: i8 look_dx = (SwSprite[14].lx > ref->lx) ? 1 : ((SwSprite[14].lx < ref->lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 598)
	ld	c, (hl)
	ld	a, c
	sub	a, -1 (ix)
	jr	NC, 00477$
	ld	bc, #0x0001
	jp	00478$
00477$:
	ld	a, -1 (ix)
	sub	a, c
	jr	NC, 00479$
	ld	bc, #0xffff
	jp	00480$
00479$:
	ld	bc, #0x0000
00480$:
00478$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:264: i8 look_dy = (SwSprite[14].ly > ref->ly) ? 1 : ((SwSprite[14].ly < ref->ly) ? -1 : 0);
	ld	hl, #_SwSprite + 326
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	hl, #(_SwSprite + 598) + 4
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00481$
	ld	de, #0x0001
	jp	00482$
00481$:
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00483$
	ld	de, #0xffff
	jp	00484$
00483$:
	ld	de, #0x0000
00484$:
00482$:
	ld	b, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:265: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, c
	or	a,a
	jr	NZ, 00240$
	or	a,b
	jr	NZ, 00240$
	ld	b, #0x01
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:266: ref->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, 26, look_dx, look_dy);
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x1a
	push	hl
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	((_SwSprite + 613)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:267: return;
	jp	00420$
00362$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:268: } else if (*game_state == 10) {
	ld	a, -1 (ix)
	sub	a, #0x0a
	jp	NZ,00359$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:270: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Nascondi i focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:272: bool time_up = FALSE;
	ld	-28 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:273: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00245$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:274: if (*start_sec < Frms) { 
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	hl, #_Frms
	sub	a, (hl)
	jr	NC, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:275: (*wait_secs)--; 
	dec	c
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:277: *start_sec = Frms;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00246$
00245$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:279: time_up = TRUE;
	ld	-28 (ix), #0x01
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:282: u8 winning_team = (ScoreTeam1 > ScoreTeam2) ? TEAM_1 : TEAM_2;
	ld	a, (#_ScoreTeam2)
	ld	iy, #_ScoreTeam1
	sub	a, 0 (iy)
	jr	NC, 00485$
	ld	bc, #0x0000
	jp	00486$
00485$:
	ld	bc, #0x0001
00486$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:283: u8 losing_team = (winning_team == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	-27 (ix), c
	ld	a, c
	or	a, a
	jr	NZ, 00487$
	ld	bc, #0x0001
	jp	00488$
00487$:
	ld	bc, #0x0000
00488$:
	ld	-26 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:284: bool all_offscreen = TRUE;
	ld	-25 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:286: i8 exit_dy = (Field.ly < 256) ? -3 : 3; // Escono velocemente verso il bordo schermo più vicino
	ld	hl, (#(_Field + 4) + 0)
	ld	a, h
	sub	a, #0x01
	jr	NC, 00489$
	ld	bc, #0xfffd
	jp	00490$
00489$:
	ld	bc, #0x0003
00490$:
	ld	-24 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:288: for (u8 i = 0; i <= 26; i++) {
	ld	-1 (ix), #0x00
00414$:
	ld	a, #0x1a
	sub	a, -1 (ix)
	jp	C, 00291$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:289: if (i >= 15 && i < 26) continue; // Salta UI e Frecce
	ld	a, -1 (ix)
	sub	a, #0x0f
	jr	C, 00248$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	C, 00290$
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:291: struct ObjectInfo* p = &SwSprite[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_SwSprite
	add	hl, de
	ld	-23 (ix), l
	ld	-22 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:292: u8 team = (i < 7) ? TEAM_1 : ((i < 14) ? TEAM_2 : 0xFF);
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00491$
	ld	bc, #0x0000
	jp	00492$
00491$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC, 00493$
	ld	bc, #0x0001
	jp	00494$
00493$:
	ld	bc, #0x00ff
00494$:
00492$:
	ld	-21 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:294: if (team == winning_team) {
	ld	a, -27 (ix)
	sub	a, -21 (ix)
	jp	NZ,00288$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:297: u16 center_y = Field.ly + 96;
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x60
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:299: u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, (_Frms+0)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -15 (ix)
	add	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, -12 (ix)
	ld	-10 (ix), a
	ld	de, #0x00a0
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0x30
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-17 (ix), a
	ld	a, -10 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:300: u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
	ld	a, -9 (ix)
	add	a, #0xc4
	ld	-11 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-10 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -13 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	de, #0x0078
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:302: u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	a, -10 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -17 (ix)
	ld	-13 (ix), a
	ld	a, -16 (ix)
	ld	-12 (ix), a
	ld	a, -17 (ix)
	sub	a, -15 (ix)
	ld	a, -16 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00495$
	ld	a, -9 (ix)
	ld	-15 (ix), a
	ld	a, -8 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	sub	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -14 (ix)
	sbc	a, -16 (ix)
	ld	-8 (ix), a
	jp	00496$
00495$:
	ld	a, -9 (ix)
	ld	-15 (ix), a
	ld	a, -8 (ix)
	ld	-14 (ix), a
	ld	a, -13 (ix)
	sub	a, -15 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sbc	a, -14 (ix)
	ld	-8 (ix), a
00496$:
	ld	a, -9 (ix)
	ld	-15 (ix), a
	ld	a, -8 (ix)
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:303: u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
	ld	a, -23 (ix)
	add	a, #0x04
	ld	-20 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-19 (ix), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-17 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-16 (ix), a
	ld	a, -7 (ix)
	sub	a, -17 (ix)
	ld	a, -6 (ix)
	sbc	a, -16 (ix)
	jr	NC, 00497$
	ld	a, -17 (ix)
	sub	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -16 (ix)
	sbc	a, -6 (ix)
	ld	-8 (ix), a
	jp	00498$
00497$:
	ld	a, -7 (ix)
	sub	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	sbc	a, -16 (ix)
	ld	-8 (ix), a
00498$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:304: u8 speed = (dist_x > 100 || dist_y > 100) ? 6 : ((dist_x > 50 || dist_y > 50) ? 4 : 2);
	ld	a, #0x64
	cp	a, -15 (ix)
	ld	a, #0x00
	sbc	a, -14 (ix)
	jr	C, 00502$
	ld	a, #0x64
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jr	NC, 00499$
00502$:
	ld	-9 (ix), #0x06
	ld	-8 (ix), #0
	jp	00500$
00499$:
	ld	a, #0x32
	cp	a, -15 (ix)
	ld	a, #0x00
	sbc	a, -14 (ix)
	jr	C, 00507$
	ld	a, #0x32
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jr	NC, 00504$
00507$:
	ld	-9 (ix), #0x04
	ld	-8 (ix), #0
	jp	00505$
00504$:
	ld	-9 (ix), #0x02
	ld	-8 (ix), #0
00505$:
00500$:
	ld	a, -9 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:306: if (p->lx < t_x - speed) p->dx = speed; else if (p->lx > t_x + speed) p->dx = -speed; else p->dx = 0;
	ld	-18 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -9 (ix)
	ld	-17 (ix), a
	ld	a, -8 (ix)
	ld	-16 (ix), a
	ld	a, -13 (ix)
	sub	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sbc	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, -10 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00254$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -18 (ix)
	ld	(hl), a
	jp	00255$
00254$:
	ld	a, -13 (ix)
	add	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00251$
	xor	a, a
	sub	a, -18 (ix)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00255$
00251$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:307: if (p->ly < t_y - speed) p->dy = speed; else if (p->ly > t_y + speed) p->dy = -speed; else p->dy = 0;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	sub	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	sbc	a, -16 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-9 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00260$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -18 (ix)
	ld	(hl), a
	jp	00261$
00260$:
	ld	a, -13 (ix)
	add	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, -16 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00257$
	xor	a, a
	sub	a, -18 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), a
	jp	00261$
00257$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x00
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:309: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	c, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	(hl), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	add	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, -10 (ix)
	ld	-6 (ix), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	ld	a, -23 (ix)
	add	a, #0x13
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	add	a, #0x01
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:311: u8 step = (p->anim / 3) % 4;
	ld	de, #0x0003
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	and	a, #0x03
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -11 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:312: if (step == 3) step = 1;
	ld	-7 (ix), a
	sub	a, #0x03
	jr	NZ, 00263$
	ld	-7 (ix), #0x01
00263$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:309: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:316: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-9 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:314: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	bit	7, -6 (ix)
	jr	NZ, 00272$
	ld	a, -6 (ix)
	or	a, a
	jp	NZ, 00273$
	ld	a, (_Frms+0)
	and	a, #0x3f
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x20
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00273$
00272$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:315: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00264$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00265$
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:316: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00509$
	ld	-7 (ix), #0xfd
	ld	-6 (ix), #0
	jp	00510$
00509$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00511$
	ld	-7 (ix), #0xfe
	ld	-6 (ix), #0
	jp	00512$
00511$:
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0
00512$:
00510$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00290$
00265$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:318: p->frame = (team == TEAM_1) ? 
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00513$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:319: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00515$
	ld	de, #0x005c
	jp	00516$
00515$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00517$
	ld	de, #0x005d
	jp	00518$
00517$:
	ld	de, #0x005e
00518$:
00516$:
	ld	-7 (ix), e
	ld	-6 (ix), d
	jp	00514$
00513$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:320: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00519$
	ld	-7 (ix), #0xcc
	ld	-6 (ix), #0
	jp	00520$
00519$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00521$
	ld	-7 (ix), #0xcd
	ld	-6 (ix), #0
	jp	00522$
00521$:
	ld	-7 (ix), #0xce
	ld	-6 (ix), #0
00522$:
00520$:
00514$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00290$
00273$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:323: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00268$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00269$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:324: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, step);
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00290$
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:326: p->frame = (team == TEAM_1) ? 
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00523$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:327: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00525$
	ld	de, #0x003c
	jp	00524$
00525$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00527$
	ld	de, #0x003d
	jp	00524$
00527$:
	ld	de, #0x003e
	jp	00524$
00523$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:328: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00529$
	ld	de, #0x009c
	jp	00530$
00529$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00531$
	ld	de, #0x009d
	jp	00532$
00531$:
	ld	de, #0x009e
00532$:
00530$:
00524$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00290$
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:332: else if (team == losing_team || i == 26 || i == 14) {
	ld	a, -21 (ix)
	sub	a, -26 (ix)
	jr	Z, 00283$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jr	Z, 00283$
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NZ,00290$
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:334: if (OnScreen(p->ly)) {
	ld	a, -23 (ix)
	add	a, #0x04
	ld	c, a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	sub	a, #0x02
	jp	NC, 00280$
	ld	hl, #0x020f
	add	hl, de
	ex	de, hl
	ld	hl, (#(_Field + 4) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
	ld	d, a
	ld	a, e
	sub	a, #0xcf
	ld	a, d
	sbc	a, #0x00
	jp	NC, 00280$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:335: all_offscreen = FALSE; 
	ld	-25 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:336: p->dy = exit_dy; p->dx = 0;
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-9 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -24 (ix)
	ld	(hl), a
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-7 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:337: p->ly = (p->ly + p->dy) & 511; // Evita l'underflow matematico
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -24 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	ld	a, d
	and	a, #0x01
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:338: if (i != 14) { // Anima i giocatori e l'arbitro (non la palla)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	Z, 00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:339: p->anim++;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	de, #0x0013
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	inc	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:340: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x02
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:341: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	b, a
	push	bc
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	pop	bc
	ld	a, e
	and	a, #0x03
	ld	e, a
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	d, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	h, (hl)
;	spillPairReg hl
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	push	hl
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00290$
00280$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:344: p->ly = 1000; // Nascondi del tutto quando fuori visuale
	ld	a, #0xe8
	ld	(bc), a
	inc	bc
	ld	a, #0x03
	ld	(bc), a
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:288: for (u8 i = 0; i <= 26; i++) {
	inc	-1 (ix)
	jp	00414$
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:350: if (time_up && all_offscreen) {
	ld	a, -28 (ix)
	or	a, a
	jp	Z,00420$
	ld	a, -25 (ix)
	or	a, a
	jp	Z,00420$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:351: CallFnc_VOID(SEG_MENU, ShowMenu);
	ld	de, #_ShowMenu
	ld	a, #0x0e
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:353: return;
	jp	00420$
00359$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:354: } else if (*game_state == 11) {
	ld	a, -1 (ix)
	sub	a, #0x0b
	jp	NZ,00356$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:357: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jp	Z, 00309$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:358: if (*start_sec < Frms) { 
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	d, a
	ld	hl, #_Frms
	ld	a, d
	sub	a, (hl)
	jp	NC, 00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:359: (*wait_secs)--;
	ld	a, e
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:360: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00296$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:361: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	bc
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	pop	bc
00296$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:365: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Rimuovi tutti i focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:366: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00416$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00305$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:367: u8 role = (i < 7) ? i : i - 7;
	ld	a, -1 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	e, a
	or	a, a
	jr	Z, 00533$
	ld	d, -1 (ix)
	jp	00534$
00533$:
	ld	a, -1 (ix)
	add	a, #0xf9
	ld	d, a
00534$:
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:368: u8 t_cx = (i < 7) ? 64 : 192;
	ld	a, e
	or	a, a
	jr	Z, 00535$
	ld	de, #0x0040
	jp	00536$
00535$:
	ld	de, #0x00c0
00536$:
	ld	-8 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:369: i8 off_x = 0; i8 off_y = 0;
	ld	de, #0x0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:370: switch(role) {
	ld	a, #0x06
	sub	a, -6 (ix)
	jr	C, 00304$
	ld	e, -6 (ix)
	ld	d, #0x00
	ld	hl, #01661$
	add	hl, de
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:371: case 0: off_x = -18; off_y = -18; break; // Giocatore 1 (dietro)
	jp	(hl)
01661$:
	jr	00297$
	jr	00298$
	jr	00299$
	jr	00300$
	jr	00301$
	jr	00302$
	jr	00303$
00297$:
	ld	de, #0xeeee
	jp	00304$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:372: case 1: off_x =   2; off_y = -18; break; // Giocatore 2 (dietro)
00298$:
	ld	de, #0x2ee
	jp	00304$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:373: case 2: off_x =  22; off_y = -18; break; // Giocatore 3 (dietro)
00299$:
	ld	de, #0x16ee
	jp	00304$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:374: case 3: off_x = -22; off_y =   2; break; // Giocatore 4 (centro)
00300$:
	ld	de, #0xea02
	jp	00304$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:375: case 4: off_x =  -2; off_y =   2; break; // Giocatore 5 (centro)
00301$:
	ld	de, #0xfe02
	jp	00304$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:376: case 5: off_x =  18; off_y =   2; break; // Giocatore 6 (centro)
00302$:
	ld	de, #0x1202
	jp	00304$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:377: case 6: off_x = -10; off_y =  22; break; // Giocatore 7 (avanti)
00303$:
	ld	de, #0xf616
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:378: }
00304$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:379: SwSprite[i].tx = (u8)(t_cx + off_x);
	push	de
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, #<(_SwSprite)
	add	a, l
	ld	-7 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, h
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0x0c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -8 (ix)
	add	a, d
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:380: SwSprite[i].ty = (u16)(256 + off_y);
	ld	a, -7 (ix)
	add	a, #0x0d
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	inc	a
	ld	(hl), e
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:366: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00416$
00305$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:383: SwSprite[26].tx = (u8)(128 + 24);
	ld	hl, #(_SwSprite + 610)
	ld	(hl), #0x98
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:384: SwSprite[26].ty = (u16)(256 - 24);
	ld	hl, #0x00e8
	ld	((_SwSprite + 611)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:387: SwSprite[14].ly = 1000;
	ld	h, #0x03
	ld	((_SwSprite + 326)), hl
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:389: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:390: return;
	jp	00420$
00309$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:393: bool all_in_position = TRUE;
	ld	-24 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:396: if (Field.ly > 156 + 3) {
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:397: Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:396: if (Field.ly > 156 + 3) {
	ld	a, #0x9f
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	NC, 00317$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:397: Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
	ld	hl, #(_Field + 18)
	ld	(hl), #0xfc
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 18) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_Field + 4)), de
	ld	-24 (ix), #0x00
	jp	00757$
00317$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:398: } else if (Field.ly + 3 < 156) {
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, e
	sub	a, #0x9c
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00314$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:399: Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x04
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 18) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_Field + 4)), de
	ld	-24 (ix), #0x00
	jp	00757$
00314$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:400: } else if (Field.ly != 156) {
	ld	a, c
	sub	a, #0x9c
	or	a, b
	jr	Z, 00311$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:401: Field.dy = (i8)(156 - Field.ly); Field.ly = 156; all_in_position = FALSE;
	ld	c, -7 (ix)
	ld	a, #0x9c
	sub	a, c
	ld	(#(_Field + 18)),a
	ld	hl, #0x009c
	ld	((_Field + 4)), hl
	ld	-24 (ix), #0x00
	jp	00757$
00311$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:403: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:407: for (u8 i = 0; i <= 26; i++) {
00757$:
	ld	-1 (ix), #0x00
00419$:
	ld	a, #0x1a
	sub	a, -1 (ix)
	jp	C, 00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:408: if (i >= 14 && i < 26) continue; // Salta UI e Palla
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	C, 00320$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	C, 00344$
00320$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:409: struct ObjectInfo* p = &SwSprite[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_SwSprite
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:410: if (p->lx != p->tx || p->ly != p->ty) {
	ld	-23 (ix), l
	ld	-22 (ix), h
	ld	a, (hl)
	ld	-7 (ix), a
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	hl, #12
	add	hl, bc
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -23 (ix)
	add	a, #0x04
	ld	-21 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-20 (ix), a
	ld	a, -23 (ix)
	add	a, #0x0d
	ld	-19 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:413: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:417: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:423: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:410: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00340$
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, e
	cp	a, a
	sbc	hl, bc
	jp	Z,00341$
00340$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:411: all_in_position = FALSE;
	ld	-24 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:413: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NC, 00326$
	ld	a, -6 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00537$
	ld	-7 (ix), #0x02
	ld	-6 (ix), #0
	jp	00538$
00537$:
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
00538$:
	ld	a, -7 (ix)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00327$
00326$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:414: else if (p->tx < p->lx) p->dx = (i8)((p->lx - p->tx >= 2) ? -2 : -1); 
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NC, 00323$
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -6 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00539$
	ld	a, #0xfe
	jp	00540$
00539$:
	ld	a, #0xff
00540$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00327$
00323$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:415: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:417: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00332$
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	C, 00541$
	ld	bc, #0x0002
	jp	00542$
00541$:
	ld	bc, #0x0001
00542$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), c
	jp	00333$
00332$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:418: else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00329$
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x02
	ld	a, b
	sbc	a, #0x00
	jr	C, 00543$
	ld	a, #0xfe
	jp	00544$
00543$:
	ld	a, #0xff
00544$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00333$
00329$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:419: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00333$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:421: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	c, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	(hl), a
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	de, #0x0013
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	inc	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:422: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x02
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:423: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ld	a, e
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, bc
	ld	d, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	b, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	e, b
	push	de
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00344$
00341$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:425: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:427: if (i == 26) { // L'arbitro fissa sempre la palla
	ld	a, -1 (ix)
	sub	a, #0x1a
	jr	NZ, 00335$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:428: look_dx = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
	ld	hl, #_SwSprite + 322
	ld	c, (hl)
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	b, (hl)
	ld	a, b
	sub	a, c
	jr	NC, 00545$
	ld	bc, #0x0001
	jp	00546$
00545$:
	ld	a, c
	sub	a, b
	jr	NC, 00547$
	ld	bc, #0xffff
	jp	00548$
00547$:
	ld	bc, #0x0000
00548$:
00546$:
	ld	-8 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:429: look_dy = (SwSprite[14].ly > p->ly) ? 1 : ((SwSprite[14].ly < p->ly) ? -1 : 0);
	ld	hl, #_SwSprite + 326
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -7 (ix)
	ld	a, b
	sbc	a, -6 (ix)
	jr	NC, 00549$
	ld	bc, #0x0001
	jp	00336$
00549$:
	ld	a, -7 (ix)
	sub	a, c
	ld	a, -6 (ix)
	sbc	a, b
	jr	NC, 00551$
	ld	bc, #0xffff
	jp	00336$
00551$:
	ld	bc, #0x0000
	jp	00336$
00335$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:431: look_dx = (i8)((i % 3) - 1);
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x0003
	call	__modsint
	pop	hl
	ld	a, e
	dec	a
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:432: look_dy = (i8)(((i / 3) % 3) - 1);
	ld	de, #0x0003
	call	__divsint
	ex	de, hl
	ld	de, #0x0003
	call	__modsint
	ld	c, e
	dec	c
00336$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:434: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, -8 (ix)
	or	a,a
	jr	NZ, 00338$
	or	a,c
	jr	NZ, 00338$
	ld	c, #0x01
00338$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:435: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, look_dx, look_dy);
	ld	h, c
	ld	l, -8 (ix)
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00344$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:407: for (u8 i = 0; i <= 26; i++) {
	inc	-1 (ix)
	jp	00419$
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:438: if (all_in_position) *game_state = 12; // Va in Loop infinito dei Rigori
	ld	a, -24 (ix)
	or	a, a
	jp	Z,00420$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:439: return;
	jp	00420$
00356$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:440: } else if (*game_state >= 12 && *game_state <= 14) {
	ld	a, -1 (ix)
	sub	a, #0x0c
	jr	C, 00352$
	ld	a, #0x0e
	sub	a, -1 (ix)
	jr	C, 00352$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:441: CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_6, UpdateGameState_Penalties, game_state, wait_secs, start_sec, target_ly);
	ld	l, 6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #_UpdateGameState_Penalties
	ld	a, #0x10
	call	_CallFnc_VOID_3PTR_U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:442: return;
	jp	00420$
00352$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:443: } else if (*game_state >= 15 && *game_state <= 17) {
	ld	a, -1 (ix)
	sub	a, #0x0f
	jr	C, 00420$
	ld	a, #0x11
	sub	a, -1 (ix)
	jr	C, 00420$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:445: SwSprite[38].lx = PENALTY_DISH_X; SwSprite[38].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 874)
	ld	(hl), #0x78
	ld	hl, #0x006d
	ld	((_SwSprite + 889)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:446: SwSprite[38].ly = (SwSprite[14].lx == PENALTY_DISH_X && SwSprite[14].ly == PENALTY_NORTH_Y) ? 1000 : PENALTY_NORTH_Y;
	ld	a, (#_SwSprite + 322)
	sub	a, #0x78
	jr	NZ, 00553$
	ld	hl, (#_SwSprite + 326)
	ld	a, l
	sub	a, #0x4a
	or	a, h
	jr	NZ, 00553$
	ld	bc, #0x03e8
	jp	00554$
00553$:
	ld	bc, #0x004a
00554$:
	ld	((_SwSprite + 878)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:447: CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_5, UpdateGameState_Penalties_End, game_state, wait_secs, start_sec, target_ly);
	ld	l, 6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #_UpdateGameState_Penalties_End
	ld	a, #0x0f
	call	_CallFnc_VOID_3PTR_U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:448: return;
00420$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:450: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
_g_CGTABL	=	0x0004
_g_VDP_DR	=	0x0006
_g_VDP_DW	=	0x0007
_g_BASRVN	=	0x002b
_g_ROMVersion	=	0x002b
_g_MSXVER	=	0x002d
_g_MSXMID	=	0x002e
_g_CHAR_16	=	0x0034
_g_SUBRID	=	0x0000
_g_STRSRC	=	0x0002
_g_KANJTABLE	=	0xf30f
_g_DISKVE	=	0xf323
_g_BREAKV	=	0xf325
_g_RAMAD0	=	0xf341
_g_RAMAD1	=	0xf342
_g_RAMAD2	=	0xf343
_g_RAMAD3	=	0xf344
_g_MASTER	=	0xf348
_g_BDOS	=	0xf37d
	.area _SEG12
	.area _INITIALIZER
	.area _CABS (ABS)
