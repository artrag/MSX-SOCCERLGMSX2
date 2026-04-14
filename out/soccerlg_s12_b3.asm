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
	.globl _GetJoystickDirection
	.globl _IsTeamJoystickTriggerPressed
	.globl _HideSpriteMessage
	.globl _IsBallForeground
	.globl _PrintScoreBoardRight
	.globl _PrintScoreBoardLeft
	.globl _PlotField
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
	.globl _CallFnc_U8_P1
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
	ld	iy, #-27
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
	jp	NZ,00261$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:15: if (*wait_secs > 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	or	a, a
	jp	Z, 00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:16: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
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
	ld	-5 (ix), #0x00
00265$:
	ld	a, -5 (ix)
	sub	a, #0x0e
	jp	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:42: SwSprite[i].lx = SwSprite[i].tx;
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
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, -7 (ix)
	add	a, #<(_SwSprite)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	adc	a, #>(_SwSprite)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:43: SwSprite[i].ly = SwSprite[i].ty;
	ld	a, -11 (ix)
	add	a, #0x04
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x000d
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:44: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:41: for (u8 i = 0; i < 14; i++) {
	inc	-5 (ix)
	jp	00265$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:48: bool ball_fg = CallFnc_BOOL(SEG_DRAW, IsBallForeground);
	ld	de, #_IsBallForeground
	ld	a, #0x05
	call	_CallFnc_BOOL
	ld	-5 (ix), a
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:49: for (u16 page = 0; page <= 512; page += 256) {
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
00274$:
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	xor	a, a
	cp	a, c
	ld	a, #0x02
	sbc	a, b
	jp	C, 00360$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:50: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, page);
	ld	hl, (#(_Field + 4) + 0)
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:51: if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -12 (ix)
	or	a, a
	jr	NZ, 00350$
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, d
	sub	a, #0x02
	jr	NC, 00350$
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
	jr	NC, 00350$
	ld	bc, (#(_SwSprite + 337) + 0)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:52: for (u8 i=0; i<14; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00350$:
	ld	-5 (ix), #0x00
00268$:
	ld	a, -5 (ix)
	sub	a, #0x0e
	jr	NC, 00109$
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
	jr	NC, 00269$
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
	jr	NC, 00269$
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
00269$:
	inc	-5 (ix)
	jp	00268$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:53: if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00357$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:51: if (!ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	de, (#(_SwSprite + 326) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:53: if (ball_fg && OnScreen(SwSprite[14].ly)) CallSpriteFrame(SwSprite[14].lx, (SwSprite[14].ly & 255) + page, SwSprite[14].frame);
	ld	a, d
	sub	a, #0x02
	jr	NC, 00357$
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
	jr	NC, 00357$
	ld	bc, (#(_SwSprite + 337) + 0)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:54: for (u8 i=15; i<NumSprite; i++) if (OnScreen(SwSprite[i].ly)) CallSpriteFrame(SwSprite[i].lx, (SwSprite[i].ly & 255) + page, SwSprite[i].frame);
00357$:
	ld	c, #0x0f
00271$:
	ld	a, c
	sub	a, #0x18
	jr	NC, 00275$
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
	jr	NC, 00272$
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
	jr	NC, 00272$
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
00272$:
	inc	c
	jp	00271$
00275$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:49: for (u16 page = 0; page <= 512; page += 256) {
	ld	c, -11 (ix)
	ld	a, -10 (ix)
	inc	a
	ld	-11 (ix), c
	ld	-10 (ix), a
	jp	00274$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:58: for (u8 i = 0; i < NumSprite; i++) {
00360$:
	ld	-5 (ix), #0x00
00277$:
	ld	a, -5 (ix)
	sub	a, #0x18
	jp	NC, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:59: SwSprite[i].x0 = SwSprite[i].x1 = SwSprite[i].x2 = SwSprite[i].lx;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:60: SwSprite[i].y0 = SwSprite[i].y1 = SwSprite[i].y2 = SwSprite[i].ly;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:58: for (u8 i = 0; i < NumSprite; i++) {
	inc	-5 (ix)
	jp	00277$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:64: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:65: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:66: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:67: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:68: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:69: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:71: *game_state = 2;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x02
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:74: *start_sec = Frms;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00279$
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:76: } else if (*game_state == 5) {
	ld	a, -5 (ix)
	sub	a, #0x05
	jr	NZ, 00258$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:78: if (*wait_secs > 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jp	Z, 00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:79: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	d, a
	ld	hl, #_Frms
	ld	a, d
	sub	a, (hl)
	jr	NC, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:80: (*wait_secs)--;
	ld	a, e
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:81: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:82: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	bc
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	ld	de, #_EventTimeUp
	ld	a, #0x08
	call	_CallFnc_VOID
	pop	bc
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:86: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00279$
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:88: } else if (*game_state == 6) {
	ld	a, -5 (ix)
	sub	a, #0x06
	jp	NZ,00255$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:90: if (*wait_secs > 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jp	Z, 00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:91: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	d, a
	ld	hl, #_Frms
	ld	a, d
	sub	a, (hl)
	jp	NC, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:92: (*wait_secs)--;
	ld	a, e
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:93: if (*wait_secs == 0) {
	or	a, a
	jp	NZ, 00153$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:94: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	bc
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:96: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:97: CallFnc_VOID(SEG_GAMESTATE_2, AssignThrowInTargets);
	push	bc
	ld	de, #_AssignThrowInTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	pop	bc
	jp	00140$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:98: } else if (RestartType == RESTART_GOALKICK) {
	ld	a, (_RestartType+0)
	sub	a, #0x02
	jr	NZ, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:99: CallFnc_VOID(SEG_GAMESTATE_2, AssignGoalKickTargets);
	push	bc
	ld	de, #_AssignGoalKickTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	pop	bc
	jp	00140$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:100: } else if (RestartType == RESTART_CORNERKICK) {
	ld	a, (_RestartType+0)
	sub	a, #0x03
	jr	NZ, 00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:101: CallFnc_VOID(SEG_GAMESTATE_2, AssignCornerKickTargets);
	push	bc
	ld	de, #_AssignCornerKickTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	pop	bc
	jp	00140$
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
	push	bc
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	pop	bc
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:113: if (RestartType == RESTART_THROWIN || RestartType == RESTART_GOALKICK) {
	ld	a, (_RestartType+0)
	dec	a
	jr	Z, 00147$
	ld	a, (_RestartType+0)
	sub	a, #0x02
	jr	NZ, 00148$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:114: if (SwSprite[14].ly < 96) Field.ly = 0;
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, #0x60
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00145$
	ld	hl, #0x0000
	ld	((_Field + 4)), hl
	jp	00146$
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:115: else if (SwSprite[14].ly > 512 - 192) Field.ly = 512 - 192;
	ld	a, #0x40
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00142$
	ld	hl, #0x0140
	ld	((_Field + 4)), hl
	jp	00146$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:116: else Field.ly = SwSprite[14].ly - 96;
	ld	a, e
	add	a, #0xa0
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	((_Field + 4)), de
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:118: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF;
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:121: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:122: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0000
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:123: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0100
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:124: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0200
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:127: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	push	bc
	ld	hl, #0x0000
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:128: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	push	bc
	ld	hl, #0x0000
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:129: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	push	bc
	ld	hl, #0x0100
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:130: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	push	bc
	ld	hl, #0x0100
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:131: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardLeft + 0)
	push	bc
	ld	hl, #0x0200
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:132: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#_ScoreBoardRight + 0)
	push	bc
	ld	hl, #0x0200
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:134: *game_state = 2; // Riparte la coreografia di schieramento
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x02
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:137: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00279$
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:139: } else if (*game_state == 7) {
	ld	a, -5 (ix)
	sub	a, #0x07
	jp	NZ,00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:141: u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00281$
	ld	bc, #0x0000
	jp	00282$
00281$:
	ld	bc, #0x0001
00282$:
	ld	-6 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:142: bool is_human = FALSE;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:143: u8 joy_port = 0;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:145: if (throw_team == TEAM_2) { is_human = TRUE; joy_port = 0; }
	ld	a, -6 (ix)
	dec	a
	jr	NZ, 00160$
	ld	c, #0x01
	ld	-5 (ix), #0x00
	jp	00161$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:146: else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00161$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00161$
	ld	c, #0x01
	ld	-5 (ix), #0x01
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:148: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:150: if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00165$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:151: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00165$
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:153: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:155: if (is_human) {
	ld	a, c
	or	a, a
	jp	Z, 00190$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:157: if (throw_team == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00167$
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00283$
	ld	a, (_g_throw_rec_1+0)
	jp	00284$
00283$:
	ld	a, (_g_throw_rec_2+0)
00284$:
	ld	(_T1_Receiver+0), a
	jp	00168$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:158: else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00285$
	ld	a, (_g_throw_rec_1+0)
	jp	00286$
00285$:
	ld	a, (_g_throw_rec_2+0)
00286$:
	ld	(_T2_Receiver+0), a
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:161: u8 dir = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, joy_port);
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	de, #_GetJoystickDirection
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:162: if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
	or	a, a
	jr	Z, 00170$
	ld	a, (_g_last_input_dir+0)
	or	a, a
	jr	NZ, 00170$
	ld	a, (_g_selected_rec+0)
	ld	b, a
	ld	hl, #_g_selected_rec
	ld	a, #0x01
	sub	a, b
	ld	(hl), a
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:163: g_last_input_dir = dir;
	ld	hl, #_g_last_input_dir
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:165: u8 cur_trig = CallFnc_U8_P1(SEG_INPUT, IsTeamJoystickTriggerPressed, joy_port);
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:166: bool do_throw = FALSE;
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:167: if (cur_trig != 0 && g_prev_trigger[joy_port] == 0) do_throw = TRUE;
	ld	a, c
	or	a, a
	jr	Z, 00173$
	ld	de, #_g_prev_trigger+0
	ld	l, -5 (ix)
	ld	h, #0x00
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	NZ, 00173$
	ld	b, #0x01
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:168: g_prev_trigger[joy_port] = cur_trig;
	ld	de, #_g_prev_trigger+0
	ld	l, -5 (ix)
	ld	h, #0x00
	add	hl, de
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:170: if (*wait_secs == 0) do_throw = TRUE; // Lancio automatico scaduto il tempo
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00176$
	ld	b, #0x01
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:172: if (do_throw) {
	ld	a, b
	or	a, a
	jp	Z,00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:173: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00178$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:174: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00287$
	ld	a, (_g_throw_rec_1+0)
	jp	00288$
00287$:
	ld	a, (_g_throw_rec_2+0)
00288$:
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteThrowIn
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
	jp	00179$
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:176: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteCornerKick, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00289$
	ld	a, (_g_throw_rec_1+0)
	jp	00290$
00289$:
	ld	a, (_g_throw_rec_2+0)
00290$:
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteCornerKick
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:178: g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:179: *game_state = 3; TimerEnabled = TRUE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
	jp	00279$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:182: if (*wait_secs == 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ,00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:183: u8 target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	hl, #_Frms
	bit	0, (hl)
	jr	NZ, 00291$
	ld	a, (_g_throw_rec_1+0)
	jp	00292$
00291$:
	ld	a, (_g_throw_rec_2+0)
00292$:
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:184: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:185: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, target);
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteThrowIn
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
	jp	00186$
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:188: u8 team_to_kick = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00293$
	ld	bc, #0x0000
	jp	00294$
00293$:
	ld	bc, #0x0001
00294$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:189: u8 start_t = (team_to_kick == TEAM_1) ? 1 : 8;
	ld	a, c
	or	a, a
	jr	NZ, 00295$
	ld	bc, #0x0001
	jp	00296$
00295$:
	ld	bc, #0x0008
00296$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:191: out_targets[0] = start_t;
	ld	-25 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:192: out_targets[1] = start_t + 1;
	ld	a, c
	inc	a
	ld	-24 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:193: out_targets[2] = start_t + 4;
	ld	a, c
	inc	a
	inc	a
	inc	a
	inc	a
	ld	-23 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:194: out_targets[3] = start_t + 5;
	ld	a, c
	add	a, #0x05
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:195: target = out_targets[Frms % 4];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:196: if (target == g_thrower_id) target = out_targets[(Frms + 1) % 4];
	ld	a, (_g_thrower_id+0)
	sub	a, e
	jr	NZ, 00183$
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
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:198: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteCornerKick, g_thrower_id, target);
	ld	a, e
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteCornerKick
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:200: g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:201: *game_state = 3; TimerEnabled = TRUE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:204: return;
	jp	00279$
00252$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:205: } else if (*game_state == 8) {
	ld	a, -5 (ix)
	sub	a, #0x08
	jp	NZ,00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:207: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:209: if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	hl, #_Frms
	sub	a, (hl)
	jr	NC, 00195$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:210: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00195$
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:212: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:214: u8 gk = (RestartSideY < 256) ? 0 : 7;
	ld	hl, (_RestartSideY)
	ld	a, h
	sub	a, #0x01
	jr	NC, 00297$
	ld	bc, #0x0000
	jp	00298$
00297$:
	ld	bc, #0x0007
00298$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:215: struct ObjectInfo* GK = &SwSprite[gk];
	ld	-21 (ix), c
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
	ld	-20 (ix), l
	ld	-19 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:216: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:218: i8 dir_y = (gk == 0) ? 1 : -1;
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00299$
	ld	de, #0x0001
	jp	00300$
00299$:
	ld	de, #0xffff
00300$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:219: i8 dir_x = (RestartSideX < 128) ? 1 : -1;
	ld	a, (_RestartSideX+0)
	sub	a, #0x80
	jr	NC, 00301$
	ld	bc, #0x0001
	jp	00302$
00301$:
	ld	bc, #0xffff
00302$:
	ld	d, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:221: u16 target_gk_x = Ball->lx - (dir_x * 6);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-18 (ix), a
	ld	c, a
	ld	b, #0x00
	ld	a, d
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	ld	-17 (ix), c
	ld	-16 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:222: u16 target_gk_y = Ball->ly - (dir_y * 8);
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, de
	ld	-13 (ix), l
	ld	-12 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:224: u8 team_to_kick = (gk == 0) ? TEAM_1 : TEAM_2;
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00303$
	ld	bc, #0x0000
	jp	00304$
00303$:
	ld	bc, #0x0001
00304$:
	ld	-11 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:225: bool is_human = FALSE;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:226: u8 joy_port = 0;
	ld	-9 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:228: if (team_to_kick == TEAM_2) { is_human = TRUE; joy_port = 0; }
	ld	a, -11 (ix)
	dec	a
	jr	NZ, 00200$
	ld	-10 (ix), #0x01
	ld	-9 (ix), #0x00
	jp	00201$
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:229: else if (team_to_kick == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }
	ld	a, -11 (ix)
	or	a, a
	jr	NZ, 00201$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00201$
	ld	-10 (ix), #0x01
	ld	-9 (ix), #0x01
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:231: if (*wait_secs == 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:233: if (GK->ly != target_gk_y || GK->lx != target_gk_x) {
	ld	a, -20 (ix)
	add	a, #0x04
	ld	-8 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:254: GK->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, gk, GK->dx, GK->dy, walk_seq[(GK->anim / 3) % 4]);
	ld	a, -20 (ix)
	add	a, #0x0f
	ld	-6 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:231: if (*wait_secs == 0) {
	ld	a, c
	or	a, a
	jp	NZ, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:233: if (GK->ly != target_gk_y || GK->lx != target_gk_x) {
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-27 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-26 (ix), a
	ld	a, -27 (ix)
	sub	a, -13 (ix)
	jr	NZ, 00946$
	ld	a, -26 (ix)
	sub	a, -12 (ix)
	ld	a, #0x01
	jr	Z, 00947$
00946$:
	xor	a, a
00947$:
	ld	e, a
	bit	0, e
	jr	Z, 00226$
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	c, (hl)
	ld	b, #0x00
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	cp	a, a
	sbc	hl, bc
	jp	Z,00227$
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:235: GK->dy = (Ball->ly > GK->ly) ? 2 : -2;
	ld	a, -20 (ix)
	add	a, #0x12
	ld	c, a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:234: if (GK->ly != target_gk_y) {
	bit	0, e
	jp	NZ, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:235: GK->dy = (Ball->ly > GK->ly) ? 2 : -2;
	ld	a, -27 (ix)
	sub	a, -15 (ix)
	ld	a, -26 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00305$
	ld	de, #0x0002
	jp	00306$
00305$:
	ld	de, #0xfffe
00306$:
	ld	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:236: if (target_gk_y > GK->ly && GK->ly + GK->dy > target_gk_y) GK->dy = target_gk_y - GK->ly;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, -13 (ix)
	ld	a, d
	sbc	a, -12 (ix)
	jr	NC, 00203$
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	push	de
	pop	iy
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	push	iy
	pop	hl
	ld	a, -13 (ix)
	sub	a, l
	ld	a, -12 (ix)
	sbc	a, h
	jr	NC, 00203$
	ld	a, -13 (ix)
	sub	a, e
	ld	(bc), a
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:237: if (target_gk_y < GK->ly && GK->ly + GK->dy < target_gk_y) GK->dy = target_gk_y - GK->ly;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -13 (ix)
	sub	a, e
	ld	a, -12 (ix)
	sbc	a, d
	jr	NC, 00206$
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	push	de
	pop	iy
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	push	iy
	pop	hl
	ld	a, l
	sub	a, -13 (ix)
	ld	a, h
	sbc	a, -12 (ix)
	jr	NC, 00206$
	ld	a, -13 (ix)
	sub	a, e
	ld	(bc), a
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:238: GK->ly += GK->dy;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, (bc)
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
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00210$
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:240: GK->dy = 0;
	xor	a, a
	ld	(bc), a
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:243: if (GK->lx != target_gk_x) {
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	e, (hl)
	ld	d, e
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:244: GK->dx = (Ball->lx > GK->lx) ? 2 : -2;
	ld	a, -20 (ix)
	add	a, #0x11
	ld	-8 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:243: if (GK->lx != target_gk_x) {
	ld	a, -17 (ix)
	sub	a, d
	jr	NZ, 00949$
	ld	a, -16 (ix)
	sub	a, l
	jp	Z,00218$
00949$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:244: GK->dx = (Ball->lx > GK->lx) ? 2 : -2;
	ld	hl, #(_SwSprite + 322)
	ld	d, (hl)
	ld	a, e
	sub	a, d
	jr	NC, 00307$
	ld	de, #0x0002
	jp	00308$
00307$:
	ld	de, #0xfffe
00308$:
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:245: if (target_gk_x > GK->lx && GK->lx + GK->dx > target_gk_x) GK->dx = target_gk_x - GK->lx;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	e, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	ld	l, #0x00
	sub	a, -17 (ix)
	ld	a, l
	sbc	a, -16 (ix)
	jr	NC, 00212$
	ld	a, e
	ld	d, #0x00
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	af
	ld	a, l
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, h
	ld	d, a
	ld	a, -17 (ix)
	sub	a, l
	ld	a, -16 (ix)
	sbc	a, d
	jr	NC, 00212$
	ld	a, -17 (ix)
	sub	a, e
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), a
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:246: if (target_gk_x < GK->lx && GK->lx + GK->dx < target_gk_x) GK->dx = target_gk_x - GK->lx;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	e, (hl)
	ld	d, e
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -17 (ix)
	sub	a, d
	ld	a, -16 (ix)
	sbc	a, l
	jr	NC, 00215$
	ld	a, e
	ld	d, #0x00
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	af
	ld	a, l
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, h
	ld	d, a
	ld	a, l
	sub	a, -17 (ix)
	ld	a, d
	sbc	a, -16 (ix)
	jr	NC, 00215$
	ld	a, -17 (ix)
	sub	a, e
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), a
00215$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:247: GK->lx += GK->dx;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	e, (hl)
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	add	a, e
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), a
	jp	00219$
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:249: GK->dx = 0;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), #0x00
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:252: GK->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:253: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-25 (ix), #0x00
	ld	-24 (ix), #0x01
	ld	-23 (ix), #0x02
	ld	-22 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:254: GK->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, gk, GK->dx, GK->dy, walk_seq[(GK->anim / 3) % 4]);
	push	bc
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	pop	bc
	ld	a, e
	and	a, #0x03
	ld	e, a
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	ld	d, (hl)
	ld	a, (bc)
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	b, (hl)
	push	de
	inc	sp
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, -21 (ix)
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
	jp	00248$
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:257: u8 target = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00309$
	ld	a, (_g_throw_rec_1+0)
	jp	00310$
00309$:
	ld	a, (_g_throw_rec_2+0)
00310$:
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:258: if (!is_human) target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -10 (ix)
	or	a, a
	jr	NZ, 00221$
	ld	hl, #_Frms
	bit	0, (hl)
	jr	NZ, 00311$
	ld	a, (_g_throw_rec_1+0)
	jp	00312$
00311$:
	ld	a, (_g_throw_rec_2+0)
00312$:
	ld	-9 (ix), a
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:260: g_pass_start_x = Ball->lx;
	ld	a, -18 (ix)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:261: g_pass_start_y = Ball->ly;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:262: g_pass_target_x = SwSprite[target].lx;
	ld	c, -9 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:263: g_pass_target_y = SwSprite[target].ly;
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:265: u16 dist_x = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00313$
	ld	bc, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, bc
	jp	00314$
00313$:
	ld	bc, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
00314$:
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:266: u16 dist_y = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00315$
	ld	bc, (_g_pass_start_y)
	ld	hl, (_g_pass_target_y)
	cp	a, a
	sbc	hl, bc
	jp	00316$
00315$:
	ld	bc, (_g_pass_target_y)
	ld	hl, (_g_pass_start_y)
	cp	a, a
	sbc	hl, bc
00316$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:268: g_pass_max_frames = (dist_x + dist_y) / 4; 
	add	hl, de
	srl	h
	rr	l
	srl	h
	rr	l
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:269: if (g_pass_max_frames < 20) g_pass_max_frames = 20;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x14
	jr	NC, 00223$
	ld	0 (iy), #0x14
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:270: if (g_pass_max_frames > 60) g_pass_max_frames = 60;
	ld	a, #0x3c
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00225$
	ld	0 (iy), #0x3c
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:271: g_pass_max_height = 7;
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:273: Ball->lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:274: Ball->ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:275: Ball->anim = 5; 
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:276: Ball->count = 0; 
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:277: Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:279: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:280: LastTouchTeam = (gk == 0) ? TEAM_1 : TEAM_2;
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00317$
	ld	bc, #0x0000
	jp	00318$
00317$:
	ld	bc, #0x0001
00318$:
	ld	a, c
	ld	(#_LastTouchTeam), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:281: LastTouchPlayer = gk;
	ld	a, -21 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:282: g_pass_receiver = target;
	ld	a, -9 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:284: GK->ly = (gk == 0) ? 32 : 444; // Scatta sulla sua riga, ma conserva la X esterna
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00319$
	ld	de, #0x0020
	jp	00320$
00319$:
	ld	de, #0x01bc
00320$:
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:285: GK->frame = (gk == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00321$
	ld	bc, #0x00d5
	jp	00322$
00321$:
	ld	bc, #0x00d6
00322$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:287: *game_state = 3; // Riparte il gioco istantaneamente
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:288: TimerEnabled = TRUE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
	jp	00248$
00247$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:292: if (is_human) {
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00242$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:293: if (team_to_kick == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -11 (ix)
	or	a, a
	jr	NZ, 00231$
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00323$
	ld	a, (_g_throw_rec_1+0)
	jp	00324$
00323$:
	ld	a, (_g_throw_rec_2+0)
00324$:
	ld	(_T1_Receiver+0), a
	jp	00232$
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:294: else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00325$
	ld	a, (_g_throw_rec_1+0)
	jp	00326$
00325$:
	ld	a, (_g_throw_rec_2+0)
00326$:
	ld	(_T2_Receiver+0), a
00232$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:296: u8 dir = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, joy_port);
	ld	a, -9 (ix)
	push	af
	inc	sp
	ld	de, #_GetJoystickDirection
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:297: if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
	or	a, a
	jr	Z, 00234$
	ld	a, (_g_last_input_dir+0)
	or	a, a
	jr	NZ, 00234$
	ld	a, (_g_selected_rec+0)
	ld	c, a
	ld	hl, #_g_selected_rec
	ld	a, #0x01
	sub	a, c
	ld	(hl), a
00234$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:298: g_last_input_dir = dir;
	ld	hl, #_g_last_input_dir
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:300: u8 cur_trig = CallFnc_U8_P1(SEG_INPUT, IsTeamJoystickTriggerPressed, joy_port);
	ld	a, -9 (ix)
	push	af
	inc	sp
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	-10 (ix), a
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:301: bool do_kick = FALSE;
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:302: if (cur_trig != 0 && g_prev_trigger[joy_port] == 0) do_kick = TRUE;
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00237$
	ld	a, #<(_g_prev_trigger)
	add	a, -9 (ix)
	ld	-14 (ix), a
	ld	a, #>(_g_prev_trigger)
	adc	a, #0x00
	ld	-13 (ix), a
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00237$
	ld	-11 (ix), #0x01
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:303: g_prev_trigger[joy_port] = cur_trig;
	ld	a, -9 (ix)
	add	a, #<(_g_prev_trigger)
	ld	-10 (ix), a
	ld	a, #0x00
	adc	a, #>(_g_prev_trigger)
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -12 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:305: if (do_kick) *wait_secs = 0; // Trigger premuto: inizia subito la rincorsa!
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00242$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0x00
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:309: i8 look_dx = (Ball->lx > GK->lx) ? 1 : ((Ball->lx < GK->lx) ? -1 : 0);
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	e, (hl)
	ld	a, e
	sub	a, c
	jr	NC, 00327$
	ld	bc, #0x0001
	jp	00328$
00327$:
	ld	a, c
	sub	a, e
	jr	NC, 00329$
	ld	bc, #0xffff
	jp	00330$
00329$:
	ld	bc, #0x0000
00330$:
00328$:
	ld	-9 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:310: i8 look_dy = (Ball->ly > GK->ly) ? 1 : ((Ball->ly < GK->ly) ? -1 : 0);
	ld	bc, (#(_SwSprite + 326) + 0)
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00331$
	ld	bc, #0x0001
	jp	00332$
00331$:
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00333$
	ld	bc, #0xffff
	jp	00334$
00333$:
	ld	bc, #0x0000
00334$:
00332$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:311: if (look_dx == 0 && look_dy == 0) look_dy = (gk == 0) ? 1 : -1;
	ld	a, -9 (ix)
	or	a,a
	jr	NZ, 00244$
	or	a,c
	jr	NZ, 00244$
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00335$
	ld	de, #0x0001
	jp	00336$
00335$:
	ld	de, #0xffff
00336$:
	ld	c, e
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:312: GK->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, gk, look_dx, look_dy);
	ld	h, c
	ld	l, -9 (ix)
	push	hl
	ld	a, -21 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:314: return;
00279$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s12_b3.c:316: }
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
