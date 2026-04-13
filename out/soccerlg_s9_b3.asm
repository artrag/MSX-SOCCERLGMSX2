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
	.globl _ExecuteThrowIn
	.globl _AssignThrowInTargets
	.globl _AssignKickOffTargets
	.globl _EventOffside
	.globl _EventTimeUp
	.globl _EventHalfTime
	.globl _EventBallKicked
	.globl _EventKickOffReady
	.globl _EventPlayerFirstPresentationStarted
	.globl _GetJoystickDirection
	.globl _IsTeamJoystickTriggerPressed
	.globl _FindReceiver
	.globl _SetBallSprite
	.globl _PlayerAI
	.globl _HideSpriteMessage
	.globl _ShowSpriteMessage
	.globl _PrintScoreBoardRight
	.globl _PrintScoreBoardLeft
	.globl _PlotField
	.globl _CallFnc_U16_P4B
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
	.globl _CallFnc_U8_P1
	.globl _CallFnc_VOID_U8U8
	.globl _CallFnc_VOID_16_P2
	.globl _CallFnc_VOID_16_P1
	.globl _CallFnc_VOID_3PTR
	.globl _CallFnc_VOID_U8U16U16
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
_UpdateGameState_last_throw_dir_196609_858:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_last_dx:
	.ds 2
_g_last_dy:
	.ds 2
_g_prev_trigger:
	.ds 2
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:520: static u8 last_throw_dir = DIRECTION_NONE;
	ld	iy, #_UpdateGameState_last_throw_dir_196609_858
	ld	0 (iy), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _SEG9
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:15: void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
;	---------------------------------
; Function UpdateGameState
; ---------------------------------
_UpdateGameState::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-38
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:17: if (*game_state == 0) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jp	NZ, 00368$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:18: if (Field.ly >= target_ly) {
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:19: Field.dy = 0; // Ferma lo scorrimento
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:18: if (Field.ly >= target_ly) {
	ld	a, -9 (ix)
	sub	a, 6 (ix)
	ld	a, -8 (ix)
	sbc	a, 7 (ix)
	jr	C, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:19: Field.dy = 0; // Ferma lo scorrimento
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:20: *game_state = 1;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:21: *wait_secs = 2; 
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:22: *start_sec = Frms;
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00387$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:24: Field.ly += Field.dy;
	ld	a, (#(_Field + 18) + 0)
	ld	-1 (ix), a
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
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
	ld	hl, #(_Field + 4)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00387$
00368$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:28: } else if (*game_state == 1) {
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00365$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:29: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	e, a
	ld	hl, #_Frms
	ld	a, e
	sub	a, (hl)
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:30: (*wait_secs)--;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:31: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:32: *game_state = 2; // Passa al posizionamento
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:33: CallFnc_VOID(SEG_EVENTS, EventPlayerFirstPresentationStarted);
	push	bc
	ld	de, #_EventPlayerFirstPresentationStarted
	ld	a, #0x08
	call	_CallFnc_VOID
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	pop	bc
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:37: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00387$
00365$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:38: } else if (*game_state == 2) {
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NZ,00362$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:39: bool all_in_position = TRUE;
	ld	-26 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:40: for (u8 i = 0; i < 14; i++) {
	ld	-1 (ix), #0x00
00371$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:41: struct ObjectInfo* p = &SwSprite[i];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:42: if (p->lx != p->tx || p->ly != p->ty) {
	ld	-25 (ix), l
	ld	-24 (ix), h
	ld	a, (hl)
	ld	-23 (ix), a
	ld	c, -25 (ix)
	ld	b, -24 (ix)
	ld	hl, #12
	add	hl, bc
	ld	a, (hl)
	ld	-22 (ix), a
	ld	a, -25 (ix)
	add	a, #0x04
	ld	-21 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-20 (ix), a
	ld	a, -25 (ix)
	add	a, #0x0d
	ld	-19 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:45: if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
	ld	a, -25 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:49: if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
	ld	a, -25 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:58: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	a, -25 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:42: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -23 (ix)
	sub	a, -22 (ix)
	jr	NZ, 00127$
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
	jp	Z,00128$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:43: all_in_position = FALSE;
	ld	-26 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:45: if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
	ld	a, -23 (ix)
	sub	a, -22 (ix)
	jr	NC, 00112$
	ld	a, -22 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -23 (ix)
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
	jr	C, 00389$
	ld	-7 (ix), #0x02
	ld	-6 (ix), #0
	jp	00390$
00389$:
	ld	a, -22 (ix)
	sub	a, -23 (ix)
	ld	-6 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
00390$:
	ld	a, -7 (ix)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:46: else if (p->tx < p->lx) p->dx = (p->lx - p->tx >= 2) ? -2 : -(p->lx - p->tx);
	ld	a, -22 (ix)
	sub	a, -23 (ix)
	jr	NC, 00109$
	ld	a, -23 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -22 (ix)
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
	jr	C, 00391$
	ld	c, #0xfe
	jp	00392$
00391$:
	ld	a, -23 (ix)
	sub	a, -22 (ix)
	neg
	ld	c, a
00392$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), c
	jp	00113$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:47: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:49: if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
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
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00118$
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x02
	ld	a, b
	sbc	a, #0x00
	jr	C, 00393$
	ld	a, #0x02
	jp	00394$
00393$:
	ld	a, -7 (ix)
	ld	c, -9 (ix)
	sub	a, c
00394$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:50: else if (p->ty < p->ly) p->dy = (p->ly - p->ty >= 2) ? -2 : -(p->ly - p->ty);
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00115$
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x02
	ld	a, b
	sbc	a, #0x00
	jr	C, 00395$
	ld	a, #0xfe
	jp	00396$
00395$:
	ld	a, -9 (ix)
	ld	c, -7 (ix)
	sub	a, c
	neg
00396$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00119$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:51: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:53: p->lx += p->dx;
	ld	l, -25 (ix)
	ld	h, -24 (ix)
	ld	c, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -25 (ix)
	ld	h, -24 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:54: p->ly += p->dy;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:55: p->anim++;
	ld	l, -25 (ix)
	ld	h, -24 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:57: const u8 walk_seq[4] = {0, 1, 2, 1}; // 1->2->3->2->1...
	ld	-30 (ix), #0x00
	ld	-29 (ix), #0x01
	ld	-28 (ix), #0x02
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:58: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ld	a, e
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	hl, #8
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
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00372$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:60: i8 dir_x = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
	ld	hl, #_SwSprite + 322
	ld	c, (hl)
	ld	a, -23 (ix)
	sub	a, c
	jr	NC, 00397$
	ld	de, #0x0001
	jp	00398$
00397$:
	ld	a, c
	sub	a, -23 (ix)
	jr	NC, 00399$
	ld	de, #0xffff
	jp	00400$
00399$:
	ld	de, #0x0000
00400$:
00398$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:61: i8 dir_y = (i < 7) ? 1 : -1; // Team 1 guarda sempre a Sud, Team 2 sempre a Nord
	ld	a, -1 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	c, a
	or	a, a
	jr	Z, 00401$
	ld	hl, #0x0001
	jp	00402$
00401$:
	ld	hl, #0xffff
00402$:
	ld	b, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:62: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:64: if (RestartType == 1 && i == g_thrower_id) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00124$
	ld	a, -1 (ix)
	ld	iy, #_g_thrower_id
	sub	a, 0 (iy)
	jr	NZ, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:66: p->frame = (RestartSideX < 128) ? SPR_T1_PLAYER_THROWIN_FROM_WEST_1 : SPR_T1_PLAYER_THROWIN_FROM_EAST_1;
	ld	a, (_RestartSideX+0)
	sub	a, #0x80
	ld	a, #0x00
	rla
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:65: if (i < 7) {
	ld	a, c
	or	a, a
	jr	Z, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:66: p->frame = (RestartSideX < 128) ? SPR_T1_PLAYER_THROWIN_FROM_WEST_1 : SPR_T1_PLAYER_THROWIN_FROM_EAST_1;
	ld	a, b
	or	a, a
	jr	Z, 00403$
	ld	bc, #0x0025
	jp	00404$
00403$:
	ld	bc, #0x0022
00404$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00372$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:68: p->frame = (RestartSideX < 128) ? SPR_T2_PLAYER_THROWIN_FROM_WEST_1 : SPR_T2_PLAYER_THROWIN_FROM_EAST_1;
	ld	a, b
	or	a, a
	jr	Z, 00405$
	ld	bc, #0x0095
	jp	00406$
00405$:
	ld	bc, #0x0092
00406$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00372$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:71: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, dir_x, dir_y, 0); // Posa ferma (0) verso la palla
	xor	a, a
	push	af
	inc	sp
	ld	c, e
	push	bc
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00372$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:40: for (u8 i = 0; i < 14; i++) {
	inc	-1 (ix)
	jp	00371$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:75: if (all_in_position) {
	ld	a, -26 (ix)
	or	a, a
	jp	Z, 00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:22: *start_sec = Frms;
	ld	a, 4 (ix)
	ld	-8 (ix), a
	ld	a, 5 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:76: if (RestartType == 1) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:77: *game_state = 7;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:78: u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00407$
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
	jp	00408$
00407$:
	ld	-10 (ix), #0x01
	ld	-9 (ix), #0
00408$:
	ld	a, -10 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:79: bool is_human = FALSE;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:80: if (throw_team == TEAM_2) is_human = TRUE;
	ld	a, -6 (ix)
	dec	a
	jr	NZ, 00136$
	ld	-1 (ix), #0x01
	jp	00137$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:81: else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human = TRUE;
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00137$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00137$
	ld	-1 (ix), #0x01
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:83: *wait_secs = is_human ? 5 : 1; // 5 secondi per il giocatore, 1 per la CPU
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00409$
	ld	-10 (ix), #0x05
	ld	-9 (ix), #0
	jp	00410$
00409$:
	ld	-10 (ix), #0x01
	ld	-9 (ix), #0
00410$:
	ld	a, -10 (ix)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:84: *start_sec = Frms;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:85: return;
	jp	00387$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:87: *game_state = 3;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:90: if (KickOffTeam == TEAM_1) {
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	NZ, 00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:91: T1_Carrier = 3; // Giocatore a sinistra della palla
	ld	hl, #_T1_Carrier
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:92: T1_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T1_Carrier, 4, 0, 1); // Ignora il compagno (4)
	ld	a, #0x01
	push	af
	inc	sp
	xor	a, a
	ld	h, a
	ld	l, #0x04
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U16_P4B
	ld	a, e
	ld	(#_T1_Receiver), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:93: T2_Carrier = T2_Receiver = 0xFF; // Difesa senza palla
	ld	a,#0xff
	ld	(#_T2_Receiver),a
	ld	(#_T2_Carrier), a
	jp	00142$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:95: T2_Carrier = 11; // Giocatore a destra della palla
	ld	hl, #_T2_Carrier
	ld	(hl), #0x0b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:96: T2_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T2_Carrier, 10, 0, -1); // Ignora il compagno (10)
	ld	a, #0xff
	push	af
	inc	sp
	xor	a, a
	ld	h, a
	ld	l, #0x0a
	push	hl
	ld	a, #0x0b
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U16_P4B
	ld	a, e
	ld	(#_T2_Receiver), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:97: T1_Carrier = T1_Receiver = 0xFF; // Difesa senza palla
	ld	a,#0xff
	ld	(#_T1_Receiver),a
	ld	(#_T1_Carrier), a
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:100: LastTouchTeam = KickOffTeam; // Assegna possesso fittizio al team che batte per far allargare i compagni
	ld	a, (_KickOffTeam+0)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:102: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:103: *start_sec = Frms;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:104: CallFnc_VOID(SEG_EVENTS, EventKickOffReady);
	ld	de, #_EventKickOffReady
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00387$
00362$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:106: } else if (*game_state == 3) {
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NZ,00359$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:108: if (Mins == 0 && Secs == 0) {
	ld	a, (_Mins+0)
	or	a, a
	jr	NZ, 00151$
	ld	a, (_Secs+0)
	or	a, a
	jr	NZ, 00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:109: if (Half == 1) {
	ld	a, (_Half+0)
	dec	a
	jr	NZ, 00148$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:110: *game_state = 4;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:111: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:112: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:113: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_HALFTIME);
	ld	hl, #0x0144
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:114: CallFnc_VOID(SEG_EVENTS, EventHalfTime);
	ld	de, #_EventHalfTime
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00387$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:115: } else if (Half == 2) {
	ld	a, (_Half+0)
	sub	a, #0x02
	jp	NZ,00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:116: *game_state = 5;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:117: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:118: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:119: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_TIMEUP);
	ld	hl, #0x0140
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:121: return;
	jp	00387$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:125: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jr	Z, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:126: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
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
	jr	NC, 00156$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:127: (*wait_secs)--;
	ld	a, -1 (ix)
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:128: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00156$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:129: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:130: TimerEnabled = TRUE; // Avvia il cronometro alla sparizione della scritta
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:133: *start_sec = Frms;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:134: return; // Ferma l'IA e il gioco finché la scritta non sparisce
	jp	00387$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:138: CallFnc_VOID(SEG_FIELD, UpdateFieldCamera);
	ld	de, #_UpdateFieldCamera
	ld	a, #0x0a
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:139: CallFnc_VOID_3PTR(SEG_FIELD, CheckFieldBoundaries, game_state, wait_secs, start_sec);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:142: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:144: u8 closest_t1 = 1; u16 min_dist_t1 = 0xFFFF;
	ld	-17 (ix), #0x01
	ld	-16 (ix), #0xff
	ld	-15 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:145: u8 closest_t2 = 8; u16 min_dist_t2 = 0xFFFF;
	ld	-14 (ix), #0x08
	ld	-13 (ix), #0xff
	ld	-12 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:147: for (u8 i = 1; i < 7; i++) { 
	ld	-1 (ix), #0x01
00374$:
	ld	a, -1 (ix)
	sub	a, #0x07
	jp	NC, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:148: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:149: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00411$
	ld	a, d
	jp	00412$
00411$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00412$:
	ld	-11 (ix), e
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:150: u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:151: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
	ld	-8 (ix), a
	sub	a, #0x01
	jr	NC, 00413$
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	jp	00414$
00413$:
	xor	a, a
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #0x02
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00414$:
	ld	a, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:152: if (dist_x + dist_y < min_dist_t1) { min_dist_t1 = dist_x + dist_y; closest_t1 = i; }
	add	a, -11 (ix)
	ld	c, a
	ld	a, b
	adc	a, -10 (ix)
	ld	b, a
	ld	a, c
	sub	a, -16 (ix)
	ld	a, b
	sbc	a, -15 (ix)
	jr	NC, 00375$
	ld	-16 (ix), c
	ld	-15 (ix), b
	ld	a, -1 (ix)
	ld	-17 (ix), a
00375$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:147: for (u8 i = 1; i < 7; i++) { 
	inc	-1 (ix)
	jp	00374$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:154: for (u8 i = 8; i < 14; i++) {
	ld	c, #0x08
00377$:
	ld	a, c
	sub	a, #0x0e
	jr	NC, 00164$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:155: u8 dx_diff = (u8)(SwSprite[i].lx - Ball->lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:156: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00415$
	ld	a, d
	jp	00416$
00415$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00416$:
	ld	-7 (ix), e
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:157: u16 dy_diff = (u16)(SwSprite[i].ly - Ball->ly) & 511;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:158: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
;	spillPairReg hl
;	spillPairReg hl
	ld	d, a
	sub	a, #0x01
	jr	C, 00418$
	ld	hl, #0x0200
	cp	a, a
	sbc	hl, de
	ex	de, hl
00418$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:159: if (dist_x + dist_y < min_dist_t2) { min_dist_t2 = dist_x + dist_y; closest_t2 = i; }
	ld	a, -7 (ix)
	add	a, e
	ld	b, a
	ld	a, -6 (ix)
	adc	a, d
	ld	e, a
	ld	a, b
	sub	a, -13 (ix)
	ld	a, e
	sbc	a, -12 (ix)
	jr	NC, 00378$
	ld	-13 (ix), b
	ld	-12 (ix), e
	ld	-14 (ix), c
00378$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:154: for (u8 i = 8; i < 14; i++) {
	inc	c
	jp	00377$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:163: T2_Carrier = closest_t2;
	ld	a, -14 (ix)
	ld	(_T2_Carrier+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:164: if (GameMode == GAMEMODE_P1_VS_P2) T1_Carrier = closest_t1;
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00166$
	ld	a, -17 (ix)
	ld	(_T1_Carrier+0), a
	jp	00167$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:165: else T1_Carrier = 0xFF;
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:168: if (min_dist_t2 <= 24) T2_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T2_Carrier, 0xFF, g_last_dx[1], g_last_dy[1]);
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00169$
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
	jp	00170$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:169: else T2_Receiver = 0xFF;
	ld	iy, #_T2_Receiver
	ld	0 (iy), #0xff
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:171: if (GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00175$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:172: if (min_dist_t1 <= 24) T1_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T1_Carrier, 0xFF, g_last_dx[0], g_last_dy[0]);
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00172$
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
	jp	00175$
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:173: else T1_Receiver = 0xFF;
	ld	iy, #_T1_Receiver
	ld	0 (iy), #0xff
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:179: if (Ball->anim > 0) {
	ld	bc, (#(_SwSprite + 341) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:217: Ball->dx = Ball->dy = 0;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:179: if (Ball->anim > 0) {
	ld	a, b
	or	a, c
	jp	Z, 00203$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:180: if (Ball->anim == 5) {
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x05
	or	a, d
	jp	NZ,00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:182: u8 progress = Ball->count; // 0 = inizio da tiratore, max = fine verso ricevitore
	ld	a, (#(_SwSprite + 343) + 0)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:183: u8 half_frame = g_pass_max_frames >> 1; // metà del percorso
	ld	a, (_g_pass_max_frames+0)
	srl	a
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:186: if (progress == 0) {
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00180$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:187: Ball->lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:188: Ball->ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
	jp	00181$
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:189: } else if (progress >= g_pass_max_frames) {
	ld	hl, #_g_pass_max_frames
	ld	a, -6 (ix)
	sub	a, (hl)
	jr	C, 00177$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:190: Ball->lx = g_pass_target_x;
	ld	a, (_g_pass_target_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:191: Ball->ly = g_pass_target_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_target_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	ld	(hl), a
	jp	00181$
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:194: i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
	ld	hl, (_g_pass_target_x)
	ld	bc, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:195: i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
	ld	bc, (_g_pass_target_y)
	ld	de, (_g_pass_start_y)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	-9 (ix), c
	ld	-8 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:196: Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
	ld	a, (_g_pass_start_x+0)
	ld	-7 (ix), a
	ld	c, -6 (ix)
	ld	b, #0x00
	push	bc
	ld	e, c
	ld	d, b
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
	add	a, -7 (ix)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:197: Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
	ld	hl, (_g_pass_start_y)
	push	hl
	ld	e, c
	ld	d, b
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
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
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:204: scale = 1 + (progress * g_pass_max_height) / half_frame;
	ld	a, -1 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:202: if (progress <= half_frame) {
	ld	a, -1 (ix)
	sub	a, -6 (ix)
	jr	C, 00183$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:204: scale = 1 + (progress * g_pass_max_height) / half_frame;
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
01278$:
	add	hl, hl
	jr	NC, 01279$
	add	hl, de
01279$:
	djnz	01278$
	ld	e, -13 (ix)
	ld	d, -12 (ix)
	call	__divsint
	ld	b, e
	inc	b
	jp	00184$
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:207: u8 progress_down = progress - half_frame;
	ld	a, -6 (ix)
	sub	a, -1 (ix)
	ld	-1 (ix), a
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:208: scale = 1 + g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
	ld	a, (_g_pass_max_height+0)
	ld	-1 (ix), a
	inc	-1 (ix)
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
01280$:
	add	hl, hl
	jr	NC, 01281$
	add	hl, de
01281$:
	djnz	01280$
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, (_g_pass_max_frames+0)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -9 (ix)
	sub	a, -13 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -12 (ix)
	ld	-6 (ix), a
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	sub	a, -6 (ix)
	ld	b, a
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:210: if (scale > 7) scale = 7; // Clamp a 7 (SPR_BALL_SIZE_8 = SPR_BALL_SIZE_1 + 7)
	ld	a, #0x07
	sub	a, b
	jr	NC, 00186$
	ld	b, #0x07
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:211: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
	push	bc
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:213: Ball->count++;
	ld	bc, (#(_SwSprite + 343) + 0)
	inc	bc
	ld	((_SwSprite + 343)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:214: if (Ball->count >= g_pass_max_frames) {
	ld	a, (_g_pass_max_frames+0)
	ld	e, a
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jp	C, 00203$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:215: Ball->anim = 0; // Passaggio completato
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:216: Ball->count = 0;
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:217: Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:218: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); // Torna a scale 1
	xor	a, a
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00203$
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:222: u8 speed = Ball->anim + 1;
	ld	a, c
	inc	a
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:223: if (Ball->dx > 0) Ball->lx += speed;
	ld	hl, #(_SwSprite + 322) + 17
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01282$
	xor	a, #0x80
01282$:
	jp	P, 00192$
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-6 (ix), a
	add	a, -1 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00193$
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:224: else if (Ball->dx < 0) Ball->lx -= speed;
	bit	7, c
	jr	Z, 00193$
	ld	a, (#(_SwSprite + 322) + 0)
	sub	a, -1 (ix)
	ld	(#(_SwSprite + 322)),a
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:226: if (Ball->dy > 0) Ball->ly += speed;
	ld	a, (#(_SwSprite + 340) + 0)
	ld	-6 (ix), a
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01283$
	xor	a, #0x80
01283$:
	jp	P, 00197$
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
	jp	00198$
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:227: else if (Ball->dy < 0) Ball->ly -= speed;
	bit	7, -6 (ix)
	jr	Z, 00198$
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
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:229: Ball->anim--;
	ld	bc, (#(_SwSprite + 341) + 0)
	dec	bc
	ld	((_SwSprite + 341)), bc
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:234: u8 carriers[2] = {T1_Carrier, T2_Carrier};
	ld	a, (_T1_Carrier+0)
	ld	-38 (ix), a
	ld	a, (_T2_Carrier+0)
	ld	-37 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:235: u8 receivers[2] = {T1_Receiver, T2_Receiver};
	ld	a, (_T1_Receiver+0)
	ld	-36 (ix), a
	ld	a, (_T2_Receiver+0)
	ld	-35 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:236: u8 dirs[2] = { DIRECTION_NONE, DIRECTION_NONE };
	ld	-34 (ix), #0x00
	ld	-33 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:237: bool triggers[2] = { FALSE, FALSE };
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:239: if (T2_Carrier != 0xFF) {
	ld	a, (_T2_Carrier+0)
	inc	a
	jr	Z, 00208$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:240: dirs[1] = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, 0); // P1 controlla Team 2
	xor	a, a
	push	af
	inc	sp
	ld	de, #_GetJoystickDirection
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	-33 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:241: u8 cur_trig = CallFnc_U8_P1(SEG_INPUT, IsTeamJoystickTriggerPressed, 0);
	xor	a, a
	push	af
	inc	sp
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:242: if (cur_trig != 0 && g_prev_trigger[1] == 0) triggers[1] = TRUE;
	or	a, a
	jr	Z, 00205$
	ld	a, (#(_g_prev_trigger + 1) + 0)
	or	a, a
	jr	NZ, 00205$
	ld	-31 (ix), #0x01
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:243: g_prev_trigger[1] = cur_trig;
	ld	hl, #(_g_prev_trigger + 1)
	ld	(hl), c
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:245: if (T1_Carrier != 0xFF && GameMode == GAMEMODE_P1_VS_P2) {
	ld	a, (_T1_Carrier+0)
	inc	a
	jr	Z, 00571$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00571$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:246: dirs[0] = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, 1); // P2 controlla Team 1
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_GetJoystickDirection
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	-34 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:247: u8 cur_trig = CallFnc_U8_P1(SEG_INPUT, IsTeamJoystickTriggerPressed, 1);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:248: if (cur_trig != 0 && g_prev_trigger[0] == 0) triggers[0] = TRUE;
	or	a, a
	jr	Z, 00210$
	ld	a, (#_g_prev_trigger + 0)
	or	a, a
	jr	NZ, 00210$
	ld	-32 (ix), #0x01
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:249: g_prev_trigger[0] = cur_trig;
	ld	hl, #_g_prev_trigger
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:252: for (u8 i = 0; i < 2; i++) {
00571$:
	ld	-1 (ix), #0x00
00380$:
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NC, 00289$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:253: u8 carrier = carriers[i];
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:254: if (carrier == 0xFF) continue;
	ld	-23 (ix), a
	inc	a
	jp	Z,00288$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:256: struct ObjectInfo* Carrier = &SwSprite[carrier];
	ld	c, -23 (ix)
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
	ld	-22 (ix), a
	ld	a, -6 (ix)
	ld	-21 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:258: Carrier->dx = 0; Carrier->dy = 0;
	ld	a, -22 (ix)
	add	a, #0x11
	ld	-20 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-19 (ix), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0x00
	ld	a, -22 (ix)
	add	a, #0x12
	ld	-18 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-17 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:259: switch(dirs[i]) {
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #4
	add	hl, sp
	add	hl, de
	ld	c, (hl)
	ld	a, #0x08
	sub	a, c
	jp	C, 00225$
	ld	b, #0x00
	ld	hl, #01289$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
01289$:
	jp	00225$
	jp	00217$
	jp	00218$
	jp	00219$
	jp	00220$
	jp	00221$
	jp	00222$
	jp	00223$
	jp	00224$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:260: case DIRECTION_UP: Carrier->dy = -2; break;
00217$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0xfe
	jp	00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:261: case DIRECTION_UP_RIGHT: Carrier->dy = -2; Carrier->dx = 2; break;
00218$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0xfe
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0x02
	jp	00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:262: case DIRECTION_RIGHT: Carrier->dx = 2; break;
00219$:
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0x02
	jp	00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:263: case DIRECTION_DOWN_RIGHT: Carrier->dy = 2; Carrier->dx = 2; break;
00220$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0x02
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0x02
	jp	00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:264: case DIRECTION_DOWN: Carrier->dy = 2; break;
00221$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0x02
	jp	00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: case DIRECTION_DOWN_LEFT: Carrier->dy = 2; Carrier->dx = -2; break;
00222$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0x02
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0xfe
	jp	00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: case DIRECTION_LEFT: Carrier->dx = -2; break;
00223$:
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0xfe
	jp	00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:267: case DIRECTION_UP_LEFT: Carrier->dy = -2; Carrier->dx = -2; break;
00224$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0xfe
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), #0xfe
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:268: }
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:271: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:276: Carrier->ly += Carrier->dy;
	ld	a, -22 (ix)
	add	a, #0x04
	ld	-16 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:280: Carrier->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
	ld	a, -22 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:271: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00226$
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00227$
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:272: g_last_dx[i] = Carrier->dx;
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:273: g_last_dy[i] = Carrier->dy;
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:275: Carrier->lx += Carrier->dx;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, -7 (ix)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:276: Carrier->ly += Carrier->dy;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
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
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:278: Carrier->anim++;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:279: const u8 walk_seq[4] = {0, 1, 2, 1}; 
	ld	-30 (ix), #0x00
	ld	-29 (ix), #0x01
	ld	-28 (ix), #0x02
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:280: Carrier->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	and	a, #0x03
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	hl, #8
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	d, (hl)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	b, (hl)
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	e, b
	push	de
	push	af
	inc	sp
	ld	a, -23 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00228$
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:283: Carrier->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, carrier, g_last_dx[i], g_last_dy[i]);
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	a, -23 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:287: u8 dx_diff = (u8)(Carrier->lx - Ball->lx);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	sub	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:288: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	sub	a, #0x80
	jr	NC, 00419$
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	jp	00420$
00419$:
	xor	a, a
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #0x01
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00420$:
	ld	a, -7 (ix)
	ld	-14 (ix), a
	ld	a, -6 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:289: u16 dy_diff = (u16)(Carrier->ly - Ball->ly) & 511;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	a, -12 (ix)
	sub	a, l
	ld	c, a
	ld	a, -11 (ix)
	sbc	a, h
	and	a, #0x01
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:290: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
	ld	d, b
	ld	a, d
	sub	a, #0x01
	jr	NC, 00421$
	ld	e, c
	ld	a, b
	jp	00422$
00421$:
	xor	a, a
	sub	a, c
	ld	e, a
	ld	a, #0x02
	sbc	a, b
00422$:
	ld	-10 (ix), e
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:293: if (dist_x <= 24 && dist_y <= 24) {
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C, 00288$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C, 00288$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:295: bool offside = FALSE;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:296: if (carrier < 7 && LastTouchTeam == TEAM_1 && LastTouchPlayer != carrier) {
	ld	a, -23 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00241$
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	NZ, 00241$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -23 (ix)
	jr	Z, 00241$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:297: u16 offside_line = (SwSprite[8].ly < SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	hl, #_SwSprite + 188
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	de, (#_SwSprite + 211)
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jr	NC, 00423$
	ld	e, -7 (ix)
	ld	d, -6 (ix)
00423$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:298: if (Carrier->ly > offside_line + 8 && Carrier->ly > 256) offside = TRUE;
	ld	hl, #0x0008
	add	hl, de
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	xor	a, a
	sbc	hl, de
	jr	NC, 00242$
	xor	a, a
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00242$
	ld	c, #0x01
	jp	00242$
00241$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:299: } else if (carrier >= 7 && LastTouchTeam == TEAM_2 && LastTouchPlayer != carrier) {
	ld	b, -8 (ix)
	bit	0, b
	jr	NZ, 00242$
	ld	a, (_LastTouchTeam+0)
	dec	a
	jr	NZ, 00242$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -23 (ix)
	jr	Z, 00242$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:300: u16 offside_line = (SwSprite[1].ly > SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
	ld	hl, #_SwSprite + 27
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	de, (#_SwSprite + 50)
	ld	a, e
	sub	a, -7 (ix)
	ld	a, d
	sbc	a, -6 (ix)
	jr	NC, 00425$
	ld	e, -7 (ix)
	ld	d, -6 (ix)
00425$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:301: if (Carrier->ly < offside_line - 8 && Carrier->ly < 256) offside = TRUE;
	ld	a, e
	add	a, #0xf8
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jr	NC, 00242$
	ld	a, h
	sub	a, #0x01
	jr	NC, 00242$
	ld	c, #0x01
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:303: if (offside) {
	ld	a, c
	or	a, a
	jr	Z, 00246$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:304: *game_state = 6; // Ferma il gioco
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:305: RestartType = 0; // Temporaneo fallback a KickOff per la ripresa
	ld	hl, #_RestartType
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:306: CallFnc_VOID(SEG_EVENTS, EventOffside);
	ld	de, #_EventOffside
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:307: Ball->anim = Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:308: T1_Carrier = T2_Carrier = 0xFF;
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:309: TimerEnabled = FALSE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:310: *wait_secs = 2; *start_sec = Frms;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:311: continue; // Salta il controllo palla
	jp	00288$
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:314: LastTouchTeam = (carrier < 7) ? TEAM_1 : TEAM_2;
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00427$
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00428$
00427$:
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
00428$:
	ld	a, -7 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:315: LastTouchPlayer = carrier;
	ld	a, -23 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:271: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:318: i8 c_dx = (Carrier->dx > 0) ? 1 : ((Carrier->dx < 0) ? -1 : 0);
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01294$
	xor	a, #0x80
01294$:
	jp	P, 00429$
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
	jp	00430$
00429$:
	bit	7, -6 (ix)
	jr	Z, 00431$
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0xff
	jp	00432$
00431$:
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
00432$:
00430$:
	ld	a, -7 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:271: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:319: i8 c_dy = (Carrier->dy > 0) ? 1 : ((Carrier->dy < 0) ? -1 : 0);
	xor	a, a
	sub	a, c
	jp	PO, 01295$
	xor	a, #0x80
01295$:
	jp	P, 00433$
	ld	bc, #0x0001
	jp	00434$
00433$:
	bit	7, c
	jr	Z, 00435$
	ld	bc, #0xffff
	jp	00436$
00435$:
	ld	bc, #0x0000
00436$:
00434$:
	ld	-7 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:320: receivers[i] = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, carrier, 0xFF, c_dx, c_dy);
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	push	hl
	ld	a, -7 (ix)
	push	af
	inc	sp
	ld	h, -6 (ix)
	ld	l, #0xff
	push	hl
	ld	a, -23 (ix)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U16_P4B
	pop	bc
	ld	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:323: if (triggers[i]) {
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #6
	add	hl, sp
	add	hl, de
	ld	a, (hl)
	or	a, a
	jp	Z, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:325: u8 receiver = receivers[i];
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:327: if (receiver != 0xFF) {
	ld	e, a
	inc	a
	jp	Z,00288$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:330: Ball->anim = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:331: Ball->count = 0;
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:333: g_pass_start_x = Carrier->lx;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	xor	a, a
	ld	(_g_pass_start_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:334: g_pass_start_y = Carrier->ly;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:335: g_pass_target_x = SwSprite[receiver].lx;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:336: g_pass_target_y = SwSprite[receiver].ly;
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:338: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00437$
	ld	bc, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, bc
	jp	00438$
00437$:
	ld	bc, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
00438$:
	ld	-11 (ix), l
	ld	-10 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:339: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00439$
	ld	hl, #_g_pass_start_y
	ld	a, (_g_pass_target_y+0)
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	sbc	a, (hl)
	ld	-6 (ix), a
	jp	00440$
00439$:
	ld	hl, #_g_pass_target_y
	ld	a, (_g_pass_start_y+0)
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	sbc	a, (hl)
	ld	-6 (ix), a
00440$:
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:340: g_pass_max_frames = (r_dx + r_dy) / 4; 
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	srl	b
	rr	c
	srl	b
	rr	c
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:341: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x0a
	jr	NC, 00248$
	ld	0 (iy), #0x0a
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:342: if (g_pass_max_frames > 40) g_pass_max_frames = 40;
	ld	a, #0x28
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00250$
	ld	0 (iy), #0x28
00250$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:343: g_pass_max_height = 7; // Passaggio normale alto
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:345: Ball->lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:346: Ball->ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:347: Ball->anim = 5; // Flag per passaggio
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:348: Ball->count = 0; // Inizio dell'interpolazione
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:349: Ball->dx = Ball->dy = 0; // Non usato nel passaggio, ma azzera lo stato
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:350: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00288$
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:179: if (Ball->anim > 0) {
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:352: } else if (Ball->anim == 0 && (Ball->dx != c_dx || Ball->dy != c_dy)) {
	ld	-11 (ix), a
	or	a, -12 (ix)
	jp	NZ, 00278$
	ld	bc, #(_SwSprite + 322) + 17
	ld	a, (bc)
	ld	e, a
	ld	a, -6 (ix)
	sub	a, e
	jr	NZ, 00277$
	ld	hl, #(_SwSprite + 340)
	ld	e, (hl)
	ld	a, -7 (ix)
	sub	a, e
	jp	Z,00278$
00277$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:354: u8 cur_dist = (u8)((dist_x > dist_y) ? dist_x : dist_y);
	ld	a, -10 (ix)
	sub	a, -14 (ix)
	ld	a, -9 (ix)
	sbc	a, -13 (ix)
	jr	NC, 00441$
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	jp	00442$
00441$:
	ld	e, -10 (ix)
	ld	d, -9 (ix)
00442$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:355: if (cur_dist > 12) cur_dist = 12; // Evita di "spararla" troppo lontano
	ld	a, #0x0c
	sub	a, e
	jr	NC, 00254$
	ld	e, #0x0c
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:357: i8 off_x = 0; i8 off_y = 4;
	ld	-9 (ix), #0x00
	ld	-8 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:358: if (c_dx > 0) off_x = 6 + cur_dist; else if (c_dx < 0) off_x = -6 - cur_dist;
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01300$
	xor	a, #0x80
01300$:
	jp	P, 00258$
	ld	a, e
	add	a, #0x06
	ld	-9 (ix), a
	jp	00259$
00258$:
	bit	7, -6 (ix)
	jr	Z, 00259$
	ld	d, e
	ld	a, #0xfa
	sub	a, d
	ld	-9 (ix), a
00259$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:359: if (c_dy > 0) off_y = 6 + cur_dist; else if (c_dy < 0) off_y = 2 - cur_dist;
	xor	a, a
	sub	a, -7 (ix)
	jp	PO, 01301$
	xor	a, #0x80
01301$:
	jp	P, 00263$
	ld	a, e
	add	a, #0x06
	ld	-8 (ix), a
	jp	00264$
00263$:
	bit	7, -7 (ix)
	jr	Z, 00264$
	ld	a, #0x02
	sub	a, e
	ld	-8 (ix), a
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:361: Ball->dx = c_dx;
	ld	a, -6 (ix)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:362: Ball->dy = c_dy;
	ld	hl, #(_SwSprite + 340)
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:363: Ball->lx = (u8)(Carrier->lx + off_x);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	add	a, -6 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:364: Ball->ly = (Carrier->ly + off_y) & 511;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -8 (ix)
	ld	-9 (ix), a
	rlca
	sbc	a, a
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	adc	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	and	a, #0x01
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00288$
00278$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:365: } else if (Ball->anim == 0) {
	ld	a, -11 (ix)
	or	a, -12 (ix)
	jp	NZ, 00288$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:367: i8 off_x = 0; i8 off_y = 4;
	ld	-9 (ix), #0x00
	ld	-8 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:368: if (c_dx > 0) off_x = 6; else if (c_dx < 0) off_x = -6;
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 01302$
	xor	a, #0x80
01302$:
	jp	P, 00268$
	ld	-9 (ix), #0x06
	jp	00269$
00268$:
	bit	7, -6 (ix)
	jr	Z, 00269$
	ld	-9 (ix), #0xfa
00269$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:369: if (c_dy > 0) off_y = 6; else if (c_dy < 0) off_y = 2;
	xor	a, a
	sub	a, -7 (ix)
	jp	PO, 01303$
	xor	a, #0x80
01303$:
	jp	P, 00273$
	ld	-8 (ix), #0x06
	jp	00274$
00273$:
	bit	7, -7 (ix)
	jr	Z, 00274$
	ld	-8 (ix), #0x02
00274$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:371: Ball->lx = (u8)(Carrier->lx + off_x);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	add	a, -6 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:372: Ball->ly = (Carrier->ly + off_y) & 511;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -8 (ix)
	ld	-9 (ix), a
	rlca
	sbc	a, a
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	adc	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	and	a, #0x01
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:373: Ball->anim = 4; 
	ld	hl, #0x0004
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:374: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:252: for (u8 i = 0; i < 2; i++) {
	inc	-1 (ix)
	jp	00380$
00289$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:380: for (u8 i = 0; i < 14; i++) {
	ld	b, #0x00
00382$:
	ld	a, b
	sub	a, #0x0e
	jp	NC, 00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:381: CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
	push	bc
	push	bc
	inc	sp
	ld	de, #_PlayerAI
	ld	a, #0x06
	call	_CallFnc_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:380: for (u8 i = 0; i < 14; i++) {
	inc	b
	jp	00382$
00359$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:383: } else if (*game_state == 4) {
	ld	a, -1 (ix)
	sub	a, #0x04
	jp	NZ,00356$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:385: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jp	Z, 00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:386: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	d, a
	ld	hl, #_Frms
	ld	a, d
	sub	a, (hl)
	jp	NC, 00295$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:387: (*wait_secs)--;
	ld	a, e
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:388: if (*wait_secs == 0) {
	or	a, a
	jp	NZ, 00295$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:389: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	bc
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:392: Half = 2;
	ld	hl, #_Half
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:393: Mins = HALF_TIME_DURATION; Secs = 0;
	ld	hl, #_Mins
	ld	(hl), #0x01
	ld	hl, #_Secs
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:394: KickOffTeam = TEAM_1; // Secondo tempo batte il Team 1
	ld	hl, #_KickOffTeam
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:395: TimerEnabled = FALSE; // Congela il timer fino al prossimo tocco
	ld	hl, #_TimerEnabled
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:398: SwSprite[14].lx = BALL_START_X;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:399: SwSprite[14].ly = BALL_START_Y;
	ld	hl, #0x0100
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:400: SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:402: Field.ly = target_ly; // Centra campo immediatamente per 2T
	ld	hl, #(_Field + 4)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:403: Field.dy = 0; // Impedisce ad AddLines di far scorrere lo sfondo non esistente
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:406: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
	push	bc
	ld	hl, #0x0000
	push	hl
	ld	l, 6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:407: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0100
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:408: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0200
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:411: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:412: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:413: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:414: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:415: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:416: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
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
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:419: for (u8 i = 0; i < 14; i++) {
	ld	-1 (ix), #0x00
00385$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC, 00291$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:420: SwSprite[i].lx = SwSprite[i].tx;
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
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ex	de, hl
	push	de
	pop	iy
	ld	a, 12 (iy)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:421: SwSprite[i].ly = SwSprite[i].ty;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:422: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	hl, #0x0011
	add	hl, de
	ld	(hl), #0x00
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:419: for (u8 i = 0; i < 14; i++) {
	inc	-1 (ix)
	jp	00385$
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:425: *game_state = 2;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
00295$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:428: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00387$
00356$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:430: } else if (*game_state == 5) {
	ld	a, -1 (ix)
	sub	a, #0x05
	jr	NZ, 00353$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:432: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jp	Z, 00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:433: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	d, a
	ld	hl, #_Frms
	ld	a, d
	sub	a, (hl)
	jr	NC, 00301$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:434: (*wait_secs)--;
	ld	a, e
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:435: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00301$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:436: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	bc
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	ld	de, #_EventTimeUp
	ld	a, #0x08
	call	_CallFnc_VOID
	pop	bc
00301$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:440: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00387$
00353$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:442: } else if (*game_state == 6) {
	ld	a, -1 (ix)
	sub	a, #0x06
	jp	NZ,00350$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:444: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jp	Z, 00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:445: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	d, a
	ld	hl, #_Frms
	ld	a, d
	sub	a, (hl)
	jp	NC, 00316$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:446: (*wait_secs)--;
	ld	a, e
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:447: if (*wait_secs == 0) {
	or	a, a
	jp	NZ, 00316$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:448: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	bc
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:450: if (RestartType == 1) {
	ld	a, (_RestartType+0)
	dec	a
	jp	NZ,00311$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:451: CallFnc_VOID(SEG_GAMESTATE_2, AssignThrowInTargets);
	push	bc
	ld	de, #_AssignThrowInTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:453: if (SwSprite[14].ly < 96) Field.ly = 0;
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, #0x60
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00308$
	ld	hl, #0x0000
	ld	((_Field + 4)), hl
	jp	00309$
00308$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:454: else if (SwSprite[14].ly > 512 - 192) Field.ly = 512 - 192;
	ld	a, #0x40
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00305$
	ld	hl, #0x0140
	ld	((_Field + 4)), hl
	jp	00309$
00305$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:455: else Field.ly = SwSprite[14].ly - 96;
	ld	a, e
	add	a, #0xa0
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	((_Field + 4)), de
00309$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:457: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:458: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0000
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:459: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0100
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:460: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0200
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:463: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:464: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:465: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:466: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:467: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:468: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:470: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Disabilita Focus visivo camminata
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
	jp	00312$
00311$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:473: SwSprite[14].lx = BALL_START_X;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:474: SwSprite[14].ly = BALL_START_Y;
	ld	hl, #0x0100
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:475: SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:477: Field.ly = target_ly; // Teletrasporta telecamera al centro
	ld	hl, #(_Field + 4)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:478: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:479: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
	push	bc
	ld	hl, #0x0000
	push	hl
	ld	l, 6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:480: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0100
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:481: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
	ld	hl, (#(_Field + 4) + 0)
	push	bc
	ld	de, #0x0200
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:483: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:484: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:485: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:486: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:487: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.lx, Field.ly, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:488: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.lx, Field.ly, 512);
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
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
	pop	bc
00312$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:492: *game_state = 2; // Riparte la coreografia di schieramento
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
00316$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:495: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00387$
00350$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:497: } else if (*game_state == 7) {
	ld	a, -1 (ix)
	sub	a, #0x07
	jp	NZ,00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:499: u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00443$
	ld	bc, #0x0000
	jp	00444$
00443$:
	ld	bc, #0x0001
00444$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:500: bool is_human = FALSE;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:501: u8 joy_port = 0;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:503: if (throw_team == TEAM_2) { is_human = TRUE; joy_port = 0; }
	ld	a, c
	dec	a
	jr	NZ, 00323$
	ld	-1 (ix), #0x01
	ld	-6 (ix), #0x00
	jp	00324$
00323$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:504: else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }
	ld	a, c
	or	a, a
	jr	NZ, 00324$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00324$
	ld	-1 (ix), #0x01
	ld	-6 (ix), #0x01
00324$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:506: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:508: if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00328$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:509: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00328$
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
00328$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:511: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:513: if (is_human) {
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:515: if (throw_team == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, c
	or	a, a
	jr	NZ, 00330$
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00445$
	ld	a, (_g_throw_rec_1+0)
	jp	00446$
00445$:
	ld	a, (_g_throw_rec_2+0)
00446$:
	ld	(_T1_Receiver+0), a
	jp	00331$
00330$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:516: else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00447$
	ld	a, (_g_throw_rec_1+0)
	jp	00448$
00447$:
	ld	a, (_g_throw_rec_2+0)
00448$:
	ld	(_T2_Receiver+0), a
00331$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:519: u8 dir = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, joy_port);
	ld	a, -6 (ix)
	push	af
	inc	sp
	ld	de, #_GetJoystickDirection
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:521: if (dir != DIRECTION_NONE && last_throw_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
	or	a, a
	jr	Z, 00333$
	ld	a, (_UpdateGameState_last_throw_dir_196609_858+0)
	or	a, a
	jr	NZ, 00333$
	ld	a, (_g_selected_rec+0)
	ld	c, a
	ld	hl, #_g_selected_rec
	ld	a, #0x01
	sub	a, c
	ld	(hl), a
00333$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:522: last_throw_dir = dir;
	ld	a, -1 (ix)
	ld	(_UpdateGameState_last_throw_dir_196609_858+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:524: u8 cur_trig = CallFnc_U8_P1(SEG_INPUT, IsTeamJoystickTriggerPressed, joy_port);
	ld	a, -6 (ix)
	push	af
	inc	sp
	ld	de, #_IsTeamJoystickTriggerPressed
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:525: bool do_throw = FALSE;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:526: if (cur_trig != 0 && g_prev_trigger[joy_port] == 0) do_throw = TRUE;
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00336$
	ld	a, -6 (ix)
	add	a, #<(_g_prev_trigger)
	ld	-10 (ix), a
	ld	a, #0x00
	adc	a, #>(_g_prev_trigger)
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00336$
	ld	-1 (ix), #0x01
00336$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:527: g_prev_trigger[joy_port] = cur_trig;
	ld	a, #<(_g_prev_trigger)
	add	a, -6 (ix)
	ld	-7 (ix), a
	ld	a, #>(_g_prev_trigger)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:529: if (*wait_secs == 0) do_throw = TRUE; // Lancio automatico scaduto il tempo
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	or	a, a
	jr	NZ, 00339$
	ld	-1 (ix), #0x01
00339$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:531: if (do_throw) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:532: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00449$
	ld	a, (_g_throw_rec_1+0)
	jp	00450$
00449$:
	ld	a, (_g_throw_rec_2+0)
00450$:
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteThrowIn
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:533: *game_state = 3; TimerEnabled = TRUE;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x03
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
	jp	00387$
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:536: if (*wait_secs == 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ, 00387$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:537: u8 target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	hl, #_Frms
	bit	0, (hl)
	jr	NZ, 00451$
	ld	a, (_g_throw_rec_1+0)
	jp	00452$
00451$:
	ld	a, (_g_throw_rec_2+0)
00452$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:538: CallFnc_VOID_U8U8(SEG_GAMESTATE_2, ExecuteThrowIn, g_thrower_id, target);
	ld	-1 (ix), a
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteThrowIn
	ld	a, #0x0b
	call	_CallFnc_VOID_U8U8
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:539: *game_state = 3; TimerEnabled = TRUE;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x03
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:542: return;
00387$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:544: }
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
__xinit__g_last_dx:
	.db #0x00	;  0
	.db #0x00	;  0
__xinit__g_last_dy:
	.db #0x01	;  1
	.db #0xff	; -1
__xinit__g_prev_trigger:
	.db #0x00	; 0
	.db #0x00	; 0
	.area _CABS (ABS)
