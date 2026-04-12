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
	ld	hl, #-26
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
	jp	Z,00214$
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:18: if (i == T1_Carrier || i == T2_Carrier) return;
	ld	a, (_T1_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00214$
	ld	a, (_T2_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00214$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:21: struct ObjectInfo* Player = &SwSprite[i];
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
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-22 (ix), a
	ld	a, -2 (ix)
	ld	-21 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:22: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:24: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00216$
	ld	bc, #0x0000
	jp	00217$
00216$:
	ld	bc, #0x0001
00217$:
	ld	-20 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:25: bool is_gk = (i == 0 || i == 7);
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00219$
	ld	a, -1 (ix)
	sub	a, #0x07
	ld	c, #0x00
	jr	NZ, 00220$
00219$:
	ld	c, #0x01
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:33: if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:32: if (is_gk) {
	ld	a, c
	or	a, a
	jp	Z, 00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:33: if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	c, a
	ld	b, #0x00
	ld	hl, #0x0004
	add	hl, bc
	ld	e, -9 (ix)
	ld	d, #0x00
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00750$
	xor	a, #0x80
00750$:
	jp	P, 00113$
	inc	bc
	inc	bc
	jp	00114$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:34: else if (Ball->lx < Player->lx - 4) target_x = Player->lx - 2;
	ld	a, c
	add	a, #0xfc
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00751$
	xor	a, #0x80
00751$:
	jp	P, 00110$
	dec	bc
	dec	bc
	jp	00114$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:35: else target_x = Ball->lx;
	ld	c, -9 (ix)
	ld	b, #0x00
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:38: if (target_x < 104) target_x = 104;
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x68
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00116$
	ld	bc, #0x0068
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:39: if (target_x > 152) target_x = 152;
	ld	e, c
	ld	d, b
	ld	a, #0x98
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00118$
	ld	bc, #0x0098
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:41: target_y = (team == TEAM_1) ? 32 : 480;
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00221$
	ld	de, #0x0020
	jp	00222$
00221$:
	ld	de, #0x01e0
00222$:
	ld	-6 (ix), e
	ld	-5 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:43: Player->dx = (target_x > Player->lx) ? 1 : ((target_x < Player->lx) ? -1 : 0);
	ld	a, -22 (ix)
	add	a, #0x11
	ld	-4 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00223$
	ld	bc, #0x0001
	jp	00224$
00223$:
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00225$
	ld	bc, #0xffff
	jp	00226$
00225$:
	ld	bc, #0x0000
00226$:
00224$:
	ld	e, c
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:44: Player->dy = 0;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	bc, #0x0012
	add	hl, bc
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:46: Player->lx += Player->dx;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	add	a, e
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:47: Player->ly = target_y; // Forza la Y corretta
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	bc, #0x0004
	add	hl, bc
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:49: Player->anim++;
	ld	a, -22 (ix)
	add	a, #0x13
	ld	-3 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
	ld	a, -22 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: if (Player->dx != 0) {
	ld	a, e
	or	a, a
	jr	Z, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:49: Player->anim++;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
	push	bc
	ex	de, hl
	ld	de, #0x0006
	call	__divuint
	pop	bc
	ld	a, e
	and	a, #0x01
	ld	e, a
	ld	d, #0x00
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00120$
	ld	a, d
	or	a, e
	jr	NZ, 00227$
	ld	de, #0x00f2
	jp	00228$
00227$:
	ld	de, #0x00f5
00228$:
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00214$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:52: else                Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_NORTH_1 : SPR_GK_PLAYER_NORTH_2;
	ld	a, d
	or	a, e
	jr	NZ, 00229$
	ld	de, #0x00f3
	jp	00230$
00229$:
	ld	de, #0x00f4
00230$:
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00214$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:54: Player->frame = (team == TEAM_1) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00231$
	ld	de, #0x00d5
	jp	00232$
00231$:
	ld	de, #0x00d6
00232$:
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:56: return;
	jp	00214$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:61: u8 role = (team == TEAM_1) ? i : (i - 7); // 1,2: Dif, 3,4: Cen, 5,6: Att
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00233$
	ld	a, -1 (ix)
	jp	00234$
00233$:
	ld	a, -1 (ix)
	add	a, #0xf9
00234$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:63: u16 base_x = 128;
	ld	-13 (ix), #0x80
	ld	-12 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:64: u16 base_y = 256;
	ld	-11 (ix), #0x00
	ld	-10 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:67: if (role == 1) { base_x = 64;  base_y = (team == TEAM_1) ? 120 : 392; } // Difensore sx
	ld	a, -2 (ix)
	dec	a
	jr	NZ, 00142$
	ld	-13 (ix), #0x40
	ld	-12 (ix), #0
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00235$
	ld	-3 (ix), #0x78
	ld	-2 (ix), #0
	jp	00236$
00235$:
	ld	-3 (ix), #0x88
	ld	-2 (ix), #0x01
00236$:
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
	jp	00143$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:68: else if (role == 2) { base_x = 192; base_y = (team == TEAM_1) ? 120 : 392; } // Difensore dx
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	NZ, 00139$
	ld	-13 (ix), #0xc0
	ld	-12 (ix), #0
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00237$
	ld	-3 (ix), #0x78
	ld	-2 (ix), #0
	jp	00238$
00237$:
	ld	-3 (ix), #0x88
	ld	-2 (ix), #0x01
00238$:
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
	jp	00143$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:69: else if (role == 3) { base_x = 64;  base_y = (team == TEAM_1) ? 200 : 312; } // Centro sx
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	NZ, 00136$
	ld	-13 (ix), #0x40
	ld	-12 (ix), #0
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00239$
	ld	-3 (ix), #0xc8
	ld	-2 (ix), #0
	jp	00240$
00239$:
	ld	-3 (ix), #0x38
	ld	-2 (ix), #0x01
00240$:
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
	jp	00143$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:70: else if (role == 4) { base_x = 192; base_y = (team == TEAM_1) ? 200 : 312; } // Centro dx
	ld	a, -2 (ix)
	sub	a, #0x04
	jr	NZ, 00133$
	ld	-13 (ix), #0xc0
	ld	-12 (ix), #0
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00241$
	ld	-3 (ix), #0xc8
	ld	-2 (ix), #0
	jp	00242$
00241$:
	ld	-3 (ix), #0x38
	ld	-2 (ix), #0x01
00242$:
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
	jp	00143$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:71: else if (role == 5) { base_x = 80;  base_y = (team == TEAM_1) ? 280 : 232; } // Attaccante sx
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	NZ, 00130$
	ld	-13 (ix), #0x50
	ld	-12 (ix), #0
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00243$
	ld	-3 (ix), #0x18
	ld	-2 (ix), #0x01
	jp	00244$
00243$:
	ld	-3 (ix), #0xe8
	ld	-2 (ix), #0
00244$:
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
	jp	00143$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:72: else if (role == 6) { base_x = 176; base_y = (team == TEAM_1) ? 280 : 232; } // Attaccante dx
	ld	a, -2 (ix)
	sub	a, #0x06
	jr	NZ, 00143$
	ld	-13 (ix), #0xb0
	ld	-12 (ix), #0
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00245$
	ld	-3 (ix), #0x18
	ld	-2 (ix), #0x01
	jp	00246$
00245$:
	ld	-3 (ix), #0xe8
	ld	-2 (ix), #0
00246$:
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:75: i16 ball_offset_x = (i16)Ball->lx - 128;
	ld	a, -9 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x80
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:76: i16 ball_offset_y = (i16)Ball->ly - 256;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-15 (ix), a
	ld	a, -4 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0x00
	ld	-5 (ix), a
	ld	a, -14 (ix)
	adc	a, #0xff
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:78: target_x = base_x + (ball_offset_x / 2);
	ld	a, -3 (ix)
	ld	-15 (ix), a
	ld	a, -2 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	ld	-3 (ix), a
	ld	a, -14 (ix)
	ld	-2 (ix), a
	bit	7, -14 (ix)
	jr	Z, 00247$
	ld	a, -15 (ix)
	add	a, #0x01
	ld	-3 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
00247$:
	sra	-2 (ix)
	rr	-3 (ix)
	ld	a, -13 (ix)
	ld	-15 (ix), a
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -3 (ix)
	ld	-13 (ix), a
	ld	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -15 (ix)
	add	a, -13 (ix)
	ld	-3 (ix), a
	ld	a, -14 (ix)
	adc	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-19 (ix), a
	ld	a, -2 (ix)
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:79: target_y = base_y + (ball_offset_y / 3);
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	de, #0x0003
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	-17 (ix), l
	ld	-16 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:82: if (LastTouchTeam == team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -20 (ix)
	jr	NZ, 00160$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:83: target_y += (team == TEAM_1) ? 40 : -40; // Fase offensiva
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00248$
	ld	-3 (ix), #0x28
	ld	-2 (ix), #0
	jp	00249$
00248$:
	ld	-3 (ix), #0xd8
	ld	-2 (ix), #0xff
00249$:
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-4 (ix), a
	ld	a, -3 (ix)
	ld	-10 (ix), a
	ld	a, -2 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -9 (ix)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-17 (ix), a
	ld	a, -2 (ix)
	ld	-16 (ix), a
	jp	00161$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:84: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	jp	Z,00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:85: target_y += (team == TEAM_1) ? -24 : 24; // Fase difensiva (ripiegamento controllato)
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00250$
	ld	-3 (ix), #0xe8
	ld	-2 (ix), #0xff
	jp	00251$
00250$:
	ld	-3 (ix), #0x18
	ld	-2 (ix), #0
00251$:
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-4 (ix), a
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-17 (ix), a
	ld	a, -2 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:83: target_y += (team == TEAM_1) ? 40 : -40; // Fase offensiva
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -16 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:90: if (target_y < 72 && Ball->ly > 72) target_y = 72;
	ld	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:88: if (team == TEAM_1) {
	ld	a, -20 (ix)
	or	a, a
	jp	NZ, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:90: if (target_y < 72 && Ball->ly > 72) target_y = 72;
	ld	a, -5 (ix)
	sub	a, #0x48
	ld	a, -4 (ix)
	sbc	a, #0x00
	jr	NC, 00145$
	ld	a, #0x48
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jr	NC, 00145$
	ld	-17 (ix), #0x48
	ld	-16 (ix), #0
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:92: if (Ball->ly < 256) {
	ld	a, -2 (ix)
	sub	a, #0x01
	jp	NC, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:93: target_y = (target_y + Ball->ly - 16) / 2;
	ld	a, -7 (ix)
	add	a, -17 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, -16 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0xf0
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	srl	-2 (ix)
	rr	-3 (ix)
	ld	a, -3 (ix)
	ld	-17 (ix), a
	ld	a, -2 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:94: target_x = (target_x + Ball->lx) / 2;
	ld	a, -9 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -19 (ix)
	ld	-5 (ix), a
	ld	a, -18 (ix)
	ld	-4 (ix), a
	ld	a, -3 (ix)
	add	a, -5 (ix)
	ld	-10 (ix), a
	ld	a, -2 (ix)
	adc	a, -4 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-3 (ix), a
	ld	a, -9 (ix)
	ld	-2 (ix), a
	srl	-2 (ix)
	rr	-3 (ix)
	ld	a, -3 (ix)
	ld	-19 (ix), a
	ld	a, -2 (ix)
	ld	-18 (ix), a
	jp	00161$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:98: if (target_y > 440 && Ball->ly < 440) target_y = 440;
	ld	a, #0xb8
	cp	a, -5 (ix)
	ld	a, #0x01
	sbc	a, -4 (ix)
	jr	NC, 00150$
	ld	a, -3 (ix)
	sub	a, #0xb8
	ld	a, -2 (ix)
	sbc	a, #0x01
	jr	NC, 00150$
	ld	-17 (ix), #0xb8
	ld	-16 (ix), #0x01
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:100: if (Ball->ly > 256) {
	xor	a, a
	cp	a, -3 (ix)
	ld	a, #0x01
	sbc	a, -2 (ix)
	jp	NC, 00161$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:101: target_y = (target_y + Ball->ly + 16) / 2;
	ld	a, -7 (ix)
	add	a, -17 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	adc	a, -16 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x10
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	srl	-2 (ix)
	rr	-3 (ix)
	ld	a, -3 (ix)
	ld	-17 (ix), a
	ld	a, -2 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:102: target_x = (target_x + Ball->lx) / 2;
	ld	a, -9 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -19 (ix)
	ld	-5 (ix), a
	ld	a, -18 (ix)
	ld	-4 (ix), a
	ld	a, -3 (ix)
	add	a, -5 (ix)
	ld	-10 (ix), a
	ld	a, -2 (ix)
	adc	a, -4 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-3 (ix), a
	ld	a, -9 (ix)
	ld	-2 (ix), a
	srl	-2 (ix)
	rr	-3 (ix)
	ld	a, -3 (ix)
	ld	-19 (ix), a
	ld	a, -2 (ix)
	ld	-18 (ix), a
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:108: bool is_cpu_team = (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1);
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00252$
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00253$
00252$:
	xor	a, a
	jp	00254$
00253$:
	ld	a, #0x01
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:110: if (is_cpu_team) {
	or	a, a
	jp	Z, 00183$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:112: u8 closest_cpu = 0xFF;
	ld	c, #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:113: u16 min_dist = 0xFFFF;
	ld	-5 (ix), #0xff
	ld	-4 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:117: for (u8 j = start_cpu; j < end_cpu; j++) {
	ld	b, #0x01
00212$:
	ld	a, b
	sub	a, #0x07
	jr	NC, 00164$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:118: u8 dx_diff = (u8)(SwSprite[j].lx - Ball->lx);
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, (hl)
	sub	a, -8 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:119: u16 dx = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	C, 00256$
	ld	hl, #0x0100
	cp	a, a
	sbc	hl, de
	ex	de, hl
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:120: u16 dy_diff = (u16)(SwSprite[j].ly - Ball->ly) & 511;
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
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
	sub	a, -7 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	sbc	a, -6 (ix)
	and	a, #0x01
	ld	-3 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:121: u16 dy = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	-2 (ix), a
	sub	a, #0x01
	jr	NC, 00257$
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	jp	00258$
00257$:
	xor	a, a
	sub	a, -3 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x02
	sbc	a, -2 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:122: if (dx + dy < min_dist) {
	add	hl, de
	ld	a, l
	sub	a, -5 (ix)
	ld	a, h
	sbc	a, -4 (ix)
	jr	NC, 00213$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:123: min_dist = dx + dy;
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:124: closest_cpu = j;
	ld	c, b
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:117: for (u8 j = start_cpu; j < end_cpu; j++) {
	inc	b
	jp	00212$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:128: if (i == closest_cpu) {
	ld	a, -1 (ix)
	sub	a, c
	jp	NZ,00183$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:129: if (LastTouchTeam != team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -20 (ix)
	jr	Z, 00178$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:131: target_x = Ball->lx;
	ld	a, -8 (ix)
	ld	-19 (ix), a
	ld	-18 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:132: target_y = Ball->ly;
	ld	a, -7 (ix)
	ld	c, -6 (ix)
	ld	-17 (ix), a
	ld	-16 (ix), c
	jp	00183$
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:135: if (min_dist <= 24) {
	ld	c, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, l
	jp	C, 00175$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:137: target_x = 128; 
	ld	-19 (ix), #0x80
	ld	-18 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:138: target_y = 480; 
	ld	-17 (ix), #0xe0
	ld	-16 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:47: Player->ly = target_y; // Forza la Y corretta
	ld	a, -22 (ix)
	add	a, #0x04
	ld	-5 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:141: if (min_dist <= 12 && Ball->anim == 0) {
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, l
	jp	C, 00169$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00169$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:142: Ball->dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
	ld	c, -22 (ix)
	ld	b, -21 (ix)
	ld	hl, #17
	add	hl, bc
	ld	a, (hl)
	ld	-2 (ix), a
	xor	a, a
	sub	a, -2 (ix)
	jp	PO, 00770$
	xor	a, #0x80
00770$:
	jp	P, 00259$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00260$
00259$:
	bit	7, -2 (ix)
	jr	Z, 00261$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00262$
00261$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00262$:
00260$:
	ld	a, -3 (ix)
	ld	(#(_SwSprite + 339)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:143: Ball->dy = (Player->dy > 0) ? 1 : ((Player->dy < 0) ? -1 : 0);
	ld	c, -22 (ix)
	ld	b, -21 (ix)
	ld	hl, #18
	add	hl, bc
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 00771$
	xor	a, #0x80
00771$:
	jp	P, 00263$
	ld	bc, #0x0001
	jp	00264$
00263$:
	bit	7, c
	jr	Z, 00265$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00266$
00265$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00266$:
	ld	c, -3 (ix)
00264$:
	ld	hl, #(_SwSprite + 340)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:144: if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
	ld	a, (#(_SwSprite + 339) + 0)
	or	a, a
	jr	NZ, 00166$
	ld	a, (#(_SwSprite + 340) + 0)
	or	a, a
	jr	NZ, 00166$
	ld	(hl), #0x01
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:146: Ball->lx = Player->lx + (Ball->dx * 6);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	c, (hl)
	ld	a, (#(_SwSprite + 339) + 0)
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	add	a, c
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:147: Ball->ly = (Player->ly + (Ball->dy * 6)) & 511;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (#(_SwSprite + 340) + 0)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	a, h
	and	a, #0x01
	ld	b, a
	ld	((_SwSprite + 326)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:148: Ball->anim = 4;
	ld	hl, #0x0004
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:149: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:153: if (Player->ly > 380 && Ball->anim == 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0x7c
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jp	NC, 00183$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00183$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:154: Ball->dx = (Player->lx < 110) ? 1 : ((Player->lx > 146) ? -1 : 0);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	sub	a, #0x6e
	jr	NC, 00267$
	ld	bc, #0x0001
	jp	00268$
00267$:
	ld	a, #0x92
	sub	a, -2 (ix)
	jr	NC, 00269$
	ld	bc, #0xffff
	jp	00270$
00269$:
	ld	bc, #0x0000
00270$:
00268$:
	ld	hl, #(_SwSprite + 339)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:155: Ball->dy = 1;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:156: Ball->lx = Player->lx + (Ball->dx * 6);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	e, (hl)
	ld	a, c
	add	a, a
	add	a, c
	add	a, a
	add	a, e
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:157: Ball->ly = (Player->ly + (Ball->dy * 6)) & 511;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (#(_SwSprite + 340) + 0)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	a, d
	and	a, #0x01
	ld	d, a
	ld	((_SwSprite + 326)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:158: Ball->anim = 8; // Tiro potente
	ld	hl, #0x0008
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:159: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:160: LastTouchTeam = 0xFF;
	ld	hl, #_LastTouchTeam
	ld	(hl), #0xff
	jp	00183$
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:164: target_x = Ball->lx;
	ld	a, -8 (ix)
	ld	-19 (ix), a
	ld	-18 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:165: target_y = Ball->ly;
	ld	a, -7 (ix)
	ld	c, -6 (ix)
	ld	-17 (ix), a
	ld	-16 (ix), c
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:33: if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:47: Player->ly = target_y; // Forza la Y corretta
	ld	a, -22 (ix)
	add	a, #0x04
	ld	-14 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:153: if (Player->ly > 380 && Ball->anim == 0) {
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:173: if (LastTouchTeam != team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -20 (ix)
	jp	Z,00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:33: if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:174: u8 b_dx_diff = (u8)(Player->lx - Ball->lx);
	ld	a, -15 (ix)
	sub	a, -10 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:175: u16 b_dist_x = (b_dx_diff < 128) ? b_dx_diff : (256 - b_dx_diff);
	ld	c, a
	ld	b, #0x00
	sub	a, #0x80
	jr	NC, 00271$
	ld	a, b
	jp	00272$
00271$:
	xor	a, a
	sub	a, c
	ld	c, a
	ld	a, #0x01
	sbc	a, b
00272$:
	ld	-9 (ix), c
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:76: i16 ball_offset_y = (i16)Ball->ly - 256;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:176: u16 b_dy_diff = (u16)(Player->ly - Ball->ly) & 511;
	ld	a, -12 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, -11 (ix)
	sbc	a, -6 (ix)
	and	a, #0x01
	ld	-5 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:177: u16 b_dist_y = (b_dy_diff < 256) ? b_dy_diff : (512 - b_dy_diff);
	ld	-4 (ix), a
	sub	a, #0x01
	jr	NC, 00273$
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	jp	00274$
00273$:
	xor	a, a
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, #0x02
	sbc	a, -4 (ix)
	ld	-2 (ix), a
00274$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:179: if (b_dist_x < 32 && b_dist_y < 32) {
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	a, e
	sub	a, #0x20
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00188$
	ld	a, c
	sub	a, #0x20
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:180: target_x = Ball->lx;
	ld	a, -10 (ix)
	ld	-19 (ix), a
	ld	-18 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:181: target_y = Ball->ly;
	ld	a, -7 (ix)
	ld	-17 (ix), a
	ld	a, -6 (ix)
	ld	-16 (ix), a
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:186: if (target_x < 16) target_x = 16; 
	ld	a, -19 (ix)
	ld	b, -18 (ix)
	sub	a, #0x10
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00190$
	ld	-19 (ix), #0x10
	ld	-18 (ix), #0
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:187: if (target_x > 240) target_x = 240;
	ld	c, -19 (ix)
	ld	b, -18 (ix)
	ld	a, #0xf0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00192$
	ld	-19 (ix), #0xf0
	ld	-18 (ix), #0
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:188: if (target_y < 24) target_y = 24;
	ld	a, -17 (ix)
	ld	b, -16 (ix)
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00194$
	ld	-17 (ix), #0x18
	ld	-16 (ix), #0
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:189: if (target_y > 488) target_y = 488;
	ld	c, -17 (ix)
	ld	b, -16 (ix)
	ld	a, #0xe8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00196$
	ld	-17 (ix), #0xe8
	ld	-16 (ix), #0x01
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:193: u8 dx_diff = (u8)(target_x - Player->lx);
	ld	a, -19 (ix)
	sub	a, -15 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:194: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	c, a
	sub	a, #0x80
	ld	a, #0x00
	rla
	ld	-4 (ix), a
	ld	-3 (ix), c
	ld	-2 (ix), #0x00
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00275$
	ld	e, -3 (ix)
	ld	a, -2 (ix)
	jp	00276$
00275$:
	xor	a, a
	sub	a, -3 (ix)
	ld	e, a
	ld	a, #0x01
	sbc	a, -2 (ix)
00276$:
	ld	-3 (ix), e
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:195: u16 dy_diff = (u16)(target_y - Player->ly) & 511;
	ld	a, -17 (ix)
	sub	a, -12 (ix)
	ld	c, a
	ld	a, -16 (ix)
	sbc	a, -11 (ix)
	and	a, #0x01
	ld	b, a
	ld	-8 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:196: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
	ld	-7 (ix), b
	ld	a, b
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	-12 (ix), a
	or	a, a
	jr	Z, 00277$
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	jp	00278$
00277$:
	xor	a, a
	sub	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, #0x02
	sbc	a, -7 (ix)
	ld	-5 (ix), a
00278$:
	ld	a, -6 (ix)
	ld	-16 (ix), a
	ld	a, -5 (ix)
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:199: u8 speed = 1;
	ld	-11 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:200: if (dist_x > 24 || dist_y > 24) speed = 2;
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00197$
	ld	a, -16 (ix)
	ld	-6 (ix), a
	ld	a, -15 (ix)
	ld	-5 (ix), a
	ld	a, #0x18
	cp	a, -6 (ix)
	ld	a, #0x00
	sbc	a, -5 (ix)
	jr	NC, 00198$
00197$:
	ld	-11 (ix), #0x02
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:202: Player->dx = 0; Player->dy = 0;
	ld	a, -22 (ix)
	add	a, #0x11
	ld	-10 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x00
	ld	a, -22 (ix)
	add	a, #0x12
	ld	-8 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:204: if (dist_x > speed) Player->dx = (dx_diff < 128) ? speed : -speed;
	ld	a, -11 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -6 (ix)
	sub	a, -3 (ix)
	ld	a, -5 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00201$
	ld	a, -10 (ix)
	ld	-3 (ix), a
	ld	a, -9 (ix)
	ld	-2 (ix), a
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00279$
	ld	a, -11 (ix)
	jp	00280$
00279$:
	xor	a, a
	sub	a, -11 (ix)
00280$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:205: if (dist_y > speed) Player->dy = (dy_diff < 256) ? speed : -speed;
	ld	a, -6 (ix)
	sub	a, -16 (ix)
	ld	a, -5 (ix)
	sbc	a, -15 (ix)
	jr	NC, 00203$
	ld	b, -8 (ix)
	ld	e, -7 (ix)
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00281$
	ld	a, -11 (ix)
	jp	00282$
00281$:
	xor	a, a
	sub	a, -11 (ix)
00282$:
	ld	l, b
	ld	h, e
	ld	(hl), a
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:207: if (Player->dx != 0 || Player->dy != 0) {
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
	ld	a, -22 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:207: if (Player->dx != 0 || Player->dy != 0) {
	ld	a, e
	or	a, a
	jr	NZ, 00207$
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00208$
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:208: ai_last_dx[i] = Player->dx;
	ld	a, #<(_ai_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_ai_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:209: ai_last_dy[i] = Player->dy;
	ld	a, #<(_ai_last_dy)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_ai_last_dy)
	adc	a, #0x00
	ld	d, a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:211: Player->lx += Player->dx;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	e, (hl)
	add	a, e
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:212: Player->ly += Player->dy;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -8 (ix)
	ld	h, -7 (ix)
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
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:214: Player->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:215: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-26 (ix), #0x00
	ld	-25 (ix), #0x01
	ld	-24 (ix), #0x02
	ld	-23 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:216: Player->frame = CallFnc_U16_P4(SEG_GAMESTATE, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
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
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	d, (hl)
	push	bc
	push	af
	inc	sp
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x09
	call	_CallFnc_U16_P4
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00214$
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:33: if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:219: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:94: target_x = (target_x + Ball->lx) / 2;
	ld	-3 (ix), e
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:219: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	a, d
	sub	a, -3 (ix)
	ld	a, l
	sbc	a, -2 (ix)
	jp	PO, 00773$
	xor	a, #0x80
00773$:
	jp	P, 00283$
	ld	de, #0x0001
	jp	00284$
00283$:
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
	jp	PO, 00774$
	xor	a, #0x80
00774$:
	jp	P, 00285$
	ld	de, #0xffff
	jp	00286$
00285$:
	ld	de, #0x0000
00286$:
00284$:
	ld	-2 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:76: i16 ball_offset_y = (i16)Ball->ly - 256;
	ld	de, (#(_SwSprite + 326) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:220: i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
	ld	l, -14 (ix)
	ld	h, -13 (ix)
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
	jr	NC, 00287$
	ld	de, #0x0001
	jp	00288$
00287$:
	ld	de, #0xfffc
	add	hl, de
	ex	de,hl
	ld	a, -4 (ix)
	sub	a, e
	ld	a, -3 (ix)
	sbc	a, d
	jr	NC, 00289$
	ld	de, #0xffff
	jp	00290$
00289$:
	ld	de, #0x0000
00290$:
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:221: if (dir_x == 0 && dir_y == 0) {
	ld	a, -2 (ix)
	or	a,a
	jr	NZ, 00205$
	or	a,e
	jr	NZ, 00205$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:222: dir_y = (team == TEAM_1) ? 1 : -1;
	ld	a, -20 (ix)
	or	a, a
	jr	NZ, 00291$
	ld	de, #0x0001
	jp	00292$
00291$:
	ld	de, #0xffff
00292$:
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:224: Player->frame = CallFnc_U16_P3(SEG_GAMESTATE, GetPlayerIdleFrame, i, dir_x, dir_y);
	push	bc
	ld	h, e
	ld	l, -2 (ix)
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x09
	call	_CallFnc_U16_P3
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:226: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:229: u16 FindReceiver(u8 carrier, u8 ignore_player, i8 c_dx, i8 c_dy) 
;	---------------------------------
; Function FindReceiver
; ---------------------------------
_FindReceiver::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-26
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), a
	ld	-3 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:231: u8 start_idx = (carrier < 7) ? 1 : 8; // Esclude i portieri
	ld	a, -2 (ix)
	sub	a, #0x07
	jr	NC, 00136$
	ld	bc, #0x0001
	jp	00137$
00136$:
	ld	bc, #0x0008
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:232: u8 end_idx = start_idx + 6;
	ld	-26 (ix), c
	ld	a, c
	add	a, #0x06
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:233: u8 best_match = 0xFF;
	ld	-24 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:234: u16 min_dist = 0xFFFF;
	ld	-23 (ix), #0xff
	ld	-22 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:236: for (u8 i = start_idx; i < end_idx; i++) {
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
	ld	-21 (ix), l
	ld	-20 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -21 (ix)
	ld	c, a
	ld	a, #>(_SwSprite)
	adc	a, -20 (ix)
	ld	b, a
	ld	a, (bc)
	ld	-19 (ix), a
	ld	-18 (ix), c
	ld	-17 (ix), b
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00253$
	xor	a, #0x80
00253$:
	rlca
	and	a,#0x01
	ld	-16 (ix), a
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	-15 (ix), a
	xor	a, a
	sub	a, 5 (ix)
	jp	PO, 00254$
	xor	a, #0x80
00254$:
	rlca
	and	a,#0x01
	ld	-14 (ix), a
	ld	a, 5 (ix)
	rlca
	and	a,#0x01
	ld	-13 (ix), a
	ld	a, -26 (ix)
	ld	-1 (ix), a
00131$:
	ld	a, -1 (ix)
	sub	a, -25 (ix)
	jp	NC, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:237: if (i == carrier || i == ignore_player) continue; 
	ld	a, -2 (ix)
	sub	a, -1 (ix)
	jp	Z,00119$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	Z,00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:239: u8 dx_diff = (u8)(SwSprite[i].lx - SwSprite[carrier].lx);
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
	ld	a, (hl)
	sub	a, -19 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:240: u16 dx = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	-12 (ix), a
	sub	a, #0x80
	ld	a, #0x00
	rla
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00138$
	ld	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	ld	-4 (ix), a
	jp	00139$
00138$:
	xor	a, a
	sub	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, #0x01
	sbc	a, -8 (ix)
	ld	-4 (ix), a
00139$:
	ld	a, -5 (ix)
	ld	-10 (ix), a
	ld	a, -4 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:241: u16 dy_diff_16 = (u16)(SwSprite[i].ly - SwSprite[carrier].ly) & 511;
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	hl, #4
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	and	a, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:242: u16 dy = (dy_diff_16 < 256) ? dy_diff_16 : (512 - dy_diff_16);
	ld	-7 (ix), c
	ld	-6 (ix), a
	ld	b, a
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00140$
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	jp	00141$
00140$:
	xor	a, a
	sub	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, #0x02
	sbc	a, -6 (ix)
	ld	-4 (ix), a
00141$:
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:243: u16 dist = dx + dy; 
	ld	a, -7 (ix)
	add	a, -10 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, -9 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:246: if (c_dx > 0 && dx_diff > 128) continue; // Cerca a DX, ma 'i' è a SX
	ld	a, -16 (ix)
	or	a, a
	jr	Z, 00105$
	ld	a, #0x80
	sub	a, -12 (ix)
	jr	C, 00119$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:247: if (c_dx < 0 && dx_diff < 128 && dx_diff > 0) continue; // Cerca a SX, ma 'i' è a DX
	ld	a, -15 (ix)
	or	a, a
	jr	Z, 00108$
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00108$
	ld	a, -12 (ix)
	or	a, a
	jr	NZ, 00119$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:249: bool is_south = (dy_diff_16 < 256);
	ld	a, -8 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:250: if (c_dy > 0 && !is_south) continue; // Cerca a SUD, ma 'i' è a NORD
	ld	a, -14 (ix)
	or	a, a
	jr	Z, 00112$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00119$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:251: if (c_dy < 0 && is_south) continue; // Cerca a NORD, ma 'i' è a SUD
	ld	a, -13 (ix)
	or	a, a
	jr	Z, 00115$
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00119$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:253: if (dist < min_dist) {
	ld	a, -5 (ix)
	sub	a, -23 (ix)
	ld	a, -4 (ix)
	sbc	a, -22 (ix)
	jr	NC, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:254: min_dist = dist;
	ld	a, -5 (ix)
	ld	-23 (ix), a
	ld	a, -4 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:255: best_match = i;
	ld	a, -1 (ix)
	ld	-24 (ix), a
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:236: for (u8 i = start_idx; i < end_idx; i++) {
	inc	-1 (ix)
	jp	00131$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:259: if (best_match == 0xFF) {
	ld	a, -24 (ix)
	inc	a
	jp	NZ,00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:260: for (u8 i = start_idx; i < end_idx; i++) {
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:236: for (u8 i = start_idx; i < end_idx; i++) {
	ld	a, #<(_SwSprite)
	add	a, -21 (ix)
	ld	c, a
	ld	a, #>(_SwSprite)
	adc	a, -20 (ix)
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:260: for (u8 i = start_idx; i < end_idx; i++) {
	ld	a, (bc)
	ld	-6 (ix), a
	ld	-5 (ix), c
	ld	-4 (ix), b
	ld	a, -26 (ix)
	ld	-1 (ix), a
00133$:
	ld	a, -1 (ix)
	sub	a, -25 (ix)
	jp	NC, 00129$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:261: if (i == carrier || i == ignore_player) continue;
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jp	Z,00126$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	Z,00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:262: u8 dx_diff = (u8)(SwSprite[i].lx - SwSprite[carrier].lx);
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
	sub	a, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:263: u16 dx = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00142$
	ld	a, d
	jp	00143$
00142$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00143$:
	ld	-12 (ix), e
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:264: u16 dy_diff_16 = (u16)(SwSprite[i].ly - SwSprite[carrier].ly) & 511;
	ld	hl, #4
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	and	a, #0x01
	ld	-10 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:265: u16 dy = (dy_diff_16 < 256) ? dy_diff_16 : (512 - dy_diff_16);
	ld	-9 (ix), a
	sub	a, #0x01
	jr	NC, 00144$
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	jp	00145$
00144$:
	xor	a, a
	sub	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, #0x02
	sbc	a, -9 (ix)
	ld	-7 (ix), a
00145$:
	ld	c, -8 (ix)
	ld	b, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:266: u16 dist = dx + dy;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:267: if (dist < min_dist) {
	ld	a, l
	sub	a, -23 (ix)
	ld	a, h
	sbc	a, -22 (ix)
	jr	NC, 00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:268: min_dist = dist;
	ld	-23 (ix), l
	ld	-22 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:269: best_match = i;
	ld	a, -1 (ix)
	ld	-24 (ix), a
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:260: for (u8 i = start_idx; i < end_idx; i++) {
	inc	-1 (ix)
	jp	00133$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:273: return best_match;
	ld	e, -24 (ix)
	ld	d, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:274: }
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
