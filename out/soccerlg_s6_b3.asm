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
	ld	hl, #-32
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
	jp	Z,00265$
	jp	00108$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:18: if (i == T1_Carrier || i == T2_Carrier) return;
	ld	a, (_T1_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00265$
	ld	a, (_T2_Carrier+0)
	sub	a, -1 (ix)
	jp	Z,00265$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:21: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:23: if (Ball->anim == 5 && i == g_pass_receiver) {
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	sub	a, #0x05
	or	a, -5 (ix)
	ld	a, #0x01
	jr	Z, 00994$
	xor	a, a
00994$:
	ld	-2 (ix), a
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
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, -8 (ix)
	add	a, #<(_SwSprite)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #>(_SwSprite)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:23: if (Ball->anim == 5 && i == g_pass_receiver) {
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00110$
	ld	a, (_g_pass_receiver+0)
	sub	a, -1 (ix)
	jr	NZ, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:24: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	a, -6 (ix)
	add	a, #0x11
	ld	-3 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x00
	ld	a, -6 (ix)
	add	a, #0x12
	ld	-3 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:25: SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, 0, (i < 7) ? 1 : -1);
	ld	a, -6 (ix)
	add	a, #0x0f
	ld	-3 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00267$
	ld	-5 (ix), #0x01
	ld	-4 (ix), #0
	jp	00268$
00267$:
	ld	-5 (ix), #0xff
	ld	-4 (ix), #0xff
00268$:
	ld	a, -5 (ix)
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
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:26: return;
	jp	00265$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:30: if (Ball->anim == 5 && i == LastTouchPlayer) {
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00116$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jp	NZ,00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:31: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:32: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-3 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	sub	a, -3 (ix)
	jr	NC, 00269$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00270$
00269$:
	ld	a, -3 (ix)
	sub	a, -2 (ix)
	jr	NC, 00271$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00272$
00271$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00272$:
00270$:
	ld	a, -3 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:33: i8 look_dy = (Ball->ly > SwSprite[i].ly) ? 1 : ((Ball->ly < SwSprite[i].ly) ? -1 : 0);
	ld	hl, #(_SwSprite + 322) + 4
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, -5 (ix)
	ld	-2 (ix), a
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
	sub	a, -8 (ix)
	ld	a, -2 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00273$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00274$
00273$:
	ld	a, -8 (ix)
	sub	a, -3 (ix)
	ld	a, -7 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00275$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00276$
00275$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00276$:
00274$:
	ld	a, -3 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:34: if (look_dx == 0 && look_dy == 0) look_dy = (i < 7) ? 1 : -1;
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00113$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00113$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00277$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00278$
00277$:
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
00278$:
	ld	a, -3 (ix)
	ld	-2 (ix), a
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:35: SwSprite[i].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, look_dx, look_dy);
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	de, #0x000f
	add	hl, de
	push	hl
	ld	h, -2 (ix)
	ld	l, -4 (ix)
	push	hl
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:36: return;
	jp	00265$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:39: struct ObjectInfo* Player = &SwSprite[i];
	ld	a, -6 (ix)
	ld	-28 (ix), a
	ld	a, -5 (ix)
	ld	-27 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:41: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00279$
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	jp	00280$
00279$:
	ld	-6 (ix), #0x01
	ld	-5 (ix), #0
00280$:
	ld	a, -6 (ix)
	ld	-26 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:42: bool is_gk = (i == 0 || i == 7);
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00282$
	ld	a, -1 (ix)
	sub	a, #0x07
	ld	c, #0x00
	jr	NZ, 00283$
00282$:
	ld	c, #0x01
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:32: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:49: if (is_gk) {
	ld	a, c
	or	a, a
	jp	Z, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:50: if (Ball->lx > Player->lx + 4) target_x = Player->lx + 2;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, -10 (ix)
	add	a, #0x04
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -6 (ix)
	sub	a, -8 (ix)
	ld	a, -5 (ix)
	sbc	a, -7 (ix)
	jp	PO, 01000$
	xor	a, #0x80
01000$:
	jp	P, 00122$
	ld	a, -10 (ix)
	add	a, #0x02
	ld	-3 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	jp	00123$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:51: else if (Ball->lx < Player->lx - 4) target_x = Player->lx - 2;
	ld	a, -10 (ix)
	add	a, #0xfc
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, #0xff
	ld	-5 (ix), a
	ld	a, -8 (ix)
	sub	a, -6 (ix)
	ld	a, -7 (ix)
	sbc	a, -5 (ix)
	jp	PO, 01001$
	xor	a, #0x80
01001$:
	jp	P, 00119$
	ld	a, -10 (ix)
	add	a, #0xfe
	ld	-3 (ix), a
	ld	a, -9 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	jp	00123$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:52: else target_x = Ball->lx;
	ld	a, -2 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:55: if (target_x < 104) target_x = 104;
	ld	a, -3 (ix)
	ld	b, -2 (ix)
	sub	a, #0x68
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00125$
	ld	-3 (ix), #0x68
	ld	-2 (ix), #0
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:56: if (target_x > 152) target_x = 152;
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	a, #0x98
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00127$
	ld	-3 (ix), #0x98
	ld	-2 (ix), #0
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:58: target_y = (team == TEAM_1) ? 32 : 452;
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00284$
	ld	-6 (ix), #0x20
	ld	-5 (ix), #0
	jp	00285$
00284$:
	ld	-6 (ix), #0xc4
	ld	-5 (ix), #0x01
00285$:
	ld	a, -6 (ix)
	ld	-9 (ix), a
	ld	a, -5 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:60: Player->dx = (target_x > Player->lx) ? 1 : ((target_x < Player->lx) ? -1 : 0);
	ld	a, -28 (ix)
	add	a, #0x11
	ld	-7 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -4 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00286$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00287$
00286$:
	ld	a, -3 (ix)
	sub	a, -5 (ix)
	ld	a, -2 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00288$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00289$
00288$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00289$:
00287$:
	ld	a, -3 (ix)
	ld	-2 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:61: Player->dy = 0;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:63: Player->lx += Player->dx;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	add	a, -2 (ix)
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:64: Player->ly = target_y; // Forza la Y corretta
	ld	a, -28 (ix)
	add	a, #0x04
	ld	-4 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:66: Player->anim++;
	ld	a, -28 (ix)
	add	a, #0x13
	ld	-8 (ix), a
	ld	a, -27 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:68: if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
	ld	a, -28 (ix)
	add	a, #0x0f
	ld	-4 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:67: if (Player->dx != 0) {
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00132$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:66: Player->anim++;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:68: if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
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
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00129$
	ld	a, -5 (ix)
	or	a, -6 (ix)
	jr	NZ, 00290$
	ld	-6 (ix), #0xf3
	ld	-5 (ix), #0
	jp	00291$
00290$:
	ld	-6 (ix), #0xf4
	ld	-5 (ix), #0
00291$:
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
	jp	00265$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:69: else                Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_NORTH_1 : SPR_GK_PLAYER_NORTH_2;
	ld	a, -5 (ix)
	or	a, -6 (ix)
	jr	NZ, 00292$
	ld	-6 (ix), #0xf2
	ld	-5 (ix), #0
	jp	00293$
00292$:
	ld	-6 (ix), #0xf5
	ld	-5 (ix), #0
00293$:
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00265$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:71: Player->frame = (team == TEAM_1) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00294$
	ld	-6 (ix), #0xd5
	ld	-5 (ix), #0
	jp	00295$
00294$:
	ld	-6 (ix), #0xd6
	ld	-5 (ix), #0
00295$:
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:73: return;
	jp	00265$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:78: u8 role = (team == TEAM_1) ? i : (i - 7); // 1,2: Dif, 3,4: Cen, 5,6: Att
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00296$
	ld	e, -1 (ix)
	jp	00297$
00296$:
	ld	a, -1 (ix)
	ld	-5 (ix), a
	add	a, #0xf9
	ld	e, a
00297$:
	ld	-5 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:80: u16 base_x = 128;
	ld	-12 (ix), #0x80
	ld	-11 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:81: u16 base_y = 256;
	ld	-10 (ix), #0x00
	ld	-9 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:84: if (role == 1) { base_x = 64;  base_y = (team == TEAM_1) ? 120 : 392; } // Difensore sx
	ld	a, -5 (ix)
	dec	a
	jr	NZ, 00151$
	ld	-12 (ix), #0x40
	ld	-11 (ix), #0
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00298$
	ld	-6 (ix), #0x78
	ld	-5 (ix), #0
	jp	00299$
00298$:
	ld	-6 (ix), #0x88
	ld	-5 (ix), #0x01
00299$:
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	jp	00152$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:85: else if (role == 2) { base_x = 192; base_y = (team == TEAM_1) ? 120 : 392; } // Difensore dx
	ld	a, -5 (ix)
	sub	a, #0x02
	jr	NZ, 00148$
	ld	-12 (ix), #0xc0
	ld	-11 (ix), #0
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00300$
	ld	-6 (ix), #0x78
	ld	-5 (ix), #0
	jp	00301$
00300$:
	ld	-6 (ix), #0x88
	ld	-5 (ix), #0x01
00301$:
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	jp	00152$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:86: else if (role == 3) { base_x = 64;  base_y = (team == TEAM_1) ? 200 : 312; } // Centro sx
	ld	a, -5 (ix)
	sub	a, #0x03
	jr	NZ, 00145$
	ld	-12 (ix), #0x40
	ld	-11 (ix), #0
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00302$
	ld	-6 (ix), #0xc8
	ld	-5 (ix), #0
	jp	00303$
00302$:
	ld	-6 (ix), #0x38
	ld	-5 (ix), #0x01
00303$:
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	jp	00152$
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:87: else if (role == 4) { base_x = 192; base_y = (team == TEAM_1) ? 200 : 312; } // Centro dx
	ld	a, -5 (ix)
	sub	a, #0x04
	jr	NZ, 00142$
	ld	-12 (ix), #0xc0
	ld	-11 (ix), #0
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00304$
	ld	-6 (ix), #0xc8
	ld	-5 (ix), #0
	jp	00305$
00304$:
	ld	-6 (ix), #0x38
	ld	-5 (ix), #0x01
00305$:
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	jp	00152$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:88: else if (role == 5) { base_x = 80;  base_y = (team == TEAM_1) ? 280 : 232; } // Attaccante sx
	ld	a, -5 (ix)
	sub	a, #0x05
	jr	NZ, 00139$
	ld	-12 (ix), #0x50
	ld	-11 (ix), #0
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00306$
	ld	-6 (ix), #0x18
	ld	-5 (ix), #0x01
	jp	00307$
00306$:
	ld	-6 (ix), #0xe8
	ld	-5 (ix), #0
00307$:
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	jp	00152$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:89: else if (role == 6) { base_x = 176; base_y = (team == TEAM_1) ? 280 : 232; } // Attaccante dx
	ld	a, -5 (ix)
	sub	a, #0x06
	jr	NZ, 00152$
	ld	-12 (ix), #0xb0
	ld	-11 (ix), #0
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00308$
	ld	-6 (ix), #0x18
	ld	-5 (ix), #0x01
	jp	00309$
00308$:
	ld	-6 (ix), #0xe8
	ld	-5 (ix), #0
00309$:
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:92: i16 ball_offset_x = (i16)Ball->lx - 128;
	ld	a, -2 (ix)
	ld	-16 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	add	a, #0x80
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #0xff
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:93: i16 ball_offset_y = (i16)Ball->ly - 256;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-15 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	ld	-8 (ix), a
	ld	a, -14 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-18 (ix), a
	ld	a, -7 (ix)
	ld	-17 (ix), a
	ld	a, -18 (ix)
	add	a, #0x00
	ld	-8 (ix), a
	ld	a, -17 (ix)
	adc	a, #0xff
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:95: target_x = base_x + (ball_offset_x / 2);
	ld	a, -6 (ix)
	ld	-18 (ix), a
	ld	a, -5 (ix)
	ld	-17 (ix), a
	ld	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -17 (ix)
	ld	-5 (ix), a
	bit	7, -17 (ix)
	jr	Z, 00310$
	ld	a, -18 (ix)
	add	a, #0x01
	ld	-6 (ix), a
	ld	a, -17 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
00310$:
	sra	-5 (ix)
	rr	-6 (ix)
	ld	a, -12 (ix)
	ld	-18 (ix), a
	ld	a, -11 (ix)
	ld	-17 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
	ld	a, -5 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	add	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -11 (ix)
	adc	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-25 (ix), a
	ld	a, -5 (ix)
	ld	-24 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:96: target_y = base_y + (ball_offset_y / 3);
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	de, #0x0003
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	-23 (ix), l
	ld	-22 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:99: if (LastTouchTeam == team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -26 (ix)
	jr	NZ, 00169$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:100: target_y += (team == TEAM_1) ? 40 : -40; // Fase offensiva
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00311$
	ld	-6 (ix), #0x28
	ld	-5 (ix), #0
	jp	00312$
00311$:
	ld	-6 (ix), #0xd8
	ld	-5 (ix), #0xff
00312$:
	ld	a, -23 (ix)
	ld	-8 (ix), a
	ld	a, -22 (ix)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	add	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-23 (ix), a
	ld	a, -5 (ix)
	ld	-22 (ix), a
	jp	00170$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:101: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	jp	Z,00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:102: target_y += (team == TEAM_1) ? -24 : 24; // Fase difensiva (ripiegamento controllato)
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00313$
	ld	-6 (ix), #0xe8
	ld	-5 (ix), #0xff
	jp	00314$
00313$:
	ld	-6 (ix), #0x18
	ld	-5 (ix), #0
00314$:
	ld	a, -23 (ix)
	ld	-8 (ix), a
	ld	a, -22 (ix)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	add	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-23 (ix), a
	ld	a, -5 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:100: target_y += (team == TEAM_1) ? 40 : -40; // Fase offensiva
	ld	a, -23 (ix)
	ld	-8 (ix), a
	ld	a, -22 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:107: if (target_y < 72 && Ball->ly > 72) target_y = 72;
	ld	a, -15 (ix)
	ld	-6 (ix), a
	ld	a, -14 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:105: if (team == TEAM_1) {
	ld	a, -26 (ix)
	or	a, a
	jp	NZ, 00164$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:107: if (target_y < 72 && Ball->ly > 72) target_y = 72;
	ld	a, -8 (ix)
	sub	a, #0x48
	ld	a, -7 (ix)
	sbc	a, #0x00
	jr	NC, 00154$
	ld	a, #0x48
	cp	a, -6 (ix)
	ld	a, #0x00
	sbc	a, -5 (ix)
	jr	NC, 00154$
	ld	-23 (ix), #0x48
	ld	-22 (ix), #0
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:109: if (Ball->ly < 256) {
	ld	a, -5 (ix)
	sub	a, #0x01
	jp	NC, 00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:110: target_y = (target_y + Ball->ly - 16) / 2;
	ld	a, -15 (ix)
	add	a, -23 (ix)
	ld	-6 (ix), a
	ld	a, -14 (ix)
	adc	a, -22 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	add	a, #0xf0
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #0xff
	ld	-5 (ix), a
	srl	-5 (ix)
	rr	-6 (ix)
	ld	a, -6 (ix)
	ld	-23 (ix), a
	ld	a, -5 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:111: target_x = (target_x + Ball->lx) / 2;
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -25 (ix)
	ld	-8 (ix), a
	ld	a, -24 (ix)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	adc	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
	srl	-5 (ix)
	rr	-6 (ix)
	ld	a, -6 (ix)
	ld	-25 (ix), a
	ld	a, -5 (ix)
	ld	-24 (ix), a
	jp	00170$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:115: if (target_y > 440 && Ball->ly < 440) target_y = 440;
	ld	a, #0xb8
	cp	a, -8 (ix)
	ld	a, #0x01
	sbc	a, -7 (ix)
	jr	NC, 00159$
	ld	a, -6 (ix)
	sub	a, #0xb8
	ld	a, -5 (ix)
	sbc	a, #0x01
	jr	NC, 00159$
	ld	-23 (ix), #0xb8
	ld	-22 (ix), #0x01
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:117: if (Ball->ly > 256) {
	xor	a, a
	cp	a, -6 (ix)
	ld	a, #0x01
	sbc	a, -5 (ix)
	jp	NC, 00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:118: target_y = (target_y + Ball->ly + 16) / 2;
	ld	a, -15 (ix)
	add	a, -23 (ix)
	ld	-6 (ix), a
	ld	a, -14 (ix)
	adc	a, -22 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	add	a, #0x10
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	srl	-5 (ix)
	rr	-6 (ix)
	ld	a, -6 (ix)
	ld	-23 (ix), a
	ld	a, -5 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:119: target_x = (target_x + Ball->lx) / 2;
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -25 (ix)
	ld	-8 (ix), a
	ld	a, -24 (ix)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	adc	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
	srl	-5 (ix)
	rr	-6 (ix)
	ld	a, -6 (ix)
	ld	-25 (ix), a
	ld	a, -5 (ix)
	ld	-24 (ix), a
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:125: bool is_cpu_team = (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1);
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00315$
	ld	a, -26 (ix)
	or	a, a
	jr	Z, 00316$
00315$:
	xor	a, a
	jp	00317$
00316$:
	ld	a, #0x01
00317$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:127: if (is_cpu_team) {
	or	a, a
	jp	Z, 00226$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:129: u8 closest_cpu = 0xFF;
	ld	-13 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:130: u16 min_dist = 0xFFFF;
	ld	-12 (ix), #0xff
	ld	-11 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:134: for (u8 j = start_cpu; j < end_cpu; j++) {
	ld	-2 (ix), #0x01
00263$:
	ld	a, -2 (ix)
	sub	a, #0x07
	jp	NC, 00173$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:135: u16 dx = (SwSprite[j].lx > Ball->lx) ? (SwSprite[j].lx - Ball->lx) : (Ball->lx - SwSprite[j].lx);
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
	ld	de, #_SwSprite
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	l, (hl)
;	spillPairReg hl
	ld	c, l
	ld	b, #0x00
	ld	e, -16 (ix)
	ld	d, #0x00
	ld	a, -16 (ix)
	sub	a, l
	jr	NC, 00318$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	jp	00319$
00318$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
00319$:
	ld	-10 (ix), c
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:136: u16 dy = (SwSprite[j].ly > Ball->ly) ? (SwSprite[j].ly - Ball->ly) : (Ball->ly - SwSprite[j].ly);
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -15 (ix)
	sub	a, -8 (ix)
	ld	a, -14 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00320$
	ld	a, -8 (ix)
	sub	a, -15 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sbc	a, -14 (ix)
	ld	-5 (ix), a
	jp	00321$
00320$:
	ld	a, -15 (ix)
	sub	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -14 (ix)
	sbc	a, -7 (ix)
	ld	-5 (ix), a
00321$:
	ld	a, -6 (ix)
	ld	b, -5 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:137: if (dx + dy < min_dist) {
	add	a, -10 (ix)
	ld	c, a
	ld	a, b
	adc	a, -9 (ix)
	ld	b, a
	ld	a, c
	sub	a, -12 (ix)
	ld	a, b
	sbc	a, -11 (ix)
	jr	NC, 00264$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:138: min_dist = dx + dy;
	ld	-12 (ix), c
	ld	-11 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:139: closest_cpu = j;
	ld	a, -2 (ix)
	ld	-13 (ix), a
00264$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:134: for (u8 j = start_cpu; j < end_cpu; j++) {
	inc	-2 (ix)
	jp	00263$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:143: if (i == closest_cpu) {
	ld	a, -1 (ix)
	sub	a, -13 (ix)
	jp	NZ,00226$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:144: if (LastTouchTeam != team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -26 (ix)
	jr	Z, 00221$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:146: target_x = Ball->lx;
	ld	a, -16 (ix)
	ld	-25 (ix), a
	ld	-24 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:147: target_y = Ball->ly;
	ld	a, -15 (ix)
	ld	c, -14 (ix)
	ld	-23 (ix), a
	ld	-22 (ix), c
	jp	00226$
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:150: if (min_dist <= 24) {
	ld	c, -12 (ix)
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, l
	jp	C, 00218$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:152: target_x = 128; 
	ld	-25 (ix), #0x80
	ld	-24 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:153: target_y = 480; 
	ld	-23 (ix), #0xe0
	ld	-22 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:64: Player->ly = target_y; // Forza la Y corretta
	ld	a, -28 (ix)
	add	a, #0x04
	ld	-21 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:156: if (min_dist <= 12 && Ball->anim == 0) {
	ld	a, #0x0c
	cp	a, c
	ld	a, #0x00
	sbc	a, l
	jp	C, 00202$
	ld	a, -3 (ix)
	or	a, -4 (ix)
	jp	NZ, 00202$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:157: bool passed = FALSE;
	ld	-19 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:160: if (Frms % 16 == 0) {
	ld	a, (_Frms+0)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -9 (ix)
	and	a, #0x0f
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:60: Player->dx = (target_x > Player->lx) ? 1 : ((target_x < Player->lx) ? -1 : 0);
	ld	a, -28 (ix)
	add	a, #0x11
	ld	-18 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:61: Player->dy = 0;
	ld	a, -28 (ix)
	add	a, #0x12
	ld	-16 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:160: if (Frms % 16 == 0) {
	ld	a, -2 (ix)
	or	a, -3 (ix)
	jp	NZ, 00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:161: u8 rand_pass = (Player->lx * 5 + Player->ly * 3 + Frms) % 100;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	adc	a, -2 (ix)
	ld	-6 (ix), a
	ld	de, #0x0064
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__moduint
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:162: if (rand_pass < 5) { // Probabilità simulata fissa al 5% per spingerla a dribblare
	sub	a, #0x05
	jp	NC, 00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:163: u8 receiver = FindReceiver(i, 0xFF, Player->dx, Player->dy);
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	b, (hl)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:164: if (receiver != 0xFF) {
	ld	-14 (ix), e
	ld	a, e
	inc	a
	jp	Z,00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:165: u16 r_dx = (SwSprite[receiver].lx > Player->lx) ? (SwSprite[receiver].lx - Player->lx) : (Player->lx - SwSprite[receiver].lx);
	ld	c, -14 (ix)
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -3 (ix)
	ld	-13 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -2 (ix)
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -2 (ix)
	sub	a, -3 (ix)
	jr	NC, 00322$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	jp	00323$
00322$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
00323$:
	ld	a, -3 (ix)
	ld	-11 (ix), a
	ld	a, -2 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:166: u16 r_dy = (SwSprite[receiver].ly > Player->ly) ? (SwSprite[receiver].ly - Player->ly) : (Player->ly - SwSprite[receiver].ly);
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
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00324$
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
	jp	00325$
00324$:
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
00325$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:169: if (r_dx + r_dy >= 48) {
	ld	a, -11 (ix)
	add	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -10 (ix)
	adc	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, #0x30
	ld	a, -2 (ix)
	sbc	a, #0x00
	jp	C, 00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:170: g_pass_receiver = receiver;
	ld	a, -14 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:171: g_pass_start_x = Player->lx;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:172: g_pass_start_y = Player->ly;
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:173: g_pass_target_x = SwSprite[receiver].lx;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	(_g_pass_target_x+0), a
	ld	hl, #_g_pass_target_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:174: g_pass_target_y = SwSprite[receiver].ly;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:176: g_pass_max_frames = (r_dx + r_dy) / 5; // Velocità di volo passaggi
	ld	de, #0x0005
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	a, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:177: if (g_pass_max_frames < 8) g_pass_max_frames = 8;
	ld	(_g_pass_max_frames+0), a
	sub	a, #0x08
	jr	NC, 00175$
	ld	hl, #_g_pass_max_frames
	ld	(hl), #0x08
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:178: if (g_pass_max_frames > 34) g_pass_max_frames = 34;
	ld	a, #0x22
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00177$
	ld	0 (iy), #0x22
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:179: g_pass_max_height = 7;
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:181: Ball->lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:182: Ball->ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:183: Ball->anim = 5; 
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:184: Ball->count = 0;
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:185: Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:187: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:188: LastTouchTeam = team;
	ld	a, -26 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:189: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:190: passed = TRUE;
	ld	-19 (ix), #0x01
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:197: if (!passed) {
	ld	a, -19 (ix)
	or	a, a
	jp	NZ, 00202$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:198: Ball->dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	xor	a, a
	sub	a, -2 (ix)
	jp	PO, 01021$
	xor	a, #0x80
01021$:
	jp	P, 00326$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00327$
00326$:
	bit	7, -2 (ix)
	jr	Z, 00328$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00329$
00328$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00329$:
00327$:
	ld	a, -3 (ix)
	ld	(#(_SwSprite + 339)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:199: Ball->dy = (Player->dy > 0) ? 1 : ((Player->dy < 0) ? -1 : 0);
	ld	de, #(_SwSprite + 322) + 18
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01022$
	xor	a, #0x80
01022$:
	jp	P, 00330$
	ld	bc, #0x0001
	jp	00331$
00330$:
	bit	7, c
	jr	Z, 00332$
	ld	bc, #0xffff
	jp	00333$
00332$:
	ld	bc, #0x0000
00333$:
00331$:
	ld	a, c
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:200: if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
	ld	a, (#(_SwSprite + 339) + 0)
	or	a, a
	jr	NZ, 00187$
	ld	a, (de)
	or	a, a
	jr	NZ, 00187$
	ld	a, #0x01
	ld	(de), a
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:202: i8 off_x = 0; i8 off_y = 6;
	ld	bc, #0x600
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:200: if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
	ld	hl, #(_SwSprite + 339)
	ld	l, (hl)
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:203: if (Ball->dx > 0) off_x = 9; else if (Ball->dx < 0) off_x = -9;
	xor	a, a
	sub	a, l
	jp	PO, 01023$
	xor	a, #0x80
01023$:
	jp	P, 00192$
	ld	c, #0x09
	jp	00193$
00192$:
	bit	7, l
	jr	Z, 00193$
	ld	c, #0xf7
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:200: if (Ball->dx == 0 && Ball->dy == 0) Ball->dy = 1; // Avanza verso Sud
	ld	a, (de)
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:204: if (Ball->dy > 0) off_y = 8; else if (Ball->dy < 0) off_y = -3; 
	xor	a, a
	sub	a, e
	jp	PO, 01024$
	xor	a, #0x80
01024$:
	jp	P, 00197$
	ld	b, #0x08
	jp	00198$
00197$:
	bit	7, e
	jr	Z, 00198$
	ld	b, #0xfd
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:206: Ball->lx = (u8)(Player->lx + off_x);
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	add	a, c
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:207: Ball->ly = (Player->ly + off_y) & 511;
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, b
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
	ld	((_SwSprite + 326)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:208: Ball->anim = 3; // Dribbling medio-corto
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:209: Ball->count = 0; // Azzera volo per dribbling a terra
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:210: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:215: if (Player->ly > 380 && Ball->anim == 0) {
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0x7c
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jp	NC, 00226$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00226$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:216: Ball->dx = (Player->lx < 110) ? 1 : ((Player->lx > 146) ? -1 : 0);
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	sub	a, #0x6e
	jr	NC, 00334$
	ld	bc, #0x0001
	jp	00335$
00334$:
	ld	a, #0x92
	sub	a, -2 (ix)
	jr	NC, 00336$
	ld	bc, #0xffff
	jp	00337$
00336$:
	ld	bc, #0x0000
00337$:
00335$:
	ld	d, c
	ld	hl, #(_SwSprite + 339)
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:217: Ball->dy = 1;
	ld	bc, #(_SwSprite + 322) + 18
	ld	a, #0x01
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:219: i8 off_x = 0; i8 off_y = 6;
	ld	-2 (ix), #0x00
	ld	e, #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:220: if (Ball->dx > 0) off_x = 9; else if (Ball->dx < 0) off_x = -9;
	ld	hl, #(_SwSprite + 339)
	ld	l, (hl)
;	spillPairReg hl
	xor	a, a
	sub	a, d
	jp	PO, 01025$
	xor	a, #0x80
01025$:
	jp	P, 00207$
	ld	-2 (ix), #0x09
	jp	00208$
00207$:
	bit	7, l
	jr	Z, 00208$
	ld	-2 (ix), #0xf7
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:221: if (Ball->dy > 0) off_y = 8; else if (Ball->dy < 0) off_y = -3; 
	ld	a, (bc)
	ld	c, a
	xor	a, a
	sub	a, c
	jp	PO, 01026$
	xor	a, #0x80
01026$:
	jp	P, 00212$
	ld	e, #0x08
	jp	00213$
00212$:
	bit	7, c
	jr	Z, 00213$
	ld	e, #0xfd
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:223: Ball->lx = (u8)(Player->lx + off_x);
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	add	a, -2 (ix)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:224: Ball->ly = (Player->ly + off_y) & 511;
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	ex	de, hl
	add	hl, bc
	ex	de, hl
	ld	a, d
	and	a, #0x01
	ld	d, a
	ld	((_SwSprite + 326)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:225: Ball->anim = 8; // Tiro potente
	ld	hl, #0x0008
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:226: Ball->count = 0; // Azzera volo per tiro a terra
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:227: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:228: LastTouchTeam = 0xFF;
	ld	hl, #_LastTouchTeam
	ld	(hl), #0xff
	jp	00226$
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:232: target_x = Ball->lx;
	ld	a, -16 (ix)
	ld	-25 (ix), a
	ld	-24 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:233: target_y = Ball->ly;
	ld	a, -15 (ix)
	ld	c, -14 (ix)
	ld	-23 (ix), a
	ld	-22 (ix), c
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:64: Player->ly = target_y; // Forza la Y corretta
	ld	a, -28 (ix)
	add	a, #0x04
	ld	-12 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:241: if (LastTouchTeam != team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -26 (ix)
	jp	Z,00239$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:242: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:32: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:111: target_x = (target_x + Ball->lx) / 2;
	ld	-10 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:242: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -10 (ix)
	sub	a, -2 (ix)
	jr	NC, 00338$
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
	jp	00339$
00338$:
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
00339$:
	ld	a, -3 (ix)
	ld	-9 (ix), a
	ld	a, -2 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:243: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:93: i16 ball_offset_y = (i16)Ball->ly - 256;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:243: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00340$
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -6 (ix)
	ld	-2 (ix), a
	jp	00341$
00340$:
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
00341$:
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:245: if (b_dist_x < 32 && b_dist_y < 32) {
	ld	a, -9 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, #0x20
	ld	a, -2 (ix)
	sbc	a, #0x00
	jp	NC, 00239$
	ld	a, -5 (ix)
	ld	b, -4 (ix)
	sub	a, #0x20
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00239$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:246: target_x = Ball->lx;
	ld	a, -10 (ix)
	ld	-25 (ix), a
	ld	-24 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:247: target_y = Ball->ly;
	ld	a, -7 (ix)
	ld	-23 (ix), a
	ld	a, -6 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:250: u8 steal_dist = (LastTouchTeam == 0xFF) ? 24 : 8;
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00342$
	ld	-3 (ix), #0x18
	xor	a, a
	ld	-2 (ix), a
	jp	00343$
00342$:
	ld	-3 (ix), #0x08
	xor	a, a
	ld	-2 (ix), a
00343$:
	ld	c, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:251: if (Ball->anim >= 6) steal_dist = 8; // I tiri potenti sfuggono più facilmente al tackle
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	de, #0x0006
	cp	a, a
	sbc	hl, de
	jr	C, 00228$
	ld	c, #0x08
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:252: if (b_dist_x <= steal_dist && b_dist_y <= steal_dist && Ball->count == 0) {
	ld	b, #0x00
	ld	a, c
	sub	a, -9 (ix)
	ld	a, b
	sbc	a, -8 (ix)
	jr	C, 00239$
	ld	a, c
	sub	a, -5 (ix)
	ld	a, b
	sbc	a, -4 (ix)
	jr	C, 00239$
	ld	hl, (#(_SwSprite + 322) + 21)
	ld	a, h
	or	a, l
	jr	NZ, 00239$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:253: LastTouchTeam = team;
	ld	a, -26 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:254: LastTouchPlayer = i; // Protezione dal fischio di fuorigioco
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:255: if (Ball->anim > 3) Ball->anim = 3; // L'AI stoppa la palla
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00239$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00239$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:261: if (target_x < 16) target_x = 16; 
	ld	a, -25 (ix)
	ld	b, -24 (ix)
	sub	a, #0x10
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00241$
	ld	-25 (ix), #0x10
	ld	-24 (ix), #0
00241$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:262: if (target_x > 240) target_x = 240;
	ld	c, -25 (ix)
	ld	b, -24 (ix)
	ld	a, #0xf0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00243$
	ld	-25 (ix), #0xf0
	ld	-24 (ix), #0
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:263: if (target_y < 24) target_y = 24;
	ld	a, -23 (ix)
	ld	b, -22 (ix)
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00245$
	ld	-23 (ix), #0x18
	ld	-22 (ix), #0
00245$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:264: if (target_y > 478) target_y = 478;
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	a, #0xde
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00247$
	ld	-23 (ix), #0xde
	ld	-22 (ix), #0x01
00247$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:268: u16 dist_x = (target_x > Player->lx) ? (target_x - Player->lx) : (Player->lx - target_x);
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	c, a
	ld	b, #0x00
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, c
	sub	a, -25 (ix)
	ld	a, b
	sbc	a, -24 (ix)
	jr	NC, 00344$
	ld	a, -25 (ix)
	ld	-7 (ix), a
	ld	a, -24 (ix)
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
	jp	00345$
00344$:
	ld	a, -3 (ix)
	ld	c, -2 (ix)
	sub	a, -25 (ix)
	ld	-3 (ix), a
	ld	a, c
	sbc	a, -24 (ix)
	ld	-2 (ix), a
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:269: u16 dist_y = (target_y > Player->ly) ? (target_y - Player->ly) : (Player->ly - target_y);
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, -23 (ix)
	ld	a, -4 (ix)
	sbc	a, -22 (ix)
	jr	NC, 00346$
	ld	a, -23 (ix)
	sub	a, -5 (ix)
	ld	c, a
	ld	a, -22 (ix)
	sbc	a, -4 (ix)
	ld	b, a
	jp	00347$
00346$:
	ld	a, -5 (ix)
	sub	a, -23 (ix)
	ld	c, a
	ld	a, -4 (ix)
	sbc	a, -22 (ix)
	ld	b, a
00347$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:272: u8 speed = 1;
	ld	e, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:273: if (dist_x > 24 || dist_y > 24) speed = 2;
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, d
	ld	a, #0x00
	sbc	a, l
	jr	C, 00248$
	ld	d, c
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x18
	cp	a, d
	ld	a, #0x00
	sbc	a, l
	jr	NC, 00249$
00248$:
	ld	e, #0x02
00249$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:275: Player->dx = 0; Player->dy = 0;
	ld	a, -28 (ix)
	add	a, #0x11
	ld	-9 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x00
	ld	a, -28 (ix)
	add	a, #0x12
	ld	-7 (ix), a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:277: if (dist_x > speed) Player->dx = (target_x > Player->lx) ? speed : -speed;
	ld	-5 (ix), e
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00252$
	ld	a, -9 (ix)
	ld	-3 (ix), a
	ld	a, -8 (ix)
	ld	-2 (ix), a
	ld	l, -28 (ix)
	ld	h, -27 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl)
	ld	l, #0x00
	sub	a, -25 (ix)
	ld	a, l
	sbc	a, -24 (ix)
	jr	NC, 00348$
	ld	a, e
	jp	00349$
00348$:
	xor	a, a
	sub	a, e
00349$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00252$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:278: if (dist_y > speed) Player->dy = (target_y > Player->ly) ? speed : -speed;
	ld	a, -5 (ix)
	sub	a, c
	ld	a, -4 (ix)
	sbc	a, b
	jr	NC, 00254$
	ld	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -23 (ix)
	ld	a, b
	sbc	a, -22 (ix)
	jr	NC, 00350$
	ld	a, e
	jp	00351$
00350$:
	xor	a, a
	sub	a, e
00351$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:280: if (Player->dx != 0 || Player->dy != 0) {
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:68: if (team == TEAM_1) Player->frame = ((Player->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2;
	ld	a, -28 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -27 (ix)
	adc	a, #0x00
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:280: if (Player->dx != 0 || Player->dy != 0) {
	ld	a, e
	or	a, a
	jr	NZ, 00258$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00259$
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:281: ai_last_dx[i] = Player->dx;
	ld	a, #<(_ai_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_ai_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:282: ai_last_dy[i] = Player->dy;
	ld	a, #<(_ai_last_dy)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_ai_last_dy)
	adc	a, #0x00
	ld	d, a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:284: Player->lx += Player->dx;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	a, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	e, (hl)
	add	a, e
	ld	l, -28 (ix)
	ld	h, -27 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:285: Player->ly += Player->dy;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
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
	add	hl, de
	ex	de, hl
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:287: Player->anim++;
	ld	l, -28 (ix)
	ld	h, -27 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:288: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x02
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:289: Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
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
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
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
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00265$
00259$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:32: i8 look_dx = (Ball->lx > SwSprite[i].lx) ? 1 : ((Ball->lx < SwSprite[i].lx) ? -1 : 0);
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:292: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	l, -28 (ix)
	ld	h, -27 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:111: target_x = (target_x + Ball->lx) / 2;
	ld	-3 (ix), e
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:292: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	a, d
	sub	a, -3 (ix)
	ld	a, l
	sbc	a, -2 (ix)
	jp	PO, 01030$
	xor	a, #0x80
01030$:
	jp	P, 00352$
	ld	de, #0x0001
	jp	00353$
00352$:
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
	jp	PO, 01031$
	xor	a, #0x80
01031$:
	jp	P, 00354$
	ld	de, #0xffff
	jp	00355$
00354$:
	ld	de, #0x0000
00355$:
00353$:
	ld	-2 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:93: i16 ball_offset_y = (i16)Ball->ly - 256;
	ld	de, (#(_SwSprite + 326) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:293: i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
	ld	l, -12 (ix)
	ld	h, -11 (ix)
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
	jr	NC, 00356$
	ld	de, #0x0001
	jp	00357$
00356$:
	ld	de, #0xfffc
	add	hl, de
	ex	de,hl
	ld	a, -4 (ix)
	sub	a, e
	ld	a, -3 (ix)
	sbc	a, d
	jr	NC, 00358$
	ld	de, #0xffff
	jp	00359$
00358$:
	ld	de, #0x0000
00359$:
00357$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:294: if (dir_x == 0 && dir_y == 0) {
	ld	a, -2 (ix)
	or	a,a
	jr	NZ, 00256$
	or	a,e
	jr	NZ, 00256$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:295: dir_y = (team == TEAM_1) ? 1 : -1;
	ld	a, -26 (ix)
	or	a, a
	jr	NZ, 00360$
	ld	de, #0x0001
	jp	00361$
00360$:
	ld	de, #0xffff
00361$:
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:297: Player->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, i, dir_x, dir_y);
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
00265$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:299: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:302: u16 FindReceiver(u8 carrier, u8 ignore_player, i8 c_dx, i8 c_dy) 
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:304: u8 start_idx = (carrier < 7) ? 1 : 8; // Esclude i portieri
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:305: u8 end_idx = start_idx + 6;
	ld	-1 (ix), a
	ld	-5 (ix), a
	add	a, #0x06
	ld	-28 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:306: u8 best_match = 0xFF;
	ld	-27 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:307: u16 min_dist = 0xFFFF;
	ld	-26 (ix), #0xff
	ld	-25 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:309: if (c_dx == 0 && c_dy == 0) {
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00149$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00149$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:310: c_dy = (carrier < 7) ? 1 : -1;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:313: for (u8 i = start_idx; i < end_idx; i++) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:314: if (i == carrier || i == ignore_player) continue; 
	ld	a, -2 (ix)
	sub	a, -1 (ix)
	jp	Z,00121$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jp	Z,00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:316: u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:321: if (c_dx > 0 && SwSprite[i].lx < SwSprite[carrier].lx) continue; 
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:316: u16 dx = (SwSprite[i].lx > SwSprite[carrier].lx) ? (SwSprite[i].lx - SwSprite[carrier].lx) : (SwSprite[carrier].lx - SwSprite[i].lx);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:317: u16 dy = (SwSprite[i].ly > SwSprite[carrier].ly) ? (SwSprite[i].ly - SwSprite[carrier].ly) : (SwSprite[carrier].ly - SwSprite[i].ly);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:318: u16 dist = dx + dy; 
	ld	a, -14 (ix)
	add	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -13 (ix)
	adc	a, -6 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:321: if (c_dx > 0 && SwSprite[i].lx < SwSprite[carrier].lx) continue; 
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00108$
	ld	a, -15 (ix)
	sub	a, -16 (ix)
	jr	C, 00121$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:322: if (c_dx < 0 && SwSprite[i].lx > SwSprite[carrier].lx) continue; 
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00111$
	ld	a, -17 (ix)
	sub	a, -15 (ix)
	jr	C, 00121$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:324: if (c_dy > 0 && SwSprite[i].ly < SwSprite[carrier].ly) continue; 
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00114$
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	jr	C, 00121$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:325: if (c_dy < 0 && SwSprite[i].ly > SwSprite[carrier].ly) continue; 
	ld	a, -18 (ix)
	or	a, a
	jr	Z, 00117$
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00121$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:327: if (dist < min_dist) {
	ld	a, -5 (ix)
	sub	a, -26 (ix)
	ld	a, -4 (ix)
	sbc	a, -25 (ix)
	jr	NC, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:328: min_dist = dist;
	ld	a, -5 (ix)
	ld	-26 (ix), a
	ld	a, -4 (ix)
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:329: best_match = i;
	ld	a, -1 (ix)
	ld	-27 (ix), a
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:313: for (u8 i = start_idx; i < end_idx; i++) {
	inc	-1 (ix)
	jp	00124$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:333: return best_match;
	ld	e, -27 (ix)
	ld	d, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s6_b3.c:334: }
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
