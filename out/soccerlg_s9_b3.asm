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
	.globl _EventHalfTime
	.globl _EventBallKicked
	.globl _FindReceiver
	.globl _SetBallSprite
	.globl _PlayerAI
	.globl _HideSpriteMessage
	.globl _ShowSpriteMessage
	.globl _RemoveSwSprite
	.globl _CallFnc_U16_P4B
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
	.globl _CallFnc_VOID_16_P1
	.globl _CallFnc_VOID_3PTR_U16
	.globl _CallFnc_VOID_3PTR
	.globl _CallFnc_VOID_U8U16U16
	.globl _CallFnc_VOID_P1
	.globl _CallFnc_VOID
	.globl _CallSpriteFrame
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:11: void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
;	---------------------------------
; Function UpdateGameState
; ---------------------------------
_UpdateGameState::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-47
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:13: if (*game_state < 3) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	sub	a, #0x03
	jr	NC, 00403$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:14: CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_4, UpdateGameState_Init, game_state, wait_secs, start_sec, target_ly);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:16: SwSprite[37].lx = PENALTY_DISH_X; SwSprite[37].ly = PENALTY_SOUTH_Y; SwSprite[37].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 851)
	ld	(hl), #0x78
	ld	hl, #0x01b2
	ld	((_SwSprite + 855)), hl
	ld	hl, #0x006d
	ld	((_SwSprite + 866)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:17: SwSprite[38].lx = PENALTY_DISH_X; SwSprite[38].ly = PENALTY_NORTH_Y; SwSprite[38].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 874)
	ld	(hl), #0x78
	ld	hl, #0x004a
	ld	((_SwSprite + 878)), hl
	ld	l, #0x6d
	ld	((_SwSprite + 889)), hl
	jp	00418$
00403$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:18: } else if (*game_state == 3) {
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NZ,00400$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:20: if (Mins == 0 && Secs == 0) {
	ld	a, (_Mins+0)
	or	a, a
	jr	NZ, 00107$
	ld	a, (_Secs+0)
	or	a, a
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:21: if (Half == 1) {
	ld	a, (_Half+0)
	dec	a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:22: *game_state = 4;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:23: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:24: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:25: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_HALFTIME);
	ld	hl, #0x0144
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:26: CallFnc_VOID(SEG_EVENTS, EventHalfTime);
	ld	de, #_EventHalfTime
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00418$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:27: } else if (Half == 2) {
	ld	a, (_Half+0)
	sub	a, #0x02
	jp	NZ,00418$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:28: *game_state = 5;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:29: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:30: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:31: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_TIMEUP);
	ld	hl, #0x0140
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:33: return;
	jp	00418$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:37: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jr	Z, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:38: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	ld	hl, #_Frms
	ld	a, c
	sub	a, (hl)
	jr	NC, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:39: (*wait_secs)--;
	dec	-1 (ix)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:40: if (*wait_secs == 0) {
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:41: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:42: TimerEnabled = TRUE; // Avvia il cronometro alla sparizione della scritta
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:45: *start_sec = Frms;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:47: return; // Ferma l'IA e il gioco finché la scritta non sparisce
	jp	00418$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:51: CallFnc_VOID(SEG_FIELD, UpdateFieldCamera);
	ld	de, #_UpdateFieldCamera
	ld	a, #0x0a
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:52: CallFnc_VOID_3PTR(SEG_FIELD, CheckFieldBoundaries, game_state, wait_secs, start_sec);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:55: g_h_arrow_x += g_h_arrow_dir;
	ld	a, (_g_h_arrow_dir+0)
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	hl, (_g_h_arrow_x)
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, -10 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:56: if (g_h_arrow_x < 80) { g_h_arrow_x = 80; g_h_arrow_dir = 1; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:57: else if (g_h_arrow_x > 162) { g_h_arrow_x = 162; g_h_arrow_dir = -1; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:61: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:62: SwSprite[24].lx = (u8)g_h_arrow_x;
	ld	bc, #_SwSprite + 552
	ld	a, (_g_h_arrow_x+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:63: SwSprite[24].ly = 440; 
	ld	hl, #0x01b8
	ld	((_SwSprite + 556)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:64: SwSprite[24].frame = SPR_BIG_ARROW_BOTTOM;
	ld	hl, #0x006b
	ld	((_SwSprite + 567)), hl
	jp	00122$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:66: SwSprite[24].ly = 1000; // Nascondimento assoluto
	ld	hl, #0x03e8
	ld	((_SwSprite + 556)), hl
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:69: SwSprite[25].lx = (u8)g_h_arrow_x; SwSprite[25].ly = 50; SwSprite[25].frame = SPR_BIG_ARROW_TOP;
	ld	bc, #_SwSprite + 575
	ld	a, (_g_h_arrow_x+0)
	ld	(bc), a
	ld	hl, #0x0032
	ld	((_SwSprite + 579)), hl
	ld	l, #0x6c
	ld	((_SwSprite + 590)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:72: SwSprite[37].lx = PENALTY_DISH_X; SwSprite[37].ly = PENALTY_SOUTH_Y; SwSprite[37].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 851)
	ld	(hl), #0x78
	ld	hl, #0x01b2
	ld	((_SwSprite + 855)), hl
	ld	hl, #0x006d
	ld	((_SwSprite + 866)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:73: SwSprite[38].lx = PENALTY_DISH_X; SwSprite[38].ly = PENALTY_NORTH_Y; SwSprite[38].frame = SPR_BIG_PENALTY_DISH;
	ld	hl, #(_SwSprite + 874)
	ld	(hl), #0x78
	ld	hl, #0x004a
	ld	((_SwSprite + 878)), hl
	ld	l, #0x6d
	ld	((_SwSprite + 889)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:77: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:79: u8 closest_t1 = 1; u16 min_dist_t1 = 0xFFFF;
	ld	-19 (ix), #0x01
	ld	-18 (ix), #0xff
	ld	-17 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:80: u8 closest_t2 = 8; u16 min_dist_t2 = 0xFFFF;
	ld	-16 (ix), #0x08
	ld	-15 (ix), #0xff
	ld	-14 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:82: for (u8 i = 1; i < 7; i++) { 
	ld	-1 (ix), #0x01
00406$:
	ld	a, -1 (ix)
	sub	a, #0x07
	jp	NC, 00130$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:83: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:84: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00420$
	ld	a, d
	jp	00421$
00420$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00421$:
	ld	-11 (ix), e
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:85: u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:86: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
	ld	-8 (ix), a
	sub	a, #0x01
	jr	NC, 00422$
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	jp	00423$
00422$:
	xor	a, a
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #0x02
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00423$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:87: u16 dist = dist_x + dist_y;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	add	hl, bc
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:88: if (LastTouchTeam == TEAM_1 && i == LastTouchPlayer && Ball->anim < 5 && g_is_ball_carried) dist = 0; // Forza il focus sul portatore (solo se ha davvero palla ai piedi)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:89: if (dist < min_dist_t1) { min_dist_t1 = dist; closest_t1 = i; }
	ld	a, e
	sub	a, -18 (ix)
	ld	a, d
	sbc	a, -17 (ix)
	jr	NC, 00407$
	ld	-18 (ix), e
	ld	-17 (ix), d
	ld	a, -1 (ix)
	ld	-19 (ix), a
00407$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:82: for (u8 i = 1; i < 7; i++) { 
	inc	-1 (ix)
	jp	00406$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:91: for (u8 i = 8; i < 14; i++) {
	ld	c, #0x08
00409$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:97: if (LastTouchTeam == TEAM_2 && i == LastTouchPlayer && Ball->anim < 5 && g_is_ball_carried) dist = 0; // Forza il focus sul portatore (solo se ha davvero palla ai piedi)
	ld	a, (_LastTouchTeam+0)
	dec	a
	ld	a, #0x01
	jr	Z, 01710$
	xor	a, a
01710$:
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:91: for (u8 i = 8; i < 14; i++) {
	ld	a, c
	sub	a, #0x0e
	jp	NC, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:92: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:93: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00424$
	ld	a, d
	jp	00425$
00424$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00425$:
	ld	-7 (ix), e
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:94: u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:95: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
;	spillPairReg hl
;	spillPairReg hl
	ld	d, a
	sub	a, #0x01
	jr	C, 00427$
	ld	hl, #0x0200
	cp	a, a
	sbc	hl, de
	ex	de, hl
00427$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:96: u16 dist = dist_x + dist_y;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:97: if (LastTouchTeam == TEAM_2 && i == LastTouchPlayer && Ball->anim < 5 && g_is_ball_carried) dist = 0; // Forza il focus sul portatore (solo se ha davvero palla ai piedi)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:98: if (dist < min_dist_t2) { min_dist_t2 = dist; closest_t2 = i; }
	ld	a, e
	sub	a, -15 (ix)
	ld	a, d
	sbc	a, -14 (ix)
	jr	NC, 00410$
	ld	-15 (ix), e
	ld	-14 (ix), d
	ld	-16 (ix), c
00410$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:91: for (u8 i = 8; i < 14; i++) {
	inc	c
	jp	00409$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:101: g_closest_t1 = closest_t1;
	ld	a, -19 (ix)
	ld	(_g_closest_t1+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:102: g_closest_t2 = closest_t2;
	ld	a, -16 (ix)
	ld	(_g_closest_t2+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:105: bool t1_switched = FALSE;
	ld	-39 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:106: bool t2_switched = FALSE;
	ld	-38 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:109: if (LastTouchTeam == TEAM_2 || LastTouchTeam == 0xFF || T2_Carrier == 0xFF) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:110: T2_Carrier = closest_t2;
	ld	a, -16 (ix)
	ld	(_T2_Carrier+0), a
	jp	00147$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:111: } else if (g_player_input[1].trigger_pressed) {
	ld	a, (#(_g_player_input + 4) + 0)
	ld	-1 (ix), a
	or	a, a
	jp	Z, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:112: u16 b_dist_x = (SwSprite[T2_Carrier].lx > Ball->lx) ? (SwSprite[T2_Carrier].lx - Ball->lx) : (Ball->lx - SwSprite[T2_Carrier].lx);
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
	jr	NC, 00428$
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	-21 (ix), a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	-20 (ix), a
	jp	00429$
00428$:
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	-21 (ix), a
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	ld	-20 (ix), a
00429$:
	ld	a, -21 (ix)
	ld	-7 (ix), a
	ld	a, -20 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:113: u16 b_dist_y = (SwSprite[T2_Carrier].ly > Ball->ly) ? (SwSprite[T2_Carrier].ly - Ball->ly) : (Ball->ly - SwSprite[T2_Carrier].ly);
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
	jr	NC, 00430$
	ld	a, -21 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -20 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	jp	00431$
00430$:
	ld	a, -11 (ix)
	sub	a, -21 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sbc	a, -20 (ix)
	ld	-8 (ix), a
00431$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:114: if ((b_dist_x > 48 || b_dist_y > 24) && closest_t2 != T2_Carrier) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:115: T2_Carrier = closest_t2; // Cambio manuale del giocatore in difesa!
	ld	a, -16 (ix)
	ld	(_T2_Carrier+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:116: t2_switched = TRUE;
	ld	-38 (ix), #0x01
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:120: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jp	NZ,00162$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:121: if (LastTouchTeam == TEAM_1 || LastTouchTeam == 0xFF || T1_Carrier == 0xFF) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:122: T1_Carrier = closest_t1;
	ld	a, -19 (ix)
	ld	(_T1_Carrier+0), a
	jp	00163$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:123: } else if (g_player_input[0].trigger_pressed) {
	ld	a, (#(_g_player_input + 1) + 0)
	ld	-1 (ix), a
	or	a, a
	jp	Z, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:124: u16 b_dist_x = (SwSprite[T1_Carrier].lx > Ball->lx) ? (SwSprite[T1_Carrier].lx - Ball->lx) : (Ball->lx - SwSprite[T1_Carrier].lx);
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
	jr	NC, 00432$
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	-21 (ix), a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	-20 (ix), a
	jp	00433$
00432$:
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	-21 (ix), a
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	ld	-20 (ix), a
00433$:
	ld	a, -21 (ix)
	ld	-7 (ix), a
	ld	a, -20 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:125: u16 b_dist_y = (SwSprite[T1_Carrier].ly > Ball->ly) ? (SwSprite[T1_Carrier].ly - Ball->ly) : (Ball->ly - SwSprite[T1_Carrier].ly);
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
	jr	NC, 00434$
	ld	a, -21 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -20 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	jp	00435$
00434$:
	ld	a, -11 (ix)
	sub	a, -21 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sbc	a, -20 (ix)
	ld	-8 (ix), a
00435$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:126: if ((b_dist_x > 48 || b_dist_y > 24) && closest_t1 != T1_Carrier) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:127: T1_Carrier = closest_t1; // Cambio manuale del giocatore in difesa!
	ld	a, -19 (ix)
	ld	(_T1_Carrier+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:128: t1_switched = TRUE;
	ld	-39 (ix), #0x01
	jp	00163$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:132: T1_Carrier = 0xFF;
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:137: if (min_dist_t2 <= 24 && (LastTouchTeam == TEAM_2 || LastTouchTeam == 0xFF)) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:138: if (T2_Receiver == 0xFF || (Frms % 8) == 0) // Throttle: evita il cambio repentino di destinatario
	ld	a, (_T2_Receiver+0)
	inc	a
	jr	Z, 00164$
	ld	a, (_Frms+0)
	and	a, #0x07
	jr	NZ, 00169$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:139: T2_Receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, T2_Carrier, 0xFF, g_last_dx[1], g_last_dy[1]);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:140: } else T2_Receiver = 0xFF;
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:142: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00181$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:143: if (min_dist_t1 <= 24 && (LastTouchTeam == TEAM_1 || LastTouchTeam == 0xFF)) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:144: if (T1_Receiver == 0xFF || (Frms % 8) == 0) // Throttle: evita il cambio repentino di destinatario
	ld	a, (_T1_Receiver+0)
	inc	a
	jr	Z, 00172$
	ld	a, (_Frms+0)
	and	a, #0x07
	jr	NZ, 00181$
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:145: T1_Receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, T1_Carrier, 0xFF, g_last_dx[0], g_last_dy[0]);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:146: } else T1_Receiver = 0xFF;
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:152: u8 gks[2] = {0, 7};
	ld	-45 (ix), #0x00
	ld	-44 (ix), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:153: for (u8 g = 0; g < 2; g++) {
	ld	-1 (ix), #0x00
00412$:
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NC, 00195$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:154: u8 gk_idx = gks[g];
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:157: if (LastTouchPlayer == gk_idx) continue;
	ld	a, (_LastTouchPlayer+0)
	sub	a, -16 (ix)
	jp	Z,00194$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:159: u16 dist_x = (SwSprite[gk_idx].lx > Ball->lx) ? (SwSprite[gk_idx].lx - Ball->lx) : (Ball->lx - SwSprite[gk_idx].lx);
	ld	c, -16 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:170: if (Ball->lx < SwSprite[gk_idx].lx) {
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, (hl)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:159: u16 dist_x = (SwSprite[gk_idx].lx > Ball->lx) ? (SwSprite[gk_idx].lx - Ball->lx) : (Ball->lx - SwSprite[gk_idx].lx);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -12 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -12 (ix)
	sub	a, -13 (ix)
	jr	NC, 00436$
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	jp	00437$
00436$:
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	ld	-6 (ix), a
00437$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:160: u16 dist_y = (SwSprite[gk_idx].ly > Ball->ly) ? (SwSprite[gk_idx].ly - Ball->ly) : (Ball->ly - SwSprite[gk_idx].ly);
	ld	a, -15 (ix)
	add	a, #0x04
	ld	-9 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00438$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	jp	00439$
00438$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
00439$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:162: if (dist_x <= 16 && dist_y <= 16) { // Area di presa (16 px)
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, #0x10
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	C, 00194$
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C, 00194$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:163: if(g_is_penalty_shootout) {
	ld	a, (_g_is_penalty_shootout+0)
	or	a, a
	jr	Z, 00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:164: RestartType = RESTART_GKSAVE; // Segnala la parata per lo stato 15
	ld	iy, #_RestartType
	ld	0 (iy), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:165: Ball->anim = 0; // Ferma la palla
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:166: return;
	jp	00418$
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:169: if (dist_x >= 6) {
	ld	a, e
	sub	a, #0x06
	ld	a, d
	sbc	a, #0x00
	jp	C, 00190$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:171: SwSprite[gk_idx].lx = Ball->lx + 8;
	ld	a, -12 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:172: SwSprite[gk_idx].frame = (gk_idx == 0) ? SPR_GK_PLAYER_DOWN_WEST_NORTH : SPR_GK_PLAYER_DOWN_WEST_SOUTH;
	ld	a, -15 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:170: if (Ball->lx < SwSprite[gk_idx].lx) {
	ld	a, -12 (ix)
	sub	a, -13 (ix)
	jr	NC, 00187$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:171: SwSprite[gk_idx].lx = Ball->lx + 8;
	ld	a, -1 (ix)
	add	a, #0x08
	ld	-1 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:172: SwSprite[gk_idx].frame = (gk_idx == 0) ? SPR_GK_PLAYER_DOWN_WEST_NORTH : SPR_GK_PLAYER_DOWN_WEST_SOUTH;
	ld	a, -16 (ix)
	or	a, a
	jr	NZ, 00440$
	ld	-11 (ix), #0xee
	ld	-10 (ix), #0
	jp	00441$
00440$:
	ld	-11 (ix), #0xf8
	ld	-10 (ix), #0
00441$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
	jp	00188$
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:174: SwSprite[gk_idx].lx = Ball->lx - 8;
	ld	a, -1 (ix)
	add	a, #0xf8
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:175: SwSprite[gk_idx].frame = (gk_idx == 0) ? SPR_GK_PLAYER_DOWN_EAST_NORTH : SPR_GK_PLAYER_DOWN_EAST_SOUTH;
	ld	a, -16 (ix)
	or	a, a
	jr	NZ, 00442$
	ld	bc, #0x00ef
	jp	00443$
00442$:
	ld	bc, #0x00e2
00443$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:179: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[gk_idx].x0, SwSprite[gk_idx].y0, 0);
	ld	a, -15 (ix)
	add	a, #0x06
	ld	-21 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-20 (ix), a
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	inc	bc
	ld	a, (bc)
	push	bc
	ld	hl, #0x0000
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:180: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[gk_idx].x1, SwSprite[gk_idx].y1, 256);
	ld	a, -15 (ix)
	add	a, #0x08
	ld	-19 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -15 (ix)
	add	a, #0x02
	ld	-17 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	push	bc
	ld	hl, #0x0100
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:181: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[gk_idx].x2, SwSprite[gk_idx].y2, 512);
	ld	a, -15 (ix)
	add	a, #0x0a
	ld	-13 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -15 (ix)
	add	a, #0x03
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	push	bc
	ld	hl, #0x0200
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:182: CallSpriteFrame(SwSprite[gk_idx].lx, (SwSprite[gk_idx].ly & 255) + 0,   SwSprite[gk_idx].frame);
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	spillPairReg hl
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, l
	call	_CallSpriteFrame
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:183: CallSpriteFrame(SwSprite[gk_idx].lx, (SwSprite[gk_idx].ly & 255) + 256, SwSprite[gk_idx].frame);
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;	spillPairReg hl
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	inc	a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, l
	call	_CallSpriteFrame
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:184: CallSpriteFrame(SwSprite[gk_idx].lx, (SwSprite[gk_idx].ly & 255) + 512, SwSprite[gk_idx].frame);
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x02
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, l
	call	_CallSpriteFrame
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:185: SwSprite[gk_idx].x0 = SwSprite[gk_idx].x1 = SwSprite[gk_idx].x2 = SwSprite[gk_idx].lx;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:186: SwSprite[gk_idx].y0 = SwSprite[gk_idx].y1 = SwSprite[gk_idx].y2 = SwSprite[gk_idx].ly;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:189: *game_state = 6; // Ferma il gioco per preparare il rinvio
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:190: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:191: RestartType = RESTART_GKSAVE;
	ld	hl, #_RestartType
	ld	(hl), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:192: RestartSideX = SwSprite[gk_idx].lx;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	(_RestartSideX+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:193: RestartSideY = SwSprite[gk_idx].ly;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_RestartSideY+0), a
	ld	a, (hl)
	ld	(_RestartSideY+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:194: Ball->anim = Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:195: Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
	ld	l, #0x60
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:196: Ball->lx = SwSprite[gk_idx].lx; // Teletrasporta la palla sulle braccia del portiere
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:197: Ball->ly = SwSprite[gk_idx].ly;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	((_SwSprite + 326)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:198: T1_Carrier = T2_Carrier = 0xFF;
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:199: TimerEnabled = FALSE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:200: *wait_secs = 1; *start_sec = 0; // start_sec=0: la pausa scade al frame successivo (nessun freeze)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x01
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	xor	a, a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:201: return; // Esci dall'update per avviare la routine di pausa e ripresa
	jp	00418$
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:153: for (u8 g = 0; g < 2; g++) {
	inc	-1 (ix)
	jp	00412$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:206: CallFnc_VOID(SEG_GAMESTATE_8, UpdateBallPhysics);
	ld	de, #_UpdateBallPhysics
	ld	a, #0x12
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:209: if ((g_pass_receiver & 0x80) && Ball->anim < 5) {
	ld	a, (_g_pass_receiver+0)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:194: Ball->anim = Ball->dx = Ball->dy = 0;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:209: if ((g_pass_receiver & 0x80) && Ball->anim < 5) {
	bit	7, c
	jp	Z,00204$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC, 00204$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:210: u8 rec = g_pass_receiver & 0x7F;
	res	7, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:211: u8 pass_team = (rec < 7) ? TEAM_1 : TEAM_2;
	ld	a, c
	sub	a, #0x07
	jr	NC, 00444$
	ld	de, #0x0000
	jp	00445$
00444$:
	ld	de, #0x0001
00445$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:213: if (LastTouchTeam != 0xFF && LastTouchTeam != pass_team) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	Z, 00200$
	ld	a, (_LastTouchTeam+0)
	sub	a, e
	jr	Z, 00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:214: g_pass_receiver = 0xFF; // Intercettata dagli avversari
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
	jp	00204$
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:216: u16 dist_x = (SwSprite[rec].lx > Ball->lx) ? (SwSprite[rec].lx - Ball->lx) : (Ball->lx - SwSprite[rec].lx);
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
	ld	c, a
	ld	hl, #(_SwSprite + 322)
	ld	b, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	-9 (ix), b
	ld	-8 (ix), #0x00
	ld	a, b
	sub	a, c
	jr	NC, 00446$
	ld	a, l
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, h
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	jp	00447$
00446$:
	ld	a, -9 (ix)
	sub	a, l
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, h
	ld	-6 (ix), a
00447$:
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:217: u16 dist_y = (SwSprite[rec].ly > Ball->ly) ? (SwSprite[rec].ly - Ball->ly) : (Ball->ly - SwSprite[rec].ly);
	ld	hl, #0x0004
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	bc, (#(_SwSprite + 326) + 0)
	ld	a, c
	sub	a, -7 (ix)
	ld	a, b
	sbc	a, -6 (ix)
	jr	NC, 00448$
	ld	a, -7 (ix)
	sub	a, c
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, b
	jp	00449$
00448$:
	ld	a, c
	sub	a, -7 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -6 (ix)
00449$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:220: if (dist_x <= 20 && dist_y <= 20) {
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x14
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	C, 00204$
	ld	a, #0x14
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00204$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:221: *game_state = 6; 
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:222: RestartType = RESTART_OFFSIDE; 
	ld	hl, #_RestartType
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:223: RestartSideX = SwSprite[rec].lx; 
	ld	a, (de)
	ld	(_RestartSideX+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:224: RestartSideY = SwSprite[rec].ly;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_RestartSideY+0), a
	ld	a, (hl)
	ld	(_RestartSideY+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:225: CallFnc_VOID(SEG_EVENTS, EventOffside);
	ld	de, #_EventOffside
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:226: Ball->anim = Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:227: Ball->frame = SPR_BALL_SIZE_1; 
	ld	l, #0x60
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:228: T1_Carrier = T2_Carrier = 0xFF;
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:229: g_pass_receiver = 0xFF; 
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:230: TimerEnabled = FALSE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:231: *wait_secs = 2; *start_sec = Frms;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:232: return; // Interrompe il frame e passa allo stato restart
	jp	00418$
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:237: g_is_ball_carried = FALSE;
	ld	iy, #_g_is_ball_carried
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:238: if (LastTouchPlayer != 0xFF && Ball->anim < 5) {
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jp	Z,00210$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC, 00210$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:239: u16 c_dist_x = (SwSprite[LastTouchPlayer].lx > Ball->lx) ? (SwSprite[LastTouchPlayer].lx - Ball->lx) : (Ball->lx - SwSprite[LastTouchPlayer].lx);
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
	jr	NC, 00450$
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	jp	00451$
00450$:
	ld	a, l
	sub	a, c
	ld	c, a
	ld	a, h
	sbc	a, b
	ld	b, a
00451$:
	ld	-7 (ix), c
	ld	-6 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:240: u16 c_dist_y = (SwSprite[LastTouchPlayer].ly > Ball->ly) ? (SwSprite[LastTouchPlayer].ly - Ball->ly) : (Ball->ly - SwSprite[LastTouchPlayer].ly);
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
	jr	NC, 00452$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	jp	00453$
00452$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
00453$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:241: if (c_dist_x <= 24 && c_dist_y <= 24) g_is_ball_carried = TRUE;
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, #0x18
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	C, 00210$
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00210$
	ld	iy, #_g_is_ball_carried
	ld	0 (iy), #0x01
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:245: u8 carriers[2] = {T1_Carrier, T2_Carrier};
	ld	a, (_T1_Carrier+0)
	ld	-43 (ix), a
	ld	a, (_T2_Carrier+0)
	ld	-42 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:246: u8 receivers[2] = {T1_Receiver, T2_Receiver};
	ld	a, (_T1_Receiver+0)
	ld	-41 (ix), a
	ld	a, (_T2_Receiver+0)
	ld	-40 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:248: for (u8 i = 0; i < 2; i++) { // i=0 per Team 1 (P2/CPU), i=1 per Team 2 (P1)
	ld	-1 (ix), #0x00
00414$:
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NC, 00397$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:249: u8 carrier = carriers[i];
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #4
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:250: if (carrier == 0xFF) continue;
	ld	-37 (ix), a
	inc	a
	jp	Z,00396$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:252: u8 dir = g_player_input[i].direction;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	de, #_g_player_input
	add	hl, de
	ld	-36 (ix), l
	ld	-35 (ix), h
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:253: bool trigger_pressed = g_player_input[i].trigger_pressed;
	ld	c, -36 (ix)
	ld	b, -35 (ix)
	inc	bc
	ld	a, (bc)
	ld	-34 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:256: if (i == 0 && t1_switched) trigger_pressed = FALSE;
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00215$
	ld	a, -39 (ix)
	or	a, a
	jr	Z, 00215$
	ld	-34 (ix), #0x00
00215$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:257: if (i == 1 && t2_switched) trigger_pressed = FALSE;
	ld	a, -1 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01742$
	xor	a, a
01742$:
	ld	-33 (ix), a
	or	a, a
	jr	Z, 00218$
	ld	a, -38 (ix)
	or	a, a
	jr	Z, 00218$
	ld	-34 (ix), #0x00
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:259: struct ObjectInfo* Carrier = &SwSprite[carrier];
	ld	c, -37 (ix)
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
	ld	-32 (ix), l
	ld	-31 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:260: u8 carrier_team = (carrier < 7) ? TEAM_1 : TEAM_2;
	ld	a, -37 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	-30 (ix), a
	or	a, a
	jr	Z, 00454$
	ld	bc, #0x0000
	jp	00455$
00454$:
	ld	bc, #0x0001
00455$:
	ld	-29 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:263: if (Carrier->count > 0) {
	ld	a, -32 (ix)
	add	a, #0x15
	ld	-28 (ix), a
	ld	a, -31 (ix)
	adc	a, #0x00
	ld	-27 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: Carrier->lx += Carrier->dx;
	ld	a, -32 (ix)
	add	a, #0x11
	ld	-26 (ix), a
	ld	a, -31 (ix)
	adc	a, #0x00
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: Carrier->ly += Carrier->dy;
	ld	a, -32 (ix)
	add	a, #0x04
	ld	-24 (ix), a
	ld	a, -31 (ix)
	adc	a, #0x00
	ld	-23 (ix), a
	ld	a, -32 (ix)
	add	a, #0x12
	ld	-22 (ix), a
	ld	a, -31 (ix)
	adc	a, #0x00
	ld	-21 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:273: Carrier->frame = (Carrier->dx > 0) ? 
	ld	a, -32 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -31 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:263: if (Carrier->count > 0) {
	ld	a, d
	or	a, e
	jp	Z, 00245$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:264: Carrier->count--;
	dec	de
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: Carrier->lx += Carrier->dx;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	e, (hl)
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	add	a, e
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: Carrier->ly += Carrier->dy;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
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
	ex	de, hl
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:268: if (Carrier->lx < 16) Carrier->lx = 16;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	sub	a, #0x10
	jr	NC, 00221$
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), #0x10
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:269: if (Carrier->lx > 224) Carrier->lx = 224;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	e, (hl)
	ld	a, #0xe0
	sub	a, e
	jr	NC, 00223$
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), #0xe0
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:270: if (Carrier->ly < 24) Carrier->ly = 24;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x18
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00225$
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:271: if (Carrier->ly > 488) Carrier->ly = 488;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0xe8
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00227$
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x01
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:273: Carrier->frame = (Carrier->dx > 0) ? 
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	e, (hl)
	xor	a, a
	sub	a, e
	jp	PO, 01743$
	xor	a, #0x80
01743$:
	jp	P, 00456$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:274: ((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_WEST : SPR_T2_PLAYER_TACKLE_FROM_WEST) :
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00458$
	ld	de, #0x001e
	jp	00457$
00458$:
	ld	de, #0x008e
	jp	00457$
00456$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:275: ((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_EAST : SPR_T2_PLAYER_TACKLE_FROM_EAST);
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00460$
	ld	de, #0x001f
	jp	00461$
00460$:
	ld	de, #0x008f
00461$:
00457$:
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: Carrier->lx += Carrier->dx;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:278: u16 b_dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
	ld	hl, #(_SwSprite + 322)
	ld	d, (hl)
	ld	c, d
	ld	b, #0x00
	ld	-7 (ix), e
	ld	-6 (ix), #0x00
	ld	a, d
	sub	a, e
	jr	NC, 00462$
	ld	a, -7 (ix)
	sub	a, c
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, b
	jp	00463$
00462$:
	ld	a, c
	sub	a, -7 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -6 (ix)
00463$:
	ld	-7 (ix), c
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: Carrier->ly += Carrier->dy;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:279: u16 b_dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00464$
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	jp	00465$
00464$:
	ld	a, e
	sub	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, b
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
00465$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:281: bool can_steal = (b_dist_x <= 12 && b_dist_y <= 12);
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, #0x0c
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	C, 00466$
	ld	a, #0x0c
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00467$
00466$:
	ld	-6 (ix), #0x00
	jp	00468$
00467$:
	ld	-6 (ix), #0x01
00468$:
	ld	a, -6 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:282: if (!can_steal && g_is_ball_carried && LastTouchPlayer != 0xFF && LastTouchTeam != carrier_team) {
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00232$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00232$
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jr	Z, 00232$
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	jr	Z, 00232$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:283: u16 c_dist_y = (Carrier->ly > SwSprite[LastTouchPlayer].ly) ? (Carrier->ly - SwSprite[LastTouchPlayer].ly) : (SwSprite[LastTouchPlayer].ly - Carrier->ly);
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
	ld	a, #<(_SwSprite)
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_SwSprite)
	adc	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	NC, 00469$
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	jp	00470$
00469$:
	ld	a, l
	sub	a, c
	ld	c, a
	ld	a, h
	sbc	a, b
	ld	b, a
00470$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:284: if (b_dist_x <= 16 && c_dist_y <= 5) can_steal = TRUE;
	ld	a, #0x10
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	C, 00232$
	ld	a, #0x05
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00232$
	ld	-6 (ix), #0x01
00232$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:287: if (can_steal && Ball->anim < 5 && RestartType == 0) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00396$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC, 00396$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00396$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:288: if (LastTouchTeam != carrier_team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	jr	Z, 00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:289: Ball->count = 16; // Immunità
	ld	hl, #0x0010
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:290: g_pass_receiver = 0xFF; // Intercetto: disinnesca fuorigioco
	ld	iy, #_g_pass_receiver
	ld	0 (iy), #0xff
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:292: LastTouchTeam = carrier_team;
	ld	a, -29 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:293: LastTouchPlayer = carrier;
	ld	a, -37 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:294: if (Ball->anim > 3) Ball->anim = 3;
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00239$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00239$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:295: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:296: Carrier->count = 0; // Ferma la scivolata appena ruba palla
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:298: continue; // Salta il resto dei comandi e dell'animazione
	jp	00396$
00245$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:301: Carrier->dx = 0; Carrier->dy = 0;
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x00
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:302: switch(dir) {
	ld	a, #0x08
	sub	a, -6 (ix)
	jp	C, 00254$
	ld	e, -6 (ix)
	ld	d, #0x00
	ld	hl, #01747$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
01747$:
	jp	00254$
	jp	00246$
	jp	00247$
	jp	00248$
	jp	00249$
	jp	00250$
	jp	00251$
	jp	00252$
	jp	00253$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:303: case DIRECTION_UP: Carrier->dy = -2; break;
00246$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0xfe
	jp	00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:304: case DIRECTION_UP_RIGHT: Carrier->dy = -2; Carrier->dx = 2; break;
00247$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0xfe
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x02
	jp	00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:305: case DIRECTION_RIGHT: Carrier->dx = 2; break;
00248$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x02
	jp	00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:306: case DIRECTION_DOWN_RIGHT: Carrier->dy = 2; Carrier->dx = 2; break;
00249$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x02
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x02
	jp	00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:307: case DIRECTION_DOWN: Carrier->dy = 2; break;
00250$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x02
	jp	00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:308: case DIRECTION_DOWN_LEFT: Carrier->dy = 2; Carrier->dx = -2; break;
00251$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x02
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0xfe
	jp	00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:309: case DIRECTION_LEFT: Carrier->dx = -2; break;
00252$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0xfe
	jp	00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:310: case DIRECTION_UP_LEFT: Carrier->dy = -2; Carrier->dx = -2; break;
00253$:
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0xfe
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0xfe
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:311: }
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: Carrier->lx += Carrier->dx;
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:314: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, e
	or	a, a
	jr	NZ, 00267$
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00268$
00267$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:315: g_last_dx[i] = Carrier->dx;
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:316: g_last_dy[i] = Carrier->dy;
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	d, a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:318: i16 next_x = (i16)Carrier->lx + Carrier->dx;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:319: if (next_x < 16) Carrier->lx = 16;
	ld	-7 (ix), l
	ld	-6 (ix), h
	ex	de,hl
	ld	a, e
	sub	a, #0x10
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00259$
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), #0x10
	jp	00260$
00259$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:320: else if (next_x > 224) Carrier->lx = 224;
	ld	a, #0xe0
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 01748$
	xor	a, #0x80
01748$:
	jp	P, 00256$
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), #0xe0
	jp	00260$
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:321: else Carrier->lx = (u8)next_x;
	ld	a, -7 (ix)
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), a
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:323: i16 next_y = (i16)Carrier->ly + Carrier->dy;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:324: if (next_y < 24) Carrier->ly = 24;
	ld	-7 (ix), l
	ld	-6 (ix), h
	ex	de,hl
	ld	a, e
	sub	a, #0x18
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00265$
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
	jp	00266$
00265$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:325: else if (next_y > 488) Carrier->ly = 488;
	ld	a, #0xe8
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jp	PO, 01749$
	xor	a, #0x80
01749$:
	jp	P, 00262$
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x01
	jp	00266$
00262$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:326: else Carrier->ly = (u16)next_y;
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:328: Carrier->anim++;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:329: const u8 walk_seq[4] = {0, 1, 2, 1}; 
	ld	-43 (ix), #0x00
	ld	-42 (ix), #0x01
	ld	-41 (ix), #0x02
	ld	-40 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:330: Carrier->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
	push	bc
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	pop	bc
	ld	a, e
	and	a, #0x03
	ld	e, a
	ld	d, #0x00
	ld	hl, #4
	add	hl, sp
	add	hl, de
	ld	d, (hl)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	h, (hl)
;	spillPairReg hl
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	push	hl
	inc	sp
	ld	a, -37 (ix)
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
	jp	00269$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:333: Carrier->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, carrier, g_last_dx[i], g_last_dy[i]);
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	h, a
	ld	d, (hl)
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	a, (hl)
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	ld	a, -37 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:337: u16 dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	e, (hl)
	ld	hl, #(_SwSprite + 322)
	ld	d, (hl)
	ld	c, e
	ld	b, #0x00
	ld	-7 (ix), d
	ld	-6 (ix), #0x00
	ld	a, d
	sub	a, e
	jr	NC, 00471$
	ld	a, c
	sub	a, -7 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -6 (ix)
	jp	00472$
00471$:
	ld	a, -7 (ix)
	sub	a, c
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, b
00472$:
	ld	-20 (ix), c
	ld	-19 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: Carrier->ly += Carrier->dy;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:338: u16 dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	jr	NC, 00473$
	ld	a, -10 (ix)
	sub	a, -12 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	sbc	a, -11 (ix)
	ld	-6 (ix), a
	jp	00474$
00473$:
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	ld	-6 (ix), a
00474$:
	ld	a, -7 (ix)
	ld	-18 (ix), a
	ld	a, -6 (ix)
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:282: if (!can_steal && g_is_ball_carried && LastTouchPlayer != 0xFF && LastTouchTeam != carrier_team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	ld	a, #0x01
	jr	Z, 01751$
	xor	a, a
01751$:
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:342: u8 touch_dist = (LastTouchTeam == carrier_team || LastTouchTeam == 0xFF) ? 32 : (g_is_ball_carried ? 10 : 14); 
	bit	0, -16 (ix)
	jr	NZ, 00478$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00475$
00478$:
	ld	bc, #0x0020
	jp	00476$
00475$:
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00480$
	ld	-7 (ix), #0x0a
	xor	a, a
	ld	-6 (ix), a
	jp	00481$
00480$:
	ld	-7 (ix), #0x0e
	xor	a, a
	ld	-6 (ix), a
00481$:
	ld	c, -7 (ix)
00476$:
	ld	-6 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:343: if (Ball->anim >= 6) touch_dist = 12; // I tiri potenti sfuggono facilmente al tackle
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0006
	cp	a, a
	sbc	hl, de
	jr	C, 00272$
	ld	-6 (ix), #0x0c
00272$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:345: bool is_immune = (Ball->count > 0 && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF);
	ld	de, (#(_SwSprite + 343) + 0)
	ld	a, d
	or	a, e
	jr	Z, 00482$
	bit	0, -16 (ix)
	jr	NZ, 00482$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00483$
00482$:
	xor	a, a
	jp	00484$
00483$:
	ld	a, #0x01
00484$:
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:348: u16 eff_dist_y = dist_y;
	ld	a, -18 (ix)
	ld	-14 (ix), a
	ld	a, -17 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:349: u8 touch_dist_y = touch_dist;
	ld	a, -6 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:350: if (g_is_ball_carried && LastTouchPlayer != 0xFF && LastTouchTeam != carrier_team && SwSprite[LastTouchPlayer].dy == 0) {
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00274$
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jp	Z,00274$
	bit	0, -16 (ix)
	jp	NZ, 00274$
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
	ex	(sp), hl
	ld	a, #<(_SwSprite)
	add	a, -47 (ix)
	ld	-8 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -46 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-47 (ix), a
	ld	a, -7 (ix)
	ld	-46 (ix), a
	pop	hl
	push	hl
	ld	de, #0x0012
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	NZ, 00274$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:351: touch_dist_y = 9;
	ld	-12 (ix), #0x09
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:352: eff_dist_y = (Carrier->ly >= SwSprite[LastTouchPlayer].ly) ?
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	sub	a, -14 (ix)
	ld	a, -9 (ix)
	sbc	a, -13 (ix)
	jr	C, 00488$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:353: (u16)(Carrier->ly - SwSprite[LastTouchPlayer].ly) :
	ld	a, -10 (ix)
	sub	a, -14 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sbc	a, -13 (ix)
	ld	-7 (ix), a
	jp	00489$
00488$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:354: (u16)(SwSprite[LastTouchPlayer].ly - Carrier->ly);
	ld	a, -14 (ix)
	sub	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -13 (ix)
	sbc	a, -9 (ix)
	ld	-7 (ix), a
00489$:
	ld	a, -8 (ix)
	ld	-14 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
00274$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:359: bool actively_carried_by_opp = (g_is_ball_carried && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF);
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00490$
	bit	0, -16 (ix)
	jr	NZ, 00490$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00491$
00490$:
	xor	a, a
	jp	00492$
00491$:
	ld	a, #0x01
00492$:
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:362: bool can_intercept = FALSE;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:363: if (Ball->anim == 5 && carrier != LastTouchPlayer && LastTouchTeam != 0xFF && LastTouchTeam != carrier_team) {
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -9 (ix)
	sub	a, #0x05
	or	a, -8 (ix)
	jr	NZ, 00282$
	ld	a, -37 (ix)
	ld	iy, #_LastTouchPlayer
	sub	a, 0 (iy)
	jr	Z, 00282$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	Z, 00282$
	bit	0, -16 (ix)
	jr	NZ, 00282$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:364: if (dist_x <= 12 && eff_dist_y <= 12) can_intercept = TRUE;
	ld	c, -20 (ix)
	ld	b, -19 (ix)
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00282$
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00282$
	ld	-10 (ix), #0x01
00282$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:368: if (dist_x <= touch_dist && eff_dist_y <= touch_dist_y && (Ball->anim < 5 || can_intercept) && !is_immune && RestartType == 0 && !actively_carried_by_opp) {
	ld	a, -6 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -7 (ix)
	sub	a, -20 (ix)
	ld	a, -6 (ix)
	sbc	a, -19 (ix)
	jp	C, 00388$
	ld	a, -12 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -7 (ix)
	sub	a, -14 (ix)
	ld	a, -6 (ix)
	sbc	a, -13 (ix)
	jp	C, 00388$
	ld	a, -9 (ix)
	sub	a, #0x05
	ld	a, -8 (ix)
	sbc	a, #0x00
	jr	C, 00393$
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00388$
00393$:
	ld	a, -15 (ix)
	or	a, a
	jp	NZ, 00388$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00388$
	ld	a, -11 (ix)
	or	a, a
	jp	NZ, 00388$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:369: if (LastTouchTeam != carrier_team) {
	bit	0, -16 (ix)
	jr	NZ, 00289$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:370: Ball->count = 16; // Immunità
	ld	hl, #0x0010
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:371: if (Ball->anim == 5) {
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x05
	or	a, -6 (ix)
	jr	NZ, 00289$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:373: Ball->anim = 3;
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:374: Ball->dx = 0; Ball->dy = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:375: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); 
	xor	a, a
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
00289$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:378: LastTouchTeam = (carrier < 7) ? TEAM_1 : TEAM_2;
	ld	a, -30 (ix)
	or	a, a
	jr	Z, 00496$
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00497$
00496$:
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
00497$:
	ld	a, -7 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:379: LastTouchPlayer = carrier;
	ld	a, -37 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:380: Ball->frame = SPR_BALL_SIZE_1; // Assicura che la palla sia a terra quando tra i piedi
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:381: g_pass_receiver = 0xFF; // Resetta il ricevitore adesso che ha palla
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: Carrier->lx += Carrier->dx;
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:314: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:385: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, c
	or	a, a
	jr	NZ, 00290$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00291$
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:386: c_dx = (Carrier->dx > 0) ? 1 : ((Carrier->dx < 0) ? -1 : 0);
	xor	a, a
	sub	a, c
	jp	PO, 01765$
	xor	a, #0x80
01765$:
	jp	P, 00498$
	ld	bc, #0x0001
	jp	00499$
00498$:
	bit	7, c
	jr	Z, 00500$
	ld	bc, #0xffff
	jp	00501$
00500$:
	ld	bc, #0x0000
00501$:
00499$:
	ld	-7 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:387: c_dy = (Carrier->dy > 0) ? 1 : ((Carrier->dy < 0) ? -1 : 0);
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01766$
	xor	a, #0x80
01766$:
	jp	P, 00502$
	ld	bc, #0x0001
	jp	00503$
00502$:
	bit	7, -6 (ix)
	jr	Z, 00504$
	ld	bc, #0xffff
	jp	00505$
00504$:
	ld	bc, #0x0000
00505$:
00503$:
	ld	-6 (ix), c
	jp	00292$
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:390: c_dx = (g_last_dx[i] > 0) ? 1 : ((g_last_dx[i] < 0) ? -1 : 0);
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
	jp	PO, 01767$
	xor	a, #0x80
01767$:
	jp	P, 00506$
	ld	bc, #0x0001
	jp	00507$
00506$:
	bit	7, c
	jr	Z, 00508$
	ld	bc, #0xffff
	jp	00509$
00508$:
	ld	bc, #0x0000
00509$:
00507$:
	ld	-7 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:391: c_dy = (g_last_dy[i] > 0) ? 1 : ((g_last_dy[i] < 0) ? -1 : 0);
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
	jp	PO, 01768$
	xor	a, #0x80
01768$:
	jp	P, 00510$
	ld	bc, #0x0001
	jp	00511$
00510$:
	bit	7, c
	jr	Z, 00512$
	ld	bc, #0xffff
	jp	00513$
00512$:
	ld	bc, #0x0000
00513$:
00511$:
	ld	-6 (ix), c
00292$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:393: receivers[i] = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, carrier, 0xFF, c_dx, c_dy);
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #6
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
	ld	a, -37 (ix)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x14
	call	_CallFnc_U16_P4B
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:396: bool action_taken = FALSE;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:397: if (trigger_pressed) {						
	ld	a, -34 (ix)
	or	a, a
	jp	Z, 00339$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:398: bool is_shooting = FALSE;
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:399: u8 dir = g_player_input[i].direction;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:403: if (i == 1 && Carrier->ly < 256 && Field.ly == 0) {
	ld	a, -33 (ix)
	or	a, a
	jr	Z, 00308$
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	sub	a, #0x01
	jr	NC, 00308$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, h
	or	a, l
	jr	NZ, 00308$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:404: if (dir == DIRECTION_UP || dir == DIRECTION_UP_LEFT || dir == DIRECTION_UP_RIGHT) {
	ld	a, -11 (ix)
	dec	a
	jr	Z, 00294$
	ld	a, -11 (ix)
	sub	a, #0x08
	jr	Z, 00294$
	ld	a, -11 (ix)
	sub	a, #0x02
	jr	NZ, 00309$
00294$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:405: is_shooting = TRUE;
	ld	-12 (ix), #0x01
	jp	00309$
00308$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:409: else if (i == 0 && GameMode == GAMEMODE_P1_VS_P2 && Carrier->ly > 256 && Field.ly == (FIELD_HEIGHT - 192)) {
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00309$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00309$
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	xor	a, a
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00309$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, l
	sub	a, #0x40
	jr	NZ, 00309$
	dec	h
	jr	NZ, 00309$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:410: if (dir == DIRECTION_DOWN || dir == DIRECTION_DOWN_LEFT || dir == DIRECTION_DOWN_RIGHT) {
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	Z, 00298$
	ld	a, -11 (ix)
	sub	a, #0x06
	jr	Z, 00298$
	ld	a, -11 (ix)
	sub	a, #0x04
	jr	NZ, 00309$
00298$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:411: is_shooting = TRUE;
	ld	-12 (ix), #0x01
00309$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:415: if (is_shooting) {
	ld	a, -12 (ix)
	or	a, a
	jp	Z, 00336$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:416: action_taken = TRUE;
	ld	-10 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:417: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:418: g_pass_receiver = 0xFF; 
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:420: g_pass_start_x = Carrier->lx;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:421: g_pass_start_y = Carrier->ly;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:423: g_pass_target_x = g_h_arrow_x; // Direzione della freccia
	ld	hl, (_g_h_arrow_x)
	ld	(_g_pass_target_x), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:424: g_pass_target_y = (i == 1) ? 16 : 496; // Dentro la porta
	ld	a, -33 (ix)
	or	a, a
	jr	Z, 00514$
	ld	de, #0x0010
	jp	00515$
00514$:
	ld	de, #0x01f0
00515$:
	ld	(_g_pass_target_y), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:426: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00516$
	ld	hl, #_g_pass_start_x
	ld	a, (_g_pass_target_x+0)
	sub	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (_g_pass_target_x+1)
	sbc	a, (hl)
	ld	-8 (ix), a
	jp	00517$
00516$:
	ld	hl, #_g_pass_target_x
	ld	a, (_g_pass_start_x+0)
	sub	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (_g_pass_start_x+1)
	sbc	a, (hl)
	ld	-8 (ix), a
00517$:
	ld	a, -9 (ix)
	ld	-14 (ix), a
	ld	a, -8 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:427: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00518$
	ld	hl, #_g_pass_start_y
	ld	a, (_g_pass_target_y+0)
	sub	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	sbc	a, (hl)
	ld	-8 (ix), a
	jp	00519$
00518$:
	ld	hl, #_g_pass_target_y
	ld	a, (_g_pass_start_y+0)
	sub	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	sbc	a, (hl)
	ld	-8 (ix), a
00519$:
	ld	a, -9 (ix)
	ld	-12 (ix), a
	ld	a, -8 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:429: g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente e veloce
	ld	a, -14 (ix)
	add	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -13 (ix)
	adc	a, -11 (ix)
	ld	-8 (ix), a
	srl	-8 (ix)
	rr	-9 (ix)
	srl	-8 (ix)
	rr	-9 (ix)
	srl	-8 (ix)
	rr	-9 (ix)
	ld	a, -9 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:430: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	(_g_pass_max_frames+0), a
	sub	a, #0x0a
	jr	NC, 00313$
	ld	hl, #_g_pass_max_frames
	ld	(hl), #0x0a
00313$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:431: if (g_pass_max_frames > 25) g_pass_max_frames = 25;
	ld	a, #0x19
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00315$
	ld	0 (iy), #0x19
00315$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:432: g_pass_max_height = 2; // Tiro rasoterra e limitato
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:434: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:435: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00339$
00336$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:438: u8 receiver = receivers[i];
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:440: if (receiver != 0xFF) {
	ld	-17 (ix), a
	inc	a
	jp	Z,00339$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:442: bool is_offside = FALSE;
	ld	-16 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: Carrier->ly += Carrier->dy;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:446: if (SwSprite[receiver].ly < offside_line - 8 && SwSprite[receiver].ly < 256) is_offside = TRUE;
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
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:459: g_pass_target_x = SwSprite[receiver].lx;
	ld	hl, #_SwSprite
	add	hl, de
	ld	-13 (ix), l
	ld	-12 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:446: if (SwSprite[receiver].ly < offside_line - 8 && SwSprite[receiver].ly < 256) is_offside = TRUE;
	ld	a, -13 (ix)
	add	a, #0x04
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), c
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:443: if (i == 1) { // Team 2 (P1)
	ld	a, -33 (ix)
	or	a, a
	jr	Z, 00327$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:444: u16 offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
	ld	bc, (#_SwSprite + 27)
	ld	de, (#_SwSprite + 50)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00520$
	ld	e, c
	ld	d, b
00520$:
	ld	-19 (ix), e
	ld	-18 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:445: if (Carrier->ly < offside_line) offside_line = Carrier->ly; // Regola linea palla
	ld	a, -15 (ix)
	sub	a, -19 (ix)
	ld	a, -14 (ix)
	sbc	a, -18 (ix)
	jr	NC, 00317$
	ld	a, -15 (ix)
	ld	-19 (ix), a
	ld	a, -14 (ix)
	ld	-18 (ix), a
00317$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:446: if (SwSprite[receiver].ly < offside_line - 8 && SwSprite[receiver].ly < 256) is_offside = TRUE;
	ld	a, -19 (ix)
	ld	-15 (ix), a
	ld	a, -18 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0xf8
	ld	-19 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-18 (ix), a
	ld	a, -9 (ix)
	sub	a, -19 (ix)
	ld	a, -8 (ix)
	sbc	a, -18 (ix)
	jr	NC, 00328$
	ld	a, -8 (ix)
	sub	a, #0x01
	jr	NC, 00328$
	ld	-16 (ix), #0x01
	jp	00328$
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:448: u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	bc, (#_SwSprite + 188)
	ld	hl, #_SwSprite + 211
	ld	a, (hl)
	ld	-19 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-18 (ix), a
	ld	a, -19 (ix)
	sub	a, c
	ld	a, -18 (ix)
	sbc	a, b
	jr	NC, 00522$
	ld	-19 (ix), c
	ld	-18 (ix), b
00522$:
	ld	c, -19 (ix)
	ld	b, -18 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:449: if (Carrier->ly > offside_line) offside_line = Carrier->ly; // Regola linea palla
	ld	a, c
	sub	a, -15 (ix)
	ld	a, b
	sbc	a, -14 (ix)
	jr	NC, 00322$
	ld	c, -15 (ix)
	ld	b, -14 (ix)
00322$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:450: if (SwSprite[receiver].ly > offside_line + 8 && SwSprite[receiver].ly > 256) is_offside = TRUE;
	ld	hl, #0x0008
	add	hl, bc
	ld	a, l
	sub	a, -9 (ix)
	ld	a, h
	sbc	a, -8 (ix)
	jr	NC, 00328$
	xor	a, a
	cp	a, -9 (ix)
	ld	a, #0x01
	sbc	a, -8 (ix)
	jr	NC, 00328$
	ld	-16 (ix), #0x01
00328$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:454: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:456: g_pass_receiver = receiver | (is_offside ? 0x80 : 0);
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00524$
	ld	bc, #0x0080
	jp	00525$
00524$:
	ld	bc, #0x0000
00525$:
	ld	a, c
	or	a, -17 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:457: g_pass_start_x = Carrier->lx;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:458: g_pass_start_y = Carrier->ly;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:459: g_pass_target_x = SwSprite[receiver].lx;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	(_g_pass_target_x+0), a
	ld	iy, #_g_pass_target_x
	ld	1 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:460: g_pass_target_y = SwSprite[receiver].ly;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:462: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00526$
	ld	bc, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, bc
	jp	00527$
00526$:
	ld	bc, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
00527$:
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:463: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00528$
	ld	bc, (_g_pass_start_y)
	ld	hl, (_g_pass_target_y)
	cp	a, a
	sbc	hl, bc
	jp	00529$
00528$:
	ld	bc, (_g_pass_target_y)
	ld	hl, (_g_pass_start_y)
	cp	a, a
	sbc	hl, bc
00529$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:464: g_pass_max_frames = (r_dx + r_dy) / 5; // Velocità di volo passaggi
	add	hl, de
	ld	de, #0x0005
	call	__divuint
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:465: if (g_pass_max_frames < 8) g_pass_max_frames = 8;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x08
	jr	NC, 00330$
	ld	0 (iy), #0x08
00330$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:466: if (g_pass_max_frames > 34) g_pass_max_frames = 34;
	ld	a, #0x22
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00332$
	ld	0 (iy), #0x22
00332$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:467: g_pass_max_height = 7; // Passaggio normale alto
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:469: Ball->anim = 5; // Flag per passaggio
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:470: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:471: action_taken = TRUE;
	ld	-10 (ix), #0x01
00339$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:476: if (!action_taken && (Ball->dx != c_dx || Ball->dy != c_dy)) {
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00372$
	ld	bc, #(_SwSprite + 322) + 17
	ld	a, (bc)
	ld	e, a
	ld	a, -7 (ix)
	sub	a, e
	jr	NZ, 00371$
	ld	hl, #(_SwSprite + 340)
	ld	e, (hl)
	ld	a, -6 (ix)
	sub	a, e
	jp	Z,00372$
00371$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:479: i8 off_x = 0; i8 off_y = 6;
	ld	-9 (ix), #0x00
	ld	-8 (ix), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:480: if (c_dx > 0) off_x = (c_dy > 0) ? 4 : 8; else if (c_dx < 0) off_x = (c_dy > 0) ? -4 : -8;
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01785$
	xor	a, #0x80
01785$:
	rlca
	and	a,#0x01
	ld	e, a
	xor	a, a
	sub	a, -7 (ix)
	jp	PO, 01786$
	xor	a, #0x80
01786$:
	jp	P, 00343$
	ld	a, e
	or	a, a
	jr	Z, 00530$
	ld	hl, #0x0004
	jp	00531$
00530$:
	ld	hl, #0x0008
00531$:
	ld	-9 (ix), l
	jp	00344$
00343$:
	bit	7, -7 (ix)
	jr	Z, 00344$
	ld	a, e
	or	a, a
	ld	a, #0xfc
	jr	NZ, 00533$
	ld	a, #0xf8
00533$:
	ld	-9 (ix), a
00344$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:481: if (c_dy > 0) off_y = (c_dx != 0) ? (carrier_team == TEAM_1 ? 16 : 9) : 8; else if (c_dy < 0) off_y = -2;
	ld	a, e
	or	a, a
	jr	Z, 00348$
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00534$
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00536$
	ld	de, #0x0010
	jp	00535$
00536$:
	ld	de, #0x0009
	jp	00535$
00534$:
	ld	de, #0x0008
00535$:
	ld	-8 (ix), e
	jp	00349$
00348$:
	bit	7, -6 (ix)
	jr	Z, 00349$
	ld	-8 (ix), #0xfe
00349$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:483: Ball->dx = c_dx;
	ld	a, -7 (ix)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:484: Ball->dy = c_dy;
	ld	hl, #(_SwSprite + 340)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:486: i16 ideal_x = (i16)Carrier->lx + off_x;
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	c, (hl)
	ld	b, #0x00
	ld	a, -9 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:487: i16 ideal_y = (i16)Carrier->ly + off_y;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -8 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:488: Ball->lx = (u8)(((i16)Ball->lx + ideal_x) / 2);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, de
	ld	e, l
	ld	d, h
	bit	7, h
	jr	Z, 00538$
	ex	de, hl
	inc	de
00538$:
	sra	d
	rr	e
	ld	hl, #(_SwSprite + 322)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:489: Ball->ly = (u16)(((i16)Ball->ly + ideal_y) / 2) & 511;
	ld	hl, (#(_SwSprite + 326) + 0)
	add	hl, bc
	ld	c, l
	ld	b, h
	bit	7, h
	jr	Z, 00539$
	inc	hl
	ld	c, l
	ld	b, h
00539$:
	sra	b
	rr	c
	ld	a, b
	and	a, #0x01
	ld	b, a
	ld	((_SwSprite + 326)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:491: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00350$
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00351$
00350$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:492: Ball->anim = (c_dx != 0 && c_dy != 0) ? 1 : 2; // Tocco cortissimo in diagonale, normale in rettilineo
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00540$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00540$
	ld	bc, #0x0001
	jp	00541$
00540$:
	ld	bc, #0x0002
00541$:
	ld	((_SwSprite + 341)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:493: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00396$
00351$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:495: Ball->anim = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	jp	00396$
00372$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:497: } else if (!action_taken) {
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00396$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:500: if (Ball->anim == 0) {
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00396$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:501: i8 off_x = 0; i8 off_y = 6;
	ld	-8 (ix), #0x00
	ld	-11 (ix), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:480: if (c_dx > 0) off_x = (c_dy > 0) ? 4 : 8; else if (c_dx < 0) off_x = (c_dy > 0) ? -4 : -8;
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01787$
	xor	a, #0x80
01787$:
	rlca
	and	a,#0x01
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:502: if (c_dx > 0) off_x = (c_dy > 0) ? 4 : 8; else if (c_dx < 0) off_x = (c_dy > 0) ? -4 : -8;
	xor	a, a
	sub	a, -7 (ix)
	jp	PO, 01788$
	xor	a, #0x80
01788$:
	jp	P, 00357$
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00545$
	ld	-9 (ix), #0x04
	ld	-8 (ix), #0
	jp	00546$
00545$:
	ld	-9 (ix), #0x08
	ld	-8 (ix), #0
00546$:
	ld	a, -9 (ix)
	ld	-8 (ix), a
	jp	00358$
00357$:
	bit	7, -7 (ix)
	jr	Z, 00358$
	ld	a, -10 (ix)
	or	a, a
	ld	a, #0xfc
	jr	NZ, 00548$
	ld	a, #0xf8
00548$:
	ld	-8 (ix), a
00358$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:503: if (c_dy > 0) off_y = (c_dx != 0) ? (carrier_team == TEAM_1 ? 16 : 9) : 8; else if (c_dy < 0) off_y = -2;
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00362$
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00549$
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00551$
	ld	-10 (ix), #0x10
	ld	-9 (ix), #0
	jp	00550$
00551$:
	ld	-10 (ix), #0x09
	ld	-9 (ix), #0
	jp	00550$
00549$:
	ld	-10 (ix), #0x08
	ld	-9 (ix), #0
00550$:
	ld	a, -10 (ix)
	ld	-11 (ix), a
	jp	00363$
00362$:
	bit	7, -6 (ix)
	jr	Z, 00363$
	ld	-11 (ix), #0xfe
00363$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:505: Ball->lx = (u8)((i16)Carrier->lx + off_x);
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	add	a, -8 (ix)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:506: Ball->ly = (u16)((i16)Carrier->ly + off_y) & 511;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:507: Ball->dx = c_dx; Ball->dy = c_dy;
	ld	hl, #(_SwSprite + 339)
	ld	a, -7 (ix)
	ld	(hl), a
	ld	hl, #(_SwSprite + 340)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:508: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00364$
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00396$
00364$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:509: Ball->anim = (c_dx != 0 && c_dy != 0) ? 2 : 4; // Tocco corto in diagonale, lungo in rettilineo
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00553$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00553$
	ld	bc, #0x0002
	jp	00554$
00553$:
	ld	bc, #0x0004
00554$:
	ld	((_SwSprite + 341)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:510: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00396$
00388$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:516: if (trigger_pressed && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF && Carrier->count == 0 && RestartType == 0) {
	ld	a, -34 (ix)
	or	a, a
	jp	Z, 00396$
	bit	0, -16 (ix)
	jp	NZ, 00396$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	Z, 00396$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	or	a, c
	jr	NZ, 00396$
	ld	a, (_RestartType+0)
	or	a, a
	jr	NZ, 00396$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:517: bool opponent_has_ball = (g_is_ball_carried && LastTouchTeam != carrier_team);
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00558$
	bit	0, -16 (ix)
	jr	Z, 00559$
00558$:
	ld	e, #0x00
	jp	00560$
00559$:
	ld	e, #0x01
00560$:
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:519: if (opponent_has_ball) {
	or	a, a
	jr	Z, 00396$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:520: if (dist_x <= 48 && dist_y <= 24) {
	ld	c, -20 (ix)
	ld	b, -19 (ix)
	ld	a, #0x30
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00396$
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00396$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:522: Carrier->count = 8; // 8 frames di scivolata (più corta e netta)
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:523: Carrier->dx = (Ball->lx > Carrier->lx) ? 4 : -4;
	ld	c, -26 (ix)
	ld	b, -25 (ix)
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	a, (hl)
	sub	a, e
	jr	NC, 00561$
	ld	de, #0x0004
	jp	00562$
00561$:
	ld	de, #0xfffc
00562$:
	ld	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:524: Carrier->dy = 0; // Movimento rigorosamente orizzontale
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x00
00396$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:248: for (u8 i = 0; i < 2; i++) { // i=0 per Team 1 (P2/CPU), i=1 per Team 2 (P1)
	inc	-1 (ix)
	jp	00414$
00397$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:532: for (u8 i = 0; i < 14; i++) {
	ld	b, #0x00
00416$:
	ld	a, b
	sub	a, #0x0e
	jr	NC, 00398$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:533: CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
	push	bc
	push	bc
	inc	sp
	ld	de, #_PlayerAI
	ld	a, #0x06
	call	_CallFnc_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:532: for (u8 i = 0; i < 14; i++) {
	inc	b
	jp	00416$
00398$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:537: CallFnc_VOID(SEG_GAMESTATE_8, UpdateReferee);
	ld	de, #_UpdateReferee
	ld	a, #0x12
	call	_CallFnc_VOID
	jp	00418$
00400$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:539: SwSprite[24].ly = 1000; // Nascondimento assoluto
	ld	hl, #0x03e8
	ld	((_SwSprite + 556)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:540: SwSprite[25].ly = 1000; // Nascondimento assoluto
	ld	((_SwSprite + 579)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:541: CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_3, UpdateGameState_Restarts, game_state, wait_secs, start_sec, target_ly);
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
00418$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:543: }
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
