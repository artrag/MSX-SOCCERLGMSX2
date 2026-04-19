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
	.globl _UpdateGameState_Init
	.globl _UpdateGameState_Restarts
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _EventOffside
	.globl _EventHalfTime
	.globl _EventBallKicked
	.globl _FindReceiver
	.globl _SetBallSprite
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
	jr	NC, 00429$
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
	jp	00444$
00429$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:15: } else if (*game_state == 3) {
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NZ,00426$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:17: if (Mins == 0 && Secs == 0) {
	ld	a, (_Mins+0)
	or	a, a
	jr	NZ, 00107$
	ld	a, (_Secs+0)
	or	a, a
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:18: if (Half == 1) {
	ld	a, (_Half+0)
	dec	a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:19: *game_state = 4;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:20: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:21: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:22: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_HALFTIME);
	ld	hl, #0x0144
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:23: CallFnc_VOID(SEG_EVENTS, EventHalfTime);
	ld	de, #_EventHalfTime
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00444$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:24: } else if (Half == 2) {
	ld	a, (_Half+0)
	sub	a, #0x02
	jp	NZ,00444$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:25: *game_state = 5;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:26: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:27: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:28: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_TIMEUP);
	ld	hl, #0x0140
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:30: return;
	jp	00444$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:34: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jr	Z, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:35: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:36: (*wait_secs)--;
	ld	a, -1 (ix)
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:37: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:38: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:39: TimerEnabled = TRUE; // Avvia il cronometro alla sparizione della scritta
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:42: *start_sec = Frms;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:44: return; // Ferma l'IA e il gioco finché la scritta non sparisce
	jp	00444$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:48: CallFnc_VOID(SEG_FIELD, UpdateFieldCamera);
	ld	de, #_UpdateFieldCamera
	ld	a, #0x0a
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:49: CallFnc_VOID_3PTR(SEG_FIELD, CheckFieldBoundaries, game_state, wait_secs, start_sec);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:52: g_h_arrow_x += g_h_arrow_dir;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:53: if (g_h_arrow_x < 80) { g_h_arrow_x = 80; g_h_arrow_dir = 1; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:54: else if (g_h_arrow_x > 162) { g_h_arrow_x = 162; g_h_arrow_dir = -1; }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:58: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:59: SwSprite[24].lx = (u8)g_h_arrow_x;
	ld	bc, #_SwSprite + 552
	ld	a, (_g_h_arrow_x+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:60: SwSprite[24].ly = 440; 
	ld	hl, #0x01b8
	ld	((_SwSprite + 556)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:61: SwSprite[24].frame = SPR_BIG_ARROW_BOTTOM;
	ld	hl, #0x006b
	ld	((_SwSprite + 567)), hl
	jp	00122$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:63: SwSprite[24].ly = 1000; // Nascondimento assoluto
	ld	hl, #0x03e8
	ld	((_SwSprite + 556)), hl
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:66: SwSprite[25].lx = (u8)g_h_arrow_x; SwSprite[25].ly = 50; SwSprite[25].frame = SPR_BIG_ARROW_TOP;
	ld	bc, #_SwSprite + 575
	ld	a, (_g_h_arrow_x+0)
	ld	(bc), a
	ld	hl, #0x0032
	ld	((_SwSprite + 579)), hl
	ld	l, #0x6c
	ld	((_SwSprite + 590)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:70: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:72: u8 closest_t1 = 1; u16 min_dist_t1 = 0xFFFF;
	ld	-17 (ix), #0x01
	ld	-16 (ix), #0xff
	ld	-15 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:73: u8 closest_t2 = 8; u16 min_dist_t2 = 0xFFFF;
	ld	-14 (ix), #0x08
	ld	-13 (ix), #0xff
	ld	-12 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:75: for (u8 i = 1; i < 7; i++) { 
	ld	-1 (ix), #0x01
00432$:
	ld	a, -1 (ix)
	sub	a, #0x07
	jp	NC, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:76: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:77: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00446$
	ld	a, d
	jp	00447$
00446$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00447$:
	ld	-11 (ix), e
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:78: u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:79: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
	ld	-8 (ix), a
	sub	a, #0x01
	jr	NC, 00448$
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	jp	00449$
00448$:
	xor	a, a
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #0x02
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00449$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:80: u16 dist = dist_x + dist_y;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	add	hl, bc
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:81: if (LastTouchTeam == TEAM_1 && i == LastTouchPlayer && Ball->anim < 5) dist = 0; // Forza il focus sul portatore
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
	ld	de, #0x0000
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:82: if (dist < min_dist_t1) { min_dist_t1 = dist; closest_t1 = i; }
	ld	a, e
	sub	a, -16 (ix)
	ld	a, d
	sbc	a, -15 (ix)
	jr	NC, 00433$
	ld	-16 (ix), e
	ld	-15 (ix), d
	ld	a, -1 (ix)
	ld	-17 (ix), a
00433$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:75: for (u8 i = 1; i < 7; i++) { 
	inc	-1 (ix)
	jp	00432$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:84: for (u8 i = 8; i < 14; i++) {
	ld	c, #0x08
00435$:
	ld	a, c
	sub	a, #0x0e
	jp	NC, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:85: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:86: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00450$
	ld	a, d
	jp	00451$
00450$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00451$:
	ld	-7 (ix), e
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:87: u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	hl, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	a, b
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:88: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
;	spillPairReg hl
;	spillPairReg hl
	ld	d, a
	sub	a, #0x01
	jr	C, 00453$
	ld	hl, #0x0200
	cp	a, a
	sbc	hl, de
	ex	de, hl
00453$:
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:89: u16 dist = dist_x + dist_y;
	add	a, -7 (ix)
	ld	b, a
	ld	a, d
	adc	a, -6 (ix)
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:90: if (LastTouchTeam == TEAM_2 && i == LastTouchPlayer && Ball->anim < 5) dist = 0; // Forza il focus sul portatore
	ld	a, (_LastTouchTeam+0)
	dec	a
	jr	NZ, 00131$
	ld	a, (_LastTouchPlayer+0)
	sub	a, c
	jr	NZ, 00131$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, l
	sub	a, #0x05
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00131$
	ld	b, #0x00
	ld	e, b
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:91: if (dist < min_dist_t2) { min_dist_t2 = dist; closest_t2 = i; }
	ld	a, b
	sub	a, -13 (ix)
	ld	a, e
	sbc	a, -12 (ix)
	jr	NC, 00436$
	ld	-13 (ix), b
	ld	-12 (ix), e
	ld	-14 (ix), c
00436$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:84: for (u8 i = 8; i < 14; i++) {
	inc	c
	jp	00435$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:95: T2_Carrier = closest_t2;
	ld	a, -14 (ix)
	ld	(_T2_Carrier+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:96: if (GameMode == GAMEMODE_P1_VS_P2) T1_Carrier = closest_t1;
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00138$
	ld	a, -17 (ix)
	ld	(_T1_Carrier+0), a
	jp	00139$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:97: else T1_Carrier = 0xFF;
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:101: if (min_dist_t2 <= 24 && (LastTouchTeam == TEAM_2 || LastTouchTeam == 0xFF)) T2_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T2_Carrier, 0xFF, g_last_dx[1], g_last_dy[1]);
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00141$
	ld	a, (_LastTouchTeam+0)
	dec	a
	jr	Z, 00140$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00141$
00140$:
	ld	hl, #_g_last_dy+1
	ld	b, (hl)
	ld	a, (#(_g_last_dx + 1) + 0)
	push	bc
	inc	sp
	ld	h, a
	ld	l, #0xff
	push	hl
	ld	a, (_T2_Carrier+0)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U16_P4B
	ld	iy, #_T2_Receiver
	ld	0 (iy), e
	jp	00142$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:102: else T2_Receiver = 0xFF;
	ld	iy, #_T2_Receiver
	ld	0 (iy), #0xff
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:104: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:105: if (min_dist_t1 <= 24 && (LastTouchTeam == TEAM_1 || LastTouchTeam == 0xFF)) T1_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T1_Carrier, 0xFF, g_last_dx[0], g_last_dy[0]);
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00146$
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	Z, 00145$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00146$
00145$:
	ld	hl, #_g_last_dy+0
	ld	b, (hl)
	ld	a, (#_g_last_dx + 0)
	push	bc
	inc	sp
	ld	h, a
	ld	l, #0xff
	push	hl
	ld	a, (_T1_Carrier+0)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U16_P4B
	ld	iy, #_T1_Receiver
	ld	0 (iy), e
	jp	00151$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:106: else T1_Receiver = 0xFF;
	ld	iy, #_T1_Receiver
	ld	0 (iy), #0xff
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:112: u8 gks[2] = {0, 7};
	ld	-47 (ix), #0x00
	ld	-46 (ix), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:113: for (u8 g = 0; g < 2; g++) {
	ld	-1 (ix), #0x00
00438$:
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NC, 00160$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:114: u8 gk_idx = gks[g];
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:117: if (LastTouchPlayer == gk_idx) continue;
	ld	a, (_LastTouchPlayer+0)
	sub	a, c
	jp	Z,00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:119: u16 dist_x = (SwSprite[gk_idx].lx > Ball->lx) ? (SwSprite[gk_idx].lx - Ball->lx) : (Ball->lx - SwSprite[gk_idx].lx);
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
	ld	l, (hl)
;	spillPairReg hl
	ld	-9 (ix), c
	ld	-8 (ix), #0x00
	ld	-7 (ix), l
	ld	-6 (ix), #0x00
	ld	a, l
	sub	a, c
	jr	NC, 00454$
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jp	00455$
00454$:
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
00455$:
	ld	-11 (ix), c
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:120: u16 dist_y = (SwSprite[gk_idx].ly > Ball->ly) ? (SwSprite[gk_idx].ly - Ball->ly) : (Ball->ly - SwSprite[gk_idx].ly);
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
	jr	NC, 00456$
	ld	a, -7 (ix)
	sub	a, c
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, b
	jp	00457$
00456$:
	ld	a, c
	sub	a, -7 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -6 (ix)
00457$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:122: if (dist_x <= 16 && dist_y <= 16) { // Area di presa (16 px)
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x10
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	C, 00159$
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:123: if(g_is_penalty_shootout) {
	ld	a, (_g_is_penalty_shootout+0)
	or	a, a
	jr	Z, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:124: RestartType = RESTART_GKSAVE; // Segnala la parata per lo stato 15
	ld	iy, #_RestartType
	ld	0 (iy), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:125: Ball->anim = 0; // Ferma la palla
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:126: return;
	jp	00444$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:129: *game_state = 6; // Ferma il gioco per preparare il rinvio
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:130: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:131: RestartType = RESTART_GKSAVE;
	ld	hl, #_RestartType
	ld	(hl), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:132: RestartSideX = SwSprite[gk_idx].lx;
	ld	a, (de)
	ld	(_RestartSideX+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:133: RestartSideY = SwSprite[gk_idx].ly;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_RestartSideY+0), a
	ld	a, (hl)
	ld	(_RestartSideY+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:134: Ball->anim = Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:135: Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
	ld	l, #0x60
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:136: T1_Carrier = T2_Carrier = 0xFF;
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:137: TimerEnabled = FALSE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:138: *wait_secs = 1; *start_sec = Frms;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x01
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:139: return; // Esci dall'update per avviare la routine di pausa e ripresa
	jp	00444$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:113: for (u8 g = 0; g < 2; g++) {
	inc	-1 (ix)
	jp	00438$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:144: if (Ball->anim > 0) {
	ld	bc, (#(_SwSprite + 341) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:134: Ball->anim = Ball->dx = Ball->dy = 0;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:144: if (Ball->anim > 0) {
	ld	a, b
	or	a, c
	jp	Z, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:145: if (Ball->anim == 5) {
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x05
	or	a, d
	jp	NZ,00216$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:147: u8 progress = Ball->count; // 0 = inizio da tiratore, max = fine verso ricevitore
	ld	a, (#(_SwSprite + 343) + 0)
	ld	-27 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:148: u8 half_frame = g_pass_max_frames >> 1; // metà del percorso
	ld	a, (_g_pass_max_frames+0)
	srl	a
	ld	-26 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:150: i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
	ld	hl, (_g_pass_target_x)
	ld	bc, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
	ld	-25 (ix), l
	ld	-24 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:151: i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
	ld	hl, (_g_pass_target_y)
	ld	bc, (_g_pass_start_y)
	cp	a, a
	sbc	hl, bc
	ld	-23 (ix), l
	ld	-22 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:152: bool hit_post = FALSE;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:155: if (progress == 0) {
	ld	a, -27 (ix)
	or	a, a
	jr	NZ, 00165$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:156: Ball->lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:157: Ball->ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
	jp	00166$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:158: } else if (progress >= g_pass_max_frames) {
	ld	hl, #_g_pass_max_frames
	ld	a, -27 (ix)
	sub	a, (hl)
	jr	C, 00162$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:159: Ball->lx = g_pass_target_x;
	ld	a, (_g_pass_target_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:160: Ball->ly = g_pass_target_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_target_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	ld	(hl), a
	jp	00166$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:163: Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
	ld	a, (_g_pass_start_x+0)
	ld	-6 (ix), a
	ld	c, -27 (ix)
	ld	b, #0x00
	push	bc
	ld	e, c
	ld	d, b
	ld	l, -25 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -24 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ex	de, hl
	pop	bc
	ld	a, (_g_pass_max_frames+0)
	ld	e, a
	ld	d, #0x00
	push	bc
	call	__divsint
	pop	bc
	ld	a, e
	add	a, -6 (ix)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:164: Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
	ld	hl, (_g_pass_start_y)
	push	hl
	ld	e, c
	ld	d, b
	ld	l, -23 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	c, e
	ld	b, d
	pop	hl
	ld	a, (_g_pass_max_frames+0)
	ld	e, a
	ld	d, #0x00
	push	hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	pop	hl
	add	hl, de
	ex	de, hl
	ld	((_SwSprite + 326)), de
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:168: if (g_pass_max_height <= 2 && progress > 0) {
	ld	a, #0x02
	ld	hl, #_g_pass_max_height
	sub	a, (hl)
	jp	C, 00196$
	ld	a, -27 (ix)
	or	a, a
	jp	Z, 00196$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:174: i16 old_ly = (i16)g_pass_start_y + (dy_total * (progress - 1)) / g_pass_max_frames;
	ld	hl, (_g_pass_start_y)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	c, -27 (ix)
	ld	b, #0x00
	dec	bc
	ld	l, -23 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	e, c
	ld	d, b
	call	__mulint
	ex	de, hl
	pop	bc
	ld	a, (_g_pass_max_frames+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	push	bc
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	call	__divsint
	pop	bc
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	-21 (ix), l
	ld	-20 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:175: i16 new_ly = Ball->ly;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-19 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-18 (ix), a
	ld	a, -19 (ix)
	ld	-17 (ix), a
	ld	a, -18 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:176: i16 old_lx = (i16)g_pass_start_x + (dx_total * (progress - 1)) / g_pass_max_frames;
	ld	hl, (_g_pass_start_x)
	ld	a, -25 (ix)
	ld	-15 (ix), a
	ld	a, -24 (ix)
	ld	-14 (ix), a
	push	hl
	ld	e, c
	ld	d, b
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	c, e
	ld	b, d
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	pop	hl
	add	hl, de
	ld	-13 (ix), l
	ld	-12 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:177: i16 new_lx = Ball->lx;
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:180: if (old_ly > top_boundary && new_ly <= top_boundary) {
	ld	a, -21 (ix)
	ld	-9 (ix), a
	ld	a, -20 (ix)
	ld	-8 (ix), a
	ld	a, #0x18
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jp	NC, 00181$
	ld	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, -16 (ix)
	ld	-6 (ix), a
	ld	a, #0x18
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	C, 00181$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:181: i16 cross_x = old_lx + ((new_lx - old_lx) * (old_ly - top_boundary)) / (old_ly - new_ly);
	ld	a, -11 (ix)
	sub	a, -13 (ix)
	ld	c, a
	ld	a, -10 (ix)
	sbc	a, -12 (ix)
	ld	b, a
	ld	a, -9 (ix)
	add	a, #0xe8
	ld	e, a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	d, a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	c, e
	ld	b, d
	ld	a, -21 (ix)
	sub	a, -17 (ix)
	ld	e, a
	ld	a, -20 (ix)
	sbc	a, -16 (ix)
	ld	d, a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:182: if ((cross_x >= goal_left - 4 && cross_x <= goal_left + 4) ||
	ld	a, l
	sub	a, #0x4e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00171$
	ld	a, #0x56
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 01646$
	xor	a, #0x80
01646$:
	jp	P, 00167$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:183: (cross_x >= goal_right - 4 && cross_x <= goal_right + 4)) {
	ld	a, l
	sub	a, #0x98
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00182$
	ld	a, #0xa0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 01647$
	xor	a, #0x80
01647$:
	jp	M, 00182$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:184: hit_post = TRUE;
	ld	-1 (ix), #0x01
	jp	00182$
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:188: else if (old_ly < bottom_boundary && new_ly >= bottom_boundary) {
	ld	a, -9 (ix)
	sub	a, #0xde
	ld	a, -8 (ix)
	sbc	a, #0x01
	jp	NC, 00182$
	ld	a, -17 (ix)
	ld	b, -16 (ix)
	sub	a, #0xde
	ld	a, b
	sbc	a, #0x01
	jr	C, 00182$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:189: i16 cross_x = old_lx + ((new_lx - old_lx) * (bottom_boundary - old_ly)) / (new_ly - old_ly);
	ld	a, -11 (ix)
	sub	a, -13 (ix)
	ld	c, a
	ld	a, -10 (ix)
	sbc	a, -12 (ix)
	ld	b, a
	ld	a, #0xde
	sub	a, -9 (ix)
	ld	e, a
	ld	a, #0x01
	sbc	a, -8 (ix)
	ld	d, a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	c, e
	ld	b, d
	ld	a, -17 (ix)
	sub	a, -21 (ix)
	ld	e, a
	ld	a, -16 (ix)
	sbc	a, -20 (ix)
	ld	d, a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:190: if ((cross_x >= goal_left - 4 && cross_x <= goal_left + 4) ||
	ld	a, l
	sub	a, #0x4e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00176$
	ld	a, #0x56
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 01648$
	xor	a, #0x80
01648$:
	jp	P, 00172$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:191: (cross_x >= goal_right - 4 && cross_x <= goal_right + 4)) {
	ld	a, l
	sub	a, #0x98
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00182$
	ld	a, #0xa0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 01649$
	xor	a, #0x80
01649$:
	jp	M, 00182$
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:192: hit_post = TRUE;
	ld	-1 (ix), #0x01
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:196: if (hit_post) {
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00196$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:201: i16 out_dx = in_dx;
	ld	a, -25 (ix)
	ld	-9 (ix), a
	ld	a, -24 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:202: i16 out_dy = -in_dy;
	xor	a, a
	sub	a, -23 (ix)
	ld	-7 (ix), a
	sbc	a, a
	sub	a, -22 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:205: i16 len = (out_dx > 0 ? out_dx : -out_dx) + (out_dy > 0 ? out_dy : -out_dy);
	xor	a, a
	cp	a, -15 (ix)
	sbc	a, -14 (ix)
	jp	PO, 01650$
	xor	a, #0x80
01650$:
	jp	P, 00458$
	ld	a, -25 (ix)
	ld	-11 (ix), a
	ld	a, -24 (ix)
	ld	-10 (ix), a
	jp	00459$
00458$:
	xor	a, a
	sub	a, -25 (ix)
	ld	-11 (ix), a
	sbc	a, a
	sub	a, -24 (ix)
	ld	-10 (ix), a
00459$:
	ld	a, -7 (ix)
	ld	-15 (ix), a
	ld	a, -6 (ix)
	ld	-14 (ix), a
	xor	a, a
	cp	a, -15 (ix)
	sbc	a, -14 (ix)
	jp	PO, 01651$
	xor	a, #0x80
01651$:
	jp	P, 00460$
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
	jp	00461$
00460$:
	xor	a, a
	sub	a, -7 (ix)
	ld	-13 (ix), a
	sbc	a, a
	sub	a, -6 (ix)
	ld	-12 (ix), a
00461$:
	ld	a, -11 (ix)
	add	a, -13 (ix)
	ld	c, a
	ld	a, -10 (ix)
	adc	a, -12 (ix)
	ld	-7 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:206: if (len == 0) len = 1;
	ld	-6 (ix), a
	or	a, -7 (ix)
	jr	NZ, 00185$
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:208: out_dx = (out_dx * 60) / len;
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	call	__divsint
	ld	-9 (ix), e
	ld	-8 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:209: out_dy = (out_dy * 60) / len;
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	call	__divsint
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:212: if (out_dy > 0) {
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:213: if (Ball->ly < top_boundary + 2) Ball->ly = top_boundary + 2;
	ld	c, -19 (ix)
	ld	b, -18 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:212: if (out_dy > 0) {
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	PO, 01652$
	xor	a, #0x80
01652$:
	jp	P, 00191$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:213: if (Ball->ly < top_boundary + 2) Ball->ly = top_boundary + 2;
	ld	a, c
	sub	a, #0x1a
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00192$
	ld	hl, #0x001a
	ld	((_SwSprite + 326)), hl
	jp	00192$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:215: if (Ball->ly > bottom_boundary - 2) Ball->ly = bottom_boundary - 2;
	ld	a, #0xdc
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00192$
	ld	hl, #0x01dc
	ld	((_SwSprite + 326)), hl
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:218: g_pass_start_x = Ball->lx;
	ld	a, (#(_SwSprite + 322) + 0)
	ld	(_g_pass_start_x+0), a
	xor	a, a
	ld	(_g_pass_start_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:219: g_pass_start_y = Ball->ly;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:221: g_pass_target_x = g_pass_start_x + out_dx;
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	hl, #_g_pass_target_x
	ld	a, (_g_pass_start_x+0)
	add	a, c
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_x+1)
	adc	a, b
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:222: g_pass_target_y = g_pass_start_y + out_dy;
	ld	a, e
	ld	hl, #_g_pass_start_y
	ld	iy, #_g_pass_target_y
	add	a, (hl)
	ld	0 (iy), a
	inc	hl
	ld	a, d
	adc	a, (hl)
	inc	iy
	ld	0 (iy), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:224: g_pass_max_frames = 10; // Rimbalzo rapido
	ld	hl, #_g_pass_max_frames
	ld	(hl), #0x0a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:225: Ball->count = 0; 
	ld	hl, #0x0000
	ld	((_SwSprite + 343)), hl
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:233: scale = (progress * g_pass_max_height) / half_frame;
	ld	c, -26 (ix)
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:231: if (progress <= half_frame) {
	ld	a, -26 (ix)
	sub	a, -27 (ix)
	jr	C, 00199$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:233: scale = (progress * g_pass_max_height) / half_frame;
	push	bc
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	h, -27 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
01653$:
	add	hl, hl
	jr	NC, 01654$
	add	hl, de
01654$:
	djnz	01653$
	pop	de
	call	__divsint
	ld	b, e
	jp	00200$
00199$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:236: u8 progress_down = progress - half_frame;
	ld	a, -27 (ix)
	sub	a, -26 (ix)
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:237: scale = g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
	push	bc
	ld	a, (#_g_pass_max_height + 0)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
01655$:
	add	hl, hl
	jr	NC, 01656$
	add	hl, de
01656$:
	djnz	01655$
	pop	bc
	ld	a, (_g_pass_max_frames+0)
	ld	d, #0x00
	sub	a, c
	ld	e, a
	ld	a, d
	sbc	a, b
	ld	d, a
	call	__divsint
	ld	a, (_g_pass_max_height+0)
	sub	a, e
	ld	b, a
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:239: if (scale > 7) scale = 7; // Clamp a 7 (SPR_BALL_SIZE_8 = SPR_BALL_SIZE_1 + 7)
	ld	a, #0x07
	sub	a, b
	jr	NC, 00202$
	ld	b, #0x07
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:240: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
	push	bc
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:242: Ball->count++;
	ld	bc, (#(_SwSprite + 343) + 0)
	inc	bc
	ld	((_SwSprite + 343)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:243: if (Ball->count >= g_pass_max_frames) {
	ld	a, (_g_pass_max_frames+0)
	ld	e, a
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	C, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:244: Ball->anim = 0; // Passaggio completato
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:245: Ball->count = 0;
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:246: Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:247: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); // Torna a scale 1
	xor	a, a
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00219$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:251: u8 speed = Ball->anim + 1;
	ld	a, c
	inc	a
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:252: if (Ball->dx > 0) Ball->lx += speed;
	ld	hl, #(_SwSprite + 322) + 17
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01657$
	xor	a, #0x80
01657$:
	jp	P, 00208$
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-6 (ix), a
	add	a, -1 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00209$
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:253: else if (Ball->dx < 0) Ball->lx -= speed;
	bit	7, c
	jr	Z, 00209$
	ld	a, (#(_SwSprite + 322) + 0)
	sub	a, -1 (ix)
	ld	(#(_SwSprite + 322)),a
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:255: if (Ball->dy > 0) Ball->ly += speed;
	ld	a, (#(_SwSprite + 340) + 0)
	ld	-6 (ix), a
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01658$
	xor	a, #0x80
01658$:
	jp	P, 00213$
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -7 (ix)
	add	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	adc	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00214$
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:256: else if (Ball->dy < 0) Ball->ly -= speed;
	bit	7, -6 (ix)
	jr	Z, 00214$
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:258: Ball->anim--;
	ld	bc, (#(_SwSprite + 341) + 0)
	dec	bc
	ld	((_SwSprite + 341)), bc
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:263: u8 carriers[2] = {T1_Carrier, T2_Carrier};
	ld	a, (_T1_Carrier+0)
	ld	-45 (ix), a
	ld	a, (_T2_Carrier+0)
	ld	-44 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:264: u8 receivers[2] = {T1_Receiver, T2_Receiver};
	ld	a, (_T1_Receiver+0)
	ld	-43 (ix), a
	ld	a, (_T2_Receiver+0)
	ld	-42 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: for (u8 i = 0; i < 2; i++) { // i=0 per Team 1 (P2/CPU), i=1 per Team 2 (P1)
	ld	-1 (ix), #0x00
00440$:
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NC, 00398$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:267: u8 carrier = carriers[i];
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:268: if (carrier == 0xFF) continue;
	ld	-41 (ix), a
	inc	a
	jp	Z,00397$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:270: u8 dir = g_player_input[i].direction;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	de, #_g_player_input
	add	hl, de
	ld	-40 (ix), l
	ld	-39 (ix), h
	ld	a, (hl)
	ld	-38 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:271: bool trigger_pressed = g_player_input[i].trigger_pressed;
	ld	c, -40 (ix)
	ld	b, -39 (ix)
	inc	bc
	ld	a, (bc)
	ld	-37 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:272: struct ObjectInfo* Carrier = &SwSprite[carrier];
	ld	c, -41 (ix)
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
	ld	a, #<(_SwSprite)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-36 (ix), a
	ld	a, -6 (ix)
	ld	-35 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:273: u8 carrier_team = (carrier < 7) ? TEAM_1 : TEAM_2;
	ld	a, -41 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	-34 (ix), a
	or	a, a
	jr	Z, 00462$
	ld	de, #0x0000
	jp	00463$
00462$:
	ld	de, #0x0001
00463$:
	ld	-33 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:276: if (Carrier->count > 0) {
	ld	a, -36 (ix)
	add	a, #0x15
	ld	-32 (ix), a
	ld	a, -35 (ix)
	adc	a, #0x00
	ld	-31 (ix), a
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:278: Carrier->lx += Carrier->dx;
	ld	a, -36 (ix)
	add	a, #0x11
	ld	-30 (ix), a
	ld	a, -35 (ix)
	adc	a, #0x00
	ld	-29 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:279: Carrier->ly += Carrier->dy;
	ld	a, -36 (ix)
	add	a, #0x04
	ld	-28 (ix), a
	ld	a, -35 (ix)
	adc	a, #0x00
	ld	-27 (ix), a
	ld	a, -36 (ix)
	add	a, #0x12
	ld	-26 (ix), a
	ld	a, -35 (ix)
	adc	a, #0x00
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:286: Carrier->frame = (Carrier->dx > 0) ? 
	ld	a, -36 (ix)
	add	a, #0x0f
	ld	-11 (ix), a
	ld	a, -35 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:276: if (Carrier->count > 0) {
	ld	a, b
	or	a, c
	jp	Z, 00238$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:277: Carrier->count--;
	dec	bc
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:278: Carrier->lx += Carrier->dx;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, -7 (ix)
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:279: Carrier->ly += Carrier->dy;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	-13 (ix), a
	rlca
	sbc	a, a
	ld	-12 (ix), a
	ld	a, -8 (ix)
	ld	-15 (ix), a
	ld	a, -7 (ix)
	ld	-14 (ix), a
	ld	a, -13 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, -15 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	adc	a, -14 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:281: if (Carrier->lx < 16) Carrier->lx = 16;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	sub	a, #0x10
	jr	NC, 00223$
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	(hl), #0x10
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:282: if (Carrier->lx > 224) Carrier->lx = 224;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	c, (hl)
	ld	a, #0xe0
	sub	a, c
	jr	NC, 00225$
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	(hl), #0xe0
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:283: if (Carrier->ly < 24) Carrier->ly = 24;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00227$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:284: if (Carrier->ly > 488) Carrier->ly = 488;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xe8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00229$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x01
00229$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:286: Carrier->frame = (Carrier->dx > 0) ? 
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01660$
	xor	a, #0x80
01660$:
	jp	P, 00464$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:287: ((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_WEST : SPR_T2_PLAYER_TACKLE_FROM_WEST) :
	ld	a, -33 (ix)
	or	a, a
	jr	NZ, 00466$
	ld	de, #0x001e
	jp	00465$
00466$:
	ld	de, #0x008e
	jp	00465$
00464$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:288: ((carrier_team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_EAST : SPR_T2_PLAYER_TACKLE_FROM_EAST);
	ld	a, -33 (ix)
	or	a, a
	jr	NZ, 00468$
	ld	de, #0x001f
	jp	00469$
00468$:
	ld	de, #0x008f
00469$:
00465$:
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:278: Carrier->lx += Carrier->dx;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:291: u16 b_dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
	ld	hl, #(_SwSprite + 322)
	ld	d, (hl)
	ld	c, d
	ld	b, #0x00
	ld	-7 (ix), e
	ld	-6 (ix), #0x00
	ld	a, d
	sub	a, e
	jr	NC, 00470$
	ld	a, -7 (ix)
	sub	a, c
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, b
	jp	00471$
00470$:
	ld	a, c
	sub	a, -7 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -6 (ix)
00471$:
	ld	-7 (ix), c
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:279: Carrier->ly += Carrier->dy;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:292: u16 b_dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00472$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	jp	00473$
00472$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
00473$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:293: if (b_dist_x <= 12 && b_dist_y <= 12 && Ball->anim < 5 && RestartType == 0) {
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, #0x0c
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	C, 00397$
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C, 00397$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC, 00397$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00397$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:294: LastTouchTeam = carrier_team;
	ld	a, -33 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:295: LastTouchPlayer = carrier;
	ld	a, -41 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:296: if (Ball->anim > 3) Ball->anim = 3;
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00231$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:297: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:298: Carrier->count = 0; // Ferma la scivolata appena ruba palla
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:300: continue; // Salta il resto dei comandi e dell'animazione
	jp	00397$
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:303: Carrier->dx = 0; Carrier->dy = 0;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x00
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:304: switch(dir) {
	ld	a, #0x08
	sub	a, -38 (ix)
	jp	C, 00247$
	ld	c, -38 (ix)
	ld	b, #0x00
	ld	hl, #01661$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
01661$:
	jp	00247$
	jp	00239$
	jp	00240$
	jp	00241$
	jp	00242$
	jp	00243$
	jp	00244$
	jp	00245$
	jp	00246$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:305: case DIRECTION_UP: Carrier->dy = -2; break;
00239$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0xfe
	jp	00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:306: case DIRECTION_UP_RIGHT: Carrier->dy = -2; Carrier->dx = 2; break;
00240$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0xfe
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x02
	jp	00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:307: case DIRECTION_RIGHT: Carrier->dx = 2; break;
00241$:
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x02
	jp	00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:308: case DIRECTION_DOWN_RIGHT: Carrier->dy = 2; Carrier->dx = 2; break;
00242$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x02
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x02
	jp	00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:309: case DIRECTION_DOWN: Carrier->dy = 2; break;
00243$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x02
	jp	00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:310: case DIRECTION_DOWN_LEFT: Carrier->dy = 2; Carrier->dx = -2; break;
00244$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x02
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0xfe
	jp	00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:311: case DIRECTION_LEFT: Carrier->dx = -2; break;
00245$:
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0xfe
	jp	00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:312: case DIRECTION_UP_LEFT: Carrier->dy = -2; Carrier->dx = -2; break;
00246$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0xfe
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0xfe
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:313: }
00247$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:278: Carrier->lx += Carrier->dx;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:316: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, c
	or	a, a
	jr	NZ, 00260$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00261$
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:317: g_last_dx[i] = Carrier->dx;
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:318: g_last_dy[i] = Carrier->dy;
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	b, a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:320: i16 next_x = (i16)Carrier->lx + Carrier->dx;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	c, (hl)
	ld	b, #0x00
	ld	l, -30 (ix)
	ld	h, -29 (ix)
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
	ld	c, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:321: if (next_x < 16) Carrier->lx = 16;
	ld	e, c
	ld	b, h
	ld	a, e
	sub	a, #0x10
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00252$
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	(hl), #0x10
	jp	00253$
00252$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:322: else if (next_x > 224) Carrier->lx = 224;
	ld	a, #0xe0
	cp	a, e
	ld	a, #0x00
	sbc	a, b
	jp	PO, 01662$
	xor	a, #0x80
01662$:
	jp	P, 00249$
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	(hl), #0xe0
	jp	00253$
00249$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:323: else Carrier->lx = (u8)next_x;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	(hl), c
00253$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:325: i16 next_y = (i16)Carrier->ly + Carrier->dy;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
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
	add	hl, bc
	ld	-9 (ix), l
	ld	-8 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:326: if (next_y < 24) Carrier->ly = 24;
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x18
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00258$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
	jp	00259$
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:327: else if (next_y > 488) Carrier->ly = 488;
	ld	a, #0xe8
	cp	a, -7 (ix)
	ld	a, #0x01
	sbc	a, -6 (ix)
	jp	PO, 01663$
	xor	a, #0x80
01663$:
	jp	P, 00255$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x01
	jp	00259$
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:328: else Carrier->ly = (u16)next_y;
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00259$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:330: Carrier->anim++;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:331: const u8 walk_seq[4] = {0, 1, 2, 1}; 
	ld	-45 (ix), #0x00
	ld	-44 (ix), #0x01
	ld	-43 (ix), #0x02
	ld	-42 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:332: Carrier->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
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
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	b, (hl)
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	ld	e, b
	push	de
	push	af
	inc	sp
	ld	a, -41 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00262$
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:335: Carrier->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, carrier, g_last_dx[i], g_last_dy[i]);
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	h, a
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
	ld	a, -41 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00262$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:339: u16 dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:76: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-24 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:339: u16 dist_x = (Carrier->lx > Ball->lx) ? (Carrier->lx - Ball->lx) : (Ball->lx - Carrier->lx);
	ld	-9 (ix), c
	ld	-8 (ix), #0x00
	ld	a, -24 (ix)
	ld	-23 (ix), a
	ld	-22 (ix), #0x00
	ld	a, -24 (ix)
	sub	a, c
	jr	NC, 00474$
	ld	a, -9 (ix)
	sub	a, -23 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -22 (ix)
	ld	-6 (ix), a
	jp	00475$
00474$:
	ld	a, -23 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -22 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00475$:
	ld	a, -7 (ix)
	ld	-21 (ix), a
	ld	a, -6 (ix)
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:279: Carrier->ly += Carrier->dy;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-19 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:340: u16 dist_y = (Carrier->ly > Ball->ly) ? (Carrier->ly - Ball->ly) : (Ball->ly - Carrier->ly);
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -19 (ix)
	ld	a, -8 (ix)
	sbc	a, -18 (ix)
	jr	NC, 00476$
	ld	a, -19 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -18 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	jp	00477$
00476$:
	ld	a, -9 (ix)
	sub	a, -19 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -18 (ix)
	ld	-6 (ix), a
00477$:
	ld	a, -7 (ix)
	ld	-17 (ix), a
	ld	a, -6 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:342: bool is_ball_carried = FALSE;
	ld	-15 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:258: Ball->anim--;
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:343: if (LastTouchPlayer != 0xFF && Ball->anim < 5) {
	ld	a, (_LastTouchPlayer+0)
	inc	a
	ld	a, #0x01
	jr	Z, 01665$
	xor	a, a
01665$:
	ld	-14 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
	bit	0, -14 (ix)
	jp	NZ, 00268$
	ld	a, -13 (ix)
	sub	a, #0x05
	ld	a, -12 (ix)
	sbc	a, #0x00
	jp	NC, 00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:344: u16 c_dist_x = (SwSprite[LastTouchPlayer].lx > Ball->lx) ? (SwSprite[LastTouchPlayer].lx - Ball->lx) : (Ball->lx - SwSprite[LastTouchPlayer].lx);
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
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -6 (ix)
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -24 (ix)
	sub	a, -6 (ix)
	jr	NC, 00478$
	ld	a, -9 (ix)
	sub	a, -23 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -22 (ix)
	ld	-6 (ix), a
	jp	00479$
00478$:
	ld	a, -23 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -22 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00479$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:345: u16 c_dist_y = (SwSprite[LastTouchPlayer].ly > Ball->ly) ? (SwSprite[LastTouchPlayer].ly - Ball->ly) : (Ball->ly - SwSprite[LastTouchPlayer].ly);
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, -7 (ix)
	ld	a, d
	sbc	a, -6 (ix)
	jr	NC, 00480$
	ld	a, -7 (ix)
	sub	a, e
	ld	e, a
	ld	a, -6 (ix)
	sbc	a, d
	ld	d, a
	jp	00481$
00480$:
	ld	a, e
	sub	a, -7 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -6 (ix)
	ld	d, a
00481$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:346: if (c_dist_x <= 16 && c_dist_y <= 16) is_ball_carried = TRUE;
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00268$
	ld	a, #0x10
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	C, 00268$
	ld	-15 (ix), #0x01
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:349: bool can_walk_steal = (LastTouchTeam == carrier_team || LastTouchTeam == 0xFF || !is_ball_carried);
	ld	a, (_LastTouchTeam+0)
	sub	a, -33 (ix)
	ld	a, #0x01
	jr	Z, 01667$
	xor	a, a
01667$:
	ld	-6 (ix), a
	bit	0, -6 (ix)
	jr	NZ, 00483$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	Z, 00483$
	ld	a, -15 (ix)
	or	a, a
	jr	Z, 00483$
	ld	b, #0x00
	jp	00484$
00483$:
	ld	b, #0x01
00484$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:350: u8 touch_dist = (LastTouchTeam == carrier_team || LastTouchTeam == 0xFF) ? 24 : 12; 
	bit	0, -6 (ix)
	jr	NZ, 00491$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00488$
00491$:
	ld	de, #0x0018
	jp	00489$
00488$:
	ld	de, #0x000c
00489$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:351: if (Ball->anim >= 6) touch_dist = 8; // I tiri potenti sfuggono facilmente al tackle
	ld	a, -13 (ix)
	sub	a, #0x06
	ld	a, -12 (ix)
	sbc	a, #0x00
	jr	C, 00271$
	ld	e, #0x08
00271$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:354: if (can_walk_steal && dist_x <= touch_dist && dist_y <= touch_dist && Ball->anim != 5 && RestartType == 0) {
	ld	a, b
	or	a, a
	jp	Z, 00391$
	ld	c, #0x00
	ld	a, e
	sub	a, -21 (ix)
	ld	a, c
	sbc	a, -20 (ix)
	jp	C, 00391$
	ld	a, e
	sub	a, -17 (ix)
	ld	a, c
	sbc	a, -16 (ix)
	jp	C, 00391$
	ld	a, -13 (ix)
	sub	a, #0x05
	or	a, -12 (ix)
	jp	Z,00391$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00391$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:356: bool offside = FALSE;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:357: if (carrier < 7 && LastTouchTeam == TEAM_1 && LastTouchPlayer != carrier) {
	ld	a, -34 (ix)
	or	a, a
	jp	Z, 00283$
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	NZ, 00283$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -41 (ix)
	jr	Z, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:358: u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	hl, #_SwSprite + 188
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	hl, #_SwSprite + 211
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -10 (ix)
	ld	a, -6 (ix)
	sbc	a, -9 (ix)
	jr	NC, 00493$
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	ld	-6 (ix), a
00493$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:359: if (Carrier->ly > offside_line + 8 && Carrier->ly > 256) offside = TRUE;
	ld	a, -7 (ix)
	add	a, #0x08
	ld	-10 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	a, -19 (ix)
	ld	-7 (ix), a
	ld	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -10 (ix)
	sub	a, -7 (ix)
	ld	a, -9 (ix)
	sbc	a, -6 (ix)
	jp	NC, 00284$
	xor	a, a
	cp	a, -7 (ix)
	ld	a, #0x01
	sbc	a, -6 (ix)
	jp	NC, 00284$
	ld	-8 (ix), #0x01
	jp	00284$
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:360: } else if (carrier >= 7 && LastTouchTeam == TEAM_2 && LastTouchPlayer != carrier) {
	ld	c, -34 (ix)
	bit	0, c
	jr	NZ, 00284$
	ld	a, (_LastTouchTeam+0)
	dec	a
	jr	NZ, 00284$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -41 (ix)
	jr	Z, 00284$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:361: u16 offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
	ld	hl, #_SwSprite + 27
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	hl, #_SwSprite + 50
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -10 (ix)
	sub	a, -7 (ix)
	ld	a, -9 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00495$
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	ld	-6 (ix), a
00495$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:362: if (Carrier->ly < offside_line - 8 && Carrier->ly < 256) offside = TRUE;
	ld	a, -7 (ix)
	add	a, #0xf8
	ld	-10 (ix), a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	-9 (ix), a
	ld	a, -19 (ix)
	ld	-7 (ix), a
	ld	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -10 (ix)
	ld	a, -6 (ix)
	sbc	a, -9 (ix)
	jr	NC, 00284$
	ld	a, -6 (ix)
	sub	a, #0x01
	jr	NC, 00284$
	ld	-8 (ix), #0x01
00284$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:135: Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:364: if (offside) {
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00288$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:365: *game_state = 6; // Ferma il gioco
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:366: RestartType = RESTART_OFFSIDE; // Imposta battuta punizione
	ld	hl, #_RestartType
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:367: RestartSideX = Carrier->lx; // Punto esatto in cui ha toccato la palla
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	ld	(_RestartSideX+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:368: RestartSideY = Carrier->ly;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_RestartSideY+0), a
	ld	a, (hl)
	ld	(_RestartSideY+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:369: CallFnc_VOID(SEG_EVENTS, EventOffside);
	ld	de, #_EventOffside
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:370: Ball->anim = Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:371: Ball->frame = SPR_BALL_SIZE_1; // Forza la dimensione a terra
	ld	l, #0x60
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:372: T1_Carrier = T2_Carrier = 0xFF;
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:373: TimerEnabled = FALSE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:374: *wait_secs = 2; *start_sec = Frms;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:375: continue; // Salta il controllo palla
	jp	00397$
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:378: LastTouchTeam = (carrier < 7) ? TEAM_1 : TEAM_2;
	ld	a, -34 (ix)
	or	a, a
	jr	Z, 00497$
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00498$
00497$:
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
00498$:
	ld	a, -7 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:379: LastTouchPlayer = carrier;
	ld	a, -41 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:380: Ball->frame = SPR_BALL_SIZE_1; // Assicura che la palla sia a terra quando tra i piedi
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:278: Carrier->lx += Carrier->dx;
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:316: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:384: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, c
	or	a, a
	jr	NZ, 00289$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00290$
00289$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:385: c_dx = (Carrier->dx > 0) ? 1 : ((Carrier->dx < 0) ? -1 : 0);
	xor	a, a
	sub	a, c
	jp	PO, 01676$
	xor	a, #0x80
01676$:
	jp	P, 00499$
	ld	bc, #0x0001
	jp	00500$
00499$:
	bit	7, c
	jr	Z, 00501$
	ld	bc, #0xffff
	jp	00502$
00501$:
	ld	bc, #0x0000
00502$:
00500$:
	ld	-9 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:386: c_dy = (Carrier->dy > 0) ? 1 : ((Carrier->dy < 0) ? -1 : 0);
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01677$
	xor	a, #0x80
01677$:
	jp	P, 00503$
	ld	bc, #0x0001
	jp	00504$
00503$:
	bit	7, -6 (ix)
	jr	Z, 00505$
	ld	bc, #0xffff
	jp	00506$
00505$:
	ld	bc, #0x0000
00506$:
00504$:
	ld	-8 (ix), c
	jp	00291$
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:389: c_dx = (g_last_dx[i] > 0) ? 1 : ((g_last_dx[i] < 0) ? -1 : 0);
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
	jp	PO, 01678$
	xor	a, #0x80
01678$:
	jp	P, 00507$
	ld	de, #0x0001
	jp	00508$
00507$:
	bit	7, c
	jr	Z, 00509$
	ld	de, #0xffff
	jp	00510$
00509$:
	ld	de, #0x0000
00510$:
00508$:
	ld	-9 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:390: c_dy = (g_last_dy[i] > 0) ? 1 : ((g_last_dy[i] < 0) ? -1 : 0);
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
	jp	PO, 01679$
	xor	a, #0x80
01679$:
	jp	P, 00511$
	ld	bc, #0x0001
	jp	00512$
00511$:
	bit	7, c
	jr	Z, 00513$
	ld	bc, #0xffff
	jp	00514$
00513$:
	ld	bc, #0x0000
00514$:
00512$:
	ld	-8 (ix), c
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:392: receivers[i] = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, carrier, 0xFF, c_dx, c_dy);
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #4
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, -8 (ix)
	push	af
	inc	sp
	ld	h, -9 (ix)
	ld	l, #0xff
	push	hl
	ld	a, -41 (ix)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U16_P4B
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:395: bool action_taken = FALSE;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:396: if (trigger_pressed) {						
	ld	a, -37 (ix)
	or	a, a
	jp	Z, 00325$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:397: bool is_shooting = FALSE;
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:398: u8 dir = g_player_input[i].direction;
	ld	l, -40 (ix)
	ld	h, -39 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:402: if (i == 1 && Carrier->ly < 256 && Field.ly == 0) {
	ld	a, -1 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01681$
	xor	a, a
01681$:
	ld	-15 (ix), a
	or	a, a
	jr	Z, 00307$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	sub	a, #0x01
	jr	NC, 00307$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, h
	or	a, l
	jr	NZ, 00307$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:403: if (dir == DIRECTION_UP || dir == DIRECTION_UP_LEFT || dir == DIRECTION_UP_RIGHT) {
	ld	a, -11 (ix)
	dec	a
	jr	Z, 00293$
	ld	a, -11 (ix)
	sub	a, #0x08
	jr	Z, 00293$
	ld	a, -11 (ix)
	sub	a, #0x02
	jr	NZ, 00308$
00293$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:404: is_shooting = TRUE;
	ld	-12 (ix), #0x01
	jp	00308$
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:408: else if (i == 0 && GameMode == GAMEMODE_P1_VS_P2 && Carrier->ly > 256 && Field.ly == (FIELD_HEIGHT - 192)) {
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00308$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00308$
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	xor	a, a
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00308$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, l
	sub	a, #0x40
	jr	NZ, 00308$
	dec	h
	jr	NZ, 00308$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:409: if (dir == DIRECTION_DOWN || dir == DIRECTION_DOWN_LEFT || dir == DIRECTION_DOWN_RIGHT) {
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	Z, 00297$
	ld	a, -11 (ix)
	sub	a, #0x06
	jr	Z, 00297$
	ld	a, -11 (ix)
	sub	a, #0x04
	jr	NZ, 00308$
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:410: is_shooting = TRUE;
	ld	-12 (ix), #0x01
00308$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:414: if (is_shooting) {
	ld	a, -12 (ix)
	or	a, a
	jp	Z, 00322$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:415: action_taken = TRUE;
	ld	-10 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:416: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:417: g_pass_receiver = 0xFF; 
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:419: g_pass_start_x = Carrier->lx;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:420: g_pass_start_y = Carrier->ly;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:422: g_pass_target_x = g_h_arrow_x; // Direzione della freccia
	ld	hl, (_g_h_arrow_x)
	ld	(_g_pass_target_x), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:423: g_pass_target_y = (i == 1) ? 16 : 496; // Dentro la porta
	ld	a, -15 (ix)
	or	a, a
	jr	Z, 00515$
	ld	-7 (ix), #0x10
	xor	a, a
	ld	-6 (ix), a
	jp	00516$
00515$:
	ld	-7 (ix), #0xf0
	ld	-6 (ix), #0x01
00516$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(_g_pass_target_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:425: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00517$
	ld	hl, #_g_pass_start_x
	ld	a, (_g_pass_target_x+0)
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (_g_pass_target_x+1)
	sbc	a, (hl)
	ld	-6 (ix), a
	jp	00518$
00517$:
	ld	hl, #_g_pass_target_x
	ld	a, (_g_pass_start_x+0)
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (_g_pass_start_x+1)
	sbc	a, (hl)
	ld	-6 (ix), a
00518$:
	ld	a, -7 (ix)
	ld	-12 (ix), a
	ld	a, -6 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:426: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00519$
	ld	hl, #_g_pass_start_y
	ld	a, (_g_pass_target_y+0)
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	sbc	a, (hl)
	ld	-6 (ix), a
	jp	00520$
00519$:
	ld	hl, #_g_pass_target_y
	ld	a, (_g_pass_start_y+0)
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	sbc	a, (hl)
	ld	-6 (ix), a
00520$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:428: g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente e veloce
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	add	hl, bc
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:429: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x0a
	jr	NC, 00312$
	ld	0 (iy), #0x0a
00312$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:430: if (g_pass_max_frames > 25) g_pass_max_frames = 25;
	ld	a, #0x19
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00314$
	ld	0 (iy), #0x19
00314$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:431: g_pass_max_height = 2; // Tiro rasoterra e limitato
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:433: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:434: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00325$
00322$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:437: u8 receiver = receivers[i];
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:439: if (receiver != 0xFF) {
	ld	a, e
	inc	a
	jp	Z,00325$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:441: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:443: g_pass_receiver = receiver;
	ld	hl, #_g_pass_receiver
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:444: g_pass_start_x = Carrier->lx;
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	xor	a, a
	ld	(_g_pass_start_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:445: g_pass_start_y = Carrier->ly;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:446: g_pass_target_x = SwSprite[receiver].lx;
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
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ex	de, hl
	ld	a, (de)
	ld	(_g_pass_target_x+0), a
	xor	a, a
	ld	(_g_pass_target_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:447: g_pass_target_y = SwSprite[receiver].ly;
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:449: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00521$
	ld	bc, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, bc
	jp	00522$
00521$:
	ld	bc, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
00522$:
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:450: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00523$
	ld	bc, (_g_pass_start_y)
	ld	hl, (_g_pass_target_y)
	cp	a, a
	sbc	hl, bc
	jp	00524$
00523$:
	ld	bc, (_g_pass_target_y)
	ld	hl, (_g_pass_start_y)
	cp	a, a
	sbc	hl, bc
00524$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:451: g_pass_max_frames = (r_dx + r_dy) / 5; // Velocità di volo passaggi
	add	hl, de
	ld	de, #0x0005
	call	__divuint
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:452: if (g_pass_max_frames < 8) g_pass_max_frames = 8;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x08
	jr	NC, 00316$
	ld	0 (iy), #0x08
00316$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:453: if (g_pass_max_frames > 34) g_pass_max_frames = 34;
	ld	a, #0x22
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00318$
	ld	0 (iy), #0x22
00318$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:454: g_pass_max_height = 7; // Passaggio normale alto
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:456: Ball->anim = 5; // Flag per passaggio
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:457: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:458: action_taken = TRUE;
	ld	-10 (ix), #0x01
00325$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:463: if (!action_taken && Ball->anim == 0 && (Ball->dx != c_dx || Ball->dy != c_dy)) {
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00353$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00353$
	ld	hl, #(_SwSprite + 339)
	ld	c, (hl)
	ld	a, -9 (ix)
	sub	a, c
	jr	NZ, 00352$
	ld	hl, #(_SwSprite + 340)
	ld	c, (hl)
	ld	a, -8 (ix)
	sub	a, c
	jp	Z,00353$
00352$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:465: i8 off_x = 0; i8 off_y = 6;
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:466: if (c_dx > 0) off_x = 9; else if (c_dx < 0) off_x = -9;
	xor	a, a
	sub	a, -9 (ix)
	jp	PO, 01698$
	xor	a, #0x80
01698$:
	jp	P, 00329$
	ld	-7 (ix), #0x09
	jp	00330$
00329$:
	bit	7, -9 (ix)
	jr	Z, 00330$
	ld	-7 (ix), #0xf7
00330$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:467: if (c_dy > 0) off_y = 8; else if (c_dy < 0) off_y = -3;
	xor	a, a
	sub	a, -8 (ix)
	jp	PO, 01699$
	xor	a, #0x80
01699$:
	jp	P, 00334$
	ld	-6 (ix), #0x08
	jp	00335$
00334$:
	bit	7, -8 (ix)
	jr	Z, 00335$
	ld	-6 (ix), #0xfd
00335$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:469: Ball->dx = c_dx;
	ld	hl, #(_SwSprite + 339)
	ld	a, -9 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:470: Ball->dy = c_dy;
	ld	hl, #(_SwSprite + 340)
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:471: Ball->lx = (u8)(Carrier->lx + off_x);
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	add	a, -7 (ix)
	ld	-7 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:472: Ball->ly = (Carrier->ly + off_y) & 511;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	rlca
	sbc	a, a
	ld	-9 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	adc	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	and	a, #0x01
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00397$
00353$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:473: } else if (!action_taken && Ball->anim == 0) {
	ld	a, -10 (ix)
	or	a, a
	jp	NZ, 00397$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00397$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:475: i8 off_x = 0; i8 off_y = 6;
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:476: if (c_dx > 0) off_x = 9; else if (c_dx < 0) off_x = -9;
	xor	a, a
	sub	a, -9 (ix)
	jp	PO, 01700$
	xor	a, #0x80
01700$:
	jp	P, 00339$
	ld	-7 (ix), #0x09
	jp	00340$
00339$:
	bit	7, -9 (ix)
	jr	Z, 00340$
	ld	-7 (ix), #0xf7
00340$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:477: if (c_dy > 0) off_y = 8; else if (c_dy < 0) off_y = -3;
	xor	a, a
	sub	a, -8 (ix)
	jp	PO, 01701$
	xor	a, #0x80
01701$:
	jp	P, 00344$
	ld	-6 (ix), #0x08
	jp	00345$
00344$:
	bit	7, -8 (ix)
	jr	Z, 00345$
	ld	-6 (ix), #0xfd
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:479: Ball->lx = (u8)(Carrier->lx + off_x);
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	add	a, -7 (ix)
	ld	-7 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:480: Ball->ly = (Carrier->ly + off_y) & 511;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	rlca
	sbc	a, a
	ld	-9 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	adc	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	and	a, #0x01
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:482: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	or	a, a
	jr	NZ, 00346$
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	or	a, a
	jp	Z, 00397$
00346$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:483: Ball->anim = 3; // Colpetto in avanti medio-corto
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:484: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00397$
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:489: if (trigger_pressed && LastTouchTeam != carrier_team && LastTouchTeam != 0xFF && Carrier->count == 0 && RestartType == 0) {
	ld	a, -37 (ix)
	or	a, a
	jp	Z, 00397$
	bit	0, -6 (ix)
	jp	NZ, 00397$
	ld	a, (_LastTouchTeam+0)
	inc	a
	jp	Z,00397$
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	or	a, c
	jp	NZ, 00397$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00397$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:490: bool opponent_has_ball = FALSE;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:491: if (LastTouchPlayer != 0xFF && Ball->anim < 5) {
	bit	0, -14 (ix)
	jp	NZ, 00362$
	ld	a, -13 (ix)
	sub	a, #0x05
	ld	a, -12 (ix)
	sbc	a, #0x00
	jp	NC, 00362$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:492: u16 opp_bx = (SwSprite[LastTouchPlayer].lx > Ball->lx) ? (SwSprite[LastTouchPlayer].lx - Ball->lx) : (Ball->lx - SwSprite[LastTouchPlayer].lx);
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
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -8 (ix)
	ld	-11 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -7 (ix)
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -24 (ix)
	sub	a, -9 (ix)
	jr	NC, 00525$
	ld	a, -8 (ix)
	sub	a, -23 (ix)
	ld	-13 (ix), a
	ld	a, -7 (ix)
	sbc	a, -22 (ix)
	ld	-12 (ix), a
	jp	00526$
00525$:
	ld	a, -23 (ix)
	sub	a, -8 (ix)
	ld	-13 (ix), a
	ld	a, -22 (ix)
	sbc	a, -7 (ix)
	ld	-12 (ix), a
00526$:
	ld	a, -13 (ix)
	ld	-8 (ix), a
	ld	a, -12 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:493: u16 opp_by = (SwSprite[LastTouchPlayer].ly > Ball->ly) ? (SwSprite[LastTouchPlayer].ly - Ball->ly) : (Ball->ly - SwSprite[LastTouchPlayer].ly);
	ld	a, -11 (ix)
	ld	-14 (ix), a
	ld	a, -10 (ix)
	ld	-13 (ix), a
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	sub	a, -14 (ix)
	ld	a, -11 (ix)
	sbc	a, -13 (ix)
	jr	NC, 00527$
	ld	a, -14 (ix)
	sub	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	sbc	a, -11 (ix)
	ld	-9 (ix), a
	jp	00528$
00527$:
	ld	a, -12 (ix)
	sub	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sbc	a, -13 (ix)
	ld	-9 (ix), a
00528$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:494: if (opp_bx <= 16 && opp_by <= 16) opponent_has_ball = TRUE;
	ld	a, #0x10
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jr	C, 00362$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00362$
	ld	-6 (ix), #0x01
00362$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:497: if (opponent_has_ball) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00397$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:498: Carrier->count = 12; // 12 frames di scivolata
	ld	l, -32 (ix)
	ld	h, -31 (ix)
	ld	(hl), #0x0c
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:499: Carrier->dx = (Ball->lx > Carrier->lx) ? 4 : -4;
	ld	c, -30 (ix)
	ld	b, -29 (ix)
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
	ld	l, -36 (ix)
	ld	h, -35 (ix)
	ld	a, (hl)
	sub	a, e
	jr	NC, 00529$
	ld	de, #0x0004
	jp	00530$
00529$:
	ld	de, #0xfffc
00530$:
	ld	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:500: if (dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT) Carrier->dx = -4;
	ld	a, -38 (ix)
	sub	a, #0x07
	jr	Z, 00368$
	ld	a, -38 (ix)
	sub	a, #0x08
	jr	Z, 00368$
	ld	a, -38 (ix)
	sub	a, #0x06
	jr	NZ, 00369$
00368$:
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0xfc
	jp	00370$
00369$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:501: else if (dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) Carrier->dx = 4;
	ld	a, -38 (ix)
	sub	a, #0x03
	jr	Z, 00364$
	ld	a, -38 (ix)
	sub	a, #0x02
	jr	Z, 00364$
	ld	a, -38 (ix)
	sub	a, #0x04
	jr	NZ, 00370$
00364$:
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x04
00370$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:503: Carrier->dy = (Ball->ly > Carrier->ly) ? 3 : -3;
	ld	c, -26 (ix)
	ld	b, -25 (ix)
	ld	de, (#(_SwSprite + 326) + 0)
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	sbc	hl, de
	jr	NC, 00531$
	ld	de, #0x0003
	jp	00532$
00531$:
	ld	de, #0xfffd
00532$:
	ld	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:504: if (dir == DIRECTION_UP || dir == DIRECTION_UP_LEFT || dir == DIRECTION_UP_RIGHT) Carrier->dy = -3;
	ld	a, -38 (ix)
	dec	a
	jr	Z, 00377$
	ld	a, -38 (ix)
	sub	a, #0x08
	jr	Z, 00377$
	ld	a, -38 (ix)
	sub	a, #0x02
	jr	NZ, 00378$
00377$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0xfd
	jp	00397$
00378$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:505: else if (dir == DIRECTION_DOWN || dir == DIRECTION_DOWN_LEFT || dir == DIRECTION_DOWN_RIGHT) Carrier->dy = 3;
	ld	a, -38 (ix)
	sub	a, #0x05
	jr	Z, 00373$
	ld	a, -38 (ix)
	sub	a, #0x06
	jr	Z, 00373$
	ld	a, -38 (ix)
	sub	a, #0x04
	jr	NZ, 00397$
00373$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x03
00397$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: for (u8 i = 0; i < 2; i++) { // i=0 per Team 1 (P2/CPU), i=1 per Team 2 (P1)
	inc	-1 (ix)
	jp	00440$
00398$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:512: for (u8 i = 0; i < 14; i++) {
	ld	b, #0x00
00442$:
	ld	a, b
	sub	a, #0x0e
	jr	NC, 00399$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:513: CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
	push	bc
	push	bc
	inc	sp
	ld	de, #_PlayerAI
	ld	a, #0x06
	call	_CallFnc_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:512: for (u8 i = 0; i < 14; i++) {
	inc	b
	jp	00442$
00399$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:517: struct ObjectInfo* Referee = &SwSprite[26];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:520: u16 target_x = (Ball->lx < 128) ? ((u16)Ball->lx + 40) : ((u16)Ball->lx - 40);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	c, a
	ld	b, #0x00
	sub	a, #0x80
	jr	NC, 00533$
	ld	hl, #0x0028
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00534$
00533$:
	ld	a, c
	add	a, #0xd8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
00534$:
	ld	-7 (ix), c
	ld	-6 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:521: u16 target_y = (Ball->ly < 256) ? (Ball->ly + 48) : (Ball->ly - 48);
	ld	bc, #(_SwSprite + 326)
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, h
	sub	a, #0x01
	jr	NC, 00535$
	ld	a, -11 (ix)
	add	a, #0x30
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	jp	00536$
00535$:
	ld	a, -11 (ix)
	add	a, #0xd0
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0xff
	ld	-8 (ix), a
00536$:
	ld	a, -9 (ix)
	ld	-13 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:524: if (target_x < 16) target_x = 16;
	ld	a, -7 (ix)
	ld	d, -6 (ix)
	sub	a, #0x10
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00401$
	ld	-7 (ix), #0x10
	ld	-6 (ix), #0
00401$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:525: if (target_x > 224) target_x = 224;
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, #0xe0
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00403$
	ld	-7 (ix), #0xe0
	ld	-6 (ix), #0
00403$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:526: if (target_y < 24) target_y = 24;
	ld	a, -13 (ix)
	ld	d, -12 (ix)
	sub	a, #0x18
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00405$
	ld	-13 (ix), #0x18
	ld	-12 (ix), #0
00405$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:527: if (target_y > 488) target_y = 488;
	ld	e, -13 (ix)
	ld	d, -12 (ix)
	ld	a, #0xe8
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00407$
	ld	-13 (ix), #0xe8
	ld	-12 (ix), #0x01
00407$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:530: i8 ref_dx = 0;
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:531: i8 ref_dy = 0;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:534: if (target_x > Referee->lx + speed) ref_dx = speed;
	ld	a, (#(_SwSprite + 598) + 0)
	ld	-1 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	inc	de
	ld	a, e
	sub	a, -7 (ix)
	ld	a, d
	sbc	a, -6 (ix)
	jr	NC, 00411$
	ld	-11 (ix), #0x01
	jp	00412$
00411$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:535: else if (target_x < Referee->lx - speed) ref_dx = -speed;
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	dec	de
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jr	NC, 00412$
	ld	-11 (ix), #0xff
00412$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:537: if (target_y > Referee->ly + speed) ref_dy = speed;
	ld	hl, (#(_SwSprite + 602) + 0)
	ld	-9 (ix), l
	ld	-8 (ix), h
	inc	hl
	ex	de,hl
	ld	a, -13 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	ld	-6 (ix), a
	ld	a, e
	sub	a, -7 (ix)
	ld	a, d
	sbc	a, -6 (ix)
	jr	NC, 00416$
	ld	-10 (ix), #0x01
	jp	00417$
00416$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:538: else if (target_y < Referee->ly - speed) ref_dy = -speed;
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	dec	de
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jr	NC, 00417$
	ld	-10 (ix), #0xff
00417$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:540: Referee->lx += ref_dx;
	ld	a, -1 (ix)
	add	a, -11 (ix)
	ld	(#(_SwSprite + 598)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:541: Referee->ly += ref_dy;
	ld	hl, (#(_SwSprite + 602) + 0)
	ld	a, -10 (ix)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ex	de, hl
	ld	((_SwSprite + 602)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:544: i8 look_dx = (Ball->lx > Referee->lx) ? 1 : ((Ball->lx < Referee->lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 598)
	ld	e, (hl)
	ld	a, e
	sub	a, -1 (ix)
	jr	NC, 00537$
	ld	de, #0x0001
	jp	00538$
00537$:
	ld	a, -1 (ix)
	sub	a, e
	jr	NC, 00539$
	ld	de, #0xffff
	jp	00540$
00539$:
	ld	de, #0x0000
00540$:
00538$:
	ld	-1 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:545: i8 look_dy = (Ball->ly > Referee->ly) ? 1 : ((Ball->ly < Referee->ly) ? -1 : 0);
	ld	a, (bc)
	ld	-9 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:537: if (target_y > Referee->ly + speed) ref_dy = speed;
	ld	hl, #(_SwSprite + 602)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:545: i8 look_dy = (Ball->ly > Referee->ly) ? 1 : ((Ball->ly < Referee->ly) ? -1 : 0);
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00541$
	ld	bc, #0x0001
	jp	00542$
00541$:
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00543$
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0xff
	jp	00544$
00543$:
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
00544$:
	ld	c, -7 (ix)
00542$:
	ld	-6 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:546: if (look_dx == 0 && look_dy == 0) look_dy = 1; // Guarda in basso di default
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00419$
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00419$
	ld	-6 (ix), #0x01
00419$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:553: Referee->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, 26, look_dx, look_dy, walk_seq[(Referee->anim / 3) % 4]);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:549: if (ref_dx != 0 || ref_dy != 0) {
	ld	a, -11 (ix)
	or	a, a
	jr	NZ, 00421$
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00422$
00421$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:550: Referee->anim++;
	ld	hl, (#(_SwSprite + 617) + 0)
	inc	hl
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	hl, #(_SwSprite + 617)
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:551: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-45 (ix), #0x00
	ld	-44 (ix), #0x01
	ld	-43 (ix), #0x02
	ld	-42 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:553: Referee->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, 26, look_dx, look_dy, walk_seq[(Referee->anim / 3) % 4]);
	ld	de, #0x0003
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	a, -8 (ix)
	and	a, #0x03
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, (hl)
	ld	-7 (ix), a
	ld	h, a
	ld	l, -6 (ix)
	push	hl
	ld	h, -1 (ix)
	ld	l, #0x1a
	push	hl
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	hl, #(_SwSprite + 613)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00444$
00422$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:556: Referee->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, 26, look_dx, look_dy);
	ld	a, -6 (ix)
	push	af
	inc	sp
	ld	h, -1 (ix)
	ld	l, #0x1a
	push	hl
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	ld	((_SwSprite + 613)), de
	jp	00444$
00426$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:559: SwSprite[24].ly = 1000; // Nascondimento assoluto
	ld	hl, #0x03e8
	ld	((_SwSprite + 556)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:560: SwSprite[25].ly = 1000; // Nascondimento assoluto
	ld	((_SwSprite + 579)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:561: CallFnc_VOID_3PTR_U16(SEG_GAMESTATE_3, UpdateGameState_Restarts, game_state, wait_secs, start_sec, target_ly);
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
00444$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:563: }
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
