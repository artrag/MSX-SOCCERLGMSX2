;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s9_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CheckFieldBoundaries
	.globl _UpdateFieldCamera
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _UpdateReferee
	.globl _UpdateBallPhysics
	.globl _UpdateGameState_Init
	.globl _UpdateGameState_Restarts
	.globl _EventOffside
	.globl _EventTimeUp
	.globl _EventHalfTime
	.globl _EventBallKicked
	.globl _UpdateGameState_GlobalChecks
	.globl _FindReceiver
	.globl _PlayerAI
	.globl _HideSpriteMessage
	.globl _ShowSpriteMessage
	.globl _CallFnc_U16_P4B
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
	.globl _CallFnc_VOID_16_P1
	.globl _CallFnc_VOID_3PTR_U16
	.globl _CallFnc_VOID_3PTR
	.globl _CallFnc_VOID_P1
	.globl _CallFnc_VOID
	.globl _PlaySCCEvent
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
	.globl _UpdateGameState
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
	.area _SEG9
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:12: void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
;	---------------------------------
; Function UpdateGameState
; ---------------------------------
_UpdateGameState::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-44
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:14: if (*game_state < 3) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	sub	a, #0x03
	jp	NC, 00398$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:15: CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_4, UpdateGameState_Init, game_state, wait_secs, start_sec, target_ly);
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
	ld	de, #_UpdateGameState_Init
	ld	a, #0x0d
	call	_CallFnc_VOID_3PTR_U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:17: SwSprite[37].lx = PENALTY_DISH_X; SwSprite[37].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 851)
	ld	(hl), #0x78
	ld	hl, #0x006d
	ld	((_SwSprite + 866)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:18: SwSprite[37].ly = (SwSprite[14].lx == PENALTY_DISH_X && SwSprite[14].ly == PENALTY_SOUTH_Y) ? 1000 : PENALTY_SOUTH_Y;
	ld	a, (#(_SwSprite + 322) + 0)
	sub	a, #0x78
	jr	NZ, 00413$
	ld	hl, #_SwSprite + 326
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	a, c
	sub	a, #0xb2
	jr	NZ, 00413$
	djnz	00413$
	ld	-7 (ix), #0xe8
	ld	-6 (ix), #0x03
	jp	00414$
00413$:
	ld	-7 (ix), #0xb2
	ld	-6 (ix), #0x01
00414$:
	ld	hl, #(_SwSprite + 855)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:19: SwSprite[38].lx = PENALTY_DISH_X; SwSprite[38].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 874)
	ld	(hl), #0x78
	ld	hl, #0x006d
	ld	((_SwSprite + 889)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:20: SwSprite[38].ly = (SwSprite[14].lx == PENALTY_DISH_X && SwSprite[14].ly == PENALTY_NORTH_Y) ? 1000 : PENALTY_NORTH_Y;
	ld	a, (#(_SwSprite + 322) + 0)
	sub	a, #0x78
	jr	NZ, 00418$
	ld	hl, #_SwSprite + 326
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x4a
	or	a, -6 (ix)
	jr	NZ, 00418$
	ld	-7 (ix), #0xe8
	ld	-6 (ix), #0x03
	jp	00419$
00418$:
	ld	-7 (ix), #0x4a
	ld	-6 (ix), #0
00419$:
	ld	hl, #(_SwSprite + 878)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00411$
00398$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:21: } else if (*game_state == 3) {
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NZ,00395$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:23: if (Mins == 0 && Secs == 0) {
	ld	a, (_Mins+0)
	or	a, a
	jr	NZ, 00107$
	ld	a, (_Secs+0)
	or	a, a
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:24: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:25: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:26: if (Half == 1) {
	ld	a, (_Half+0)
	dec	a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:27: *game_state = 4;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:28: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_HALFTIME);
	ld	hl, #0x0144
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:29: CallFnc_VOID(SEG_EVENTS, EventHalfTime);
	ld	de, #_EventHalfTime
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00411$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:30: } else if (Half == 2) {
	ld	a, (_Half+0)
	sub	a, #0x02
	jp	NZ,00411$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:31: *game_state = 5;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:32: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_TIMEUP);
	ld	hl, #0x0140
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:33: CallFnc_VOID(SEG_EVENTS, EventTimeUp);
	ld	de, #_EventTimeUp
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:35: return;
	jp	00411$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:39: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:40: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:41: (*wait_secs)--;
	ld	a, c
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:42: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:43: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	de
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:44: TimerEnabled = TRUE; // Avvia il cronometro alla sparizione della scritta
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:47: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:49: return; // Ferma l'IA e il gioco finché la scritta non sparisce
	jp	00411$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:53: CallFnc_VOID(SEG_FIELD, UpdateFieldCamera);
	ld	de, #_UpdateFieldCamera
	ld	a, #0x0a
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:54: CallFnc_VOID_3PTR(SEG_FIELD, CheckFieldBoundaries, game_state, wait_secs, start_sec);
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
	ld	de, #_CheckFieldBoundaries
	ld	a, #0x0a
	call	_CallFnc_VOID_3PTR
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:57: g_h_arrow_x += g_h_arrow_dir;
	ld	a, (_g_h_arrow_dir+0)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	hl, (_g_h_arrow_x)
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:58: if (g_h_arrow_x < 80) { g_h_arrow_x = 80; g_h_arrow_dir = 1; }
	ld	(_g_h_arrow_x), hl
	ld	a, l
	sub	a, #0x50
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00118$
	ld	hl, #0x0050
	ld	(_g_h_arrow_x), hl
	ld	hl, #_g_h_arrow_dir
	ld	(hl), #0x01
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:59: else if (g_h_arrow_x > 162) { g_h_arrow_x = 162; g_h_arrow_dir = -1; }
	ld	a, #0xa2
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00119$
	ld	hl, #0x00a2
	ld	(_g_h_arrow_x), hl
	ld	hl, #_g_h_arrow_dir
	ld	(hl), #0xff
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:63: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:64: SwSprite[24].lx = (u8)g_h_arrow_x;
	ld	bc, #_SwSprite + 552
	ld	a, (_g_h_arrow_x+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:65: SwSprite[24].ly = 440; 
	ld	hl, #0x01b8
	ld	((_SwSprite + 556)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:66: SwSprite[24].frame = SPR_BIG_ARROW_BOTTOM;
	ld	hl, #0x006b
	ld	((_SwSprite + 567)), hl
	jp	00122$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:68: SwSprite[24].ly = 1000; // Nascondimento assoluto
	ld	hl, #0x03e8
	ld	((_SwSprite + 556)), hl
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:71: SwSprite[25].lx = (u8)g_h_arrow_x; SwSprite[25].ly = 50; SwSprite[25].frame = SPR_BIG_ARROW_TOP;
	ld	bc, #_SwSprite + 575
	ld	a, (_g_h_arrow_x+0)
	ld	(bc), a
	ld	hl, #0x0032
	ld	((_SwSprite + 579)), hl
	ld	l, #0x6c
	ld	((_SwSprite + 590)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:73: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:76: SwSprite[37].lx = PENALTY_DISH_X; SwSprite[37].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 851)
	ld	(hl), #0x78
	ld	hl, #0x006d
	ld	((_SwSprite + 866)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:77: SwSprite[37].ly = (Ball->lx == PENALTY_DISH_X && Ball->ly == PENALTY_SOUTH_Y) ? 1000 : PENALTY_SOUTH_Y;
	ld	a, (#(_SwSprite + 322) + 0)
	sub	a, #0x78
	jr	NZ, 00423$
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	a, l
	sub	a, #0xb2
	jr	NZ, 00423$
	dec	h
	jr	NZ, 00423$
	ld	bc, #0x03e8
	jp	00424$
00423$:
	ld	bc, #0x01b2
00424$:
	ld	((_SwSprite + 855)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:78: SwSprite[38].lx = PENALTY_DISH_X; SwSprite[38].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 874)
	ld	(hl), #0x78
	ld	hl, #0x006d
	ld	((_SwSprite + 889)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:79: SwSprite[38].ly = (Ball->lx == PENALTY_DISH_X && Ball->ly == PENALTY_NORTH_Y) ? 1000 : PENALTY_NORTH_Y;
	ld	a, (#(_SwSprite + 322) + 0)
	sub	a, #0x78
	jr	NZ, 00428$
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	a, l
	sub	a, #0x4a
	or	a, h
	jr	NZ, 00428$
	ld	bc, #0x03e8
	jp	00429$
00428$:
	ld	bc, #0x004a
00429$:
	ld	((_SwSprite + 878)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:83: u8 closest_t1 = 1; u16 min_dist_t1 = 0xFFFF;
	ld	-19 (ix), #0x01
	ld	-18 (ix), #0xff
	ld	-17 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:84: u8 closest_t2 = 8; u16 min_dist_t2 = 0xFFFF;
	ld	-16 (ix), #0x08
	ld	-15 (ix), #0xff
	ld	-14 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:86: for (u8 i = 1; i < 7; i++) { 
	ld	-1 (ix), #0x01
00401$:
	ld	a, -1 (ix)
	sub	a, #0x07
	jp	NC, 00130$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:87: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
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
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
	sub	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:88: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00433$
	ld	a, d
	jp	00434$
00433$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00434$:
	ld	-11 (ix), e
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:89: u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
	ld	hl, #4
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	and	a, #0x01
	ld	-9 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:90: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
	ld	-8 (ix), a
	sub	a, #0x01
	jr	NC, 00435$
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	jp	00436$
00435$:
	xor	a, a
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #0x02
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00436$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:91: u16 dist = dist_x + dist_y;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	add	hl, bc
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:92: if (LastTouchTeam == TEAM_1 && i == LastTouchPlayer && Ball->anim < 5 && g_is_ball_carried) dist = 0; // Forza il focus sul portatore (solo se ha davvero palla ai piedi)
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	NZ, 00124$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jr	NZ, 00124$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, l
	sub	a, #0x05
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00124$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00124$
	ld	de, #0x0000
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:93: if (dist < min_dist_t1) { min_dist_t1 = dist; closest_t1 = i; }
	ld	a, e
	sub	a, -18 (ix)
	ld	a, d
	sbc	a, -17 (ix)
	jr	NC, 00402$
	ld	-18 (ix), e
	ld	-17 (ix), d
	ld	a, -1 (ix)
	ld	-19 (ix), a
00402$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:86: for (u8 i = 1; i < 7; i++) { 
	inc	-1 (ix)
	jp	00401$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:95: for (u8 i = 8; i < 14; i++) {
	ld	c, #0x08
00404$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:101: if (LastTouchTeam == TEAM_2 && i == LastTouchPlayer && Ball->anim < 5 && g_is_ball_carried) dist = 0; // Forza il focus sul portatore (solo se ha davvero palla ai piedi)
	ld	a, (_LastTouchTeam+0)
	dec	a
	ld	a, #0x01
	jr	Z, 01758$
	xor	a, a
01758$:
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:95: for (u8 i = 8; i < 14; i++) {
	ld	a, c
	sub	a, #0x0e
	jp	NC, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:96: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
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
	ld	a, (hl)
	ld	hl, #(_SwSprite + 322)
	ld	b, (hl)
	sub	a, b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:97: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00437$
	ld	a, d
	jp	00438$
00437$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00438$:
	ld	-7 (ix), e
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:98: u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:99: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
;	spillPairReg hl
;	spillPairReg hl
	ld	d, a
	sub	a, #0x01
	jr	C, 00440$
	ld	hl, #0x0200
	cp	a, a
	sbc	hl, de
	ex	de, hl
00440$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:100: u16 dist = dist_x + dist_y;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:101: if (LastTouchTeam == TEAM_2 && i == LastTouchPlayer && Ball->anim < 5 && g_is_ball_carried) dist = 0; // Forza il focus sul portatore (solo se ha davvero palla ai piedi)
	ld	a, -13 (ix)
	or	a, a
	jr	Z, 00132$
	ld	a, (_LastTouchPlayer+0)
	sub	a, c
	jr	NZ, 00132$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, l
	sub	a, #0x05
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00132$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00132$
	ld	de, #0x0000
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:102: if (dist < min_dist_t2) { min_dist_t2 = dist; closest_t2 = i; }
	ld	a, e
	sub	a, -15 (ix)
	ld	a, d
	sbc	a, -14 (ix)
	jr	NC, 00405$
	ld	-15 (ix), e
	ld	-14 (ix), d
	ld	-16 (ix), c
00405$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:95: for (u8 i = 8; i < 14; i++) {
	inc	c
	jp	00404$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:105: g_closest_t1 = closest_t1;
	ld	a, -19 (ix)
	ld	(_g_closest_t1+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:106: g_closest_t2 = closest_t2;
	ld	a, -16 (ix)
	ld	(_g_closest_t2+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:109: bool t1_switched = FALSE;
	ld	-36 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:110: bool t2_switched = FALSE;
	ld	-35 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:113: if (LastTouchTeam == TEAM_2 || LastTouchTeam == 0xFF || T2_Carrier == 0xFF) {
	ld	a, -13 (ix)
	or	a, a
	jr	NZ, 00145$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	Z, 00145$
	ld	a, (_T2_Carrier+0)
	inc	a
	jr	NZ, 00146$
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:114: T2_Carrier = closest_t2;
	ld	a, -16 (ix)
	ld	(_T2_Carrier+0), a
	jp	00147$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:115: } else if (g_player_input[1].trigger_pressed) {
	ld	a, (#(_g_player_input + 4) + 0)
	ld	-1 (ix), a
	or	a, a
	jp	Z, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:116: u16 b_dist_x = (SwSprite[T2_Carrier].lx > Ball->lx) ? (SwSprite[T2_Carrier].lx - Ball->lx) : (Ball->lx - SwSprite[T2_Carrier].lx);
	ld	bc, (_T2_Carrier)
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
	ld	a, #<(_SwSprite)
	add	a, -7 (ix)
	ld	-12 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -6 (ix)
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-1 (ix), a
	ld	a, -10 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -1 (ix)
	sub	a, -10 (ix)
	jr	NC, 00441$
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	-21 (ix), a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	-20 (ix), a
	jp	00442$
00441$:
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	-21 (ix), a
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	ld	-20 (ix), a
00442$:
	ld	a, -21 (ix)
	ld	-7 (ix), a
	ld	a, -20 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:117: u16 b_dist_y = (SwSprite[T2_Carrier].ly > Ball->ly) ? (SwSprite[T2_Carrier].ly - Ball->ly) : (Ball->ly - SwSprite[T2_Carrier].ly);
	ld	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -11 (ix)
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-21 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-20 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -21 (ix)
	ld	a, -10 (ix)
	sbc	a, -20 (ix)
	jr	NC, 00443$
	ld	a, -21 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -20 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	jp	00444$
00443$:
	ld	a, -11 (ix)
	sub	a, -21 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sbc	a, -20 (ix)
	ld	-8 (ix), a
00444$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:118: if ((b_dist_x > 48 || b_dist_y > 24) && closest_t2 != T2_Carrier) {
	ld	a, #0x30
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	C, 00142$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00147$
00142$:
	ld	a, -16 (ix)
	ld	hl, #_T2_Carrier
	sub	a, (hl)
	jr	Z, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:119: T2_Carrier = closest_t2; // Cambio manuale del giocatore in difesa!
	ld	a, -16 (ix)
	ld	(_T2_Carrier+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:120: t2_switched = TRUE;
	ld	-35 (ix), #0x01
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:124: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jp	NZ,00162$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:125: if (LastTouchTeam == TEAM_1 || LastTouchTeam == 0xFF || T1_Carrier == 0xFF) {
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	Z, 00156$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	Z, 00156$
	ld	a, (_T1_Carrier+0)
	inc	a
	jr	NZ, 00157$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:126: T1_Carrier = closest_t1;
	ld	a, -19 (ix)
	ld	(_T1_Carrier+0), a
	jp	00163$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:127: } else if (g_player_input[0].trigger_pressed) {
	ld	a, (#(_g_player_input + 1) + 0)
	ld	-1 (ix), a
	or	a, a
	jp	Z, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:128: u16 b_dist_x = (SwSprite[T1_Carrier].lx > Ball->lx) ? (SwSprite[T1_Carrier].lx - Ball->lx) : (Ball->lx - SwSprite[T1_Carrier].lx);
	ld	bc, (_T1_Carrier)
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
	ld	a, #<(_SwSprite)
	add	a, -7 (ix)
	ld	-12 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -6 (ix)
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-1 (ix), a
	ld	a, -10 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -1 (ix)
	sub	a, -10 (ix)
	jr	NC, 00445$
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	-21 (ix), a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	-20 (ix), a
	jp	00446$
00445$:
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	-21 (ix), a
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	ld	-20 (ix), a
00446$:
	ld	a, -21 (ix)
	ld	-7 (ix), a
	ld	a, -20 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:129: u16 b_dist_y = (SwSprite[T1_Carrier].ly > Ball->ly) ? (SwSprite[T1_Carrier].ly - Ball->ly) : (Ball->ly - SwSprite[T1_Carrier].ly);
	ld	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -11 (ix)
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-21 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-20 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -21 (ix)
	ld	a, -10 (ix)
	sbc	a, -20 (ix)
	jr	NC, 00447$
	ld	a, -21 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -20 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	jp	00448$
00447$:
	ld	a, -11 (ix)
	sub	a, -21 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sbc	a, -20 (ix)
	ld	-8 (ix), a
00448$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:130: if ((b_dist_x > 48 || b_dist_y > 24) && closest_t1 != T1_Carrier) {
	ld	a, #0x30
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	C, 00153$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00163$
00153$:
	ld	a, -19 (ix)
	ld	hl, #_T1_Carrier
	sub	a, (hl)
	jr	Z, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:131: T1_Carrier = closest_t1; // Cambio manuale del giocatore in difesa!
	ld	a, -19 (ix)
	ld	(_T1_Carrier+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:132: t1_switched = TRUE;
	ld	-36 (ix), #0x01
	jp	00163$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:136: T1_Carrier = 0xFF;
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:141: if (min_dist_t2 <= 24 && (LastTouchTeam == TEAM_2 || LastTouchTeam == 0xFF)) {
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00168$
	ld	a, -13 (ix)
	or	a, a
	jr	NZ, 00167$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00168$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:142: if (T2_Receiver == 0xFF || (Frms % 8) == 0) // Throttle: evita il cambio repentino di destinatario
	ld	a, (_T2_Receiver+0)
	inc	a
	jr	Z, 00164$
	ld	a, (_Frms+0)
	and	a, #0x07
	jr	NZ, 00169$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:143: T2_Receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, T2_Carrier, 0xFF, g_last_dx[1], g_last_dy[1]);
	ld	hl, #(_g_last_dy + 1)
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, (#(_g_last_dx + 1) + 0)
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, a
	ld	l, #0xff
	push	hl
	ld	a, (_T2_Carrier+0)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x14
	call	_CallFnc_U16_P4B
	ld	hl, #_T2_Receiver
	ld	(hl), e
	jp	00169$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:144: } else T2_Receiver = 0xFF;
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:146: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00181$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:147: if (min_dist_t1 <= 24 && (LastTouchTeam == TEAM_1 || LastTouchTeam == 0xFF)) {
	ld	a, -18 (ix)
	ld	-7 (ix), a
	ld	a, -17 (ix)
	ld	-6 (ix), a
	ld	a, #0x18
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	C, 00176$
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	Z, 00175$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00176$
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:148: if (T1_Receiver == 0xFF || (Frms % 8) == 0) // Throttle: evita il cambio repentino di destinatario
	ld	a, (_T1_Receiver+0)
	inc	a
	jr	Z, 00172$
	ld	a, (_Frms+0)
	and	a, #0x07
	jr	NZ, 00181$
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:149: T1_Receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, T1_Carrier, 0xFF, g_last_dx[0], g_last_dy[0]);
	ld	hl, #_g_last_dy
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, (#_g_last_dx + 0)
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, a
	ld	l, #0xff
	push	hl
	ld	a, (_T1_Carrier+0)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x14
	call	_CallFnc_U16_P4B
	ld	hl, #_T1_Receiver
	ld	(hl), e
	jp	00181$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:150: } else T1_Receiver = 0xFF;
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:155: CallFnc_VOID_3PTR(SEG_HELPERS, UpdateGameState_GlobalChecks, game_state, wait_secs, start_sec);
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
	ld	de, #_UpdateGameState_GlobalChecks
	ld	a, #0x14
	call	_CallFnc_VOID_3PTR
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:156: if (*game_state == 6 || (g_is_penalty_shootout && RestartType == RESTART_GKSAVE)) return;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	sub	a, #0x06
	jp	Z,00411$
	ld	a, (_g_is_penalty_shootout+0)
	or	a, a
	jr	Z, 00183$
	ld	a, (_RestartType+0)
	sub	a, #0x04
	jp	Z,00411$
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:159: CallFnc_VOID(SEG_GAMESTATE_8, UpdateBallPhysics);
	ld	de, #_UpdateBallPhysics
	ld	a, #0x12
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:162: if (g_pass_receiver & 0x80) {
	ld	a, (_g_pass_receiver+0)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:178: Ball->anim = Ball->dx = Ball->dy = 0;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:162: if (g_pass_receiver & 0x80) {
	bit	7, c
	jp	Z,00196$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:163: u8 rec = g_pass_receiver & 0x7F;
	ld	a, c
	res	7, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:164: if (rec >= 14) {
	cp	a, #0x0e
	jr	C, 00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:165: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
	jp	00196$
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:167: u8 pass_team = (rec < 7) ? TEAM_1 : TEAM_2;
	sub	a, #0x07
	jr	NC, 00449$
	ld	bc, #0x0000
	jp	00450$
00449$:
	ld	bc, #0x0001
00450$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:169: if (LastTouchTeam != 0xFF && LastTouchTeam != pass_team) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	Z, 00189$
	ld	a, (_LastTouchTeam+0)
	sub	a, c
	jr	Z, 00189$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:170: g_pass_receiver = 0xFF; // Intercettata dagli avversari: annulla offside
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
	jp	00196$
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:171: } else if (Ball->anim == 5) {
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, l
	sub	a, #0x05
	or	a, h
	jr	NZ, 00196$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:173: *game_state = 6;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:174: RestartType = RESTART_OFFSIDE;
	ld	hl, #_RestartType
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:175: RestartSideX = (u8)g_pass_target_x;
	ld	a, (_g_pass_target_x+0)
	ld	(_RestartSideX+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:176: RestartSideY = g_pass_target_y;
	ld	hl, (_g_pass_target_y)
	ld	(_RestartSideY), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:177: CallFnc_VOID(SEG_EVENTS, EventOffside);
	ld	de, #_EventOffside
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:178: Ball->anim = Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:179: Ball->lx = g_pass_target_x;
	ld	a, (_g_pass_target_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:180: Ball->ly = g_pass_target_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_target_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:181: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:182: T1_Carrier = T2_Carrier = 0xFF;
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:183: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:184: TimerEnabled = FALSE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:185: *wait_secs = 2; *start_sec = Frms;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:186: return;
	jp	00411$
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:191: g_is_ball_carried = FALSE;
	ld	iy, #_g_is_ball_carried
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:192: if (LastTouchPlayer != 0xFF && Ball->anim < 5) {
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jp	Z,00201$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC, 00201$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:193: u16 c_dist_x = (SwSprite[LastTouchPlayer].lx > Ball->lx) ? (SwSprite[LastTouchPlayer].lx - Ball->lx) : (Ball->lx - SwSprite[LastTouchPlayer].lx);
	ld	bc, (_LastTouchPlayer)
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
	ld	e, (hl)
	ld	hl, #(_SwSprite + 322)
	ld	d, (hl)
	ld	c, e
	ld	b, #0x00
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sub	a, e
	jr	NC, 00451$
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	jp	00452$
00451$:
	ld	a, l
	sub	a, c
	ld	c, a
	ld	a, h
	sbc	a, b
	ld	b, a
00452$:
	ld	-7 (ix), c
	ld	-6 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:194: u16 c_dist_y = (SwSprite[LastTouchPlayer].ly > Ball->ly) ? (SwSprite[LastTouchPlayer].ly - Ball->ly) : (Ball->ly - SwSprite[LastTouchPlayer].ly);
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	hl, #4
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00453$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	jp	00454$
00453$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
00454$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:195: if (c_dist_x <= 24 && c_dist_y <= 24) g_is_ball_carried = TRUE;
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, #0x18
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	C, 00201$
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00201$
	ld	iy, #_g_is_ball_carried
	ld	0 (iy), #0x01
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:199: u8 carriers[2] = {T1_Carrier, T2_Carrier};
	ld	a, (_T1_Carrier+0)
	ld	-44 (ix), a
	ld	a, (_T2_Carrier+0)
	ld	-43 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:200: u8 receivers[2] = {T1_Receiver, T2_Receiver};
	ld	a, (_T1_Receiver+0)
	ld	-42 (ix), a
	ld	a, (_T2_Receiver+0)
	ld	-41 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:202: for (u8 i = 0; i < 2; i++) { // i=0 per Team 1 (P2/CPU), i=1 per Team 2 (P1)
	ld	-1 (ix), #0x00
00407$:
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NC, 00392$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:203: u8 carrier = carriers[i];
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:204: if (carrier == 0xFF) continue;
	ld	-34 (ix), a
	inc	a
	jp	Z,00391$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:206: u8 dir = g_player_input[i].direction;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	de, #_g_player_input
	add	hl, de
	ld	-33 (ix), l
	ld	-32 (ix), h
	ld	a, (hl)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:207: bool trigger_pressed = g_player_input[i].trigger_pressed;
	ld	c, -33 (ix)
	ld	b, -32 (ix)
	inc	bc
	ld	a, (bc)
	ld	-31 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:210: if (i == 0 && t1_switched) trigger_pressed = FALSE;
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00206$
	ld	a, -36 (ix)
	or	a, a
	jr	Z, 00206$
	ld	-31 (ix), #0x00
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:211: if (i == 1 && t2_switched) trigger_pressed = FALSE;
	ld	a, -1 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01794$
	xor	a, a
01794$:
	ld	-30 (ix), a
	or	a, a
	jr	Z, 00209$
	ld	a, -35 (ix)
	or	a, a
	jr	Z, 00209$
	ld	-31 (ix), #0x00
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:213: struct ObjectInfo* Carrier = &SwSprite[carrier];
	ld	c, -34 (ix)
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
	ld	-29 (ix), l
	ld	-28 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:214: u8 carrier_team = (carrier < 7) ? TEAM_1 : TEAM_2;
	ld	a, -34 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	-27 (ix), a
	or	a, a
	jr	Z, 00455$
	ld	bc, #0x0000
	jp	00456$
00455$:
	ld	bc, #0x0001
00456$:
	ld	-6 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:217: if (Carrier->count > 0) {
	ld	a, -29 (ix)
	add	a, #0x15
	ld	-26 (ix), a
	ld	a, -28 (ix)
	adc	a, #0x00
	ld	-25 (ix), a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:229: Carrier->frame = (Carrier->dx > 0) ? 
	ld	a, -29 (ix)
	add	a, #0x0f
	ld	-14 (ix), a
	ld	a, -28 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:217: if (Carrier->count > 0) {
	ld	a, b
	or	a, c
	jp	Z, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:218: Carrier->count--;
	dec	bc
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:220: if (Carrier->count >= 20) {
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, c
	sub	a, #0x14
	ld	a, b
	sbc	a, #0x00
	jp	C, 00240$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:221: Carrier->lx += Carrier->dx;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -29 (ix)
	add	a, #0x11
	ld	-18 (ix), a
	ld	a, -28 (ix)
	adc	a, #0x00
	ld	-17 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	add	a, -8 (ix)
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:222: Carrier->ly += Carrier->dy;
	ld	a, -29 (ix)
	add	a, #0x04
	ld	-16 (ix), a
	ld	a, -28 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	a, -29 (ix)
	ld	-8 (ix), a
	ld	a, -28 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
	ld	-8 (ix), a
	rlca
	sbc	a, a
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	add	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	adc	a, -11 (ix)
	ld	-7 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:224: if (Carrier->lx < 16) Carrier->lx = 16;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	sub	a, #0x10
	jr	NC, 00212$
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	(hl), #0x10
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:225: if (Carrier->lx > 224) Carrier->lx = 224;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	c, (hl)
	ld	a, #0xe0
	sub	a, c
	jr	NC, 00214$
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	(hl), #0xe0
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:226: if (Carrier->ly < 24) Carrier->ly = 24;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00216$
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:227: if (Carrier->ly > 488) Carrier->ly = 488;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xe8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00218$
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x01
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:229: Carrier->frame = (Carrier->dx > 0) ? 
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01795$
	xor	a, #0x80
01795$:
	jp	P, 00457$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:230: ((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_WEST : SPR_T2_PLAYER_TACKLE_FROM_WEST) :
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00459$
	ld	-8 (ix), #0x1e
	ld	-7 (ix), #0
	jp	00458$
00459$:
	ld	-8 (ix), #0x8e
	ld	-7 (ix), #0
	jp	00458$
00457$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:231: ((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_EAST : SPR_T2_PLAYER_TACKLE_FROM_EAST);
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00461$
	ld	-8 (ix), #0x1f
	ld	-7 (ix), #0
	jp	00462$
00461$:
	ld	-8 (ix), #0x8f
	ld	-7 (ix), #0
00462$:
00458$:
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:221: Carrier->lx += Carrier->dx;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:234: u16 b_dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-8 (ix), a
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
	ld	a, -7 (ix)
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, -8 (ix)
	sub	a, -7 (ix)
	jr	NC, 00463$
	ld	a, -10 (ix)
	sub	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sbc	a, -11 (ix)
	ld	-7 (ix), a
	jp	00464$
00463$:
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	ld	-7 (ix), a
00464$:
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:222: Carrier->ly += Carrier->dy;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:235: u16 b_dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	ld	a, -14 (ix)
	sub	a, -8 (ix)
	ld	a, -13 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00465$
	ld	a, -8 (ix)
	sub	a, -14 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	sbc	a, -13 (ix)
	ld	-11 (ix), a
	jp	00466$
00465$:
	ld	a, -14 (ix)
	sub	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	sbc	a, -7 (ix)
	ld	-11 (ix), a
00466$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:237: bool can_steal = (b_dist_x <= 24 && b_dist_y <= 24);
	ld	a, -10 (ix)
	ld	-15 (ix), a
	ld	a, -9 (ix)
	ld	-14 (ix), a
	ld	a, #0x18
	cp	a, -15 (ix)
	ld	a, #0x00
	sbc	a, -14 (ix)
	jr	C, 00467$
	ld	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, #0x18
	cp	a, -10 (ix)
	ld	a, #0x00
	sbc	a, -9 (ix)
	jr	NC, 00468$
00467$:
	ld	-9 (ix), #0x00
	jp	00469$
00468$:
	ld	-9 (ix), #0x01
00469$:
	ld	c, -9 (ix)
	ld	-13 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:238: if (!can_steal && g_is_ball_carried && LastTouchPlayer != 0xFF && LastTouchTeam != carrier_team) {
	ld	a, c
	or	a, a
	jp	NZ, 00223$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00223$
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jr	Z, 00223$
	ld	a, (_LastTouchTeam+0)
	sub	a, -6 (ix)
	jr	Z, 00223$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:239: u16 c_dist_y = (Carrier->ly > SwSprite[LastTouchPlayer].ly) ? (Carrier->ly - SwSprite[LastTouchPlayer].ly) : (SwSprite[LastTouchPlayer].ly - Carrier->ly);
	ld	bc, (_LastTouchPlayer)
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
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	sub	a, -8 (ix)
	ld	a, -11 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00470$
	ld	a, -8 (ix)
	sub	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	sbc	a, -11 (ix)
	ld	-9 (ix), a
	jp	00471$
00470$:
	ld	a, -12 (ix)
	sub	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sbc	a, -7 (ix)
	ld	-9 (ix), a
00471$:
	ld	c, -10 (ix)
	ld	b, -9 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:240: if (b_dist_x <= 28 && c_dist_y <= 16) can_steal = TRUE;
	ld	a, #0x1c
	cp	a, -15 (ix)
	ld	a, #0x00
	sbc	a, -14 (ix)
	jr	C, 00223$
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00223$
	ld	-13 (ix), #0x01
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:243: bool is_immune_tackle = (Ball->count > 0 && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF);
	ld	bc, (#(_SwSprite + 343) + 0)
	ld	a, b
	or	a, c
	jr	Z, 00472$
	ld	a, (_LastTouchTeam+0)
	sub	a, -6 (ix)
	jr	Z, 00472$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00473$
00472$:
	ld	c, #0x00
	jp	00474$
00473$:
	ld	c, #0x01
00474$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:245: if (can_steal && Ball->anim < 5 && RestartType == 0 && !is_immune_tackle) {
	ld	a, -13 (ix)
	or	a, a
	jp	Z, 00391$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC, 00391$
	ld	a, (_RestartType+0)
	or	a,a
	jp	NZ,00391$
	or	a,c
	jp	NZ, 00391$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:246: if (LastTouchTeam != carrier_team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -6 (ix)
	jr	Z, 00228$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:247: Ball->count = 30; // Immunità aumentata
	ld	hl, #0x001e
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:248: g_pass_receiver = 0xFF; // Intercetto: disinnesca fuorigioco
	ld	iy, #_g_pass_receiver
	ld	0 (iy), #0xff
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:250: LastTouchTeam = carrier_team;
	ld	a, -6 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:251: LastTouchPlayer = carrier;
	ld	a, -34 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:252: if (Ball->anim > 3) Ball->anim = 3;
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00230$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00230$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:253: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:254: Carrier->count = 0; // Ferma la scivolata appena ruba palla
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00391$
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:257: if (Carrier->count >= 10) {
	ld	a, -8 (ix)
	ld	b, -7 (ix)
	sub	a, #0x0a
	ld	a, b
	sbc	a, #0x00
	jr	C, 00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:258: Carrier->frame = (Carrier->dx > 0) ? 
	ld	c, -29 (ix)
	ld	b, -28 (ix)
	ld	hl, #17
	add	hl, bc
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01802$
	xor	a, #0x80
01802$:
	jp	P, 00478$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:259: ((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_WEST : SPR_T2_PLAYER_TACKLE_FROM_WEST) :
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00480$
	ld	bc, #0x001e
	jp	00479$
00480$:
	ld	bc, #0x008e
	jp	00479$
00478$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:260: ((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_EAST : SPR_T2_PLAYER_TACKLE_FROM_EAST);
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00482$
	ld	bc, #0x001f
	jp	00483$
00482$:
	ld	bc, #0x008f
00483$:
00479$:
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00391$
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:262: Carrier->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, carrier, 0, (carrier_team == TEAM_1) ? 1 : -1);
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00484$
	ld	bc, #0x0001
	jp	00485$
00484$:
	ld	bc, #0xffff
00485$:
	ld	a, c
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	a, -34 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: continue; // Salta il resto dei comandi e dell'animazione
	jp	00391$
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:268: Carrier->dx = 0; Carrier->dy = 0;
	ld	a, -29 (ix)
	add	a, #0x11
	ld	-24 (ix), a
	ld	a, -28 (ix)
	adc	a, #0x00
	ld	-23 (ix), a
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x00
	ld	a, -29 (ix)
	add	a, #0x12
	ld	-22 (ix), a
	ld	a, -28 (ix)
	adc	a, #0x00
	ld	-21 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:269: switch(dir) {
	ld	a, #0x08
	sub	a, -7 (ix)
	jp	C, 00252$
	ld	c, -7 (ix)
	ld	b, #0x00
	ld	hl, #01803$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
01803$:
	jp	00252$
	jp	00244$
	jp	00245$
	jp	00246$
	jp	00247$
	jp	00248$
	jp	00249$
	jp	00250$
	jp	00251$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:270: case DIRECTION_UP: Carrier->dy = -2; break;
00244$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0xfe
	jp	00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:271: case DIRECTION_UP_RIGHT: Carrier->dy = -2; Carrier->dx = 2; break;
00245$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0xfe
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x02
	jp	00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:272: case DIRECTION_RIGHT: Carrier->dx = 2; break;
00246$:
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x02
	jp	00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:273: case DIRECTION_DOWN_RIGHT: Carrier->dy = 2; Carrier->dx = 2; break;
00247$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x02
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x02
	jp	00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:274: case DIRECTION_DOWN: Carrier->dy = 2; break;
00248$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x02
	jp	00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:275: case DIRECTION_DOWN_LEFT: Carrier->dy = 2; Carrier->dx = -2; break;
00249$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x02
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xfe
	jp	00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:276: case DIRECTION_LEFT: Carrier->dx = -2; break;
00250$:
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xfe
	jp	00252$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:277: case DIRECTION_UP_LEFT: Carrier->dy = -2; Carrier->dx = -2; break;
00251$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0xfe
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xfe
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:278: }
00252$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:281: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:222: Carrier->ly += Carrier->dy;
	ld	a, -29 (ix)
	add	a, #0x04
	ld	-20 (ix), a
	ld	a, -28 (ix)
	adc	a, #0x00
	ld	-19 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:281: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, -9 (ix)
	or	a, a
	jr	NZ, 00265$
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00266$
00265$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:282: g_last_dx[i] = Carrier->dx;
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:283: g_last_dy[i] = Carrier->dy;
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	-9 (ix), a
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:285: i16 next_x = (i16)Carrier->lx + Carrier->dx;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	ld	-12 (ix), a
	rlca
	sbc	a, a
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	add	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:286: if (next_x < 16) Carrier->lx = 16;
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sub	a, #0x10
	ld	a, -9 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00257$
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	(hl), #0x10
	jp	00258$
00257$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:287: else if (next_x > 224) Carrier->lx = 224;
	ld	a, #0xe0
	cp	a, -10 (ix)
	ld	a, #0x00
	sbc	a, -9 (ix)
	jp	PO, 01804$
	xor	a, #0x80
01804$:
	jp	P, 00254$
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	(hl), #0xe0
	jp	00258$
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:288: else Carrier->lx = (u8)next_x;
	ld	a, -8 (ix)
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	(hl), a
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:290: i16 next_y = (i16)Carrier->ly + Carrier->dy;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	ld	-12 (ix), a
	rlca
	sbc	a, a
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	add	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	adc	a, -11 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:291: if (next_y < 24) Carrier->ly = 24;
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sub	a, #0x18
	ld	a, -9 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00263$
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
	jp	00264$
00263$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:292: else if (next_y > 488) Carrier->ly = 488;
	ld	a, #0xe8
	cp	a, -10 (ix)
	ld	a, #0x01
	sbc	a, -9 (ix)
	jp	PO, 01805$
	xor	a, #0x80
01805$:
	jp	P, 00260$
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x01
	jp	00264$
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:293: else Carrier->ly = (u16)next_y;
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:295: Carrier->anim++;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:296: const u8 walk_seq[4] = {0, 1, 2, 1}; 
	ld	-40 (ix), #0x00
	ld	-39 (ix), #0x01
	ld	-38 (ix), #0x02
	ld	-37 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:297: Carrier->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ld	a, e
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	hl, #4
	add	hl, sp
	add	hl, bc
	ld	d, (hl)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	b, (hl)
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	e, b
	push	de
	push	af
	inc	sp
	ld	a, -34 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00267$
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:300: Carrier->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, carrier, g_last_dx[i], g_last_dy[i]);
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	b, (hl)
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	a, -34 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00267$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:304: u16 dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	e, (hl)
	ld	hl, #(_SwSprite + 322)
	ld	d, (hl)
	ld	c, e
	ld	b, #0x00
	ld	-8 (ix), d
	ld	-7 (ix), #0x00
	ld	a, d
	sub	a, e
	jr	NC, 00486$
	ld	a, c
	sub	a, -8 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -7 (ix)
	jp	00487$
00486$:
	ld	a, -8 (ix)
	sub	a, c
	ld	c, a
	ld	a, -7 (ix)
	sbc	a, b
00487$:
	ld	-18 (ix), c
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:305: u16 dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-16 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-15 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sub	a, -16 (ix)
	ld	a, -9 (ix)
	sbc	a, -15 (ix)
	jr	NC, 00488$
	ld	a, -16 (ix)
	sub	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -15 (ix)
	sbc	a, -9 (ix)
	ld	-7 (ix), a
	jp	00489$
00488$:
	ld	a, -10 (ix)
	sub	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sbc	a, -15 (ix)
	ld	-7 (ix), a
00489$:
	ld	a, -8 (ix)
	ld	-14 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:238: if (!can_steal && g_is_ball_carried && LastTouchPlayer != 0xFF && LastTouchTeam != carrier_team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -6 (ix)
	ld	a, #0x01
	jr	Z, 01807$
	xor	a, a
01807$:
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:309: u8 touch_dist = (LastTouchTeam == carrier_team || LastTouchTeam == 0xFF) ? 32 : (g_is_ball_carried ? 10 : 14); 
	bit	0, -12 (ix)
	jr	NZ, 00493$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00490$
00493$:
	ld	-7 (ix), #0x20
	ld	-6 (ix), #0
	jp	00491$
00490$:
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00495$
	ld	-7 (ix), #0x0a
	ld	-6 (ix), #0
	jp	00496$
00495$:
	ld	-7 (ix), #0x0e
	ld	-6 (ix), #0
00496$:
00491$:
	ld	a, -7 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:310: if (Ball->anim >= 6) touch_dist = 12; // I tiri potenti sfuggono facilmente al tackle
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0006
	cp	a, a
	sbc	hl, de
	jr	C, 00270$
	ld	-11 (ix), #0x0c
00270$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:312: bool is_immune = (Ball->count > 0 && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF);
	ld	hl, #(_SwSprite + 343)
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	or	a, -10 (ix)
	jr	Z, 00497$
	bit	0, -12 (ix)
	jr	NZ, 00497$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00498$
00497$:
	xor	a, a
	jp	00499$
00498$:
	ld	a, #0x01
00499$:
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:315: u16 eff_dist_y = dist_y;
	ld	e, -14 (ix)
	ld	d, -13 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:316: u8 touch_dist_y = touch_dist;
	ld	c, -11 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:317: if (g_is_ball_carried && LastTouchPlayer != 0xFF && LastTouchTeam != carrier_team && SwSprite[LastTouchPlayer].dy == 0) {
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00272$
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jr	Z, 00272$
	bit	0, -12 (ix)
	jr	NZ, 00272$
	push	de
	ld	de, (_LastTouchPlayer)
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
	ld	b, h
	ld	iy, #_SwSprite
	push	bc
	ld	c, l
	add	iy, bc
	pop	bc
	push	iy
	pop	hl
	push	bc
	ld	bc, #0x0012
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jr	NZ, 00272$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:318: touch_dist_y = 9;
	ld	c, #0x09
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:319: eff_dist_y = (Carrier->ly >= SwSprite[LastTouchPlayer].ly) ?
	ld	a, 4 (iy)
	ld	-7 (ix), a
	ld	a, 5 (iy)
	ld	-6 (ix), a
	ld	a, -16 (ix)
	sub	a, -7 (ix)
	ld	a, -15 (ix)
	sbc	a, -6 (ix)
	jr	C, 00503$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:320: (u16)(Carrier->ly - SwSprite[LastTouchPlayer].ly) :
	ld	a, -16 (ix)
	sub	a, -7 (ix)
	ld	e, a
	ld	a, -15 (ix)
	sbc	a, -6 (ix)
	jp	00504$
00503$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:321: (u16)(SwSprite[LastTouchPlayer].ly - Carrier->ly);
	ld	a, -7 (ix)
	sub	a, -16 (ix)
	ld	e, a
	ld	a, -6 (ix)
	sbc	a, -15 (ix)
00504$:
	ld	d, a
00272$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:326: bool actively_carried_by_opp = (g_is_ball_carried && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF);
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00505$
	bit	0, -12 (ix)
	jr	NZ, 00505$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00506$
00505$:
	xor	a, a
	jp	00507$
00506$:
	ld	a, #0x01
00507$:
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:329: if (dist_x <= touch_dist && eff_dist_y <= touch_dist_y && Ball->anim < 5 && !is_immune && RestartType == 0 && !actively_carried_by_opp) {
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -11 (ix)
	ld	h, #0x00
	sub	a, -18 (ix)
	ld	a, h
	sbc	a, -17 (ix)
	jp	C, 00384$
	ld	b, #0x00
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	C, 00384$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC, 00384$
	ld	a, -8 (ix)
	or	a, a
	jp	NZ, 00384$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00384$
	ld	a, -6 (ix)
	or	a, a
	jp	NZ, 00384$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:330: if (LastTouchTeam != carrier_team) {
	bit	0, -12 (ix)
	jr	NZ, 00279$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:331: Ball->count = 30; // Immunità aumentata
	ld	hl, #0x001e
	ld	((_SwSprite + 343)), hl
	jp	00280$
00279$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:332: } else if (LastTouchPlayer != carrier) {
	ld	a, (_LastTouchPlayer+0)
	sub	a, -34 (ix)
	jr	Z, 00280$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:333: Ball->count = 20; // Immunità alla ricezione del passaggio
	ld	hl, #0x0014
	ld	((_SwSprite + 343)), hl
00280$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:335: LastTouchTeam = (carrier < 7) ? TEAM_1 : TEAM_2;
	ld	a, -27 (ix)
	or	a, a
	jr	Z, 00511$
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00512$
00511$:
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
00512$:
	ld	a, -7 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:336: LastTouchPlayer = carrier;
	ld	a, -34 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:337: Ball->frame = SPR_BALL_SIZE_1; // Assicura che la palla sia a terra quando tra i piedi
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:338: g_pass_receiver = 0xFF; // Resetta il ricevitore adesso che ha palla
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:281: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	c, (hl)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:342: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, c
	or	a, a
	jr	NZ, 00281$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00282$
00281$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:343: c_dx = (Carrier->dx > 0) ? 1 : ((Carrier->dx < 0) ? -1 : 0);
	xor	a, a
	sub	a, c
	jp	PO, 01816$
	xor	a, #0x80
01816$:
	jp	P, 00513$
	ld	bc, #0x0001
	jp	00514$
00513$:
	bit	7, c
	jr	Z, 00515$
	ld	bc, #0xffff
	jp	00516$
00515$:
	ld	bc, #0x0000
00516$:
00514$:
	ld	-7 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:344: c_dy = (Carrier->dy > 0) ? 1 : ((Carrier->dy < 0) ? -1 : 0);
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01817$
	xor	a, #0x80
01817$:
	jp	P, 00517$
	ld	bc, #0x0001
	jp	00518$
00517$:
	bit	7, -6 (ix)
	jr	Z, 00519$
	ld	bc, #0xffff
	jp	00520$
00519$:
	ld	bc, #0x0000
00520$:
00518$:
	ld	-6 (ix), c
	jp	00283$
00282$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:347: c_dx = (g_last_dx[i] > 0) ? 1 : ((g_last_dx[i] < 0) ? -1 : 0);
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01818$
	xor	a, #0x80
01818$:
	jp	P, 00521$
	ld	bc, #0x0001
	jp	00522$
00521$:
	bit	7, c
	jr	Z, 00523$
	ld	bc, #0xffff
	jp	00524$
00523$:
	ld	bc, #0x0000
00524$:
00522$:
	ld	-7 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:348: c_dy = (g_last_dy[i] > 0) ? 1 : ((g_last_dy[i] < 0) ? -1 : 0);
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	h, a
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01819$
	xor	a, #0x80
01819$:
	jp	P, 00525$
	ld	bc, #0x0001
	jp	00526$
00525$:
	bit	7, c
	jr	Z, 00527$
	ld	bc, #0xffff
	jp	00528$
00527$:
	ld	bc, #0x0000
00528$:
00526$:
	ld	-6 (ix), c
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:350: receivers[i] = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, carrier, 0xFF, c_dx, c_dy);
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -6 (ix)
	push	af
	inc	sp
	ld	h, -7 (ix)
	ld	l, #0xff
	push	hl
	ld	a, -34 (ix)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x14
	call	_CallFnc_U16_P4B
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:353: bool action_taken = FALSE;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:354: if (trigger_pressed) {						
	ld	a, -31 (ix)
	or	a, a
	jp	Z, 00334$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:355: bool is_shooting = FALSE;
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:356: u8 dir = g_player_input[i].direction;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:360: if (i == 1 && Carrier->ly < 256 && Field.ly == 0) {
	ld	a, -30 (ix)
	or	a, a
	jr	Z, 00299$
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	sub	a, #0x01
	jr	NC, 00299$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, h
	or	a, l
	jr	NZ, 00299$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:361: if (dir == DIRECTION_UP || dir == DIRECTION_UP_LEFT || dir == DIRECTION_UP_RIGHT) {
	ld	a, -11 (ix)
	dec	a
	jr	Z, 00285$
	ld	a, -11 (ix)
	sub	a, #0x08
	jr	Z, 00285$
	ld	a, -11 (ix)
	sub	a, #0x02
	jr	NZ, 00300$
00285$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:362: is_shooting = TRUE;
	ld	-12 (ix), #0x01
	jp	00300$
00299$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:366: else if (i == 0 && GameMode == GAMEMODE_P1_VS_P2 && Carrier->ly > 256 && Field.ly == (FIELD_HEIGHT - 192)) {
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00300$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00300$
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	xor	a, a
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00300$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, l
	sub	a, #0x40
	jr	NZ, 00300$
	dec	h
	jr	NZ, 00300$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:367: if (dir == DIRECTION_DOWN || dir == DIRECTION_DOWN_LEFT || dir == DIRECTION_DOWN_RIGHT) {
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	Z, 00289$
	ld	a, -11 (ix)
	sub	a, #0x06
	jr	Z, 00289$
	ld	a, -11 (ix)
	sub	a, #0x04
	jr	NZ, 00300$
00289$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:368: is_shooting = TRUE;
	ld	-12 (ix), #0x01
00300$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:372: if (is_shooting) {
	ld	a, -12 (ix)
	or	a, a
	jp	Z, 00331$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:373: action_taken = TRUE;
	ld	-10 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:374: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:375: g_pass_receiver = 0xFF; 
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:377: g_pass_start_x = Carrier->lx;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:378: g_pass_start_y = Carrier->ly;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:380: g_pass_target_x = g_h_arrow_x; // Direzione della freccia
	ld	hl, (_g_h_arrow_x)
	ld	(_g_pass_target_x), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:381: g_pass_target_y = (i == 1) ? 16 : 496; // Dentro la porta
	ld	a, -30 (ix)
	or	a, a
	jr	Z, 00529$
	ld	de, #0x0010
	jp	00530$
00529$:
	ld	de, #0x01f0
00530$:
	ld	(_g_pass_target_y), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:383: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00531$
	ld	hl, #_g_pass_start_x
	ld	a, (_g_pass_target_x+0)
	sub	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (_g_pass_target_x+1)
	sbc	a, (hl)
	ld	-8 (ix), a
	jp	00532$
00531$:
	ld	hl, #_g_pass_target_x
	ld	a, (_g_pass_start_x+0)
	sub	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (_g_pass_start_x+1)
	sbc	a, (hl)
	ld	-8 (ix), a
00532$:
	ld	a, -9 (ix)
	ld	-14 (ix), a
	ld	a, -8 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:384: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00533$
	ld	hl, #_g_pass_start_y
	ld	a, (_g_pass_target_y+0)
	sub	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	sbc	a, (hl)
	ld	-8 (ix), a
	jp	00534$
00533$:
	ld	hl, #_g_pass_target_y
	ld	a, (_g_pass_start_y+0)
	sub	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	sbc	a, (hl)
	ld	-8 (ix), a
00534$:
	ld	a, -9 (ix)
	ld	-12 (ix), a
	ld	a, -8 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:386: g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente e veloce
	ld	a, -12 (ix)
	add	a, -14 (ix)
	ld	-9 (ix), a
	ld	a, -11 (ix)
	adc	a, -13 (ix)
	ld	-8 (ix), a
	srl	-8 (ix)
	rr	-9 (ix)
	srl	-8 (ix)
	rr	-9 (ix)
	srl	-8 (ix)
	rr	-9 (ix)
	ld	a, -9 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:387: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	(_g_pass_max_frames+0), a
	sub	a, #0x0a
	jr	NC, 00304$
	ld	hl, #_g_pass_max_frames
	ld	(hl), #0x0a
00304$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:388: if (g_pass_max_frames > 25) g_pass_max_frames = 25;
	ld	a, #0x19
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00306$
	ld	0 (iy), #0x19
00306$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:389: g_pass_max_height = 2; // Tiro rasoterra e limitato
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:391: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:392: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:393: PlaySCCEvent(DANGER_KICK_BIN_SEG, DANGER_KICK_BIN_SIZE);
	ld	hl, #0x0001
	push	hl
	ld	hl, #0x2e80
	push	hl
	ld	hl, #0x019a
	call	_PlaySCCEvent
	jp	00334$
00331$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:396: u8 receiver = receivers[i];
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:398: if (receiver != 0xFF) {
	ld	-17 (ix), a
	inc	a
	jp	Z,00334$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:400: bool is_offside = FALSE;
	ld	-16 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:305: u16 dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:404: if (SwSprite[receiver].ly < offside_line - 8 && SwSprite[receiver].ly < 256) is_offside = TRUE;
	ld	c, -17 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:417: g_pass_target_x = SwSprite[receiver].lx;
	ld	a, #<(_SwSprite)
	add	a, -9 (ix)
	ld	-13 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -8 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:404: if (SwSprite[receiver].ly < offside_line - 8 && SwSprite[receiver].ly < 256) is_offside = TRUE;
	ld	a, -13 (ix)
	add	a, #0x04
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:401: if (i == 1) { // Team 2 (P1)
	ld	a, -30 (ix)
	or	a, a
	jr	Z, 00318$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:402: u16 offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
	ld	bc, (#_SwSprite + 27)
	ld	de, (#_SwSprite + 50)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00535$
	ld	e, c
	ld	d, b
00535$:
	ld	-26 (ix), e
	ld	-25 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:403: if (Carrier->ly < offside_line) offside_line = Carrier->ly; // Regola linea palla
	ld	a, -15 (ix)
	sub	a, -26 (ix)
	ld	a, -14 (ix)
	sbc	a, -25 (ix)
	jr	NC, 00308$
	ld	a, -15 (ix)
	ld	-26 (ix), a
	ld	a, -14 (ix)
	ld	-25 (ix), a
00308$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:404: if (SwSprite[receiver].ly < offside_line - 8 && SwSprite[receiver].ly < 256) is_offside = TRUE;
	ld	a, -26 (ix)
	ld	-15 (ix), a
	ld	a, -25 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0xf8
	ld	-26 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-25 (ix), a
	ld	a, -9 (ix)
	sub	a, -26 (ix)
	ld	a, -8 (ix)
	sbc	a, -25 (ix)
	jr	NC, 00319$
	ld	a, -8 (ix)
	sub	a, #0x01
	jr	NC, 00319$
	ld	-16 (ix), #0x01
	jp	00319$
00318$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:406: u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	bc, (#_SwSprite + 188)
	ld	hl, #_SwSprite + 211
	ld	a, (hl)
	ld	-26 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-25 (ix), a
	ld	a, -26 (ix)
	sub	a, c
	ld	a, -25 (ix)
	sbc	a, b
	jr	NC, 00537$
	ld	-26 (ix), c
	ld	-25 (ix), b
00537$:
	ld	c, -26 (ix)
	ld	b, -25 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:407: if (Carrier->ly > offside_line) offside_line = Carrier->ly; // Regola linea palla
	ld	a, c
	sub	a, -15 (ix)
	ld	a, b
	sbc	a, -14 (ix)
	jr	NC, 00313$
	ld	c, -15 (ix)
	ld	b, -14 (ix)
00313$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:408: if (SwSprite[receiver].ly > offside_line + 8 && SwSprite[receiver].ly > 256) is_offside = TRUE;
	ld	hl, #0x0008
	add	hl, bc
	ld	a, l
	sub	a, -9 (ix)
	ld	a, h
	sbc	a, -8 (ix)
	jr	NC, 00319$
	xor	a, a
	cp	a, -9 (ix)
	ld	a, #0x01
	sbc	a, -8 (ix)
	jr	NC, 00319$
	ld	-16 (ix), #0x01
00319$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:412: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:414: g_pass_receiver = receiver | (is_offside ? 0x80 : 0);
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00539$
	ld	bc, #0x0080
	jp	00540$
00539$:
	ld	bc, #0x0000
00540$:
	ld	a, c
	or	a, -17 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:415: g_pass_start_x = Carrier->lx;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:416: g_pass_start_y = Carrier->ly;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:417: g_pass_target_x = SwSprite[receiver].lx;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	(_g_pass_target_x+0), a
	ld	iy, #_g_pass_target_x
	ld	1 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:418: g_pass_target_y = SwSprite[receiver].ly;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:420: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00541$
	ld	bc, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, bc
	jp	00542$
00541$:
	ld	bc, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
00542$:
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:421: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00543$
	ld	bc, (_g_pass_start_y)
	ld	hl, (_g_pass_target_y)
	cp	a, a
	sbc	hl, bc
	jp	00544$
00543$:
	ld	bc, (_g_pass_target_y)
	ld	hl, (_g_pass_start_y)
	cp	a, a
	sbc	hl, bc
00544$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:423: g_pass_max_frames = (r_dx + r_dy) / 6; // Velocità aumentata
	add	hl, de
	ld	c, l
	ld	b, h
	push	bc
	ld	de, #0x0006
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	pop	bc
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:424: if (g_pass_max_frames < 6) g_pass_max_frames = 6;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x06
	jr	NC, 00321$
	ld	0 (iy), #0x06
00321$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:425: if (g_pass_max_frames > 28) g_pass_max_frames = 28;
	ld	a, #0x1c
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00323$
	ld	0 (iy), #0x1c
00323$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:426: g_pass_max_height = (r_dx + r_dy) / 24; // Altezza proporzionale alla distanza
	ld	de, #0x0018
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	iy, #_g_pass_max_height
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:427: if (g_pass_max_height < 1) g_pass_max_height = 1;
	ld	a, (_g_pass_max_height+0)
	sub	a, #0x01
	jr	NC, 00325$
	ld	0 (iy), #0x01
00325$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:428: if (g_pass_max_height > 7) g_pass_max_height = 7;
	ld	a, #0x07
	ld	iy, #_g_pass_max_height
	sub	a, 0 (iy)
	jr	NC, 00327$
	ld	0 (iy), #0x07
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:430: Ball->anim = 5; // Flag per passaggio
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:431: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:432: action_taken = TRUE;
	ld	-10 (ix), #0x01
00334$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:437: if (!action_taken && (Ball->dx != c_dx || Ball->dy != c_dy)) {
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00367$
	ld	hl, #(_SwSprite + 339)
	ld	c, (hl)
	ld	a, -7 (ix)
	sub	a, c
	jr	NZ, 00366$
	ld	hl, #(_SwSprite + 340)
	ld	a,-6 (ix)
	sub	a,(hl)
	jp	Z,00367$
00366$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:440: bool is_180_turn = (Ball->dx == -c_dx && Ball->dy == -c_dy && (c_dx != 0 || c_dy != 0));
	ld	a, -7 (ix)
	ld	e, a
	rlca
	sbc	a, a
	ld	b, a
	xor	a, a
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, b
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
	cp	a, a
	sbc	hl, bc
	jr	NZ, 00545$
	ld	hl, #(_SwSprite + 340)
	ld	l, (hl)
;	spillPairReg hl
	ld	a, -6 (ix)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	ld	a, l
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, bc
	jr	NZ, 00545$
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00546$
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00546$
00545$:
	xor	a, a
	jp	00547$
00546$:
	ld	a, #0x01
00547$:
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:442: i8 off_x = 0; i8 off_y = 6;
	ld	-8 (ix), #0x00
	ld	-11 (ix), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:443: if (c_dx > 0) off_x = (c_dy > 0) ? 3 : 8; else if (c_dx < 0) off_x = (c_dy > 0) ? -3 : -8;
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01840$
	xor	a, #0x80
01840$:
	rlca
	and	a,#0x01
	ld	-10 (ix), a
	xor	a, a
	sub	a, -7 (ix)
	jp	PO, 01841$
	xor	a, #0x80
01841$:
	jp	P, 00338$
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00554$
	ld	-9 (ix), #0x03
	ld	-8 (ix), #0
	jp	00555$
00554$:
	ld	-9 (ix), #0x08
	ld	-8 (ix), #0
00555$:
	ld	a, -9 (ix)
	ld	-8 (ix), a
	jp	00339$
00338$:
	bit	7, -7 (ix)
	jr	Z, 00339$
	ld	a, -10 (ix)
	or	a, a
	ld	a, #0xfd
	jr	NZ, 00557$
	ld	a, #0xf8
00557$:
	ld	-8 (ix), a
00339$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:444: if (c_dy > 0) off_y = (c_dx != 0) ? 11 : 8; else if (c_dy < 0) off_y = -2;
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00343$
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00558$
	ld	-10 (ix), #0x0b
	ld	-9 (ix), #0
	jp	00559$
00558$:
	ld	-10 (ix), #0x08
	ld	-9 (ix), #0
00559$:
	ld	a, -10 (ix)
	ld	-11 (ix), a
	jp	00344$
00343$:
	bit	7, -6 (ix)
	jr	Z, 00344$
	ld	-11 (ix), #0xfe
00344$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:446: Ball->dx = c_dx;
	ld	hl, #(_SwSprite + 339)
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:447: Ball->dy = c_dy;
	ld	hl, #(_SwSprite + 340)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:449: i16 ideal_x = (i16)Carrier->lx + off_x;
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	ld	-14 (ix), a
	ld	-13 (ix), #0x00
	ld	a, -8 (ix)
	ld	-9 (ix), a
	rlca
	sbc	a, a
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, -14 (ix)
	ld	-16 (ix), a
	ld	a, -8 (ix)
	adc	a, -13 (ix)
	ld	-15 (ix), a
	ld	a, -16 (ix)
	ld	-9 (ix), a
	ld	a, -15 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:450: i16 ideal_y = (i16)Carrier->ly + off_y;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	ld	a, -11 (ix)
	ld	-16 (ix), a
	rlca
	sbc	a, a
	ld	-15 (ix), a
	ld	a, -14 (ix)
	ld	-11 (ix), a
	ld	a, -13 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	add	a, -16 (ix)
	ld	-14 (ix), a
	ld	a, -10 (ix)
	adc	a, -15 (ix)
	ld	-13 (ix), a
	ld	a, -14 (ix)
	ld	-11 (ix), a
	ld	a, -13 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:451: Ball->lx = (u8)(((i16)Ball->lx + ideal_x) / 2);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-16 (ix), a
	ld	-15 (ix), #0x00
	ld	a, -9 (ix)
	add	a, -16 (ix)
	ld	-14 (ix), a
	ld	a, -8 (ix)
	adc	a, -15 (ix)
	ld	-13 (ix), a
	ld	a, -14 (ix)
	ld	-9 (ix), a
	ld	a, -13 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-14 (ix), a
	ld	a, -8 (ix)
	ld	-13 (ix), a
	bit	7, -8 (ix)
	jr	Z, 00560$
	ld	a, -9 (ix)
	add	a, #0x01
	ld	-14 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
00560$:
	ld	a, -14 (ix)
	ld	-9 (ix), a
	ld	a, -13 (ix)
	ld	-8 (ix), a
	sra	-8 (ix)
	rr	-9 (ix)
	ld	a, -9 (ix)
	ld	-8 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:452: Ball->ly = (u16)(((i16)Ball->ly + ideal_y) / 2) & 511;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-14 (ix), a
	ld	a, -8 (ix)
	ld	-13 (ix), a
	ld	a, -11 (ix)
	add	a, -14 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, -13 (ix)
	ld	-8 (ix), a
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	bit	7, -8 (ix)
	jr	Z, 00561$
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	inc	de
00561$:
	sra	d
	rr	e
	ld	a, d
	and	a, #0x01
	ld	d, a
	ld	((_SwSprite + 326)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:454: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00345$
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00346$
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:455: Ball->anim = (c_dx != 0 && c_dy != 0) ? 1 : 2; // Tocco cortissimo in diagonale, normale in rettilineo
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00562$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00562$
	ld	de, #0x0001
	jp	00563$
00562$:
	ld	de, #0x0002
00563$:
	ld	((_SwSprite + 341)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:456: Ball->count = is_180_turn ? 0 : 12; // Nessuna immunità se torna indietro di 180 gradi
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00567$
	ld	bc, #0x0000
	jp	00568$
00567$:
	ld	bc, #0x000c
00568$:
	ld	((_SwSprite + 343)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:457: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00391$
00346$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:459: Ball->anim = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	jp	00391$
00367$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:461: } else if (!action_taken) {
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00391$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:464: if (Ball->anim == 0) {
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:465: i8 off_x = 0; i8 off_y = 6;
	or	a,l
	jp	NZ,00391$
	ld	c,a
	ld	-11 (ix), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:443: if (c_dx > 0) off_x = (c_dy > 0) ? 3 : 8; else if (c_dx < 0) off_x = (c_dy > 0) ? -3 : -8;
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01842$
	xor	a, #0x80
01842$:
	rlca
	and	a,#0x01
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:466: if (c_dx > 0) off_x = (c_dy > 0) ? 3 : 8; else if (c_dx < 0) off_x = (c_dy > 0) ? -3 : -8;
	xor	a, a
	sub	a, -7 (ix)
	jp	PO, 01843$
	xor	a, #0x80
01843$:
	jp	P, 00352$
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00569$
	ld	-9 (ix), #0x03
	ld	-8 (ix), #0
	jp	00570$
00569$:
	ld	-9 (ix), #0x08
	ld	-8 (ix), #0
00570$:
	ld	c, -9 (ix)
	jp	00353$
00352$:
	bit	7, -7 (ix)
	jr	Z, 00353$
	ld	a, -10 (ix)
	or	a, a
	ld	c, #0xfd
	jr	NZ, 00572$
	ld	c, #0xf8
00572$:
00353$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:467: if (c_dy > 0) off_y = (c_dx != 0) ? 11 : 8; else if (c_dy < 0) off_y = -2;
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00357$
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00573$
	ld	de, #0x000b
	jp	00574$
00573$:
	ld	de, #0x0008
00574$:
	ld	-11 (ix), e
	jp	00358$
00357$:
	bit	7, -6 (ix)
	jr	Z, 00358$
	ld	-11 (ix), #0xfe
00358$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:469: Ball->lx = (u8)((i16)Carrier->lx + off_x);
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	add	a, c
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:470: Ball->ly = (u16)((i16)Carrier->ly + off_y) & 511;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -11 (ix)
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
	ld	a, d
	and	a, #0x01
	ld	d, a
	ld	((_SwSprite + 326)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:471: Ball->dx = c_dx; Ball->dy = c_dy;
	ld	hl, #(_SwSprite + 339)
	ld	a, -7 (ix)
	ld	(hl), a
	ld	hl, #(_SwSprite + 340)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:472: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00359$
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00391$
00359$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:473: Ball->anim = (c_dx != 0 && c_dy != 0) ? 2 : 4; // Tocco corto in diagonale, lungo in rettilineo
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00575$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00575$
	ld	bc, #0x0002
	jp	00576$
00575$:
	ld	bc, #0x0004
00576$:
	ld	((_SwSprite + 341)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:474: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00391$
00384$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:480: if (trigger_pressed && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF && Carrier->count == 0 && RestartType == 0 && Ball->count == 0) {
	ld	a, -31 (ix)
	or	a, a
	jp	Z, 00391$
	bit	0, -12 (ix)
	jp	NZ, 00391$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jp	Z,00391$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	or	a, c
	jr	NZ, 00391$
	ld	a, (_RestartType+0)
	or	a, a
	jr	NZ, 00391$
	ld	a, -9 (ix)
	or	a, -10 (ix)
	jr	NZ, 00391$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:481: bool opponent_has_ball = (g_is_ball_carried && LastTouchTeam != carrier_team);
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00580$
	bit	0, -12 (ix)
	jr	Z, 00581$
00580$:
	ld	e, #0x00
	jp	00582$
00581$:
	ld	e, #0x01
00582$:
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:483: if (opponent_has_ball) {
	or	a, a
	jr	Z, 00391$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:484: if (dist_x <= 32 && dist_y <= 16) {
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	ld	a, #0x20
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00391$
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00391$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:486: Carrier->count = 30; // Scivolata + Cooldown per penalità miss
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x1e
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:487: Carrier->dx = (Ball->lx > Carrier->lx) ? 4 : -4;
	ld	c, -24 (ix)
	ld	b, -23 (ix)
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	a, (hl)
	sub	a, e
	jr	NC, 00583$
	ld	de, #0x0004
	jp	00584$
00583$:
	ld	de, #0xfffc
00584$:
	ld	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:488: Carrier->dy = 0; // Movimento rigorosamente orizzontale
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x00
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:202: for (u8 i = 0; i < 2; i++) { // i=0 per Team 1 (P2/CPU), i=1 per Team 2 (P1)
	inc	-1 (ix)
	jp	00407$
00392$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:496: for (u8 i = 0; i < 14; i++) {
	ld	b, #0x00
00409$:
	ld	a, b
	sub	a, #0x0e
	jr	NC, 00393$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:497: CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
	push	bc
	push	bc
	inc	sp
	ld	de, #_PlayerAI
	ld	a, #0x06
	call	_CallFnc_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:496: for (u8 i = 0; i < 14; i++) {
	inc	b
	jp	00409$
00393$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:501: CallFnc_VOID(SEG_GAMESTATE_8, UpdateReferee);
	ld	de, #_UpdateReferee
	ld	a, #0x12
	call	_CallFnc_VOID
	jp	00411$
00395$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:503: SwSprite[24].ly = 1000; // Nascondimento assoluto
	ld	hl, #0x03e8
	ld	((_SwSprite + 556)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:504: SwSprite[25].ly = 1000; // Nascondimento assoluto
	ld	((_SwSprite + 579)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:505: CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_3, UpdateGameState_Restarts, game_state, wait_secs, start_sec, target_ly);
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
	ld	de, #_UpdateGameState_Restarts
	ld	a, #0x0c
	call	_CallFnc_VOID_3PTR_U16
00411$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:507: }
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
	.area _SEG9
	.area _INITIALIZER
	.area _CABS (ABS)
