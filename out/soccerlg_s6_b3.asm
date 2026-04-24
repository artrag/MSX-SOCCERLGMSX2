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
	ld	hl, #-39
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
	jp	Z,00395$
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:18: if (i == T1_Carrier || i == T2_Carrier) return;
	ld	a, (_T1_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00395$
	ld	a, (_T2_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00395$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:21: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:23: if (Ball->anim == 5 && i == (g_pass_receiver & 0x7F)) {
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, -5 (ix)
	sub	a, #0x05
	or	a, -4 (ix)
	ld	a, #0x01
	jr	Z, 01792$
	xor	a, a
01792$:
	ld	-6 (ix), a
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:23: if (Ball->anim == 5 && i == (g_pass_receiver & 0x7F)) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00110$
	ld	a, (_g_pass_receiver+0)
	ld	c, a
	res	7, c
	ld	b, #0x00
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, bc
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
	jr	NC, 00397$
	ld	bc, #0x0001
	jp	00398$
00397$:
	ld	bc, #0xffff
00398$:
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
	jp	00395$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:30: if (Ball->anim == 5 && i == LastTouchPlayer) {
	ld	a, -6 (ix)
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
	ld	-6 (ix), a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
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
	jr	NZ, 00399$
	ld	bc, #0x00f7
	jp	00400$
00399$:
	ld	bc, #0x00f6
00400$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00395$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:35: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	ld	a, e
	sub	a, c
	jr	NC, 00401$
	ld	bc, #0x0001
	jp	00402$
00401$:
	ld	a, c
	sub	a, e
	jr	NC, 00403$
	ld	-8 (ix), #0xff
	ld	-7 (ix), #0xff
	jp	00404$
00403$:
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
00404$:
	ld	c, -8 (ix)
00402$:
	ld	-4 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:36: i8 look_dy = (Ball->ly > SwSprite[i].ly) ? 1 : ((Ball->ly < SwSprite[i].ly) ? -1 : 0);
	ld	bc, (#(_SwSprite + 322) + 4)
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00405$
	ld	bc, #0x0001
	jp	00406$
00405$:
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00407$
	ld	bc, #0xffff
	jp	00408$
00407$:
	ld	bc, #0x0000
00408$:
00406$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:37: if (look_dx == 0 && look_dy == 0) look_dy = (i < 7) ? 1 : -1;
	ld	a, -4 (ix)
	or	a,a
	jr	NZ, 00113$
	or	a,c
	jr	NZ, 00113$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00409$
	ld	de, #0x0001
	jp	00410$
00409$:
	ld	de, #0xffff
00410$:
	ld	c, e
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:38: SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, look_dx, look_dy);
	ld	h, c
	ld	l, -4 (ix)
	push	hl
	ld	a, -1 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:40: return;
	jp	00395$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:43: struct ObjectInfo* Player = &SwSprite[i];
	ld	a, -3 (ix)
	ld	-33 (ix), a
	ld	a, -2 (ix)
	ld	-32 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:44: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00411$
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
	jp	00412$
00411$:
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
00412$:
	ld	a, -3 (ix)
	ld	-31 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:45: bool is_gk = (i == 0 || i == 7);
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00414$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	Z, 00414$
	ld	-2 (ix), #0x00
	jp	00415$
00414$:
	ld	-2 (ix), #0x01
00415$:
	ld	a, -2 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:48: if (Player->count > 0 && !is_gk) {
	ld	a, -33 (ix)
	add	a, #0x15
	ld	-30 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-29 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, (hl)
	ld	-28 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-27 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: Player->lx += Player->dx;
	ld	a, -33 (ix)
	add	a, #0x11
	ld	-26 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: Player->ly += Player->dy;
	ld	a, -33 (ix)
	add	a, #0x04
	ld	-24 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-23 (ix), a
	ld	a, -33 (ix)
	add	a, #0x12
	ld	-22 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-21 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:48: if (Player->count > 0 && !is_gk) {
	ld	a, -27 (ix)
	or	a, -28 (ix)
	jp	Z, 00140$
	ld	a, -3 (ix)
	or	a, a
	jp	NZ, 00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:49: Player->count--;
	ld	a, -28 (ix)
	add	a, #0xff
	ld	-3 (ix), a
	ld	a, -27 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: Player->lx += Player->dx;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -2 (ix)
	add	a, -3 (ix)
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: Player->ly += Player->dy;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-6 (ix), a
	rlca
	sbc	a, a
	ld	-5 (ix), a
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, -8 (ix)
	add	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -7 (ix)
	adc	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:53: if (Player->lx < 16) Player->lx = 16;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	sub	a, #0x10
	jr	NC, 00123$
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	(hl), #0x10
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:54: if (Player->lx > 224) Player->lx = 224;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	c, (hl)
	ld	a, #0xe0
	sub	a, c
	jr	NC, 00125$
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	(hl), #0xe0
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:55: if (Player->ly < 24) Player->ly = 24;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, #0x18
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00127$
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:56: if (Player->ly > 478) Player->ly = 478;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, #0xde
	cp	a, -3 (ix)
	ld	a, #0x01
	sbc	a, -2 (ix)
	jr	NC, 00129$
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	(hl), #0xde
	inc	hl
	ld	(hl), #0x01
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:58: Player->frame = (Player->dx > 0) ? 
	ld	a, -33 (ix)
	add	a, #0x0f
	ld	-3 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01800$
	xor	a, #0x80
01800$:
	jp	P, 00416$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:59: ((team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_WEST : SPR_T2_PLAYER_TACKLE_FROM_WEST) :
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00418$
	ld	-5 (ix), #0x1e
	ld	-4 (ix), #0
	jp	00417$
00418$:
	ld	-5 (ix), #0x8e
	ld	-4 (ix), #0
	jp	00417$
00416$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:60: ((team == TEAM_1) ? SPR_T1_PLAYER_TACKLE_FROM_EAST : SPR_T2_PLAYER_TACKLE_FROM_EAST);
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00420$
	ld	-5 (ix), #0x1f
	ld	-4 (ix), #0
	jp	00421$
00420$:
	ld	-5 (ix), #0x8f
	ld	-4 (ix), #0
00421$:
00417$:
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: Player->lx += Player->dx;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:63: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:116: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:63: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	a, -7 (ix)
	sub	a, -2 (ix)
	jr	NC, 00422$
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	sbc	a, -5 (ix)
	ld	-7 (ix), a
	jp	00423$
00422$:
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-7 (ix), a
00423$:
	ld	a, -8 (ix)
	ld	-3 (ix), a
	ld	a, -7 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: Player->ly += Player->dy;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:64: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	hl, #(_SwSprite + 322) + 4
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -5 (ix)
	ld	a, -8 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00424$
	ld	a, -5 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	jp	00425$
00424$:
	ld	a, -9 (ix)
	sub	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -4 (ix)
	ld	-6 (ix), a
00425$:
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:65: if (b_dist_x <= 12 && b_dist_y <= 12 && Ball->anim < 5 && RestartType == 0) {
	ld	a, #0x0c
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jp	C,00395$
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C,00395$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0005
	cp	a, a
	sbc	hl, de
	jp	NC,00395$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ,00395$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:66: if (LastTouchTeam != team) Ball->count = 16; // Immunità dopo il furto
	ld	a, (_LastTouchTeam+0)
	sub	a, -31 (ix)
	jr	Z, 00131$
	ld	hl, #0x0010
	ld	((_SwSprite + 343)), hl
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:67: LastTouchTeam = team;
	ld	a, -31 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:68: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:69: if (Ball->anim > 3) Ball->anim = 3;
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00133$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:70: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:71: Player->count = 0; // Ferma la scivolata appena ruba palla
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:73: return; // Salta il resto della logica finché è in scivolata
	jp	00395$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:35: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: Player->lx += Player->dx;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:116: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	-2 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -20 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:81: if (is_gk) {
	ld	a, -3 (ix)
	or	a, a
	jp	Z, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:82: if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
	ld	a, -9 (ix)
	add	a, #0x04
	ld	-4 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sub	a, -12 (ix)
	ld	a, -3 (ix)
	sbc	a, -11 (ix)
	jp	PO, 01802$
	xor	a, #0x80
01802$:
	jp	P, 00146$
	ld	a, -9 (ix)
	add	a, #0x02
	ld	-4 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	jp	00147$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:83: else if (Ball->lx < Player->lx - 4) target_x = Player->lx - 2;
	ld	a, -9 (ix)
	add	a, #0xfc
	ld	-4 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	a, -12 (ix)
	sub	a, -4 (ix)
	ld	a, -11 (ix)
	sbc	a, -3 (ix)
	jp	PO, 01803$
	xor	a, #0x80
01803$:
	jp	P, 00143$
	ld	a, -9 (ix)
	add	a, #0xfe
	ld	-4 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-3 (ix), a
	jp	00147$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:84: else target_x = Ball->lx;
	ld	a, -20 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:87: if (target_x < 88) target_x = 88;
	ld	a, -4 (ix)
	ld	b, -3 (ix)
	sub	a, #0x58
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00149$
	ld	-4 (ix), #0x58
	ld	-3 (ix), #0
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:88: if (target_x > 150) target_x = 150;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, #0x96
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00151$
	ld	-4 (ix), #0x96
	ld	-3 (ix), #0
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:90: target_y = (team == TEAM_1) ? 32 : 452;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00426$
	ld	-6 (ix), #0x20
	ld	-5 (ix), #0
	jp	00427$
00426$:
	ld	-6 (ix), #0xc4
	ld	-5 (ix), #0x01
00427$:
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:92: Player->dx = (target_x > Player->lx) ? 1 : ((target_x < Player->lx) ? -1 : 0);
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	jr	NC, 00428$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00429$
00428$:
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	ld	a, -3 (ix)
	sbc	a, -5 (ix)
	jr	NC, 00430$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00431$
00430$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00431$:
00429$:
	ld	a, -3 (ix)
	ld	-2 (ix), a
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:93: Player->dy = 0;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:95: Player->lx += Player->dx;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	add	a, -2 (ix)
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:96: Player->ly = target_y; // Forza la Y corretta
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:98: Player->anim++;
	ld	a, -33 (ix)
	add	a, #0x13
	ld	-8 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, #0x01
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:58: Player->frame = (Player->dx > 0) ? 
	ld	a, -33 (ix)
	add	a, #0x0f
	ld	-4 (ix), a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:99: if (Player->dx != 0) {
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00156$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:98: Player->anim++;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:100: if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
	ld	de, #0x0006
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	a, -8 (ix)
	and	a, #0x01
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00153$
	ld	a, -5 (ix)
	or	a, -6 (ix)
	jr	NZ, 00432$
	ld	-6 (ix), #0xf3
	ld	-5 (ix), #0
	jp	00433$
00432$:
	ld	-6 (ix), #0xf4
	ld	-5 (ix), #0
00433$:
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
	jp	00395$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:101: else                Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_NORTH_1 : SPR_GK_PLAYER_NORTH_2;
	ld	a, -5 (ix)
	or	a, -6 (ix)
	jr	NZ, 00434$
	ld	-6 (ix), #0xf2
	ld	-5 (ix), #0
	jp	00435$
00434$:
	ld	-6 (ix), #0xf5
	ld	-5 (ix), #0
00435$:
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
	jp	00395$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:103: Player->frame = (team == TEAM_1) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00436$
	ld	bc, #0x00d5
	jp	00437$
00436$:
	ld	bc, #0x00d6
00437$:
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:105: return;
	jp	00395$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:110: u8 role = (team == TEAM_1) ? i : (i - 7); // 1,2: Dif, 3,4: Cen, 5,6: Att
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00438$
	ld	a, -1 (ix)
	ld	-3 (ix), a
	jp	00439$
00438$:
	ld	a, -1 (ix)
	ld	-3 (ix), a
	add	a, #0xf9
	ld	-3 (ix), a
00439$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:113: u8 closest_mate = (team == TEAM_1) ? g_closest_t1 : g_closest_t2;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00440$
	ld	a, (_g_closest_t1+0)
	jp	00441$
00440$:
	ld	a, (_g_closest_t2+0)
00441$:
	ld	-19 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:116: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	a, -20 (ix)
	sub	a, -2 (ix)
	jr	NC, 00442$
	ld	a, -9 (ix)
	sub	a, -12 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -11 (ix)
	ld	-6 (ix), a
	jp	00443$
00442$:
	ld	a, -12 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -11 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00443$:
	ld	a, -7 (ix)
	ld	-18 (ix), a
	ld	a, -6 (ix)
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:117: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-16 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-15 (ix), a
	ld	a, -16 (ix)
	sub	a, -9 (ix)
	ld	a, -15 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00444$
	ld	a, -9 (ix)
	sub	a, -16 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -15 (ix)
	ld	-6 (ix), a
	jp	00445$
00444$:
	ld	a, -16 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -15 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
00445$:
	ld	a, -7 (ix)
	ld	-14 (ix), a
	ld	a, -6 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:121: bool ball_free_nearby = (!g_is_ball_carried && Ball->anim < 5 && b_dist_x <= 48 && b_dist_y <= 48);
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00446$
	ld	a, -5 (ix)
	sub	a, #0x05
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00446$
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	ld	a, #0x30
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00446$
	ld	c, -14 (ix)
	ld	b, -13 (ix)
	ld	a, #0x30
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00447$
00446$:
	xor	a, a
	jp	00448$
00447$:
	ld	a, #0x01
00448$:
	ld	-6 (ix), a
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:122: if (ball_free_nearby) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00245$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:123: target_x = Ball->lx;
	ld	a, -20 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:124: target_y = Ball->ly;
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	-10 (ix), c
	ld	-9 (ix), b
	jp	00246$
00245$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:126: if (LastTouchTeam == team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -31 (ix)
	jp	NZ,00242$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:128: u8 run_dist = g_ActiveStats[team].aggro_attack * 10; 
	ld	c, -31 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	a, #<(_g_ActiveStats)
	add	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:129: u8 wide_dist = 24 + (g_ActiveStats[team].pass_tendency * 8); 
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x18
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:131: if (role >= 5) { // Attaccanti molto avanti
	ld	a, -3 (ix)
	sub	a, #0x05
	jp	C, 00197$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:132: target_y = Ball->ly + ((team == TEAM_1) ? (60 + run_dist) : -(60 + run_dist));
	ld	a, -16 (ix)
	ld	-9 (ix), a
	ld	a, -15 (ix)
	ld	-8 (ix), a
	ld	a, -6 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -7 (ix)
	add	a, #0x3c
	ld	-11 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00455$
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	jp	00456$
00455$:
	xor	a, a
	sub	a, -11 (ix)
	ld	-7 (ix), a
	sbc	a, a
	sub	a, -10 (ix)
	ld	-6 (ix), a
00456$:
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
	ld	a, -7 (ix)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:133: target_x = (role == 5) ? 64 : 160;
	ld	a, -3 (ix)
	sub	a, #0x05
	jr	NZ, 00457$
	ld	bc, #0x0040
	jp	00458$
00457$:
	ld	bc, #0x00a0
00458$:
	ld	-12 (ix), c
	ld	-11 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:141: u16 max_y = (role == 6 && (Secs % 5) == 0) ? offside_line + 16 : offside_line - 12;
	ld	a, -3 (ix)
	sub	a, #0x06
	ld	a, #0x01
	jr	Z, 01809$
	xor	a, a
01809$:
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:136: if (team == TEAM_1) {
	ld	a, -31 (ix)
	or	a, a
	jp	NZ, 00173$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:137: u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	bc, (#_SwSprite + 188)
	ld	de, (#_SwSprite + 211)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00459$
	ld	e, c
	ld	d, b
00459$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:138: if (offside_line < 256) offside_line = 256; // Il fuorigioco esiste solo nella metà campo offensiva
	ld	a, d
	sub	a, #0x01
	jr	NC, 00161$
	ld	de, #0x0100
00161$:
	ld	-7 (ix), e
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:141: u16 max_y = (role == 6 && (Secs % 5) == 0) ? offside_line + 16 : offside_line - 12;
	bit	0, -3 (ix)
	jr	Z, 00461$
	ld	a, (_Secs+0)
	ld	-39 (ix), a
	ld	-38 (ix), #0x00
	ld	de, #0x0005
	pop	hl
	push	hl
	call	__modsint
	inc	sp
	inc	sp
	push	de
	ld	a, -38 (ix)
	or	a, -39 (ix)
	jr	NZ, 00461$
	ld	a, -7 (ix)
	add	a, #0x10
	ld	-39 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-38 (ix), a
	jp	00462$
00461$:
	ld	a, -7 (ix)
	add	a, #0xf4
	ld	-39 (ix), a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	-38 (ix), a
00462$:
	pop	bc
	push	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:142: if (target_y > max_y) target_y = max_y;
	ld	a, c
	sub	a, -10 (ix)
	ld	a, b
	sbc	a, -9 (ix)
	jr	NC, 00163$
	ld	-10 (ix), c
	ld	-9 (ix), b
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:143: if (target_y > 440) target_y = 440; // Evita di schiacciarsi sulla linea di fondo avversaria
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0xb8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jp	NC, 00198$
	ld	-10 (ix), #0xb8
	ld	-9 (ix), #0x01
	jp	00198$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:145: u16 offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
	ld	bc, (#_SwSprite + 27)
	ld	de, (#_SwSprite + 50)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00466$
	ld	e, c
	ld	d, b
00466$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:146: if (offside_line > 256) offside_line = 256;
	ld	c, e
	ld	b, d
	xor	a, a
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00167$
	ld	de, #0x0100
00167$:
	ld	-7 (ix), e
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:149: u16 min_y = (role == 6 && (Secs % 5) == 0) ? offside_line - 16 : offside_line + 12;
	bit	0, -3 (ix)
	jr	Z, 00468$
	ld	a, (_Secs+0)
	ld	-39 (ix), a
	ld	-38 (ix), #0x00
	ld	de, #0x0005
	pop	hl
	push	hl
	call	__modsint
	inc	sp
	inc	sp
	push	de
	ld	a, -38 (ix)
	or	a, -39 (ix)
	jr	NZ, 00468$
	ld	a, -7 (ix)
	add	a, #0xf0
	ld	-39 (ix), a
	ld	a, -6 (ix)
	adc	a, #0xff
	ld	-38 (ix), a
	jp	00469$
00468$:
	ld	a, -7 (ix)
	add	a, #0x0c
	ld	-39 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-38 (ix), a
00469$:
	pop	bc
	push	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:150: if (target_y < min_y) target_y = min_y;
	ld	a, -10 (ix)
	sub	a, c
	ld	a, -9 (ix)
	sbc	a, b
	jr	NC, 00169$
	ld	-10 (ix), c
	ld	-9 (ix), b
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:151: if (target_y < 72) target_y = 72; // Evita di schiacciarsi sulla linea di fondo avversaria
	ld	a, -10 (ix)
	ld	b, -9 (ix)
	sub	a, #0x48
	ld	a, b
	sbc	a, #0x00
	jp	NC, 00198$
	ld	-10 (ix), #0x48
	ld	-9 (ix), #0
	jp	00198$
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:157: if (team == TEAM_2 && target_y < 92) target_y = 92;
	ld	a, -31 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01811$
	xor	a, a
01811$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:153: } else if (role >= 3) { // Centrocampisti a supporto largo
	ld	a, -3 (ix)
	sub	a, #0x03
	jp	C, 00194$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:154: target_y = Ball->ly + ((team == TEAM_1) ? 24 : -24);
	ld	a, -16 (ix)
	ld	-9 (ix), a
	ld	a, -15 (ix)
	ld	-8 (ix), a
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00473$
	ld	hl, #0x0018
	jp	00474$
00473$:
	ld	hl, #0xffe8
00474$:
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:155: target_x = Ball->lx + ((role == 3) ? -wide_dist : wide_dist);
	ld	e, -7 (ix)
	ld	d, #0x00
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	NZ, 00475$
	ld	hl, #0x0000
	cp	a, a
	sbc	hl, de
	ex	de, hl
00475$:
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	add	hl, de
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:156: if (team == TEAM_1 && target_y > 420) target_y = 420;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00176$
	ld	b, -10 (ix)
	ld	e, -9 (ix)
	ld	a, #0xa4
	cp	a, b
	ld	a, #0x01
	sbc	a, e
	jr	NC, 00176$
	ld	-10 (ix), #0xa4
	ld	-9 (ix), #0x01
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:157: if (team == TEAM_2 && target_y < 92) target_y = 92;
	ld	a, c
	or	a, a
	jp	Z, 00198$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, c
	sub	a, #0x5c
	ld	a, b
	sbc	a, #0x00
	jp	NC, 00198$
	ld	-10 (ix), #0x5c
	ld	-9 (ix), #0
	jp	00198$
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:159: target_y = Ball->ly + ((team == TEAM_1) ? -64 : 64);
	ld	a, -16 (ix)
	ld	-9 (ix), a
	ld	a, -15 (ix)
	ld	-8 (ix), a
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00477$
	ld	-7 (ix), #0xc0
	ld	-6 (ix), #0xff
	jp	00478$
00477$:
	ld	-7 (ix), #0x40
	ld	-6 (ix), #0
00478$:
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:160: target_x = (role == 1) ? 80 : 144;
	ld	a, -3 (ix)
	dec	a
	jr	NZ, 00479$
	ld	de, #0x0050
	jp	00480$
00479$:
	ld	de, #0x0090
00480$:
	ld	-12 (ix), e
	ld	-11 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:161: if (team == TEAM_1 && target_y < 72) target_y = 72;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00182$
	ld	a, -10 (ix)
	ld	e, -9 (ix)
	sub	a, #0x48
	ld	a, e
	sbc	a, #0x00
	jr	NC, 00182$
	ld	-10 (ix), #0x48
	ld	-9 (ix), #0
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:162: if (team == TEAM_2 && target_y > 440) target_y = 440;
	ld	a, c
	or	a, a
	jr	Z, 00185$
	ld	b, -10 (ix)
	ld	e, -9 (ix)
	ld	a, #0xb8
	cp	a, b
	ld	a, #0x01
	sbc	a, e
	jr	NC, 00185$
	ld	-10 (ix), #0xb8
	ld	-9 (ix), #0x01
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:164: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00188$
	ld	b, -10 (ix)
	ld	e, -9 (ix)
	ld	a, #0xc0
	cp	a, b
	ld	a, #0x00
	sbc	a, e
	jr	NC, 00188$
	ld	-10 (ix), #0xc0
	ld	-9 (ix), #0
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:165: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, c
	or	a, a
	jr	Z, 00198$
	ld	a, -10 (ix)
	ld	b, -9 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00198$
	ld	-10 (ix), #0x40
	ld	-9 (ix), #0x01
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:169: if (LastTouchPlayer != 0xFF && LastTouchPlayer != i) {
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jp	Z,00246$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jp	Z,00246$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:170: u16 dist_c_x = (SwSprite[LastTouchPlayer].lx > target_x) ? (SwSprite[LastTouchPlayer].lx - target_x) : (target_x - SwSprite[LastTouchPlayer].lx);
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
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ex	de, hl
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	c, a
	ld	b, #0x00
	ld	a, -12 (ix)
	sub	a, l
	ld	a, -11 (ix)
	sbc	a, h
	jr	NC, 00481$
	ld	a, c
	sub	a, -12 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -11 (ix)
	ld	-7 (ix), c
	ld	-6 (ix), a
	jp	00482$
00481$:
	ld	a, -12 (ix)
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	sub	a, c
	ld	-7 (ix), a
	ld	a, l
	sbc	a, b
	ld	-6 (ix), a
00482$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:171: u16 dist_c_y = (SwSprite[LastTouchPlayer].ly > target_y) ? (SwSprite[LastTouchPlayer].ly - target_y) : (target_y - SwSprite[LastTouchPlayer].ly);
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -10 (ix)
	sub	a, e
	ld	a, -9 (ix)
	sbc	a, d
	jr	NC, 00483$
	ld	a, e
	sub	a, -10 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -9 (ix)
	jp	00484$
00483$:
	ld	a, -10 (ix)
	sub	a, e
	ld	e, a
	ld	a, -9 (ix)
	sbc	a, d
00484$:
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:172: if (dist_c_x < 48 && dist_c_y < 48) {
	ld	a, c
	sub	a, #0x30
	ld	a, b
	sbc	a, #0x00
	jp	NC, 00246$
	ld	a, e
	sub	a, #0x30
	ld	a, d
	sbc	a, #0x00
	jp	NC, 00246$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:173: target_x += (target_x > 112) ? 48 : -48;
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	ld	a, #0x70
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00485$
	ld	de, #0x0030
	jp	00486$
00485$:
	ld	de, #0xffd0
00486$:
	ex	de, hl
	add	hl, bc
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:174: target_y += (team == TEAM_1) ? 32 : -32; 
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00487$
	ld	bc, #0x0020
	jp	00488$
00487$:
	ld	bc, #0xffe0
00488$:
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
	jp	00246$
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:177: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	jp	Z,00239$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:179: if (role >= 5) { // Attaccanti alti
	ld	a, -3 (ix)
	sub	a, #0x05
	jr	C, 00228$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:180: target_y = Ball->ly + ((team == TEAM_1) ? -40 : 40);
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00489$
	ld	de, #0xffd8
	jp	00490$
00489$:
	ld	de, #0x0028
00490$:
	ex	de, hl
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:181: target_x = (role == 5) ? 80 : 144;
	ld	a, -3 (ix)
	sub	a, #0x05
	jr	NZ, 00491$
	ld	bc, #0x0050
	jp	00492$
00491$:
	ld	bc, #0x0090
00492$:
	ld	-12 (ix), c
	ld	-11 (ix), b
	jp	00246$
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:182: } else if (role >= 3) { // Centrocampisti chiudono il centro
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	C, 00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:183: target_y = Ball->ly + ((team == TEAM_1) ? 32 : -32);
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00493$
	ld	hl, #0x0020
	jp	00494$
00493$:
	ld	hl, #0xffe0
00494$:
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:184: target_x = Ball->lx + ((role == 3) ? -32 : 32);
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	NZ, 00495$
	ld	bc, #0xffe0
	jp	00496$
00495$:
	ld	bc, #0x0020
00496$:
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	add	hl, bc
	ld	-12 (ix), l
	ld	-11 (ix), h
	jp	00246$
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:188: bool ball_in_own_area = (team == TEAM_1) ? (Ball->ly < 140) : (Ball->ly > 372);
	ld	a, -16 (ix)
	ld	-7 (ix), a
	ld	a, -15 (ix)
	ld	-6 (ix), a
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00497$
	ld	a, -7 (ix)
	sub	a, #0x8c
	ld	a, -6 (ix)
	sbc	a, #0x00
	ld	a, #0x00
	rla
	jp	00498$
00497$:
	ld	a, #0x74
	cp	a, -7 (ix)
	ld	a, #0x01
	sbc	a, -6 (ix)
	ld	a, #0x00
	rla
00498$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:189: bool side_presses = (role == 1) ? (Ball->lx < 128) : (Ball->lx >= 128);
	ld	a, -3 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01824$
	xor	a, a
01824$:
	ld	-3 (ix), a
	ld	a, -20 (ix)
	sub	a, #0x80
	ld	a, #0x00
	rla
	ld	e, a
	ld	a, -3 (ix)
	or	a, a
	jr	NZ, 00500$
	ld	a, e
	xor	a, #0x01
	ld	e, a
00500$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:191: if (ball_in_own_area && side_presses) {
	ld	a, c
	or	a, a
	jr	Z, 00221$
	ld	a, e
	or	a, a
	jr	Z, 00221$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:193: target_x = Ball->lx;
	ld	a, -20 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:194: target_y = Ball->ly;
	ld	a, -16 (ix)
	ld	c, -15 (ix)
	ld	-10 (ix), a
	ld	-9 (ix), c
	jp	00246$
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:195: } else if (ball_in_own_area) {
	ld	a, c
	or	a, a
	jr	Z, 00218$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:197: target_x = (role == 1) ? 80 : 144;
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00501$
	ld	bc, #0x0050
	jp	00502$
00501$:
	ld	bc, #0x0090
00502$:
	ld	-12 (ix), c
	ld	-11 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:198: target_y = (team == TEAM_1) ? 88 : 424;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00503$
	ld	bc, #0x0058
	jp	00504$
00503$:
	ld	bc, #0x01a8
00504$:
	ld	-10 (ix), c
	ld	-9 (ix), b
	jp	00246$
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:200: target_y = Ball->ly + ((team == TEAM_1) ? 80 : -80);
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00505$
	ld	de, #0x0050
	jp	00506$
00505$:
	ld	de, #0xffb0
00506$:
	ex	de, hl
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:201: target_x = Ball->lx + ((role == 1) ? -24 : 24);
	ld	a, -3 (ix)
	or	a, a
	jr	Z, 00507$
	ld	bc, #0xffe8
	jp	00508$
00507$:
	ld	bc, #0x0018
00508$:
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	add	hl, bc
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:203: if (team == TEAM_1 && target_y < 72) target_y = 72;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00206$
	ld	a, -10 (ix)
	ld	b, -9 (ix)
	sub	a, #0x48
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00206$
	ld	-10 (ix), #0x48
	ld	-9 (ix), #0
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:204: if (team == TEAM_2 && target_y > 440) target_y = 440;
	ld	a, -31 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01826$
	xor	a, a
01826$:
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	or	a, a
	jr	Z, 00209$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0xb8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00209$
	ld	-10 (ix), #0xb8
	ld	-9 (ix), #0x01
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:206: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00212$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0xc0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00212$
	ld	-10 (ix), #0xc0
	ld	-9 (ix), #0
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:207: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, l
	or	a, a
	jp	Z, 00246$
	ld	a, -10 (ix)
	ld	b, -9 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jp	NC, 00246$
	ld	-10 (ix), #0x40
	ld	-9 (ix), #0x01
	jp	00246$
00239$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:212: target_x = (role % 2 == 1) ? 80 : 144;
	ld	a, -3 (ix)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
	ld	a, c
	dec	a
	or	a, b
	jr	NZ, 00509$
	ld	bc, #0x0050
	jp	00510$
00509$:
	ld	bc, #0x0090
00510$:
	ld	-12 (ix), c
	ld	-11 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:213: target_y = Ball->ly + ((team == TEAM_1) ? -32 : 32);
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00511$
	ld	hl, #0xffe0
	jp	00512$
00511$:
	ld	hl, #0x0020
00512$:
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:215: if (role <= 2) {
	ld	a, #0x02
	sub	a, -3 (ix)
	jr	C, 00246$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:216: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00231$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0xc0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00231$
	ld	-10 (ix), #0xc0
	ld	-9 (ix), #0
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:217: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, -31 (ix)
	dec	a
	jr	NZ, 00246$
	ld	a, -10 (ix)
	ld	b, -9 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00246$
	ld	-10 (ix), #0x40
	ld	-9 (ix), #0x01
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:224: if ((ball_free_nearby || LastTouchTeam != team || (!g_is_ball_carried && Ball->anim < 5)) && i == closest_mate) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00315$
	ld	a, (_LastTouchTeam+0)
	sub	a, -31 (ix)
	jr	NZ, 00315$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	NZ, 00311$
	ld	a, -5 (ix)
	sub	a, #0x05
	ld	a, -4 (ix)
	sbc	a, #0x00
	jp	NC, 00311$
00315$:
	ld	a, -1 (ix)
	sub	a, -19 (ix)
	jp	NZ,00311$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:226: u16 press_radius = 24 + (g_ActiveStats[team].aggro_defense * 8);
	ld	c, -31 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_g_ActiveStats
	add	hl, de
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-8 (ix), a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0018
	add	hl, bc
	ld	-3 (ix), l
	ld	-2 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:177: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	ld	a, #0x01
	jr	Z, 01836$
	xor	a, a
01836$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:227: if (LastTouchTeam == 0xFF || !g_is_ball_carried) press_radius = 500; // Palla libera o non controllata: vai a prenderla!
	ld	-7 (ix), a
	or	a, a
	jr	NZ, 00247$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00248$
00247$:
	ld	-3 (ix), #0xf4
	ld	-2 (ix), #0x01
00248$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:229: bool is_human_team = FALSE;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:230: if (team == TEAM_2) is_human_team = TRUE;
	ld	a, -31 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01838$
	xor	a, a
01838$:
	ld	-4 (ix), a
	or	a, a
	jr	Z, 00254$
	ld	-5 (ix), #0x01
	jp	00255$
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:231: else if (team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human_team = TRUE;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00255$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00255$
	ld	-5 (ix), #0x01
00255$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:233: bool should_press = TRUE;
	ld	-6 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:235: if (LastTouchTeam != 0xFF) {
	bit	0, -7 (ix)
	jp	NZ, 00280$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:236: if (is_human_team && g_is_ball_carried) {
	ld	a, -5 (ix)
	or	a, a
	jr	Z, 00276$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00276$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:240: should_press = FALSE;
	ld	-6 (ix), #0x00
	jp	00280$
00276$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:243: if (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1) press_radius = 500;
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00272$
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00272$
	ld	-3 (ix), #0xf4
	ld	-2 (ix), #0x01
	jp	00280$
00272$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:245: else if (team == TEAM_1 && Ball->ly < 220) press_radius = 500; // Pressing asfissiante in trequarti
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00268$
	ld	a, -16 (ix)
	ld	b, -15 (ix)
	sub	a, #0xdc
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00268$
	ld	-3 (ix), #0xf4
	ld	-2 (ix), #0x01
	jp	00280$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:246: else if (team == TEAM_2 && Ball->ly > 292) press_radius = 500;
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00264$
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, #0x24
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00264$
	ld	-3 (ix), #0xf4
	ld	-2 (ix), #0x01
	jp	00280$
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:247: else if (team == TEAM_1 && Ball->ly < 256) press_radius += 48; // Inizia il pressing nella propria metà campo
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00260$
	ld	a, -15 (ix)
	sub	a, #0x01
	jr	NC, 00260$
	ld	a, -3 (ix)
	ld	-39 (ix), a
	ld	a, -2 (ix)
	ld	-38 (ix), a
	ld	a, -39 (ix)
	add	a, #0x30
	ld	-3 (ix), a
	ld	a, -38 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	jp	00280$
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:248: else if (team == TEAM_2 && Ball->ly > 256) press_radius += 48;
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00280$
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	xor	a, a
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00280$
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x30
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
00280$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:252: if (should_press && b_dist_x < press_radius && b_dist_y < press_radius) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00311$
	ld	a, -18 (ix)
	sub	a, -3 (ix)
	ld	a, -17 (ix)
	sbc	a, -2 (ix)
	jp	NC, 00311$
	ld	a, -14 (ix)
	sub	a, -3 (ix)
	ld	a, -13 (ix)
	sbc	a, -2 (ix)
	jp	NC, 00311$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:253: target_x = Ball->lx;
	ld	a, -20 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:254: target_y = Ball->ly;
	ld	a, -16 (ix)
	ld	-3 (ix), a
	ld	a, -15 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-10 (ix), a
	ld	a, -2 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:257: if (g_is_ball_carried && b_dist_x <= 36 && b_dist_y <= 12 && b_dist_x > 12 && Player->count == 0 && RestartType == 0) {
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00286$
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	ld	a, #0x24
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C, 00286$
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	a, #0x0c
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	C, 00286$
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	NC, 00286$
	ld	a, -27 (ix)
	or	a, -28 (ix)
	jr	NZ, 00286$
	ld	a, (_RestartType+0)
	or	a, a
	jr	NZ, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:258: if (Frms % 8 == 0) { // Molto più reattivo
	ld	a, (_Frms+0)
	ld	e, a
	ld	d, #0x00
	ld	a, e
	and	a, #0x07
	jr	NZ, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:259: u8 slide_chance = 20 + (g_ActiveStats[team].aggro_defense * 15); 
	ld	a, -8 (ix)
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	add	a, #0x14
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:260: if ((Frms + i * 7) % 100 < slide_chance) {
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, de
	push	bc
	ld	de, #0x0064
	call	__modsint
	pop	bc
	ld	b, #0x00
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 01843$
	xor	a, #0x80
01843$:
	jp	P, 00286$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:261: Player->count = 8; // durata scivolata (corta e chirurgica)
	ld	l, -30 (ix)
	ld	h, -29 (ix)
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:262: Player->dx = (Ball->lx > Player->lx) ? 4 : -4;
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	sub	a, c
	jr	NC, 00513$
	ld	bc, #0x0004
	jp	00514$
00513$:
	ld	bc, #0xfffc
00514$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:263: Player->dy = 0; // Solo scivolata orizzontale
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:264: return; // Esce e inizia la scivolata dal prossimo frame
	jp	00395$
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:271: bool is_free_ball = (!g_is_ball_carried && (LastTouchTeam == 0xFF || LastTouchTeam == team));
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00515$
	bit	0, -7 (ix)
	jr	NZ, 00516$
	ld	a, (_LastTouchTeam+0)
	sub	a, -31 (ix)
	jr	Z, 00516$
00515$:
	xor	a, a
	jp	00517$
00516$:
	ld	a, #0x01
00517$:
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:272: u8 steal_dist = g_is_ball_carried ? 10 : (is_free_ball ? 20 : 14); 
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00521$
	ld	-3 (ix), #0x0a
	ld	-2 (ix), #0
	jp	00522$
00521$:
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00523$
	ld	-3 (ix), #0x14
	ld	-2 (ix), #0
	jp	00524$
00523$:
	ld	-3 (ix), #0x0e
	ld	-2 (ix), #0
00524$:
00522$:
	ld	a, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:273: if (b_dist_x <= steal_dist && b_dist_y <= steal_dist && Ball->count == 0 && RestartType == 0) {
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	sub	a, -18 (ix)
	ld	a, -2 (ix)
	sbc	a, -17 (ix)
	jr	C, 00311$
	ld	a, -3 (ix)
	sub	a, -14 (ix)
	ld	a, -2 (ix)
	sbc	a, -13 (ix)
	jr	C, 00311$
	ld	hl, (#(_SwSprite + 343) + 0)
	ld	a, h
	or	a, l
	jr	NZ, 00311$
	ld	a, (_RestartType+0)
	or	a, a
	jr	NZ, 00311$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:66: if (LastTouchTeam != team) Ball->count = 16; // Immunità dopo il furto
	ld	a, (_LastTouchTeam+0)
	sub	a, -31 (ix)
	ld	a, #0x01
	jr	Z, 01846$
	xor	a, a
01846$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:274: if (LastTouchTeam != team) { // Solo se furto da avversario o palla libera: non trasferire possesso tra compagni
	bit	0, c
	jr	NZ, 00297$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:276: Ball->count = is_free_ball ? 2 : 16;
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00525$
	ld	bc, #0x0002
	jp	00526$
00525$:
	ld	bc, #0x0010
00526$:
	ld	((_SwSprite + 343)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:277: LastTouchTeam = team;
	ld	a, -31 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:278: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
	jp	00298$
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:279: } else if (is_free_ball && LastTouchTeam == team && LastTouchPlayer != i) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00298$
	ld	a, c
	or	a, a
	jr	Z, 00298$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00298$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:281: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
00298$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:283: if (Ball->anim > 3) Ball->anim = 3; 
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00300$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00300$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:284: Ball->frame = SPR_BALL_SIZE_1; 
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
00311$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:290: bool is_cpu_team = (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1);
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00527$
	ld	a, -31 (ix)
	or	a, a
	jr	Z, 00528$
00527$:
	ld	c, #0x00
	jp	00529$
00528$:
	ld	c, #0x01
00529$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:291: if (is_cpu_team && i == closest_mate && LastTouchTeam == team && g_is_ball_carried) {
	ld	a, c
	or	a, a
	jp	Z, 00364$
	ld	a, -1 (ix)
	sub	a, -19 (ix)
	jp	NZ,00364$
	ld	a, (_LastTouchTeam+0)
	sub	a, -31 (ix)
	jp	NZ,00364$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00364$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:292: u16 d_bx = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	e, (hl)
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-8 (ix), a
	ld	-7 (ix), e
	ld	-6 (ix), #0x00
	ld	c, -8 (ix)
	ld	b, #0x00
	ld	a, -8 (ix)
	sub	a, e
	jr	NC, 00530$
	ld	a, -7 (ix)
	sub	a, c
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, b
	jp	00531$
00530$:
	ld	a, c
	sub	a, -7 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -6 (ix)
00531$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:293: u16 d_by = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00532$
	ld	a, -3 (ix)
	sub	a, -5 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	sbc	a, -4 (ix)
	jp	00533$
00532$:
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
00533$:
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:294: if (d_bx + d_by <= 12) {
	add	hl, bc
	ld	a, #0x0c
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	ld	a, #0x00
	rla
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	bit	0, l
	jp	NZ, 00361$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:296: target_x = 128; 
	ld	-12 (ix), #0x80
	ld	-11 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:297: target_y = 480; 
	ld	-10 (ix), #0xe0
	ld	-9 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:300: if (d_bx + d_by <= 12 && Ball->anim == 0) {
	bit	0, l
	jp	NZ, 00364$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00364$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:301: bool action_taken = FALSE;
	ld	-29 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:304: if (Field.ly >= 320 && Player->ly > 360) { // Scrolling completo e in area di tiro
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0140
	cp	a, a
	sbc	hl, de
	jp	C, 00323$
	ld	a, #0x68
	cp	a, -3 (ix)
	ld	a, #0x01
	sbc	a, -2 (ix)
	jp	NC, 00323$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:305: u8 rand_shot = (Player->lx + Frms) % 100;
	ld	a, (_Frms+0)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -7 (ix)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, -4 (ix)
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
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:308: u8 shot_prob = 5 + (g_ActiveStats[team].aggro_attack * 4);
	ld	c, -31 (ix)
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
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	add	a, a
	add	a, a
	add	a, #0x05
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:309: if (rand_shot < shot_prob) { 
	ld	a, -6 (ix)
	sub	a, c
	jp	NC, 00323$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:310: action_taken = TRUE;
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:311: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:312: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:313: g_pass_start_x = Player->lx;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:314: g_pass_start_y = Player->ly;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:315: g_pass_target_x = 96 + (Frms % 48); // Posizione casuale nello specchio della porta (96-143)
	ld	a, (_Frms+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0030
	call	__modsint
	ld	hl, #0x0060
	add	hl, de
	ld	(_g_pass_target_x), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:316: g_pass_target_y = 496; // Dentro la porta
	ld	hl, #0x01f0
	ld	(_g_pass_target_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:318: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00534$
	ld	hl, #_g_pass_start_x
	ld	a, (_g_pass_target_x+0)
	sub	a, (hl)
	inc	hl
	ld	e, a
	ld	a, (_g_pass_target_x+1)
	sbc	a, (hl)
	ld	c, a
	jp	00535$
00534$:
	ld	hl, #_g_pass_target_x
	ld	a, (_g_pass_start_x+0)
	sub	a, (hl)
	inc	hl
	ld	e, a
	ld	a, (_g_pass_start_x+1)
	sbc	a, (hl)
	ld	c, a
00535$:
	ld	-3 (ix), e
	ld	-2 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:319: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	inc	hl
	sub	a, #0xf0
	ld	a, (hl)
	sbc	a, #0x01
	jr	NC, 00536$
	ld	hl, #_g_pass_start_y
	ld	a, #0xf0
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, #0x01
	sbc	a, (hl)
	ld	b, a
	jp	00537$
00536$:
	ld	a, (_g_pass_start_y+0)
	add	a, #0x10
	ld	c, a
	ld	a, (_g_pass_start_y+1)
	adc	a, #0xfe
	ld	b, a
00537$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:321: g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	add	hl, bc
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:322: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x0a
	jr	NC, 00317$
	ld	0 (iy), #0x0a
00317$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:323: if (g_pass_max_frames > 25) g_pass_max_frames = 25;
	ld	a, #0x19
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00319$
	ld	0 (iy), #0x19
00319$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:324: g_pass_max_height = 2; // Tiro rasoterra e limitato
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:326: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:327: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00323$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:332: if (!action_taken && Frms % 16 == 0) {
	ld	a, -29 (ix)
	or	a, a
	jp	NZ, 00345$
	ld	a, (_Frms+0)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0x0f
	jp	NZ,00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:333: u8 rand_pass = (Player->lx * 5 + Player->ly * 3 + Frms) % 100;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	l, -24 (ix)
	ld	h, -23 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:336: u8 pass_prob = 10 + (g_ActiveStats[team].pass_tendency * 10);
	ld	c, -31 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:337: if (rand_pass < pass_prob) {
	ld	a, e
	sub	a, c
	jp	NC, 00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:340: i8 pass_dx = (ai_last_dx[i] > 0) ? 1 : ((ai_last_dx[i] < 0) ? -1 : 0);
	ld	bc, #_ai_last_dx+0
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01854$
	xor	a, #0x80
01854$:
	jp	P, 00538$
	ld	de, #0x0001
	jp	00539$
00538$:
	bit	7, c
	jr	Z, 00540$
	ld	de, #0xffff
	jp	00541$
00540$:
	ld	de, #0x0000
00541$:
00539$:
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:342: u8 receiver = FindReceiver(i, 0xFF, pass_dx, pass_dy);
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	l, #0xff
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	call	_FindReceiver
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:343: if (receiver != 0xFF) {
	ld	-20 (ix), e
	ld	a, e
	inc	a
	jp	Z,00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:345: if (SwSprite[receiver].ly > Player->ly - 16) {
	ld	c, -20 (ix)
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
	ld	-28 (ix), l
	ld	-27 (ix), h
	ld	a, -28 (ix)
	add	a, #0x04
	ld	-18 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-17 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	ld	-39 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-38 (ix), a
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-16 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-15 (ix), a
	ld	a, -16 (ix)
	ld	b, -15 (ix)
	add	a, #0xf0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	a, -39 (ix)
	ld	-14 (ix), a
	ld	a, -38 (ix)
	ld	-13 (ix), a
	ld	a, c
	sub	a, -14 (ix)
	ld	a, b
	sbc	a, -13 (ix)
	jp	NC, 00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:346: u16 r_dx = (SwSprite[receiver].lx > Player->lx) ? (SwSprite[receiver].lx - Player->lx) : (Player->lx - SwSprite[receiver].lx);
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	c, (hl)
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	b, (hl)
	ld	-7 (ix), c
	ld	-6 (ix), #0x00
	ld	-5 (ix), b
	ld	-4 (ix), #0x00
	ld	a, b
	sub	a, c
	jr	NC, 00542$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	jp	00543$
00542$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
00543$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:347: u16 r_dy = (SwSprite[receiver].ly > Player->ly) ? (SwSprite[receiver].ly - Player->ly) : (Player->ly - SwSprite[receiver].ly);
	ld	a, -16 (ix)
	sub	a, -39 (ix)
	ld	a, -15 (ix)
	sbc	a, -38 (ix)
	jr	NC, 00544$
	ld	a, -39 (ix)
	sub	a, -16 (ix)
	ld	e, a
	ld	a, -38 (ix)
	sbc	a, -15 (ix)
	jp	00545$
00544$:
	ld	a, -16 (ix)
	sub	a, -39 (ix)
	ld	e, a
	ld	a, -15 (ix)
	sbc	a, -38 (ix)
00545$:
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:349: if (r_dx + r_dy >= 48) {
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, -8 (ix)
	sub	a, #0x30
	ld	a, -7 (ix)
	sbc	a, #0x00
	jp	C, 00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:350: action_taken = TRUE;
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:353: bool is_offside = FALSE;
	ld	-4 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:354: if (team == TEAM_1) {
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00331$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:355: u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	hl, #_SwSprite + 188
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	hl, #_SwSprite + 211
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, -6 (ix)
	ld	a, -2 (ix)
	sbc	a, -5 (ix)
	jr	NC, 00546$
	ld	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, -5 (ix)
	ld	-2 (ix), a
00546$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:356: if (Player->ly > offside_line) offside_line = Player->ly;
	ld	a, c
	sub	a, -16 (ix)
	ld	a, b
	sbc	a, -15 (ix)
	jr	NC, 00326$
	ld	c, -16 (ix)
	ld	b, -15 (ix)
00326$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:357: if (SwSprite[receiver].ly > offside_line + 8 && SwSprite[receiver].ly > 256) is_offside = TRUE;
	ld	hl, #0x0008
	add	hl, bc
	ld	a, l
	sub	a, -14 (ix)
	ld	a, h
	sbc	a, -13 (ix)
	jr	NC, 00331$
	xor	a, a
	cp	a, -14 (ix)
	ld	a, #0x01
	sbc	a, -13 (ix)
	jr	NC, 00331$
	ld	-4 (ix), #0x01
00331$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:360: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:361: g_pass_receiver = receiver | (is_offside ? 0x80 : 0);
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00548$
	ld	a, #0x80
	ld	e, #0x00
	jp	00549$
00548$:
	xor	a, a
	ld	e, a
00549$:
	or	a, -20 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:362: g_pass_start_x = Player->lx;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:363: g_pass_start_y = Player->ly;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:364: g_pass_target_x = SwSprite[receiver].lx;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	(_g_pass_target_x+0), a
	ld	hl, #_g_pass_target_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:365: g_pass_target_y = SwSprite[receiver].ly;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:366: g_pass_max_frames = (r_dx + r_dy) / 5;
	ld	de, #0x0005
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:367: if (g_pass_max_frames < 8) g_pass_max_frames = 8;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x08
	jr	NC, 00333$
	ld	0 (iy), #0x08
00333$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:368: if (g_pass_max_frames > 34) g_pass_max_frames = 34;
	ld	a, #0x22
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00335$
	ld	0 (iy), #0x22
00335$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:369: g_pass_max_height = 7;
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:371: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:372: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:380: if (!action_taken) {
	ld	a, -29 (ix)
	or	a, a
	jp	NZ, 00364$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:383: Ball->dx = (ai_last_dx[i] > 0) ? 1 : ((ai_last_dx[i] < 0) ? -1 : 0);
	ld	bc, #_ai_last_dx+0
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01856$
	xor	a, #0x80
01856$:
	jp	P, 00550$
	ld	de, #0x0001
	jp	00551$
00550$:
	bit	7, c
	jr	Z, 00552$
	ld	de, #0xffff
	jp	00553$
00552$:
	ld	de, #0x0000
00553$:
00551$:
	ld	hl, #(_SwSprite + 339)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:384: Ball->dy = 1; // TEAM_1 dribble sempre verso Sud (porta avversaria)
	ld	bc, #(_SwSprite + 322) + 18
	ld	a, #0x01
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:387: if (Player->ly > 450) {
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0xc2
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00353$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:388: Ball->dx = 0; Ball->dy = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	xor	a, a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:389: Ball->anim = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	jp	00364$
00353$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:391: i8 off_x = 0;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:393: i8 off_y = (Ball->dx != 0) ? 13 : 8;
	ld	hl, #(_SwSprite + 339)
	ld	b, (hl)
	ld	a, b
	or	a, a
	jr	Z, 00554$
	ld	de, #0x000d
	jp	00555$
00554$:
	ld	de, #0x0008
00555$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:394: if (Ball->dx > 0) off_x = 8; else if (Ball->dx < 0) off_x = -8;
	xor	a, a
	sub	a, b
	jp	PO, 01857$
	xor	a, #0x80
01857$:
	jp	P, 00350$
	ld	c, #0x08
	jp	00351$
00350$:
	bit	7, b
	jr	Z, 00351$
	ld	c, #0xf8
00351$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:397: Ball->lx = (u8)((i16)Player->lx + off_x);
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	add	a, c
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:398: Ball->ly = (u16)((i16)Player->ly + off_y) & 511;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ld	c, l
	ld	a, h
	and	a, #0x01
	ld	b, a
	ld	((_SwSprite + 326)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:400: Ball->anim = 2; Ball->count = 0;
	ld	hl, #0x0002
	ld	((_SwSprite + 341)), hl
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:401: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00364$
00361$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:407: target_x = Ball->lx;
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:408: target_y = Ball->ly;
	ld	a, -5 (ix)
	ld	c, -4 (ix)
	ld	-10 (ix), a
	ld	-9 (ix), c
00364$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:413: if (target_x < 16) target_x = 16; 
	ld	a, -12 (ix)
	ld	b, -11 (ix)
	sub	a, #0x10
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00369$
	ld	-12 (ix), #0x10
	ld	-11 (ix), #0
00369$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:414: if (target_x > 224) target_x = 224;
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	ld	a, #0xe0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00371$
	ld	-12 (ix), #0xe0
	ld	-11 (ix), #0
00371$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:415: if (target_y < 24) target_y = 24;
	ld	a, -10 (ix)
	ld	b, -9 (ix)
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00373$
	ld	-10 (ix), #0x18
	ld	-9 (ix), #0
00373$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:416: if (target_y > 478) target_y = 478;
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0xde
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00375$
	ld	-10 (ix), #0xde
	ld	-9 (ix), #0x01
00375$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:420: u16 dist_x = (target_x > Player->lx) ? (target_x - Player->lx) : (Player->lx - target_x);
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	ld	c, a
	ld	b, #0x00
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, c
	sub	a, -12 (ix)
	ld	a, b
	sbc	a, -11 (ix)
	jr	NC, 00556$
	ld	a, -12 (ix)
	ld	-7 (ix), a
	ld	a, -11 (ix)
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
	jp	00557$
00556$:
	ld	a, -3 (ix)
	ld	c, -2 (ix)
	sub	a, -12 (ix)
	ld	-3 (ix), a
	ld	a, c
	sbc	a, -11 (ix)
	ld	-2 (ix), a
00557$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:421: u16 dist_y = (target_y > Player->ly) ? (target_y - Player->ly) : (Player->ly - target_y);
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, -10 (ix)
	ld	a, -4 (ix)
	sbc	a, -9 (ix)
	jr	NC, 00558$
	ld	a, -10 (ix)
	sub	a, -5 (ix)
	ld	c, a
	ld	a, -9 (ix)
	sbc	a, -4 (ix)
	jp	00559$
00558$:
	ld	a, -5 (ix)
	sub	a, -10 (ix)
	ld	c, a
	ld	a, -4 (ix)
	sbc	a, -9 (ix)
00559$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:424: u8 speed = 1;
	ld	e, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:426: if (dist_x > 24 || dist_y > 24 || (LastTouchTeam == team && i == closest_mate) || (!g_is_ball_carried && Ball->anim < 5 && i == closest_mate)) speed = 2;
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, d
	ld	a, #0x00
	sbc	a, l
	jr	C, 00376$
	ld	d, c
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, d
	ld	a, #0x00
	sbc	a, l
	jr	C, 00376$
	ld	a, (_LastTouchTeam+0)
	sub	a, -31 (ix)
	jr	NZ, 00383$
	ld	a, -1 (ix)
	sub	a, -19 (ix)
	jr	Z, 00376$
00383$:
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00377$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, l
	sub	a, #0x05
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00377$
	ld	a, -1 (ix)
	sub	a, -19 (ix)
	jr	NZ, 00377$
00376$:
	ld	e, #0x02
00377$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:428: Player->dx = 0; Player->dy = 0;
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	(hl), #0x00
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:430: if (dist_x > speed) Player->dx = (target_x > Player->lx) ? speed : -speed;
	ld	-5 (ix), e
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00385$
	ld	a, -26 (ix)
	ld	-3 (ix), a
	ld	a, -25 (ix)
	ld	-2 (ix), a
	ld	l, -33 (ix)
	ld	h, -32 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl)
	ld	l, #0x00
	sub	a, -12 (ix)
	ld	a, l
	sbc	a, -11 (ix)
	jr	NC, 00560$
	ld	a, e
	jp	00561$
00560$:
	xor	a, a
	sub	a, e
00561$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00385$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:431: if (dist_y > speed) Player->dy = (target_y > Player->ly) ? speed : -speed;
	ld	a, -5 (ix)
	sub	a, c
	ld	a, -4 (ix)
	sbc	a, b
	jr	NC, 00387$
	ld	a, -22 (ix)
	ld	-3 (ix), a
	ld	a, -21 (ix)
	ld	-2 (ix), a
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -10 (ix)
	ld	a, b
	sbc	a, -9 (ix)
	jr	NC, 00562$
	ld	a, e
	jp	00563$
00562$:
	xor	a, a
	sub	a, e
00563$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00387$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: Player->lx += Player->dx;
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:58: Player->frame = (Player->dx > 0) ? 
	ld	a, -33 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -32 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:433: if (Player->dx != 0 || Player->dy != 0) {
	ld	a, e
	or	a, a
	jr	NZ, 00391$
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00392$
00391$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:434: ai_last_dx[i] = Player->dx;
	ld	a, #<(_ai_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_ai_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:435: ai_last_dy[i] = Player->dy;
	ld	a, #<(_ai_last_dy)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_ai_last_dy)
	adc	a, #0x00
	ld	d, a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:437: Player->lx += Player->dx;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	a, (hl)
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	ld	e, (hl)
	add	a, e
	ld	l, -33 (ix)
	ld	h, -32 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:438: Player->ly += Player->dy;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:440: Player->anim++;
	ld	l, -33 (ix)
	ld	h, -32 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:441: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-37 (ix), #0x00
	ld	-36 (ix), #0x01
	ld	-35 (ix), #0x02
	ld	-34 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:442: Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
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
	ld	a, (hl)
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	d, (hl)
	ld	l, -26 (ix)
	ld	h, -25 (ix)
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
	jp	00395$
00392$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:35: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:445: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	l, -33 (ix)
	ld	h, -32 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:116: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	-3 (ix), e
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:445: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	a, d
	sub	a, -3 (ix)
	ld	a, l
	sbc	a, -2 (ix)
	jp	PO, 01863$
	xor	a, #0x80
01863$:
	jp	P, 00564$
	ld	de, #0x0001
	jp	00565$
00564$:
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
	jp	PO, 01864$
	xor	a, #0x80
01864$:
	jp	P, 00566$
	ld	de, #0xffff
	jp	00567$
00566$:
	ld	de, #0x0000
00567$:
00565$:
	ld	-2 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:117: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	de, (#(_SwSprite + 326) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:446: i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
	ld	l, -24 (ix)
	ld	h, -23 (ix)
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
	jr	NC, 00568$
	ld	de, #0x0001
	jp	00569$
00568$:
	ld	de, #0xfffc
	add	hl, de
	ex	de,hl
	ld	a, -4 (ix)
	sub	a, e
	ld	a, -3 (ix)
	sbc	a, d
	jr	NC, 00570$
	ld	de, #0xffff
	jp	00571$
00570$:
	ld	de, #0x0000
00571$:
00569$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:447: if (dir_x == 0 && dir_y == 0) {
	ld	a, -2 (ix)
	or	a,a
	jr	NZ, 00389$
	or	a,e
	jr	NZ, 00389$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:448: dir_y = (team == TEAM_1) ? 1 : -1;
	ld	a, -31 (ix)
	or	a, a
	jr	NZ, 00572$
	ld	de, #0x0001
	jp	00573$
00572$:
	ld	de, #0xffff
00573$:
00389$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:450: Player->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, dir_x, dir_y);
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
00395$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:452: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:455: u16 FindReceiver(u8 carrier, u8 ignore_player, i8 c_dx, i8 c_dy) 
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:457: u8 start_idx = (carrier < 7) ? 1 : 8; // Esclude i portieri
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:458: u8 end_idx = start_idx + 6;
	ld	-1 (ix), a
	ld	-5 (ix), a
	add	a, #0x06
	ld	-28 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:459: u8 best_match = 0xFF;
	ld	-27 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:460: u16 min_dist = 0xFFFF;
	ld	-26 (ix), #0xff
	ld	-25 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:462: if (c_dx == 0 && c_dy == 0) {
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00149$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00149$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:463: c_dy = (carrier < 7) ? 1 : -1;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:466: for (u8 i = start_idx; i < end_idx; i++) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:467: if (i == carrier || i == ignore_player) continue; 
	ld	a, -2 (ix)
	sub	a, -1 (ix)
	jp	Z,00121$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	Z,00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:469: u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:474: if (c_dx > 0 && SwSprite[i].lx < SwSprite[carrier].lx) continue; 
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:469: u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:470: u16 dy = (SwSprite[i].ly > SwSprite[carrier].ly) ? (SwSprite[i].ly - SwSprite[carrier].ly) : (SwSprite[carrier].ly - SwSprite[i].ly);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:471: u16 dist = dx + dy; 
	ld	a, -14 (ix)
	add	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -13 (ix)
	adc	a, -6 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:474: if (c_dx > 0 && SwSprite[i].lx < SwSprite[carrier].lx) continue; 
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00108$
	ld	a, -15 (ix)
	sub	a, -16 (ix)
	jr	C, 00121$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:475: if (c_dx < 0 && SwSprite[i].lx > SwSprite[carrier].lx) continue; 
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00111$
	ld	a, -17 (ix)
	sub	a, -15 (ix)
	jr	C, 00121$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:477: if (c_dy > 0 && SwSprite[i].ly < SwSprite[carrier].ly) continue; 
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00114$
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	jr	C, 00121$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:478: if (c_dy < 0 && SwSprite[i].ly > SwSprite[carrier].ly) continue; 
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00117$
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00121$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:480: if (dist < min_dist) {
	ld	a, -5 (ix)
	sub	a, -26 (ix)
	ld	a, -4 (ix)
	sbc	a, -25 (ix)
	jr	NC, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:481: min_dist = dist;
	ld	a, -5 (ix)
	ld	-26 (ix), a
	ld	a, -4 (ix)
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:482: best_match = i;
	ld	a, -1 (ix)
	ld	-27 (ix), a
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:466: for (u8 i = start_idx; i < end_idx; i++) {
	inc	-1 (ix)
	jp	00124$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:486: return best_match;
	ld	e, -27 (ix)
	ld	d, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:487: }
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
