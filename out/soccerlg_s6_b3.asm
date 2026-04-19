;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s6_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _EventBallKicked
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
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
	.globl _PlayerAI
	.globl _FindReceiver
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
_ai_last_dx:
	.ds 14
_ai_last_dy:
	.ds 14
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
	.area _SEG6
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:12: void PlayerAI(u8 i) 
;	---------------------------------
; Function PlayerAI
; ---------------------------------
_PlayerAI::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-43
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:15: if (GameMode == GAMEMODE_P1_VS_CPU) {
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:16: if (i == T2_Carrier) return;
	ld	a, (_T2_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00306$
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:18: if (i == T1_Carrier || i == T2_Carrier) return;
	ld	a, (_T1_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00306$
	ld	a, (_T2_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00306$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:21: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:23: if (Ball->anim == 5 && i == g_pass_receiver) {
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	-39 (ix), l
	ld	-38 (ix), h
	ld	a, -39 (ix)
	sub	a, #0x05
	or	a, -38 (ix)
	ld	a, #0x01
	jr	Z, 01324$
	xor	a, a
01324$:
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:24: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
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
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:23: if (Ball->anim == 5 && i == g_pass_receiver) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00110$
	ld	a, (_g_pass_receiver+0)
	sub	a, -1 (ix)
	jr	NZ, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:24: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:25: SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, 0, (i < 7) ? 1 : -1);
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x000f
	add	hl, de
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00308$
	ld	bc, #0x0001
	jp	00309$
00308$:
	ld	bc, #0xffff
00309$:
	ld	a, c
	push	hl
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	pop	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:26: return;
	jp	00306$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:30: if (Ball->anim == 5 && i == LastTouchPlayer) {
	ld	a, -4 (ix)
	or	a, a
	jp	Z, 00120$
	ld	a, -1 (ix)
	ld	hl, #_LastTouchPlayer
	sub	a, (hl)
	jp	NZ,00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:31: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:33: SwSprite[i].frame = (i == 0) ? SPR_GK_PLAYER_SHOT_TO_SOUTH : SPR_GK_PLAYER_SHOT_TO_NORTH;
	ld	a, -3 (ix)
	add	a, #0x0f
	ld	-8 (ix), a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:32: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00115$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00116$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:33: SwSprite[i].frame = (i == 0) ? SPR_GK_PLAYER_SHOT_TO_SOUTH : SPR_GK_PLAYER_SHOT_TO_NORTH;
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00310$
	ld	-3 (ix), #0xf7
	ld	-2 (ix), #0
	jp	00311$
00310$:
	ld	-3 (ix), #0xf6
	ld	-2 (ix), #0
00311$:
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00306$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:35: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-5 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	sub	a, -5 (ix)
	jr	NC, 00312$
	ld	-5 (ix), #0x01
	ld	-4 (ix), #0
	jp	00313$
00312$:
	ld	a, -5 (ix)
	sub	a, -4 (ix)
	jr	NC, 00314$
	ld	-5 (ix), #0xff
	ld	-4 (ix), #0xff
	jp	00315$
00314$:
	xor	a, a
	ld	-5 (ix), a
	ld	-4 (ix), a
00315$:
00313$:
	ld	a, -5 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:36: i8 look_dy = (Ball->ly > SwSprite[i].ly) ? 1 : ((Ball->ly < SwSprite[i].ly) ? -1 : 0);
	ld	hl, #(_SwSprite + 322) + 4
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, -5 (ix)
	ld	a, -2 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00316$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00317$
00316$:
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00318$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00319$
00318$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00319$:
00317$:
	ld	b, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:37: if (look_dx == 0 && look_dy == 0) look_dy = (i < 7) ? 1 : -1;
	ld	a, -6 (ix)
	or	a,a
	jr	NZ, 00113$
	or	a,b
	jr	NZ, 00113$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00320$
	ld	de, #0x0001
	jp	00321$
00320$:
	ld	de, #0xffff
00321$:
	ld	b, e
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:38: SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, look_dx, look_dy);
	push	bc
	inc	sp
	ld	h, -6 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:40: return;
	jp	00306$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:43: struct ObjectInfo* Player = &SwSprite[i];
	ld	a, -3 (ix)
	ld	-37 (ix), a
	ld	a, -2 (ix)
	ld	-36 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:44: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00322$
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
	jp	00323$
00322$:
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
00323$:
	ld	a, -3 (ix)
	ld	-35 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:45: bool is_gk = (i == 0 || i == 7);
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00325$
	ld	a, -1 (ix)
	sub	a, #0x07
	ld	c, #0x00
	jr	NZ, 00326$
00325$:
	ld	c, #0x01
00326$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:48: if (Player->count > 0 && !is_gk) {
	ld	a, -37 (ix)
	add	a, #0x15
	ld	-34 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-33 (ix), a
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	a, (hl)
	ld	-32 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-31 (ix), a
	or	a, -32 (ix)
	jp	Z, 00138$
	ld	a, c
	or	a, a
	jp	NZ, 00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:49: Player->count--;
	ld	c, -32 (ix)
	ld	b, -31 (ix)
	dec	bc
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: Player->lx += Player->dx;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	e, (hl)
	ld	a, -37 (ix)
	add	a, #0x11
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	add	a, e
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: Player->ly += Player->dy;
	ld	a, -37 (ix)
	add	a, #0x04
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -37 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -36 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	bc, #0x0012
	add	hl, bc
	pop	bc
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
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:53: if (Player->lx < 16) Player->lx = 16;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	sub	a, #0x10
	jr	NC, 00123$
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	(hl), #0x10
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:54: if (Player->lx > 224) Player->lx = 224;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	e, (hl)
	ld	a, #0xe0
	sub	a, e
	jr	NC, 00125$
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	(hl), #0xe0
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:55: if (Player->ly < 24) Player->ly = 24;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0x18
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00127$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:56: if (Player->ly > 478) Player->ly = 478;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0xde
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00129$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xde
	inc	hl
	ld	(hl), #0x01
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:58: Player->frame = (Player->dx > 0) ? 
	ld	a, -37 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, (bc)
	ld	c, a
	xor	a, a
	sub	a, c
	jp	PO, 01332$
	xor	a, #0x80
01332$:
	jp	P, 00327$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:59: ((team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_WEST : SPR_T2_PLAYER_TACKLE_FROM_WEST) :
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00329$
	ld	bc, #0x001e
	jp	00328$
00329$:
	ld	bc, #0x008e
	jp	00328$
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:60: ((team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_EAST : SPR_T2_PLAYER_TACKLE_FROM_EAST);
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00331$
	ld	bc, #0x001f
	jp	00332$
00331$:
	ld	bc, #0x008f
00332$:
00328$:
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: Player->lx += Player->dx;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:63: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	hl, #(_SwSprite + 322)
	ld	d, (hl)
	ld	c, d
	ld	b, #0x00
	ld	-5 (ix), e
	ld	-4 (ix), #0x00
	ld	a, d
	sub	a, e
	jr	NC, 00333$
	ld	a, -5 (ix)
	sub	a, c
	ld	c, a
	ld	a, -4 (ix)
	sbc	a, b
	jp	00334$
00333$:
	ld	a, c
	sub	a, -5 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -4 (ix)
00334$:
	ld	-5 (ix), c
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: Player->ly += Player->dy;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:64: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	de, (#(_SwSprite + 322) + 4)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00335$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	jp	00336$
00335$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
	ld	b, a
00336$:
	ld	-3 (ix), c
	ld	-2 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:65: if (b_dist_x <= 12 && b_dist_y <= 12 && Ball->anim < 5 && RestartType == 0) {
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C,00306$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C,00306$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC,00306$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ,00306$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:66: LastTouchTeam = team;
	ld	a, -35 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:67: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:68: if (Ball->anim > 3) Ball->anim = 3;
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00131$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:69: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:70: Player->count = 0; // Ferma la scivolata appena ruba palla
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:72: return; // Salta il resto della logica finché è in scivolata
	jp	00306$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:80: if (is_gk) {
	ld	a, c
	or	a, a
	jp	Z, 00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:81: if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	b, (hl)
	ld	e, b
	ld	d, #0x00
	ld	hl, #0x0004
	add	hl, de
	ld	-3 (ix), c
	ld	-2 (ix), #0x00
	ld	a, l
	sub	a, -3 (ix)
	ld	a, h
	sbc	a, -2 (ix)
	jp	PO, 01333$
	xor	a, #0x80
01333$:
	jp	P, 00144$
	inc	de
	inc	de
	jp	00145$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:82: else if (Ball->lx < Player->lx - 4) target_x = Player->lx - 2;
	ld	a, e
	add	a, #0xfc
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -3 (ix)
	sub	a, l
	ld	a, -2 (ix)
	sbc	a, h
	jp	PO, 01334$
	xor	a, #0x80
01334$:
	jp	P, 00141$
	dec	de
	dec	de
	jp	00145$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:83: else target_x = Ball->lx;
	ld	e, c
	ld	d, #0x00
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:86: if (target_x < 88) target_x = 88;
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	ld	l, d
	sub	a, #0x58
	ld	a, l
	sbc	a, #0x00
	jr	NC, 00147$
	ld	de, #0x0058
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:87: if (target_x > 150) target_x = 150;
	ld	c, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x96
	cp	a, c
	ld	a, #0x00
	sbc	a, l
	jr	NC, 00149$
	ld	de, #0x0096
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:89: target_y = (team == TEAM_1) ? 32 : 452;
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00337$
	ld	hl, #0x0020
	jp	00338$
00337$:
	ld	hl, #0x01c4
00338$:
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:91: Player->dx = (target_x > Player->lx) ? 1 : ((target_x < Player->lx) ? -1 : 0);
	ld	a, -37 (ix)
	add	a, #0x11
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	c, #0x00
	ld	a, b
	sub	a, e
	ld	a, c
	sbc	a, d
	jr	NC, 00339$
	ld	bc, #0x0001
	jp	00340$
00339$:
	ld	a, e
	sub	a, b
	ld	a, d
	sbc	a, c
	jr	NC, 00341$
	ld	bc, #0xffff
	jp	00342$
00341$:
	ld	bc, #0x0000
00342$:
00340$:
	ld	-6 (ix), c
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:92: Player->dy = 0;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:94: Player->lx += Player->dx;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	add	a, -6 (ix)
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:95: Player->ly = target_y; // Forza la Y corretta
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:97: Player->anim++;
	ld	a, -37 (ix)
	add	a, #0x13
	ld	-5 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:58: Player->frame = (Player->dx > 0) ? 
	ld	a, -37 (ix)
	add	a, #0x0f
	ld	-3 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:98: if (Player->dx != 0) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:97: Player->anim++;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:99: if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
	ld	de, #0x0006
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	and	a, #0x01
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00151$
	ld	a, -4 (ix)
	or	a, -5 (ix)
	jr	NZ, 00343$
	ld	-5 (ix), #0xf3
	ld	-4 (ix), #0
	jp	00344$
00343$:
	ld	-5 (ix), #0xf4
	ld	-4 (ix), #0
00344$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
	jp	00306$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:100: else                Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_NORTH_1 : SPR_GK_PLAYER_NORTH_2;
	ld	a, -4 (ix)
	or	a, -5 (ix)
	jr	NZ, 00345$
	ld	-5 (ix), #0xf2
	ld	-4 (ix), #0
	jp	00346$
00345$:
	ld	-5 (ix), #0xf5
	ld	-4 (ix), #0
00346$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
	jp	00306$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:102: Player->frame = (team == TEAM_1) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00347$
	ld	bc, #0x00d5
	jp	00348$
00347$:
	ld	bc, #0x00d6
00348$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:104: return;
	jp	00306$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:109: u8 role = (team == TEAM_1) ? i : (i - 7); // 1,2: Dif, 3,4: Cen, 5,6: Att
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00349$
	ld	a, -1 (ix)
	jp	00350$
00349$:
	ld	a, -1 (ix)
	add	a, #0xf9
00350$:
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:112: u8 closest_mate = 0xFF;
	ld	-30 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:113: u16 min_dist = 0xFFFF;
	ld	-29 (ix), #0xff
	ld	-28 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:114: u8 start_mate = (team == TEAM_1) ? 1 : 8; 
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00351$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00352$
00351$:
	ld	-3 (ix), #0x08
	ld	-2 (ix), #0
00352$:
	ld	b, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:115: u8 end_mate = start_mate + 6;
	ld	a, b
	add	a, #0x06
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:117: for (u8 j = start_mate; j < end_mate; j++) {
00304$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:119: u16 dy = (SwSprite[j].ly > Ball->ly) ? (SwSprite[j].ly - Ball->ly) : (Ball->ly - SwSprite[j].ly);
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-27 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-26 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:117: for (u8 j = start_mate; j < end_mate; j++) {
	ld	a, b
	sub	a, c
	jp	NC, 00160$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:118: u16 dx = (SwSprite[j].lx > Ball->lx) ? (SwSprite[j].lx - Ball->lx) : (Ball->lx - SwSprite[j].lx);
	ld	e, b
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
	ld	de, #_SwSprite
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-2 (ix), a
	ld	e, -3 (ix)
	ld	d, #0x00
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	sub	a, -3 (ix)
	jr	NC, 00353$
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	jp	00354$
00353$:
	cp	a, a
	sbc	hl, de
	ex	de, hl
00354$:
	ld	-3 (ix), e
	ld	-2 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:119: u16 dy = (SwSprite[j].ly > Ball->ly) ? (SwSprite[j].ly - Ball->ly) : (Ball->ly - SwSprite[j].ly);
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -27 (ix)
	sub	a, e
	ld	a, -26 (ix)
	sbc	a, d
	jr	NC, 00355$
	ld	a, e
	sub	a, -27 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -26 (ix)
	jp	00356$
00355$:
	ld	a, -27 (ix)
	sub	a, e
	ld	e, a
	ld	a, -26 (ix)
	sbc	a, d
00356$:
	ld	d, a
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:120: if (dx + dy < min_dist) {
	add	a, -3 (ix)
	ld	e, a
	ld	a, d
	adc	a, -2 (ix)
	ld	d, a
	ld	a, e
	sub	a, -29 (ix)
	ld	a, d
	sbc	a, -28 (ix)
	jr	NC, 00305$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:121: min_dist = dx + dy;
	ld	-29 (ix), e
	ld	-28 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:122: closest_mate = j;
	ld	-30 (ix), b
00305$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:117: for (u8 j = start_mate; j < end_mate; j++) {
	inc	b
	jp	00304$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:127: if (LastTouchTeam == team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -35 (ix)
	ld	a, #0x01
	jr	Z, 01336$
	xor	a, a
01336$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:185: if (team == TEAM_1 && Ball->ly < 192) press_radius += 32;
	ld	a, -27 (ix)
	ld	-25 (ix), a
	ld	a, -26 (ix)
	ld	-24 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:127: if (LastTouchTeam == team) {
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00189$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:129: u8 run_dist = g_ActiveStats[team].aggro_attack * 10; 
	ld	bc, #_g_ActiveStats+0
	ld	e, -35 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, bc
	ex	de, hl
	push	de
	pop	iy
	ld	a, 5 (iy)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:130: u8 wide_dist = 24 + (g_ActiveStats[team].pass_tendency * 8); 
	inc	de
	inc	de
	ld	a, (de)
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x18
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:132: if (role >= 5) { // Attaccanti molto avanti
	ld	a, -7 (ix)
	sub	a, #0x05
	jp	C, 00165$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:133: target_y = Ball->ly + ((team == TEAM_1) ? (60 + run_dist) : -(60 + run_dist));
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	add	a, #0x3c
	ld	-6 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00357$
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	jp	00358$
00357$:
	xor	a, a
	sub	a, -6 (ix)
	ld	-4 (ix), a
	sbc	a, a
	sub	a, -5 (ix)
	ld	-3 (ix), a
00358$:
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -25 (ix)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -24 (ix)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-23 (ix), a
	ld	a, -3 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:134: target_x = (role == 5) ? 64 : 160;
	ld	a, -7 (ix)
	sub	a, #0x05
	jr	NZ, 00359$
	ld	bc, #0x0040
	jp	00360$
00359$:
	ld	bc, #0x00a0
00360$:
	ld	-21 (ix), c
	ld	-20 (ix), b
	jp	00166$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:135: } else if (role >= 3) { // Centrocampisti a supporto largo
	ld	a, -7 (ix)
	sub	a, #0x03
	jr	C, 00162$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:136: target_y = Ball->ly + ((team == TEAM_1) ? 24 : -24);
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00361$
	ld	bc, #0x0018
	jp	00362$
00361$:
	ld	bc, #0xffe8
00362$:
	ld	l, -25 (ix)
	ld	h, -24 (ix)
	add	hl, bc
	ld	-23 (ix), l
	ld	-22 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:137: target_x = Ball->lx + ((role == 3) ? -wide_dist : wide_dist);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -3 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -7 (ix)
	sub	a, #0x03
	jr	NZ, 00363$
	xor	a, a
	sub	a, -4 (ix)
	ld	-8 (ix), a
	sbc	a, a
	sub	a, -3 (ix)
	ld	-7 (ix), a
	jp	00364$
00363$:
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
00364$:
	ld	a, -6 (ix)
	add	a, -8 (ix)
	ld	c, a
	ld	a, -5 (ix)
	adc	a, -7 (ix)
	ld	-21 (ix), c
	ld	-20 (ix), a
	jp	00166$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:139: target_y = Ball->ly + ((team == TEAM_1) ? -64 : 64);
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00365$
	ld	-4 (ix), #0xc0
	ld	-3 (ix), #0xff
	jp	00366$
00365$:
	ld	-4 (ix), #0x40
	ld	-3 (ix), #0
00366$:
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, -25 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, -24 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-23 (ix), a
	ld	a, -3 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:140: target_x = (role == 1) ? 80 : 144;
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00367$
	ld	-4 (ix), #0x50
	ld	-3 (ix), #0
	jp	00368$
00367$:
	ld	-4 (ix), #0x90
	ld	-3 (ix), #0
00368$:
	ld	a, -4 (ix)
	ld	-21 (ix), a
	ld	a, -3 (ix)
	ld	-20 (ix), a
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:144: if (LastTouchPlayer != 0xFF && LastTouchPlayer != i) {
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jp	Z,00190$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jp	Z,00190$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:145: u16 dist_c_x = (SwSprite[LastTouchPlayer].lx > target_x) ? (SwSprite[LastTouchPlayer].lx - target_x) : (target_x - SwSprite[LastTouchPlayer].lx);
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -4 (ix)
	ld	-10 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -3 (ix)
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -3 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -21 (ix)
	sub	a, -6 (ix)
	ld	a, -20 (ix)
	sbc	a, -5 (ix)
	jr	NC, 00369$
	ld	a, -4 (ix)
	ld	-7 (ix), a
	ld	a, -3 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -21 (ix)
	ld	-4 (ix), a
	ld	a, -6 (ix)
	sbc	a, -20 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	jp	00370$
00369$:
	ld	a, -21 (ix)
	ld	-6 (ix), a
	ld	a, -20 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-7 (ix), a
00370$:
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:146: u16 dist_c_y = (SwSprite[LastTouchPlayer].ly > target_y) ? (SwSprite[LastTouchPlayer].ly - target_y) : (target_y - SwSprite[LastTouchPlayer].ly);
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -23 (ix)
	sub	a, -6 (ix)
	ld	a, -22 (ix)
	sbc	a, -5 (ix)
	jr	NC, 00371$
	ld	a, -6 (ix)
	sub	a, -23 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	sbc	a, -22 (ix)
	ld	-7 (ix), a
	jp	00372$
00371$:
	ld	a, -23 (ix)
	sub	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -22 (ix)
	sbc	a, -5 (ix)
	ld	-7 (ix), a
00372$:
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:147: if (dist_c_x < 48 && dist_c_y < 48) {
	ld	a, -4 (ix)
	sub	a, #0x30
	ld	a, -3 (ix)
	sbc	a, #0x00
	jp	NC, 00190$
	ld	a, -6 (ix)
	ld	b, -5 (ix)
	sub	a, #0x30
	ld	a, b
	sbc	a, #0x00
	jp	NC, 00190$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:148: target_x += (target_x > 112) ? 48 : -48;
	ld	a, -21 (ix)
	ld	-6 (ix), a
	ld	a, -20 (ix)
	ld	-5 (ix), a
	ld	a, #0x70
	cp	a, -6 (ix)
	ld	a, #0x00
	sbc	a, -5 (ix)
	jr	NC, 00373$
	ld	-4 (ix), #0x30
	ld	-3 (ix), #0
	jp	00374$
00373$:
	ld	-4 (ix), #0xd0
	ld	-3 (ix), #0xff
00374$:
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-21 (ix), a
	ld	a, -3 (ix)
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:149: target_y += (team == TEAM_1) ? 32 : -32; 
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00375$
	ld	-4 (ix), #0x20
	ld	-3 (ix), #0
	jp	00376$
00375$:
	ld	-4 (ix), #0xe0
	ld	-3 (ix), #0xff
00376$:
	ld	a, -23 (ix)
	ld	-6 (ix), a
	ld	a, -22 (ix)
	ld	-5 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-23 (ix), a
	ld	a, -3 (ix)
	ld	-22 (ix), a
	jp	00190$
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:152: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	jp	Z,00186$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:154: if (role >= 5) { // Attaccanti alti
	ld	a, -7 (ix)
	sub	a, #0x05
	jr	C, 00183$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:155: target_y = Ball->ly + ((team == TEAM_1) ? -40 : 40);
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00377$
	ld	-4 (ix), #0xd8
	ld	-3 (ix), #0xff
	jp	00378$
00377$:
	ld	-4 (ix), #0x28
	ld	-3 (ix), #0
00378$:
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -25 (ix)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -24 (ix)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-23 (ix), a
	ld	a, -3 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:156: target_x = (role == 5) ? 80 : 144;
	ld	a, -7 (ix)
	sub	a, #0x05
	jr	NZ, 00379$
	ld	bc, #0x0050
	jp	00380$
00379$:
	ld	bc, #0x0090
00380$:
	ld	-21 (ix), c
	ld	-20 (ix), b
	jp	00190$
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:35: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:159: target_x = Ball->lx + ((role == 3) ? -32 : 32);
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:157: } else if (role >= 3) { // Centrocampisti chiudono il centro
	ld	a, -7 (ix)
	sub	a, #0x03
	jr	C, 00180$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:158: target_y = Ball->ly + ((team == TEAM_1) ? 32 : -32);
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00381$
	ld	-4 (ix), #0x20
	ld	-3 (ix), #0
	jp	00382$
00381$:
	ld	-4 (ix), #0xe0
	ld	-3 (ix), #0xff
00382$:
	ld	a, -4 (ix)
	ld	-9 (ix), a
	ld	a, -3 (ix)
	ld	-8 (ix), a
	ld	a, -25 (ix)
	add	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -24 (ix)
	adc	a, -8 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-23 (ix), a
	ld	a, -3 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:159: target_x = Ball->lx + ((role == 3) ? -32 : 32);
	ld	a, -7 (ix)
	sub	a, #0x03
	jr	NZ, 00383$
	ld	-4 (ix), #0xe0
	ld	-3 (ix), #0xff
	jp	00384$
00383$:
	ld	-4 (ix), #0x20
	ld	-3 (ix), #0
00384$:
	ld	a, -4 (ix)
	add	a, -6 (ix)
	ld	c, a
	ld	a, -3 (ix)
	adc	a, -5 (ix)
	ld	-21 (ix), c
	ld	-20 (ix), a
	jp	00190$
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:161: target_y = Ball->ly + ((team == TEAM_1) ? 80 : -80);
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00385$
	ld	-4 (ix), #0x50
	ld	-3 (ix), #0
	jp	00386$
00385$:
	ld	-4 (ix), #0xb0
	ld	-3 (ix), #0xff
00386$:
	ld	a, -4 (ix)
	ld	-9 (ix), a
	ld	a, -3 (ix)
	ld	-8 (ix), a
	ld	a, -25 (ix)
	add	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -24 (ix)
	adc	a, -8 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-23 (ix), a
	ld	a, -3 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:162: target_x = Ball->lx + ((role == 1) ? -24 : 24);
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00387$
	ld	-4 (ix), #0xe8
	ld	-3 (ix), #0xff
	jp	00388$
00387$:
	ld	-4 (ix), #0x18
	ld	-3 (ix), #0
00388$:
	ld	a, -4 (ix)
	add	a, -6 (ix)
	ld	c, a
	ld	a, -3 (ix)
	adc	a, -5 (ix)
	ld	-21 (ix), c
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:165: if (team == TEAM_1 && target_y < 72) target_y = 72;
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00174$
	ld	a, -23 (ix)
	ld	-4 (ix), a
	ld	a, -22 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sub	a, #0x48
	ld	a, -3 (ix)
	sbc	a, #0x00
	jr	NC, 00174$
	ld	-23 (ix), #0x48
	ld	-22 (ix), #0
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:166: if (team == TEAM_2 && target_y > 440) target_y = 440;
	ld	a, -35 (ix)
	dec	a
	jp	NZ,00190$
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	a, #0xb8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00190$
	ld	-23 (ix), #0xb8
	ld	-22 (ix), #0x01
	jp	00190$
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:170: target_x = (role % 2 == 1) ? 80 : 144;
	ld	a, -7 (ix)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
	ld	a, c
	dec	a
	or	a, b
	jr	NZ, 00389$
	ld	-4 (ix), #0x50
	ld	-3 (ix), #0
	jp	00390$
00389$:
	ld	-4 (ix), #0x90
	ld	-3 (ix), #0
00390$:
	ld	a, -4 (ix)
	ld	-21 (ix), a
	ld	a, -3 (ix)
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:171: target_y = Ball->ly + ((team == TEAM_1) ? -32 : 32);
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00391$
	ld	-4 (ix), #0xe0
	ld	-3 (ix), #0xff
	jp	00392$
00391$:
	ld	-4 (ix), #0x20
	ld	-3 (ix), #0
00392$:
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -25 (ix)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -24 (ix)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-23 (ix), a
	ld	a, -3 (ix)
	ld	-22 (ix), a
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: Player->lx += Player->dx;
	ld	a, -37 (ix)
	add	a, #0x11
	ld	-19 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: Player->ly += Player->dy;
	ld	a, -37 (ix)
	add	a, #0x04
	ld	-17 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	a, -37 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:175: if (LastTouchTeam != team && i == closest_mate) {
	ld	c, -2 (ix)
	bit	0, c
	jp	NZ, 00232$
	ld	a, -1 (ix)
	sub	a, -30 (ix)
	jp	NZ,00232$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:176: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-13 (ix), a
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -13 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
	ld	a, -13 (ix)
	sub	a, -2 (ix)
	jr	NC, 00393$
	ld	a, -5 (ix)
	sub	a, -12 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -11 (ix)
	ld	-2 (ix), a
	jp	00394$
00393$:
	ld	a, -12 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -11 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
00394$:
	ld	a, -3 (ix)
	ld	-10 (ix), a
	ld	a, -2 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:177: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -27 (ix)
	sub	a, -5 (ix)
	ld	a, -26 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00395$
	ld	a, -5 (ix)
	sub	a, -27 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -26 (ix)
	ld	-2 (ix), a
	jp	00396$
00395$:
	ld	a, -27 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -26 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
00396$:
	ld	a, -3 (ix)
	ld	-8 (ix), a
	ld	a, -2 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:180: u16 press_radius = 24 + (g_ActiveStats[team].aggro_defense * 8);
	ld	c, -35 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, #<(_g_ActiveStats)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	b, #0x03
01358$:
	sla	-5 (ix)
	rl	-4 (ix)
	djnz	01358$
	ld	a, -5 (ix)
	add	a, #0x18
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:152: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	ld	a, #0x01
	jr	Z, 01360$
	xor	a, a
01360$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:181: if (LastTouchTeam == 0xFF) press_radius = 500; // Palla libera: vai sempre a prenderla!
	ld	-4 (ix), a
	or	a, a
	jr	Z, 00192$
	ld	-3 (ix), #0xf4
	ld	-2 (ix), #0x01
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:184: if (LastTouchTeam != 0xFF) {
	bit	0, -4 (ix)
	jr	NZ, 00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:185: if (team == TEAM_1 && Ball->ly < 192) press_radius += 32;
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00194$
	ld	a, -25 (ix)
	sub	a, #0xc0
	ld	a, -24 (ix)
	sbc	a, #0x00
	jr	NC, 00194$
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x20
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:186: if (team == TEAM_2 && Ball->ly > 320) press_radius += 32;
	ld	a, -35 (ix)
	dec	a
	jr	NZ, 00200$
	ld	a, #0x40
	cp	a, -25 (ix)
	ld	a, #0x01
	sbc	a, -24 (ix)
	jr	NC, 00200$
	ld	a, -3 (ix)
	ld	-25 (ix), a
	ld	a, -2 (ix)
	ld	-24 (ix), a
	ld	a, -25 (ix)
	add	a, #0x20
	ld	-3 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:189: if (b_dist_x < press_radius && b_dist_y < press_radius) {
	ld	a, -10 (ix)
	sub	a, -3 (ix)
	ld	a, -9 (ix)
	sbc	a, -2 (ix)
	jp	NC, 00232$
	ld	a, -8 (ix)
	sub	a, -3 (ix)
	ld	a, -7 (ix)
	sbc	a, -2 (ix)
	jp	NC, 00232$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:190: target_x = Ball->lx;
	ld	a, -13 (ix)
	ld	-21 (ix), a
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:191: target_y = Ball->ly;
	ld	a, -27 (ix)
	ld	c, -26 (ix)
	ld	-23 (ix), a
	ld	-22 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:193: bool is_ball_carried = FALSE;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:194: if (LastTouchPlayer != 0xFF && Ball->anim < 5) {
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jp	Z,00205$
	ld	a, -39 (ix)
	sub	a, #0x05
	ld	a, -38 (ix)
	sbc	a, #0x00
	jp	NC, 00205$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:195: u16 c_dist_x = (SwSprite[LastTouchPlayer].lx > Ball->lx) ? (SwSprite[LastTouchPlayer].lx - Ball->lx) : (Ball->lx - SwSprite[LastTouchPlayer].lx);
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -4 (ix)
	ld	-25 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -3 (ix)
	ld	-24 (ix), a
	ld	l, -25 (ix)
	ld	h, -24 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -13 (ix)
	sub	a, -5 (ix)
	jr	NC, 00397$
	ld	a, -4 (ix)
	sub	a, -12 (ix)
	ld	-39 (ix), a
	ld	a, -3 (ix)
	sbc	a, -11 (ix)
	ld	-38 (ix), a
	jp	00398$
00397$:
	ld	a, -12 (ix)
	sub	a, -4 (ix)
	ld	-39 (ix), a
	ld	a, -11 (ix)
	sbc	a, -3 (ix)
	ld	-38 (ix), a
00398$:
	ld	a, -39 (ix)
	ld	-4 (ix), a
	ld	a, -38 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:196: u16 c_dist_y = (SwSprite[LastTouchPlayer].ly > Ball->ly) ? (SwSprite[LastTouchPlayer].ly - Ball->ly) : (Ball->ly - SwSprite[LastTouchPlayer].ly);
	ld	a, -25 (ix)
	ld	-12 (ix), a
	ld	a, -24 (ix)
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -27 (ix)
	sub	a, -12 (ix)
	ld	a, -26 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00399$
	ld	a, -12 (ix)
	sub	a, -27 (ix)
	ld	-25 (ix), a
	ld	a, -11 (ix)
	sbc	a, -26 (ix)
	ld	-24 (ix), a
	jp	00400$
00399$:
	ld	a, -27 (ix)
	sub	a, -12 (ix)
	ld	-25 (ix), a
	ld	a, -26 (ix)
	sbc	a, -11 (ix)
	ld	-24 (ix), a
00400$:
	ld	a, -25 (ix)
	ld	-12 (ix), a
	ld	a, -24 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:197: if (c_dist_x <= 16 && c_dist_y <= 16) is_ball_carried = TRUE;
	ld	a, #0x10
	cp	a, -4 (ix)
	ld	a, #0x00
	sbc	a, -3 (ix)
	jr	C, 00205$
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00205$
	ld	-2 (ix), #0x01
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:201: if (is_ball_carried && b_dist_x < 48 && b_dist_y < 48 && (b_dist_x > 16 || b_dist_y > 16) && Player->count == 0 && RestartType == 0) {
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00212$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, c
	sub	a, #0x30
	ld	a, b
	sbc	a, #0x00
	jp	NC, 00212$
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	a, e
	sub	a, #0x30
	ld	a, d
	sbc	a, #0x00
	jp	NC, 00212$
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00217$
	ld	a, #0x10
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	NC, 00212$
00217$:
	ld	a, -31 (ix)
	or	a, -32 (ix)
	jp	NZ, 00212$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:202: if (Frms % 16 == 0) {
	ld	a, (_Frms+0)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	and	a, #0x0f
	jp	NZ,00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:203: u8 slide_chance = g_ActiveStats[team].aggro_defense * 15; // Fino al 75% per Stat 5
	ld	a, -6 (ix)
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:204: if ((Frms + i * 7) % 100 < slide_chance) {
	ld	a, -1 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-25 (ix), l
	ld	-24 (ix), h
	ld	a, -5 (ix)
	add	a, -25 (ix)
	ld	-12 (ix), a
	ld	a, -4 (ix)
	adc	a, -24 (ix)
	ld	-11 (ix), a
	ld	de, #0x0064
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-5 (ix), e
	ld	-4 (ix), d
	ld	c, -3 (ix)
	ld	b, #0x00
	ld	a, -5 (ix)
	sub	a, c
	ld	a, -4 (ix)
	sbc	a, b
	jp	PO, 01366$
	xor	a, #0x80
01366$:
	jp	P, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:205: Player->count = 12; // durata scivolata
	ld	l, -34 (ix)
	ld	h, -33 (ix)
	ld	(hl), #0x0c
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:206: Player->dx = (Ball->lx > Player->lx) ? 4 : -4;
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	sub	a, c
	jr	NC, 00401$
	ld	bc, #0x0004
	jp	00402$
00401$:
	ld	bc, #0xfffc
00402$:
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:207: Player->dy = (Ball->ly > Player->ly) ? 3 : -3;
	ld	bc, (#(_SwSprite + 326) + 0)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00403$
	ld	bc, #0x0003
	jp	00404$
00403$:
	ld	bc, #0xfffd
00404$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:208: return; // Esce e inizia la scivolata dal prossimo frame
	jp	00306$
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:214: if (!is_ball_carried) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00232$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:216: if (b_dist_x <= steal_dist && b_dist_y <= steal_dist && Ball->count == 0 && RestartType == 0) {
	ld	a, #0x0c
	cp	a, -10 (ix)
	ld	a, #0x00
	sbc	a, -9 (ix)
	jr	C, 00232$
	ld	a, #0x0c
	cp	a, -8 (ix)
	ld	a, #0x00
	sbc	a, -7 (ix)
	jr	C, 00232$
	ld	hl, #(_SwSprite + 322) + 21
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	or	a, -3 (ix)
	jr	NZ, 00232$
	ld	a, (_RestartType+0)
	or	a, a
	jr	NZ, 00232$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:217: LastTouchTeam = team;
	ld	a, -35 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:218: LastTouchPlayer = i; 
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:219: if (Ball->anim > 3) Ball->anim = 3; 
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, #0x03
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jr	NC, 00220$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:220: Ball->frame = SPR_BALL_SIZE_1; 
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
00232$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:227: bool is_cpu_team = (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1);
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00405$
	ld	a, -35 (ix)
	or	a, a
	jr	Z, 00406$
00405$:
	ld	c, #0x00
	jp	00407$
00406$:
	ld	c, #0x01
00407$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:228: if (is_cpu_team && i == closest_mate && LastTouchTeam == team) {
	ld	a, c
	or	a, a
	jp	Z, 00278$
	ld	a, -1 (ix)
	sub	a, -30 (ix)
	jp	NZ,00278$
	ld	a, (_LastTouchTeam+0)
	sub	a, -35 (ix)
	jp	NZ,00278$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:229: if (min_dist <= 24) {
	ld	c, -29 (ix)
	ld	l, -28 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, l
	jp	C, 00275$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:231: target_x = 128; 
	ld	-21 (ix), #0x80
	ld	-20 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:232: target_y = 480; 
	ld	-23 (ix), #0xe0
	ld	-22 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:235: if (min_dist <= 12 && Ball->anim == 0) {
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, l
	jp	C, 00278$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00278$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:236: bool action_taken = FALSE;
	ld	-25 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:239: if (Field.ly >= 320 && Player->ly > 360) { // Scrolling completo e in area di tiro
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0140
	cp	a, a
	sbc	hl, de
	jp	C, 00241$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, #0x68
	cp	a, -3 (ix)
	ld	a, #0x01
	sbc	a, -2 (ix)
	jp	NC, 00241$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:240: u8 rand_shot = (Player->lx + Frms) % 100;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, (_Frms+0)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	add	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, -6 (ix)
	ld	-2 (ix), a
	ld	de, #0x0064
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	a, -3 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:243: u8 shot_prob = 5 + (g_ActiveStats[team].aggro_attack * 4);
	ld	c, -35 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, #<(_g_ActiveStats)
	add	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -5 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
	add	a, a
	add	a, a
	add	a, #0x05
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:244: if (rand_shot < shot_prob) { 
	ld	a, -4 (ix)
	sub	a, c
	jp	NC, 00241$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:245: action_taken = TRUE;
	ld	-25 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:246: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:247: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:248: g_pass_start_x = Player->lx;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:249: g_pass_start_y = Player->ly;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:250: g_pass_target_x = 96 + (Frms % 48); // Posizione casuale nello specchio della porta (96-143)
	ld	a, (_Frms+0)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	de, #0x0030
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-5 (ix), e
	ld	-4 (ix), d
	ld	a, -5 (ix)
	add	a, #0x60
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(_g_pass_target_x), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:251: g_pass_target_y = 496; // Dentro la porta
	ld	hl, #0x01f0
	ld	(_g_pass_target_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:253: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00408$
	ld	bc, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, bc
	jp	00409$
00408$:
	ld	bc, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
00409$:
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:254: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	inc	hl
	sub	a, #0xf0
	ld	a, (hl)
	sbc	a, #0x01
	jr	NC, 00410$
	ld	hl, #_g_pass_start_y
	ld	a, #0xf0
	sub	a, (hl)
	inc	hl
	ld	e, a
	ld	a, #0x01
	sbc	a, (hl)
	ld	d, a
	jp	00411$
00410$:
	ld	a, (_g_pass_start_y+0)
	add	a, #0x10
	ld	e, a
	ld	a, (_g_pass_start_y+1)
	adc	a, #0xfe
	ld	d, a
00411$:
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:256: g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente
	add	hl, bc
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:257: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x0a
	jr	NC, 00235$
	ld	0 (iy), #0x0a
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:258: if (g_pass_max_frames > 25) g_pass_max_frames = 25;
	ld	a, #0x19
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00237$
	ld	0 (iy), #0x19
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:259: g_pass_max_height = 2; // Tiro rasoterra e limitato
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:261: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:262: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00241$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:267: if (!action_taken && Frms % 16 == 0) {
	ld	a, -25 (ix)
	or	a, a
	jp	NZ, 00254$
	ld	a, (_Frms+0)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0x0f
	jp	NZ,00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:268: u8 rand_pass = (Player->lx * 5 + Player->ly * 3 + Frms) % 100;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, de
	add	hl, bc
	ld	de, #0x0064
	call	__moduint
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:271: u8 pass_prob = 10 + (g_ActiveStats[team].pass_tendency * 10);
	ld	c, -35 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	bc, #_g_ActiveStats
	add	hl, bc
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, #0x0a
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:272: if (rand_pass < pass_prob) { 
	ld	a, e
	sub	a, c
	jp	NC, 00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:273: u8 receiver = FindReceiver(i, 0xFF, Player->dx, Player->dy);
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	b, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	l, #0xff
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	call	_FindReceiver
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:274: if (receiver != 0xFF) {
	ld	-24 (ix), e
	ld	a, e
	inc	a
	jp	Z,00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:275: u16 r_dx = (SwSprite[receiver].lx > Player->lx) ? (SwSprite[receiver].lx - Player->lx) : (Player->lx - SwSprite[receiver].lx);
	ld	c, -24 (ix)
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
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	e, (hl)
	ld	l, -37 (ix)
	ld	h, -36 (ix)
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
	jr	NC, 00412$
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	jp	00413$
00412$:
	ld	a, l
	sub	a, c
	ld	c, a
	ld	a, h
	sbc	a, b
	ld	b, a
00413$:
	ld	-11 (ix), c
	ld	-10 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:276: u16 r_dy = (SwSprite[receiver].ly > Player->ly) ? (SwSprite[receiver].ly - Player->ly) : (Player->ly - SwSprite[receiver].ly);
	ld	a, -13 (ix)
	add	a, #0x04
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00414$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	jp	00415$
00414$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
00415$:
	ld	a, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:278: if (r_dx + r_dy >= 48) {
	add	a, -11 (ix)
	ld	c, a
	ld	a, b
	adc	a, -10 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x30
	ld	a, b
	sbc	a, #0x00
	jp	C, 00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:279: action_taken = TRUE;
	ld	-25 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:280: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:281: g_pass_receiver = receiver;
	ld	a, -24 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:282: g_pass_start_x = Player->lx;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:283: g_pass_start_y = Player->ly;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:284: g_pass_target_x = SwSprite[receiver].lx;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	(_g_pass_target_x+0), a
	ld	hl, #_g_pass_target_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:285: g_pass_target_y = SwSprite[receiver].ly;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:286: g_pass_max_frames = (r_dx + r_dy) / 5; // Velocità di volo passaggi
	ld	de, #0x0005
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:287: if (g_pass_max_frames < 8) g_pass_max_frames = 8;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x08
	jr	NC, 00244$
	ld	0 (iy), #0x08
00244$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:288: if (g_pass_max_frames > 34) g_pass_max_frames = 34;
	ld	a, #0x22
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00246$
	ld	0 (iy), #0x22
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:289: g_pass_max_height = 7;
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:291: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:292: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:299: if (!action_taken) {
	ld	a, -25 (ix)
	or	a, a
	jp	NZ, 00278$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:300: Ball->dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01374$
	xor	a, #0x80
01374$:
	jp	P, 00416$
	ld	de, #0x0001
	jp	00417$
00416$:
	bit	7, c
	jr	Z, 00418$
	ld	de, #0xffff
	jp	00419$
00418$:
	ld	de, #0x0000
00419$:
00417$:
	ld	hl, #(_SwSprite + 339)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:301: Ball->dy = (Player->dy > 0) ? 1 : ((Player->dy < 0) ? -1 : 0);
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01375$
	xor	a, #0x80
01375$:
	jp	P, 00420$
	ld	de, #0x0001
	jp	00421$
00420$:
	bit	7, c
	jr	Z, 00422$
	ld	de, #0xffff
	jp	00423$
00422$:
	ld	de, #0x0000
00423$:
00421$:
	ld	hl, #(_SwSprite + 340)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:302: if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
	ld	a, (#(_SwSprite + 339) + 0)
	or	a, a
	jr	NZ, 00257$
	ld	a, (#(_SwSprite + 340) + 0)
	or	a, a
	jr	NZ, 00257$
	ld	(hl), #0x01
00257$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:304: i8 off_x = 0; i8 off_y = 6;
	ld	c, #0x00
	ld	e, #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:302: if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
	ld	hl, #(_SwSprite + 339)
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:305: if (Ball->dx > 0) off_x = 9; else if (Ball->dx < 0) off_x = -9;
	xor	a, a
	sub	a, l
	jp	PO, 01376$
	xor	a, #0x80
01376$:
	jp	P, 00262$
	ld	c, #0x09
	jp	00263$
00262$:
	bit	7, l
	jr	Z, 00263$
	ld	c, #0xf7
00263$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:302: if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
	ld	hl, #(_SwSprite + 340)
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:306: if (Ball->dy > 0) off_y = 8; else if (Ball->dy < 0) off_y = -3; 
	xor	a, a
	sub	a, l
	jp	PO, 01377$
	xor	a, #0x80
01377$:
	jp	P, 00267$
	ld	e, #0x08
	jp	00268$
00267$:
	bit	7, l
	jr	Z, 00268$
	ld	e, #0xfd
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:308: Ball->lx = (u8)(Player->lx + off_x);
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	add	a, c
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:309: Ball->ly = (Player->ly + off_y) & 511;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	ex	de, hl
	add	hl, bc
	ld	c, l
	ld	a, h
	and	a, #0x01
	ld	b, a
	ld	((_SwSprite + 326)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:310: Ball->anim = 3; Ball->count = 0;
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:311: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00278$
00275$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:316: target_x = Ball->lx;
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-21 (ix), a
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:317: target_y = Ball->ly;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-23 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-22 (ix), a
00278$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:322: if (target_x < 16) target_x = 16; 
	ld	a, -21 (ix)
	ld	b, -20 (ix)
	sub	a, #0x10
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00282$
	ld	-21 (ix), #0x10
	ld	-20 (ix), #0
00282$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:323: if (target_x > 224) target_x = 224;
	ld	c, -21 (ix)
	ld	b, -20 (ix)
	ld	a, #0xe0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00284$
	ld	-21 (ix), #0xe0
	ld	-20 (ix), #0
00284$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:324: if (target_y < 24) target_y = 24;
	ld	a, -23 (ix)
	ld	b, -22 (ix)
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00286$
	ld	-23 (ix), #0x18
	ld	-22 (ix), #0
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:325: if (target_y > 478) target_y = 478;
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	a, #0xde
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00288$
	ld	-23 (ix), #0xde
	ld	-22 (ix), #0x01
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:329: u16 dist_x = (target_x > Player->lx) ? (target_x - Player->lx) : (Player->lx - target_x);
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	ld	c, a
	ld	b, #0x00
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, c
	sub	a, -21 (ix)
	ld	a, b
	sbc	a, -20 (ix)
	jr	NC, 00424$
	ld	a, -21 (ix)
	ld	-7 (ix), a
	ld	a, -20 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	jp	00425$
00424$:
	ld	a, -3 (ix)
	ld	c, -2 (ix)
	sub	a, -21 (ix)
	ld	-3 (ix), a
	ld	a, c
	sbc	a, -20 (ix)
	ld	-2 (ix), a
00425$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:330: u16 dist_y = (target_y > Player->ly) ? (target_y - Player->ly) : (Player->ly - target_y);
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, -23 (ix)
	ld	a, -4 (ix)
	sbc	a, -22 (ix)
	jr	NC, 00426$
	ld	a, -23 (ix)
	sub	a, -5 (ix)
	ld	c, a
	ld	a, -22 (ix)
	sbc	a, -4 (ix)
	ld	b, a
	jp	00427$
00426$:
	ld	a, -5 (ix)
	sub	a, -23 (ix)
	ld	c, a
	ld	a, -4 (ix)
	sbc	a, -22 (ix)
	ld	b, a
00427$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:333: u8 speed = 1;
	ld	e, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:334: if (dist_x > 24 || dist_y > 24) speed = 2;
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, d
	ld	a, #0x00
	sbc	a, l
	jr	C, 00289$
	ld	d, c
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, d
	ld	a, #0x00
	sbc	a, l
	jr	NC, 00290$
00289$:
	ld	e, #0x02
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:336: Player->dx = 0; Player->dy = 0;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:338: if (dist_x > speed) Player->dx = (target_x > Player->lx) ? speed : -speed;
	ld	-5 (ix), e
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00293$
	ld	a, -19 (ix)
	ld	-3 (ix), a
	ld	a, -18 (ix)
	ld	-2 (ix), a
	ld	l, -37 (ix)
	ld	h, -36 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl)
	ld	l, #0x00
	sub	a, -21 (ix)
	ld	a, l
	sbc	a, -20 (ix)
	jr	NC, 00428$
	ld	a, e
	jp	00429$
00428$:
	xor	a, a
	sub	a, e
00429$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00293$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:339: if (dist_y > speed) Player->dy = (target_y > Player->ly) ? speed : -speed;
	ld	a, -5 (ix)
	sub	a, c
	ld	a, -4 (ix)
	sbc	a, b
	jr	NC, 00295$
	ld	a, -15 (ix)
	ld	-3 (ix), a
	ld	a, -14 (ix)
	ld	-2 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -23 (ix)
	ld	a, b
	sbc	a, -22 (ix)
	jr	NC, 00430$
	ld	a, e
	jp	00431$
00430$:
	xor	a, a
	sub	a, e
00431$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00295$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:341: if (Player->dx != 0 || Player->dy != 0) {
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:58: Player->frame = (Player->dx > 0) ? 
	ld	a, -37 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -36 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:341: if (Player->dx != 0 || Player->dy != 0) {
	ld	a, e
	or	a, a
	jr	NZ, 00299$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00300$
00299$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:342: ai_last_dx[i] = Player->dx;
	ld	a, #<(_ai_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_ai_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:343: ai_last_dy[i] = Player->dy;
	ld	a, #<(_ai_last_dy)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_ai_last_dy)
	adc	a, #0x00
	ld	d, a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:345: Player->lx += Player->dx;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	add	a, e
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:346: Player->ly += Player->dy;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
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
	add	hl, de
	ex	de, hl
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:348: Player->anim++;
	ld	l, -37 (ix)
	ld	h, -36 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:349: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-43 (ix), #0x00
	ld	-42 (ix), #0x01
	ld	-41 (ix), #0x02
	ld	-40 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:350: Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
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
	ld	a, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	d, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	h, (hl)
;	spillPairReg hl
	push	bc
	push	af
	ld	e, h
	inc	sp
	push	de
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00306$
00300$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:35: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:353: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	l, -37 (ix)
	ld	h, -36 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	add	a, #0x04
	ld	d, a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:159: target_x = Ball->lx + ((role == 3) ? -32 : 32);
	ld	-3 (ix), e
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:353: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	a, d
	sub	a, -3 (ix)
	ld	a, l
	sbc	a, -2 (ix)
	jp	PO, 01378$
	xor	a, #0x80
01378$:
	jp	P, 00432$
	ld	de, #0x0001
	jp	00433$
00432$:
	ld	a, -5 (ix)
	add	a, #0xfc
	ld	e, a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	d, a
	ld	a, -3 (ix)
	sub	a, e
	ld	a, -2 (ix)
	sbc	a, d
	jp	PO, 01379$
	xor	a, #0x80
01379$:
	jp	P, 00434$
	ld	de, #0xffff
	jp	00435$
00434$:
	ld	de, #0x0000
00435$:
00433$:
	ld	-2 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:354: i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
	ld	de, (#(_SwSprite + 326) + 0)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	a, #0x04
	ld	-6 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-5 (ix), a
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	jr	NC, 00436$
	ld	de, #0x0001
	jp	00437$
00436$:
	ld	de, #0xfffc
	add	hl, de
	ex	de,hl
	ld	a, -4 (ix)
	sub	a, e
	ld	a, -3 (ix)
	sbc	a, d
	jr	NC, 00438$
	ld	de, #0xffff
	jp	00439$
00438$:
	ld	de, #0x0000
00439$:
00437$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:355: if (dir_x == 0 && dir_y == 0) {
	ld	a, -2 (ix)
	or	a,a
	jr	NZ, 00297$
	or	a,e
	jr	NZ, 00297$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:356: dir_y = (team == TEAM_1) ? 1 : -1;
	ld	a, -35 (ix)
	or	a, a
	jr	NZ, 00440$
	ld	de, #0x0001
	jp	00441$
00440$:
	ld	de, #0xffff
00441$:
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:358: Player->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, dir_x, dir_y);
	push	bc
	ld	h, e
	ld	l, -2 (ix)
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
00306$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:360: }
	ld	sp, ix
	pop	ix
	ret
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:363: u16 FindReceiver(u8 carrier, u8 ignore_player, i8 c_dx, i8 c_dy) 
;	---------------------------------
; Function FindReceiver
; ---------------------------------
_FindReceiver::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-28
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), a
	ld	-3 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:365: u8 start_idx = (carrier < 7) ? 1 : 8; // Esclude i portieri
	ld	a, -2 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	-4 (ix), a
	or	a, a
	jr	Z, 00127$
	ld	-6 (ix), #0x01
	ld	-5 (ix), #0
	jp	00128$
00127$:
	ld	-6 (ix), #0x08
	ld	-5 (ix), #0
00128$:
	ld	a, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:366: u8 end_idx = start_idx + 6;
	ld	-1 (ix), a
	ld	-5 (ix), a
	add	a, #0x06
	ld	-28 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:367: u8 best_match = 0xFF;
	ld	-27 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:368: u16 min_dist = 0xFFFF;
	ld	-26 (ix), #0xff
	ld	-25 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:370: if (c_dx == 0 && c_dy == 0) {
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00149$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00149$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:371: c_dy = (carrier < 7) ? 1 : -1;
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00129$
	ld	-5 (ix), #0x01
	ld	-4 (ix), #0
	jp	00130$
00129$:
	ld	-5 (ix), #0xff
	ld	-4 (ix), #0xff
00130$:
	ld	a, -5 (ix)
	ld	5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:374: for (u8 i = start_idx; i < end_idx; i++) {
00149$:
	ld	c, -2 (ix)
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
	ld	-6 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -7 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	ld	-24 (ix), a
	ld	a, -6 (ix)
	ld	-23 (ix), a
	ld	a, -5 (ix)
	ld	-22 (ix), a
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00211$
	xor	a, #0x80
00211$:
	rlca
	and	a,#0x01
	ld	-21 (ix), a
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	-20 (ix), a
	xor	a, a
	sub	a, 5 (ix)
	jp	PO, 00212$
	xor	a, #0x80
00212$:
	rlca
	and	a,#0x01
	ld	-19 (ix), a
	ld	a, 5 (ix)
	rlca
	and	a,#0x01
	ld	-18 (ix), a
	ld	a, -4 (ix)
	ld	-17 (ix), a
	ld	a, -4 (ix)
	ld	-16 (ix), a
00124$:
	ld	a, -1 (ix)
	sub	a, -28 (ix)
	jp	NC, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:375: if (i == carrier || i == ignore_player) continue; 
	ld	a, -2 (ix)
	sub	a, -1 (ix)
	jp	Z,00121$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	Z,00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:377: u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:382: if (c_dx > 0 && SwSprite[i].lx < SwSprite[carrier].lx) continue; 
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:377: u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
	ld	-15 (ix), a
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -24 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -24 (ix)
	sub	a, -15 (ix)
	jr	NC, 00131$
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-4 (ix), a
	jp	00132$
00131$:
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	ld	-4 (ix), a
00132$:
	ld	a, -5 (ix)
	ld	-14 (ix), a
	ld	a, -4 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:378: u16 dy = (SwSprite[i].ly > SwSprite[carrier].ly) ? (SwSprite[i].ly - SwSprite[carrier].ly) : (SwSprite[carrier].ly - SwSprite[i].ly);
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sub	a, -12 (ix)
	ld	a, -9 (ix)
	sbc	a, -11 (ix)
	ld	a, #0x00
	rla
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00133$
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	-5 (ix), a
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	ld	-4 (ix), a
	jp	00134$
00133$:
	ld	a, -10 (ix)
	sub	a, -12 (ix)
	ld	-5 (ix), a
	ld	a, -9 (ix)
	sbc	a, -11 (ix)
	ld	-4 (ix), a
00134$:
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:379: u16 dist = dx + dy; 
	ld	a, -14 (ix)
	add	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -13 (ix)
	adc	a, -6 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:382: if (c_dx > 0 && SwSprite[i].lx < SwSprite[carrier].lx) continue; 
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00108$
	ld	a, -15 (ix)
	sub	a, -16 (ix)
	jr	C, 00121$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:383: if (c_dx < 0 && SwSprite[i].lx > SwSprite[carrier].lx) continue; 
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00111$
	ld	a, -17 (ix)
	sub	a, -15 (ix)
	jr	C, 00121$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:385: if (c_dy > 0 && SwSprite[i].ly < SwSprite[carrier].ly) continue; 
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00114$
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	jr	C, 00121$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:386: if (c_dy < 0 && SwSprite[i].ly > SwSprite[carrier].ly) continue; 
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00117$
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00121$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:388: if (dist < min_dist) {
	ld	a, -5 (ix)
	sub	a, -26 (ix)
	ld	a, -4 (ix)
	sbc	a, -25 (ix)
	jr	NC, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:389: min_dist = dist;
	ld	a, -5 (ix)
	ld	-26 (ix), a
	ld	a, -4 (ix)
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:390: best_match = i;
	ld	a, -1 (ix)
	ld	-27 (ix), a
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:374: for (u8 i = start_idx; i < end_idx; i++) {
	inc	-1 (ix)
	jp	00124$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:394: return best_match;
	ld	e, -27 (ix)
	ld	d, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:395: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
	.area _SEG6
	.area _INITIALIZER
__xinit__ai_last_dx:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
__xinit__ai_last_dy:
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.db #0xff	; -1
	.area _CABS (ABS)
