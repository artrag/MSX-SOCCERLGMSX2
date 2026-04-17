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
	.globl _ExecuteCornerKick
	.globl _ExecuteThrowIn
	.globl _AssignCornerKickTargets
	.globl _AssignGoalKickTargets
	.globl _AssignThrowInTargets
	.globl _AssignKickOffTargets
	.globl _EventTimeUp
	.globl _EventBallKicked
	.globl _HideSpriteMessage
	.globl _IsBallForeground
	.globl _PrintScoreBoardRight
	.globl _PrintScoreBoardLeft
	.globl _PlotField
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
	.globl _CallFnc_VOID_U8U8
	.globl _CallFnc_VOID_16_P2
	.globl _CallFnc_BOOL
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
	ld	iy, #-25
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:13: if (*game_state == 4) {
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	sub	a, #0x04
	jp	NZ,00277$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:15: if (*wait_secs > 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	or	a, a
	jp	Z, 00307$
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
	jp	NC, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:17: (*wait_secs)--;
	ld	a, -5 (ix)
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:18: if (*wait_secs == 0) {
	or	a, a
	jp	NZ, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:19: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:22: Half = 2;
	ld	hl, #_Half
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:23: Mins = HALF_TIME_DURATION; Secs = 0;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:32: Field.ly = target_ly; // Centra campo immediatamente per 2T
	ld	hl, #(_Field + 4)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:33: Field.dy = 0; // Impedisce ad AddLines di far scorrere lo sfondo non esistente
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:36: ScoreBoardLeft.y0 = ScoreBoardLeft.y1 = ScoreBoardLeft.y2 = Field.ly;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:37: ScoreBoardRight.y0 = ScoreBoardRight.y1 = ScoreBoardRight.y2 = Field.ly;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:38: VDP_SetVerticalOffset(Field.ly & 255);
	ld	l, 6 (ix)
;	spillPairReg hl
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:40: CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:41: for (u8 i = 0; i < 14; i++) {
	ld	c, #0x00
00281$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:42: SwSprite[i].lx = SwSprite[i].tx;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:43: SwSprite[i].ly = SwSprite[i].ty;
	ld	hl, #0x0004
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	push	de
	pop	iy
	ld	a, 13 (iy)
	ld	-6 (ix), a
	ld	a, 14 (iy)
	ld	-5 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:44: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	hl, #0x0011
	add	hl, de
	ld	(hl), #0x00
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:41: for (u8 i = 0; i < 14; i++) {
	inc	c
	jp	00281$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:48: bool ball_fg = CallFnc_BOOL(SEG_DRAW, IsBallForeground);
	ld	de, #_IsBallForeground
	ld	a, #0x05
	call	_CallFnc_BOOL
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:49: for (u16 page = 0; page <= 512; page += 256) {
	xor	a, a
	ld	-15 (ix), a
	ld	-14 (ix), a
00290$:
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	xor	a, a
	cp	a, c
	ld	a, #0x02
	sbc	a, b
	jp	C, 00398$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:50: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, page);
	ld	hl, (#(_Field + 4) + 0)
	ld	e, -15 (ix)
	ld	d, -14 (ix)
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:51: if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -16 (ix)
	or	a, a
	jr	NZ, 00388$
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, d
	sub	a, #0x02
	jr	NC, 00388$
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
	jr	NC, 00388$
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:52: for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00388$:
	ld	-5 (ix), #0x00
00284$:
	ld	a, -5 (ix)
	sub	a, #0x0e
	jp	NC, 00109$
	ld	c, -5 (ix)
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
	jr	NC, 00285$
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
	jr	NC, 00285$
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
00285$:
	inc	-5 (ix)
	jp	00284$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:53: if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00395$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:51: if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	de, (#(_SwSprite + 326) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:53: if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, d
	sub	a, #0x02
	jr	NC, 00395$
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
	jr	NC, 00395$
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:54: for (u8 i=15; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00395$:
	ld	c, #0x0f
00287$:
	ld	a, c
	sub	a, #0x1b
	jr	NC, 00291$
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
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	de, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), b
	ld	-5 (ix), a
	sub	a, #0x02
	jr	NC, 00288$
	ld	a, -6 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -5 (ix)
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
	jr	NC, 00288$
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	hl, #15
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -6 (ix)
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
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	b, (hl)
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, b
	call	_CallSpriteFrame
	pop	bc
00288$:
	inc	c
	jp	00287$
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:49: for (u16 page = 0; page <= 512; page += 256) {
	ld	c, -15 (ix)
	ld	a, -14 (ix)
	inc	a
	ld	-15 (ix), c
	ld	-14 (ix), a
	jp	00290$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:58: for (u8 i = 0; i < NumSprite; i++) {
00398$:
	ld	c, #0x00
00293$:
	ld	a, c
	sub	a, #0x1b
	jr	NC, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:59: SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
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
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	hl, #0x0002
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
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
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:60: SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
	ld	hl, #0x0006
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	hl, #0x0008
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	hl, #0x000a
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	hl, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:58: for (u8 i = 0; i < NumSprite; i++) {
	inc	c
	jp	00293$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:64: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:65: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:66: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:67: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:68: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:69: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:71: *game_state = 2;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x02
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:74: *start_sec = Frms;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00307$
00277$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:76: } else if (*game_state == 5) {
	ld	a, -5 (ix)
	sub	a, #0x05
	jr	NZ, 00274$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:78: if (*wait_secs > 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	Z, 00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:79: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:80: (*wait_secs)--;
	ld	a, c
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:81: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:82: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	de
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	ld	de, #_EventTimeUp
	ld	a, #0x08
	call	_CallFnc_VOID
	pop	de
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:86: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
	jp	00307$
00274$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:88: } else if (*game_state == 6) {
	ld	a, -5 (ix)
	sub	a, #0x06
	jp	NZ,00271$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:90: if (*wait_secs > 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	or	a, a
	jp	Z, 00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:91: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	a, 4 (ix)
	ld	-15 (ix), a
	ld	a, 5 (ix)
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	ld	hl, #_Frms
	ld	a, c
	sub	a, (hl)
	jp	NC, 00173$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:92: (*wait_secs)--;
	ld	a, -5 (ix)
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:93: if (*wait_secs == 0) {
	or	a, a
	jp	NZ, 00173$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:94: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:96: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:97: CallFnc_VOID(SEG_GAMESTATE_2, AssignThrowInTargets);
	ld	de, #_AssignThrowInTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	jp	00141$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:98: } else if (RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
	ld	a,(_RestartType+0)
	cp	a,#0x02
	jr	Z, 00135$
	sub	a, #0x04
	jr	NZ, 00136$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:99: CallFnc_VOID(SEG_GAMESTATE_2, AssignGoalKickTargets);
	ld	de, #_AssignGoalKickTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	jp	00141$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:100: } else if (RestartType == RESTART_CORNERKICK) {
	ld	a, (_RestartType+0)
	sub	a, #0x03
	jr	NZ, 00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:101: CallFnc_VOID(SEG_GAMESTATE_2, AssignCornerKickTargets);
	ld	de, #_AssignCornerKickTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	jp	00141$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:104: SwSprite[14].lx = BALL_START_X;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:105: SwSprite[14].ly = BALL_START_Y;
	ld	hl, #0x0100
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:106: SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:108: Field.ly = target_ly; // Teletrasporta telecamera al centro
	ld	hl, #(_Field + 4)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:109: CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:98: } else if (RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
	ld	a, (_RestartType+0)
	sub	a, #0x04
	ld	a, #0x01
	jr	Z, 01071$
	xor	a, a
01071$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:113: if (RestartType == RESTART_THROWIN || RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
	ld	a, (_RestartType+0)
	dec	a
	jr	Z, 00148$
	ld	a, (_RestartType+0)
	sub	a, #0x02
	jr	Z, 00148$
	ld	a, c
	or	a, a
	jr	Z, 00149$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:114: u16 cam_target_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : SwSprite[14].ly;
	ld	a, c
	or	a, a
	jr	Z, 00309$
	ld	bc, (_RestartSideY)
	jp	00310$
00309$:
	ld	bc, (#(_SwSprite + 326) + 0)
00310$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:115: if (cam_target_y < 96) Field.ly = 0;
	ld	a, c
	sub	a, #0x60
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00146$
	ld	hl, #0x0000
	ld	((_Field + 4)), hl
	jp	00147$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:116: else if (cam_target_y > 512 - 192) Field.ly = 512 - 192;
	ld	a, #0x40
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00143$
	ld	hl, #0x0140
	ld	((_Field + 4)), hl
	jp	00147$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:117: else Field.ly = cam_target_y - 96;
	ld	a, c
	add	a, #0xa0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	((_Field + 4)), bc
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:119: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:122: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:125: bool ball_fg = CallFnc_BOOL(SEG_DRAW, IsBallForeground);
	ld	de, #_IsBallForeground
	ld	a, #0x05
	call	_CallFnc_BOOL
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:126: for (u16 page = 0; page <= 512; page += 256) {
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
00302$:
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	xor	a, a
	cp	a, c
	ld	a, #0x02
	sbc	a, b
	jp	C, 00432$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:127: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, page);
	ld	hl, (#(_Field + 4) + 0)
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:128: if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -12 (ix)
	or	a, a
	jr	NZ, 00422$
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, d
	sub	a, #0x02
	jr	NC, 00422$
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
	jr	NC, 00422$
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:129: for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00422$:
	ld	-5 (ix), #0x00
00296$:
	ld	a, -5 (ix)
	sub	a, #0x0e
	jr	NC, 00159$
	ld	c, -5 (ix)
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
	jr	NC, 00297$
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
	jr	NC, 00297$
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
00297$:
	inc	-5 (ix)
	jp	00296$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:130: if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00429$
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, d
	sub	a, #0x02
	jr	NC, 00429$
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
	jr	NC, 00429$
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:131: for (u8 i=15; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00429$:
	ld	c, #0x0f
00299$:
	ld	a, c
	sub	a, #0x1b
	jr	NC, 00303$
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
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	de, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), b
	ld	-5 (ix), a
	sub	a, #0x02
	jr	NC, 00300$
	ld	a, -6 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -5 (ix)
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
	jr	NC, 00300$
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	hl, #15
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -6 (ix)
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
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	b, (hl)
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, b
	call	_CallSpriteFrame
	pop	bc
00300$:
	inc	c
	jp	00299$
00303$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:126: for (u16 page = 0; page <= 512; page += 256) {
	ld	c, -11 (ix)
	ld	a, -10 (ix)
	inc	a
	ld	-11 (ix), c
	ld	-10 (ix), a
	jp	00302$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:135: for (u8 i = 0; i < NumSprite; i++) {
00432$:
	ld	-5 (ix), #0x00
00305$:
	ld	a, -5 (ix)
	sub	a, #0x1b
	jp	NC, 00169$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:136: SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
	ld	c, -5 (ix)
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
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -9 (ix)
	add	a, #<(_SwSprite)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #>(_SwSprite)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0x01
	ld	-13 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	a, -7 (ix)
	add	a, #0x02
	ld	-11 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	a, -7 (ix)
	add	a, #0x03
	ld	-9 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:137: SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:135: for (u8 i = 0; i < NumSprite; i++) {
	inc	-5 (ix)
	jp	00305$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:141: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#_ScoreBoardLeft + 0)
	ld	-5 (ix), a
	ld	hl, #0x0000
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:142: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#_ScoreBoardRight + 0)
	ld	-5 (ix), a
	ld	hl, #0x0000
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:143: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#_ScoreBoardLeft + 0)
	ld	-5 (ix), a
	ld	hl, #0x0100
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:144: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#_ScoreBoardRight + 0)
	ld	-5 (ix), a
	ld	hl, #0x0100
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:145: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#_ScoreBoardLeft + 0)
	ld	-5 (ix), a
	ld	hl, #0x0200
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:146: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, (#_ScoreBoardRight + 0)
	ld	-5 (ix), a
	ld	hl, #0x0200
	push	hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:148: *game_state = 2; // Riparte la coreografia di schieramento
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x02
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:151: *start_sec = Frms;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00307$
00271$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:153: } else if (*game_state == 7) {
	ld	a, -5 (ix)
	sub	a, #0x07
	jp	NZ,00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:155: u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00311$
	ld	bc, #0x0000
	jp	00312$
00311$:
	ld	bc, #0x0001
00312$:
	ld	-5 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:156: bool is_human = FALSE;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:159: if (throw_team == TEAM_2) { is_human = TRUE; joy_port = 0; }
	ld	a, -5 (ix)
	dec	a
	jr	NZ, 00180$
	ld	c, #0x01
	jp	00181$
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:160: else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00181$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00181$
	ld	c, #0x01
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:162: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:164: if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:165: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00185$
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:167: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:169: if (is_human) {
	ld	a, c
	or	a, a
	jp	Z, 00207$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:171: if (throw_team == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00187$
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00313$
	ld	a, (_g_throw_rec_1+0)
	jp	00314$
00313$:
	ld	a, (_g_throw_rec_2+0)
00314$:
	ld	(_T1_Receiver+0), a
	jp	00188$
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:172: else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00315$
	ld	a, (_g_throw_rec_1+0)
	jp	00316$
00315$:
	ld	a, (_g_throw_rec_2+0)
00316$:
	ld	(_T2_Receiver+0), a
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:175: u8 dir = g_player_input[throw_team].direction;
	ld	bc, #_g_player_input+0
	ld	e, -5 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, bc
	ex	de, hl
	ld	a, (de)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:176: if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
	or	a, a
	jr	Z, 00190$
	ld	a, (_g_last_input_dir+0)
	or	a, a
	jr	NZ, 00190$
	ld	a, (_g_selected_rec+0)
	ld	b, a
	ld	hl, #_g_selected_rec
	ld	a, #0x01
	sub	a, b
	ld	(hl), a
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:177: g_last_input_dir = dir;
	ld	iy, #_g_last_input_dir
	ld	0 (iy), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:179: bool do_throw = g_player_input[throw_team].trigger_pressed;
	inc	de
	ld	a, (de)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:181: if (*wait_secs == 0) do_throw = TRUE; // Lancio automatico scaduto il tempo
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00193$
	ld	c, #0x01
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:183: if (do_throw) {
	ld	a, c
	or	a, a
	jp	Z,00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:184: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00195$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:185: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00317$
	ld	a, (_g_throw_rec_1+0)
	jp	00318$
00317$:
	ld	a, (_g_throw_rec_2+0)
00318$:
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteThrowIn
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
	jp	00196$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:187: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteCornerKick, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00319$
	ld	a, (_g_throw_rec_1+0)
	jp	00320$
00319$:
	ld	a, (_g_throw_rec_2+0)
00320$:
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteCornerKick
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:189: g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
	ld	a, (_g_pass_max_frames+0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #0x0064
	call	__divsint
	ld	hl, #_g_pass_max_frames
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:190: *game_state = 3; TimerEnabled = TRUE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
	jp	00307$
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:193: if (*wait_secs == 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ,00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:194: u8 target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	hl, #_Frms
	bit	0, (hl)
	jr	NZ, 00321$
	ld	a, (_g_throw_rec_1+0)
	jp	00322$
00321$:
	ld	a, (_g_throw_rec_2+0)
00322$:
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:195: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00202$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:196: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, target);
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteThrowIn
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
	jp	00203$
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:199: u8 team_to_kick = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00323$
	ld	bc, #0x0000
	jp	00324$
00323$:
	ld	bc, #0x0001
00324$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:200: u8 start_t = (team_to_kick == TEAM_1) ? 1 : 8;
	ld	a, c
	or	a, a
	jr	NZ, 00325$
	ld	bc, #0x0001
	jp	00326$
00325$:
	ld	bc, #0x0008
00326$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:202: out_targets[0] = start_t;
	ld	-23 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:203: out_targets[1] = start_t + 1;
	ld	a, c
	inc	a
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:204: out_targets[2] = start_t + 4;
	ld	a, c
	inc	a
	inc	a
	inc	a
	inc	a
	ld	-21 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:205: out_targets[3] = start_t + 5;
	ld	a, c
	add	a, #0x05
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:206: target = out_targets[Frms % 4];
	ld	a, (_Frms+0)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0x03
	ld	e, a
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:207: if (target == g_thrower_id) target = out_targets[(Frms + 1) % 4];
	ld	a, (_g_thrower_id+0)
	sub	a, e
	jr	NZ, 00200$
	inc	bc
	ld	de, #0x0004
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	hl, #2
	add	hl, sp
	add	hl, de
	ld	e, (hl)
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:209: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteCornerKick, g_thrower_id, target);
	ld	a, e
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteCornerKick
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:211: g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
	ld	a, (_g_pass_max_frames+0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	de, #0x0064
	call	__divsint
	ld	hl, #_g_pass_max_frames
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:212: *game_state = 3; TimerEnabled = TRUE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:215: return;
	jp	00307$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:216: } else if (*game_state == 8) {
	ld	a, -5 (ix)
	sub	a, #0x08
	jp	NZ,00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:218: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:220: if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	hl, #_Frms
	sub	a, (hl)
	jr	NC, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:221: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00212$
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:223: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:225: u8 gk = (RestartSideY < 256) ? 0 : 7;
	ld	hl, (_RestartSideY)
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, h
	sub	a, #0x01
	jr	NC, 00327$
	ld	bc, #0x0000
	jp	00328$
00327$:
	ld	bc, #0x0007
00328$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:226: struct ObjectInfo* GK = &SwSprite[gk];
	ld	-19 (ix), c
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
	ld	-18 (ix), l
	ld	-17 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:227: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:229: i8 dir_y = (gk == 0) ? 1 : -1;
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00329$
	ld	bc, #0x0001
	jp	00330$
00329$:
	ld	bc, #0xffff
00330$:
	ld	-5 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:230: i8 dir_x = (RestartSideX < 128) ? 1 : -1;
	ld	a, (_RestartSideX+0)
	sub	a, #0x80
	jr	NC, 00331$
	ld	bc, #0x0001
	jp	00332$
00331$:
	ld	bc, #0xffff
00332$:
	ld	-8 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:232: u16 target_gk_x = (RestartType == RESTART_GKSAVE) ? RestartSideX : (Ball->lx - (dir_x * 6));
	ld	a, (_RestartType+0)
	sub	a, #0x04
	ld	a, #0x01
	jr	Z, 01091$
	xor	a, a
01091$:
	ld	-16 (ix), a
	or	a, a
	jr	Z, 00333$
	ld	a, (_RestartSideX+0)
	ld	c, a
	xor	a, a
	jp	00334$
00333$:
	ld	a, (#(_SwSprite + 322) + 0)
	ld	c, a
	ld	b, #0x00
	ld	a, -8 (ix)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	ex	de, hl
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
00334$:
	ld	-15 (ix), c
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:233: u16 target_gk_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : (Ball->ly - (dir_y * 8));
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00335$
	ld	c, -7 (ix)
	ld	a, -6 (ix)
	jp	00336$
00335$:
	ld	bc, (#(_SwSprite + 322) + 4)
	ld	a, -5 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
00336$:
	ld	-13 (ix), c
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:235: u8 team_to_kick = (gk == 0) ? TEAM_1 : TEAM_2;
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00337$
	ld	bc, #0x0000
	jp	00338$
00337$:
	ld	bc, #0x0001
00338$:
	ld	-5 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:236: bool is_human = FALSE;
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:239: if (team_to_kick == TEAM_2) { is_human = TRUE; joy_port = 0; }
	ld	a, -5 (ix)
	dec	a
	jr	NZ, 00217$
	ld	-11 (ix), #0x01
	jp	00218$
00217$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:240: else if (team_to_kick == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00218$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00218$
	ld	-11 (ix), #0x01
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:242: if (*wait_secs == 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	NZ, 00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:244: if (GK->ly != target_gk_y || GK->lx != target_gk_x) {
	ld	a, -18 (ix)
	add	a, #0x04
	ld	-10 (ix), a
	ld	a, -17 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -13 (ix)
	sub	a, -8 (ix)
	jr	NZ, 01096$
	ld	a, -12 (ix)
	sub	a, -7 (ix)
	ld	a, #0x01
	jr	Z, 01097$
01096$:
	xor	a, a
01097$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:265: GK->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, gk, GK->dx, GK->dy, walk_seq[(GK->anim / 3) % 4]);
	ld	a, -18 (ix)
	add	a, #0x0f
	ld	-6 (ix), a
	ld	a, -17 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:244: if (GK->ly != target_gk_y || GK->lx != target_gk_x) {
	bit	0, c
	jr	Z, 00243$
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	b, (hl)
	ld	e, b
	ld	d, #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	cp	a, a
	sbc	hl, de
	jp	Z,00244$
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:246: GK->dy = (Ball->ly > GK->ly) ? 2 : -2;
	ld	a, -18 (ix)
	add	a, #0x12
	ld	-25 (ix), a
	ld	a, -17 (ix)
	adc	a, #0x00
	ld	-24 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:245: if (GK->ly != target_gk_y) {
	bit	0, c
	jp	NZ, 00226$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:246: GK->dy = (Ball->ly > GK->ly) ? 2 : -2;
	ld	hl, (#(_SwSprite + 322) + 4)
	ld	a, -8 (ix)
	sub	a, l
	ld	a, -7 (ix)
	sbc	a, h
	jr	NC, 00339$
	ld	bc, #0x0002
	jp	00340$
00339$:
	ld	bc, #0xfffe
00340$:
	pop	hl
	push	hl
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:247: if (target_gk_y > GK->ly && GK->ly + GK->dy > target_gk_y) GK->dy = target_gk_y - GK->ly;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -13 (ix)
	ld	a, b
	sbc	a, -12 (ix)
	jr	NC, 00220$
	pop	hl
	push	hl
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	e, c
	ld	d, b
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	a, -13 (ix)
	sub	a, l
	ld	a, -12 (ix)
	sbc	a, h
	jr	NC, 00220$
	ld	a, -13 (ix)
	sub	a, c
	pop	hl
	push	hl
	ld	(hl), a
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:248: if (target_gk_y < GK->ly && GK->ly + GK->dy < target_gk_y) GK->dy = target_gk_y - GK->ly;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -13 (ix)
	sub	a, c
	ld	a, -12 (ix)
	sbc	a, b
	jr	NC, 00223$
	pop	hl
	push	hl
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	e, c
	ld	d, b
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	a, l
	sub	a, -13 (ix)
	ld	a, h
	sbc	a, -12 (ix)
	jr	NC, 00223$
	ld	a, -13 (ix)
	sub	a, c
	pop	hl
	push	hl
	ld	(hl), a
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:249: GK->ly += GK->dy;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	push	hl
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
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00227$
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:251: GK->dy = 0;
	pop	hl
	push	hl
	ld	(hl), #0x00
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:254: if (GK->lx != target_gk_x) {
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	ld	e, c
	ld	d, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:255: GK->dx = (Ball->lx > GK->lx) ? 2 : -2;
	ld	a, -18 (ix)
	add	a, #0x11
	ld	-10 (ix), a
	ld	a, -17 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:254: if (GK->lx != target_gk_x) {
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	cp	a, a
	sbc	hl, de
	jp	Z,00235$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:255: GK->dx = (Ball->lx > GK->lx) ? 2 : -2;
	ld	hl, #(_SwSprite + 322)
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	NC, 00341$
	ld	-8 (ix), #0x02
	ld	-7 (ix), #0
	jp	00342$
00341$:
	ld	-8 (ix), #0xfe
	ld	-7 (ix), #0xff
00342$:
	ld	a, -8 (ix)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:256: if (target_gk_x > GK->lx && GK->lx + GK->dx > target_gk_x) GK->dx = target_gk_x - GK->lx;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	ld	a, c
	ld	b, #0x00
	sub	a, -15 (ix)
	ld	a, b
	sbc	a, -14 (ix)
	jr	NC, 00229$
	ld	e, c
	ld	d, #0x00
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	a, -15 (ix)
	sub	a, l
	ld	a, -14 (ix)
	sbc	a, h
	jr	NC, 00229$
	ld	a, -15 (ix)
	sub	a, c
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), a
00229$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:257: if (target_gk_x < GK->lx && GK->lx + GK->dx < target_gk_x) GK->dx = target_gk_x - GK->lx;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	ld	b, c
	ld	e, #0x00
	ld	a, -15 (ix)
	sub	a, b
	ld	a, -14 (ix)
	sbc	a, e
	jr	NC, 00232$
	ld	e, c
	ld	d, #0x00
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	a, l
	sub	a, -15 (ix)
	ld	a, h
	sbc	a, -14 (ix)
	jr	NC, 00232$
	ld	a, -15 (ix)
	sub	a, c
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), a
00232$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:258: GK->lx += GK->dx;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), a
	jp	00236$
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:260: GK->dx = 0;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x00
00236$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:263: GK->anim++;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:264: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-23 (ix), #0x00
	ld	-22 (ix), #0x01
	ld	-21 (ix), #0x02
	ld	-20 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:265: GK->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, gk, GK->dx, GK->dy, walk_seq[(GK->anim / 3) % 4]);
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ld	a, e
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, bc
	ld	d, (hl)
	pop	hl
	push	hl
	ld	b, (hl)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	e, b
	push	de
	push	af
	inc	sp
	ld	a, -19 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00264$
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:268: u8 target = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00343$
	ld	a, (_g_throw_rec_1+0)
	jp	00344$
00343$:
	ld	a, (_g_throw_rec_2+0)
00344$:
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:269: if (!is_human) target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -11 (ix)
	or	a, a
	jr	NZ, 00238$
	ld	hl, #_Frms
	bit	0, (hl)
	jr	NZ, 00345$
	ld	a, (_g_throw_rec_1+0)
	jp	00346$
00345$:
	ld	a, (_g_throw_rec_2+0)
00346$:
	ld	-7 (ix), a
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:271: g_pass_start_x = (RestartType == RESTART_GKSAVE) ? GK->lx : Ball->lx;
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00347$
	ld	a, b
	jp	00348$
00347$:
	ld	a, (#(_SwSprite + 322) + 0)
00348$:
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:233: u16 target_gk_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : (Ball->ly - (dir_y * 8));
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:272: g_pass_start_y = (RestartType == RESTART_GKSAVE) ? GK->ly : Ball->ly;
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00349$
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	jp	00350$
00349$:
	ld	hl, (#(_SwSprite + 326) + 0)
00350$:
	ld	(_g_pass_start_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:273: g_pass_target_x = SwSprite[target].lx;
	ld	c, -7 (ix)
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
	ld	a, (de)
	ld	(_g_pass_target_x+0), a
	xor	a, a
	ld	(_g_pass_target_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:274: g_pass_target_y = SwSprite[target].ly;
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:276: u16 dist_x = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00351$
	ld	bc, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, bc
	jp	00352$
00351$:
	ld	bc, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
00352$:
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:277: u16 dist_y = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00353$
	ld	bc, (_g_pass_start_y)
	ld	hl, (_g_pass_target_y)
	cp	a, a
	sbc	hl, bc
	jp	00354$
00353$:
	ld	bc, (_g_pass_target_y)
	ld	hl, (_g_pass_start_y)
	cp	a, a
	sbc	hl, bc
00354$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:279: g_pass_max_frames = (dist_x + dist_y) / 4; 
	add	hl, de
	srl	h
	rr	l
	srl	h
	rr	l
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:280: if (g_pass_max_frames < 20) g_pass_max_frames = 20;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x14
	jr	NC, 00240$
	ld	0 (iy), #0x14
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:281: if (g_pass_max_frames > 60) g_pass_max_frames = 60;
	ld	a, #0x3c
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00242$
	ld	0 (iy), #0x3c
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:282: g_pass_max_height = 7;
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:284: Ball->lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:285: Ball->ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:286: Ball->anim = 5; 
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:287: Ball->count = 0; 
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:288: Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:290: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:291: LastTouchTeam = (gk == 0) ? TEAM_1 : TEAM_2;
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00355$
	ld	bc, #0x0000
	jp	00356$
00355$:
	ld	bc, #0x0001
00356$:
	ld	a, c
	ld	(#_LastTouchTeam), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:292: LastTouchPlayer = gk;
	ld	a, -19 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:293: g_pass_receiver = target;
	ld	a, -7 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:295: GK->ly = (gk == 0) ? 32 : 444; // Scatta sulla sua riga, ma conserva la X esterna
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00357$
	ld	de, #0x0020
	jp	00358$
00357$:
	ld	de, #0x01bc
00358$:
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:296: GK->frame = (gk == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00359$
	ld	bc, #0x00d5
	jp	00360$
00359$:
	ld	bc, #0x00d6
00360$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:298: *game_state = 3; // Riparte il gioco istantaneamente
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:299: TimerEnabled = TRUE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
	jp	00264$
00263$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:303: if (is_human) {
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00256$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:304: if (team_to_kick == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00248$
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00361$
	ld	a, (_g_throw_rec_1+0)
	jp	00362$
00361$:
	ld	a, (_g_throw_rec_2+0)
00362$:
	ld	(_T1_Receiver+0), a
	jp	00249$
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:305: else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00363$
	ld	a, (_g_throw_rec_1+0)
	jp	00364$
00363$:
	ld	a, (_g_throw_rec_2+0)
00364$:
	ld	(_T2_Receiver+0), a
00249$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:307: u8 dir = g_player_input[team_to_kick].direction;
	ld	c, -5 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_player_input
	add	hl, de
	ex	de, hl
	ld	a, (de)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:308: if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
	or	a, a
	jr	Z, 00251$
	ld	a, (_g_last_input_dir+0)
	or	a, a
	jr	NZ, 00251$
	ld	a, (_g_selected_rec+0)
	ld	b, a
	ld	hl, #_g_selected_rec
	ld	a, #0x01
	sub	a, b
	ld	(hl), a
00251$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:309: g_last_input_dir = dir;
	ld	iy, #_g_last_input_dir
	ld	0 (iy), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:311: bool do_kick = g_player_input[team_to_kick].trigger_pressed;
	inc	de
	ld	a, (de)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:313: if (do_kick) *wait_secs = 0; // Trigger premuto: inizia subito la rincorsa!
	or	a, a
	jr	Z, 00256$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0x00
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:317: if (RestartType != RESTART_GKSAVE) {
	ld	a, (_RestartType+0)
	sub	a, #0x04
	jp	Z,00264$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:318: i8 look_dx = (Ball->lx > GK->lx) ? 1 : ((Ball->lx < GK->lx) ? -1 : 0);
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	b, (hl)
	ld	a, b
	sub	a, c
	jr	NC, 00365$
	ld	bc, #0x0001
	jp	00366$
00365$:
	ld	a, c
	sub	a, b
	jr	NC, 00367$
	ld	bc, #0xffff
	jp	00368$
00367$:
	ld	bc, #0x0000
00368$:
00366$:
	ld	-5 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:319: i8 look_dy = (Ball->ly > GK->ly) ? 1 : ((Ball->ly < GK->ly) ? -1 : 0);
	ld	bc, (#(_SwSprite + 322) + 4)
	ld	e, -18 (ix)
	ld	d, -17 (ix)
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00369$
	ld	bc, #0x0001
	jp	00370$
00369$:
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00371$
	ld	bc, #0xffff
	jp	00372$
00371$:
	ld	bc, #0x0000
00372$:
00370$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:320: if (look_dx == 0 && look_dy == 0) look_dy = (gk == 0) ? 1 : -1;
	ld	a, -5 (ix)
	or	a,a
	jr	NZ, 00258$
	or	a,c
	jr	NZ, 00258$
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00373$
	ld	de, #0x0001
	jp	00374$
00373$:
	ld	de, #0xffff
00374$:
	ld	c, e
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:321: GK->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, gk, look_dx, look_dy);
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	de, #0x000f
	add	hl, de
	push	hl
	ld	h, c
	ld	l, -5 (ix)
	push	hl
	ld	a, -19 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	pop	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:324: return;
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:326: }
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
