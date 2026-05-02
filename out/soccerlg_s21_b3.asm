;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s21_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _EventBallKicked
	.globl _FindReceiver
	.globl _CallFnc_U16_P4B
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
	.globl _PlayerAI_Movement
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
	.area _SEG21
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:12: void PlayerAI_Movement(u8 i) 
;	---------------------------------
; Function PlayerAI_Movement
; ---------------------------------
_PlayerAI_Movement::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-35
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:14: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:15: struct ObjectInfo* Player = &SwSprite[i];
	ld	-1 (ix), a
	ld	c, a
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
	ld	-31 (ix), a
	ld	a, -2 (ix)
	ld	-30 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:16: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00419$
	ld	bc, #0x0000
	jp	00420$
00419$:
	ld	bc, #0x0001
00420$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:21: u8 role = (team == TEAM_1) ? i : (i - 7); // 1,2: Dif, 3,4: Cen, 5,6: Att
	ld	-29 (ix), c
	ld	a, c
	or	a, a
	jr	NZ, 00421$
	ld	a, -1 (ix)
	jp	00422$
00421$:
	ld	a, -1 (ix)
	add	a, #0xf9
00422$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:24: u8 closest_mate = (team == TEAM_1) ? g_closest_t1 : g_closest_t2;
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00423$
	ld	a, (_g_closest_t1+0)
	jp	00424$
00423$:
	ld	a, (_g_closest_t2+0)
00424$:
	ld	-28 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:27: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	e, (hl)
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-27 (ix), a
	ld	c, e
	ld	b, #0x00
	ld	a, -27 (ix)
	ld	-26 (ix), a
	ld	-25 (ix), #0x00
	ld	a, -27 (ix)
	sub	a, e
	jr	NC, 00425$
	ld	a, c
	sub	a, -26 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -25 (ix)
	jp	00426$
00425$:
	ld	a, -26 (ix)
	sub	a, c
	ld	c, a
	ld	a, -25 (ix)
	sbc	a, b
00426$:
	ld	-24 (ix), c
	ld	-23 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:28: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	a, -31 (ix)
	add	a, #0x04
	ld	-22 (ix), a
	ld	a, -30 (ix)
	adc	a, #0x00
	ld	-21 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-20 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-19 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-17 (ix), a
	ld	a, -18 (ix)
	sub	a, -20 (ix)
	ld	a, -17 (ix)
	sbc	a, -19 (ix)
	jr	NC, 00427$
	ld	a, -20 (ix)
	sub	a, -18 (ix)
	ld	e, a
	ld	a, -19 (ix)
	sbc	a, -17 (ix)
	jp	00428$
00427$:
	ld	a, -18 (ix)
	sub	a, -20 (ix)
	ld	e, a
	ld	a, -17 (ix)
	sbc	a, -19 (ix)
00428$:
	ld	-16 (ix), e
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:32: bool ball_free_nearby = (!g_is_ball_carried && b_dist_x <= 48 && b_dist_y <= 48);
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00429$
	ld	c, -24 (ix)
	ld	b, -23 (ix)
	ld	a, #0x30
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00429$
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, #0x30
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00430$
00429$:
	xor	a, a
	jp	00431$
00430$:
	ld	a, #0x01
00431$:
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:33: if (Ball->anim == 5 && LastTouchTeam == team) ball_free_nearby = FALSE; // Non disturbare i propri passaggi
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	a, -13 (ix)
	sub	a, #0x05
	or	a, -12 (ix)
	jr	NZ, 00102$
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	jr	NZ, 00102$
	ld	-14 (ix), #0x00
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:34: if (ball_free_nearby) {
	ld	a, -14 (ix)
	or	a, a
	jr	Z, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:35: target_x = Ball->lx;
	ld	a, -27 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:36: target_y = Ball->ly;
	ld	a, -18 (ix)
	ld	c, -17 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), c
	jp	00220$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:33: if (Ball->anim == 5 && LastTouchTeam == team) ball_free_nearby = FALSE; // Non disturbare i propri passaggi
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	ld	a, #0x01
	jr	Z, 01790$
	xor	a, a
01790$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:38: if (LastTouchTeam == team) {
	ld	-3 (ix), a
	or	a, a
	jp	Z, 00216$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:40: u8 run_dist = g_ActiveStats[team].aggro_attack * 10; 
	ld	bc, #_g_ActiveStats+0
	ld	e, -29 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:45: if (team == TEAM_1) {
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:46: offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	hl, #_SwSprite + 188
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	hl, #_SwSprite + 211
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, -8 (ix)
	ld	a, -4 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00435$
	ld	a, -8 (ix)
	ld	-5 (ix), a
	ld	a, -7 (ix)
	ld	-4 (ix), a
00435$:
	ld	a, -5 (ix)
	ld	-8 (ix), a
	ld	a, -4 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:47: if (offside_line < 256) offside_line = 256; // Il fuorigioco esiste solo nella metà campo offensiva
	ld	a, -8 (ix)
	ld	-5 (ix), a
	ld	a, -7 (ix)
	ld	-4 (ix), a
	sub	a, #0x01
	jr	NC, 00110$
	ld	-8 (ix), #0x00
	ld	-7 (ix), #0x01
	jp	00110$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:49: offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
	ld	bc, (#_SwSprite + 27)
	ld	de, (#_SwSprite + 50)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00437$
	ld	e, c
	ld	d, b
00437$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:50: if (offside_line > 256) offside_line = 256;
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	c, e
	ld	b, d
	xor	a, a
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00110$
	ld	-8 (ix), #0x00
	ld	-7 (ix), #0x01
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:53: if (role >= 5) { // Attaccanti (Ali)
	ld	a, -2 (ix)
	sub	a, #0x05
	jp	C, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:54: target_y = Ball->ly + ((team == TEAM_1) ? (60 + run_dist) : -(60 + run_dist));
	ld	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -3 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	add	a, #0x3c
	ld	-10 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00439$
	ld	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
	jp	00440$
00439$:
	xor	a, a
	sub	a, -10 (ix)
	ld	-4 (ix), a
	sbc	a, a
	sub	a, -9 (ix)
	ld	-3 (ix), a
00440$:
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, -9 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:56: if (role == 5) {
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:57: target_x = (Ball->lx > 180) ? 100 : 36; // Ala Sx (si accentra solo se palla a estrema dx)
	ld	a, #0xb4
	sub	a, -27 (ix)
	jr	NC, 00441$
	ld	-6 (ix), #0x64
	ld	-5 (ix), #0
	jp	00125$
00441$:
	ld	-6 (ix), #0x24
	ld	-5 (ix), #0
	jp	00125$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:59: target_x = (Ball->lx < 76) ? 156 : 220; // Ala Dx (si accentra solo se palla a estrema sx)
	ld	a, -27 (ix)
	sub	a, #0x4c
	jr	NC, 00443$
	ld	-6 (ix), #0x9c
	ld	-5 (ix), #0
	jp	00125$
00443$:
	ld	-6 (ix), #0xdc
	ld	-5 (ix), #0
	jp	00125$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:61: } else if (role >= 3) { // Centrocampisti a supporto
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:62: target_y = Ball->ly + ((team == TEAM_1) ? 24 : -24);
	ld	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00445$
	ld	-4 (ix), #0x18
	ld	-3 (ix), #0
	jp	00446$
00445$:
	ld	-4 (ix), #0xe8
	ld	-3 (ix), #0xff
00446$:
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, -9 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:63: target_x = (role == 3) ? 64 : 192; // Più larghi per coprire le fasce
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	NZ, 00447$
	ld	de, #0x0040
	jp	00448$
00447$:
	ld	de, #0x00c0
00448$:
	ld	-6 (ix), e
	ld	-5 (ix), d
	jp	00125$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:65: target_y = Ball->ly + ((team == TEAM_1) ? -64 : 64);
	ld	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00449$
	ld	-4 (ix), #0xc0
	ld	-3 (ix), #0xff
	jp	00450$
00449$:
	ld	-4 (ix), #0x40
	ld	-3 (ix), #0
00450$:
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:66: target_x = (role == 1) ? 80 : 144;
	ld	a, -2 (ix)
	dec	a
	jr	NZ, 00451$
	ld	bc, #0x0050
	jp	00452$
00451$:
	ld	bc, #0x0090
00452$:
	ld	-6 (ix), c
	ld	-5 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:68: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00115$
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, #0xc0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00115$
	ld	-4 (ix), #0xc0
	ld	-3 (ix), #0
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:69: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, -29 (ix)
	dec	a
	jr	NZ, 00125$
	ld	a, -4 (ix)
	ld	b, -3 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00125$
	ld	-4 (ix), #0x40
	ld	-3 (ix), #0x01
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:47: if (offside_line < 256) offside_line = 256; // Il fuorigioco esiste solo nella metà campo offensiva
	ld	c, -8 (ix)
	ld	b, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:75: u16 max_y = (role == 6 && (Secs % 5) == 0) ? offside_line + 16 : offside_line - 12;
	ld	a, -2 (ix)
	sub	a, #0x06
	ld	a, #0x01
	jr	Z, 01800$
	xor	a, a
01800$:
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:73: if (team == TEAM_1) {
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:75: u16 max_y = (role == 6 && (Secs % 5) == 0) ? offside_line + 16 : offside_line - 12;
	bit	0, -7 (ix)
	jr	Z, 00453$
	ld	a, (_Secs+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0005
	call	__modsint
	pop	bc
	ld	a, d
	or	a, e
	jr	NZ, 00453$
	ld	hl, #0x0010
	add	hl, bc
	jp	00454$
00453$:
	ld	a, c
	add	a, #0xf4
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
00454$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:76: if (target_y > max_y) target_y = max_y;
	ld	a, l
	sub	a, -4 (ix)
	ld	a, h
	sbc	a, -3 (ix)
	jr	NC, 00127$
	ld	-4 (ix), l
	ld	-3 (ix), h
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:77: if (target_y > 440) target_y = 440; // Evita di schiacciarsi sulla linea di fondo avversaria
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, #0xb8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00136$
	ld	-4 (ix), #0xb8
	ld	-3 (ix), #0x01
	jp	00136$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:80: u16 min_y = (role == 6 && (Secs % 5) == 0) ? offside_line - 16 : offside_line + 12;
	bit	0, -7 (ix)
	jr	Z, 00458$
	ld	a, (_Secs+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x0005
	call	__modsint
	pop	bc
	ld	a, d
	or	a, e
	jr	NZ, 00458$
	ld	a, c
	add	a, #0xf0
	ld	e, a
	ld	a, b
	adc	a, #0xff
	ld	d, a
	jp	00459$
00458$:
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
00459$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:81: if (target_y < min_y) target_y = min_y;
	ld	a, -4 (ix)
	sub	a, e
	ld	a, -3 (ix)
	sbc	a, d
	jr	NC, 00131$
	ld	-4 (ix), e
	ld	-3 (ix), d
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:82: if (target_y < 72) target_y = 72; // Evita di schiacciarsi sulla linea di fondo avversaria
	ld	a, -4 (ix)
	ld	b, -3 (ix)
	sub	a, #0x48
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00136$
	ld	-4 (ix), #0x48
	ld	-3 (ix), #0
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:86: if (LastTouchPlayer != 0xFF && LastTouchPlayer != i) {
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jp	Z,00141$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jp	Z,00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:87: u16 dist_c_x = (SwSprite[LastTouchPlayer].lx > target_x) ? (SwSprite[LastTouchPlayer].lx - target_x) : (target_x - SwSprite[LastTouchPlayer].lx);
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
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	e, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
	ld	d, h
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	a, -6 (ix)
	sub	a, l
	ld	a, -5 (ix)
	sbc	a, h
	jr	NC, 00463$
	ld	a, e
	sub	a, -6 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -5 (ix)
	jp	00464$
00463$:
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
00464$:
	ld	-8 (ix), e
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:88: u16 dist_c_y = (SwSprite[LastTouchPlayer].ly > target_y) ? (SwSprite[LastTouchPlayer].ly - target_y) : (target_y - SwSprite[LastTouchPlayer].ly);
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -4 (ix)
	sub	a, e
	ld	a, -3 (ix)
	sbc	a, d
	jr	NC, 00465$
	ld	a, e
	sub	a, -4 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -3 (ix)
	jp	00466$
00465$:
	ld	a, -4 (ix)
	sub	a, e
	ld	e, a
	ld	a, -3 (ix)
	sbc	a, d
00466$:
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:89: if (dist_c_x < 48 && dist_c_y < 48) {
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -8 (ix)
	ld	h, -7 (ix)
	sub	a, #0x30
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00141$
	ld	a, e
	sub	a, #0x30
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:90: target_x += (target_x > 112) ? 48 : -48;
	ld	a, #0x70
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00467$
	ld	hl, #0x0030
	jp	00468$
00467$:
	ld	hl, #0xffd0
00468$:
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:91: target_y += (team == TEAM_1) ? 32 : -32; 
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00469$
	ld	hl, #0x0020
	jp	00470$
00469$:
	ld	hl, #0xffe0
00470$:
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:96: u8 twin_role = (role % 2 == 1) ? role + 1 : role - 1;
	ld	a, -2 (ix)
	and	a, #0x01
	ld	b, a
	ld	e, #0x00
	ld	c, -2 (ix)
	ld	a, b
	dec	a
	or	a, e
	jr	NZ, 00471$
	inc	c
	jp	00472$
00471$:
	dec	c
00472$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:97: u8 twin_idx = (team == TEAM_1) ? twin_role : twin_role + 7;
	ld	a, -29 (ix)
	or	a, a
	jr	Z, 00474$
	ld	a, c
	add	a, #0x07
	ld	c, a
00474$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:98: if (twin_idx != LastTouchPlayer && twin_idx != i) {
	ld	a, (_LastTouchPlayer+0)
	sub	a, c
	jp	Z,00147$
	ld	a, -1 (ix)
	sub	a, c
	jp	Z,00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:99: u16 d_mx = (SwSprite[twin_idx].lx > target_x) ? (SwSprite[twin_idx].lx - target_x) : (target_x - SwSprite[twin_idx].lx);
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
	ld	e, (hl)
	ld	-10 (ix), e
	ld	-9 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:87: u16 dist_c_x = (SwSprite[LastTouchPlayer].lx > target_x) ? (SwSprite[LastTouchPlayer].lx - target_x) : (target_x - SwSprite[LastTouchPlayer].lx);
	ld	c, -6 (ix)
	ld	b, -5 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:99: u16 d_mx = (SwSprite[twin_idx].lx > target_x) ? (SwSprite[twin_idx].lx - target_x) : (target_x - SwSprite[twin_idx].lx);
	ld	d, #0x00
	ld	a, -6 (ix)
	sub	a, -10 (ix)
	ld	a, -5 (ix)
	sbc	a, -9 (ix)
	jr	NC, 00475$
	ld	a, e
	sub	a, -6 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -5 (ix)
	jp	00476$
00475$:
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
00476$:
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:100: u16 d_my = (SwSprite[twin_idx].ly > target_y) ? (SwSprite[twin_idx].ly - target_y) : (target_y - SwSprite[twin_idx].ly);
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
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
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -4 (ix)
	sub	a, l
	ld	a, -3 (ix)
	sbc	a, h
	jr	NC, 00477$
	ld	a, l
	sub	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, h
	sbc	a, -3 (ix)
	ld	-7 (ix), a
	jp	00478$
00477$:
	ld	a, -4 (ix)
	sub	a, l
	ld	-8 (ix), a
	ld	a, -3 (ix)
	sbc	a, h
	ld	-7 (ix), a
00478$:
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:101: if (d_mx < 40 && d_my < 40) {
	ld	a, e
	sub	a, #0x28
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00147$
	ld	de, #0x0028
	cp	a, a
	sbc	hl, de
	jr	NC, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:102: target_x += (target_x > SwSprite[twin_idx].lx) ? 24 : -24;
	ld	a, -10 (ix)
	sub	a, -6 (ix)
	ld	a, -9 (ix)
	sbc	a, -5 (ix)
	jr	NC, 00479$
	ld	hl, #0x0018
	jp	00480$
00479$:
	ld	hl, #0xffe8
00480$:
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:107: if (target_x < 36) target_x = 36;
	ld	a, -6 (ix)
	ld	b, -5 (ix)
	sub	a, #0x24
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00150$
	ld	-6 (ix), #0x24
	ld	-5 (ix), #0
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:108: if (target_x > 204) target_x = 204;
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	a, #0xcc
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	NC, 00220$
	ld	-6 (ix), #0xcc
	ld	-5 (ix), #0
	jp	00220$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:109: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	jp	Z,00213$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:111: if (role >= 5) { // Attaccanti alti
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	C, 00194$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:112: target_y = Ball->ly + ((team == TEAM_1) ? -40 : 40);
	ld	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00481$
	ld	-4 (ix), #0xd8
	ld	-3 (ix), #0xff
	jp	00482$
00481$:
	ld	-4 (ix), #0x28
	ld	-3 (ix), #0
00482$:
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, -7 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:113: target_x = (role == 5) ? 80 : 144;
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	NZ, 00483$
	ld	bc, #0x0050
	jp	00484$
00483$:
	ld	bc, #0x0090
00484$:
	ld	-6 (ix), c
	ld	-5 (ix), b
	jp	00195$
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:114: } else if (role >= 3) { // Centrocampisti chiudono il centro
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00191$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:115: target_y = Ball->ly + ((team == TEAM_1) ? 32 : -32);
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00485$
	ld	hl, #0x0020
	jp	00486$
00485$:
	ld	hl, #0xffe0
00486$:
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:116: target_x = Ball->lx + ((role == 3) ? -32 : 32);
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	NZ, 00487$
	ld	-6 (ix), #0xe0
	ld	-5 (ix), #0xff
	jp	00488$
00487$:
	ld	-6 (ix), #0x20
	ld	-5 (ix), #0
00488$:
	ld	a, -26 (ix)
	add	a, -6 (ix)
	ld	c, a
	ld	a, -25 (ix)
	adc	a, -5 (ix)
	ld	-6 (ix), c
	ld	-5 (ix), a
	jp	00195$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:120: bool ball_in_own_area = (team == TEAM_1) ? (Ball->ly < 140) : (Ball->ly > 372);
	ld	a, -18 (ix)
	ld	-6 (ix), a
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00489$
	ld	a, -6 (ix)
	sub	a, #0x8c
	ld	a, -5 (ix)
	sbc	a, #0x00
	ld	a, #0x00
	rla
	ld	-4 (ix), a
	jp	00490$
00489$:
	ld	a, #0x74
	cp	a, -6 (ix)
	ld	a, #0x01
	sbc	a, -5 (ix)
	ld	a, #0x00
	rla
	ld	-4 (ix), a
00490$:
	ld	a, -4 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:121: bool side_presses = (role == 1) ? (Ball->lx < 128) : (Ball->lx >= 128);
	ld	a, -2 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01813$
	xor	a, a
01813$:
	ld	-10 (ix), a
	ld	a, -27 (ix)
	sub	a, #0x80
	ld	a, #0x00
	rla
	ld	-2 (ix), a
	ld	a, -10 (ix)
	or	a, a
	jr	NZ, 00492$
	ld	a, -2 (ix)
	xor	a, #0x01
	ld	-2 (ix), a
00492$:
	ld	a, -2 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:124: bool carrier_is_threat = FALSE;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:125: if (g_is_ball_carried && LastTouchTeam != team && LastTouchPlayer != 0xFF) {
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00163$
	bit	0, -3 (ix)
	jp	NZ, 00163$
	ld	a, (_LastTouchPlayer+0)
	inc	a
	jp	Z,00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:126: struct ObjectInfo* carrier = &SwSprite[LastTouchPlayer];
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
	ld	-4 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -7 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:128: if (team == TEAM_1 && carrier->dy < 0 && Ball->ly < 256) { // Team 1 difende Nord (Y<256), attaccante va verso Y basso
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00158$
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0012
	add	hl, de
	bit	7, (hl)
	jr	Z, 00158$
	ld	a, -5 (ix)
	sub	a, #0x01
	jr	NC, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:129: carrier_is_threat = TRUE;
	ld	-2 (ix), #0x01
	jp	00163$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:130: } else if (team == TEAM_2 && carrier->dy > 0 && Ball->ly > 256) { // Team 2 difende Sud (Y>256), attaccante va verso Y alto
	ld	a, -29 (ix)
	dec	a
	jr	NZ, 00163$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01817$
	xor	a, #0x80
01817$:
	jp	P, 00163$
	xor	a, a
	cp	a, -6 (ix)
	ld	a, #0x01
	sbc	a, -5 (ix)
	jr	NC, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:131: carrier_is_threat = TRUE;
	ld	-2 (ix), #0x01
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:136: u8 press_chance = g_ActiveStats[team].aggro_defense * 15; // da 15% (stat 1) a 75% (stat 5)
	ld	c, -29 (ix)
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
	ld	-4 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:137: if (carrier_is_threat && i != closest_mate && (Frms + i*5) % 100 < press_chance) {
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00186$
	ld	a, -1 (ix)
	sub	a, -28 (ix)
	jr	Z, 00186$
	ld	a, (_Frms+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
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
	ld	c, -8 (ix)
	ld	b, #0x00
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 01819$
	xor	a, #0x80
01819$:
	jp	P, 00186$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:138: target_x = Ball->lx;
	ld	a, -27 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:139: target_y = Ball->ly;
	ld	a, -18 (ix)
	ld	c, -17 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), c
	jp	00195$
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:140: } else if (ball_in_own_area && side_presses) {
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00182$
	ld	a, -9 (ix)
	or	a, a
	jr	Z, 00182$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:142: target_x = Ball->lx;
	ld	a, -27 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:143: target_y = Ball->ly;
	ld	a, -18 (ix)
	ld	c, -17 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), c
	jp	00195$
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:144: } else if (ball_in_own_area) {
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00179$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:146: target_x = (role == 1) ? 80 : 144;
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00493$
	ld	bc, #0x0050
	jp	00494$
00493$:
	ld	bc, #0x0090
00494$:
	ld	-6 (ix), c
	ld	-5 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:147: target_y = (team == TEAM_1) ? 88 : 424;
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00495$
	ld	bc, #0x0058
	jp	00496$
00495$:
	ld	bc, #0x01a8
00496$:
	ld	-4 (ix), c
	ld	-3 (ix), b
	jp	00195$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:149: target_y = Ball->ly + ((team == TEAM_1) ? 80 : -80);
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00497$
	ld	hl, #0x0050
	jp	00498$
00497$:
	ld	hl, #0xffb0
00498$:
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:150: target_x = Ball->lx + ((role == 1) ? -24 : 24);
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00499$
	ld	bc, #0xffe8
	jp	00500$
00499$:
	ld	bc, #0x0018
00500$:
	ld	l, -26 (ix)
	ld	h, -25 (ix)
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:152: if (team == TEAM_1 && target_y < 72) target_y = 72;
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00167$
	ld	a, -4 (ix)
	ld	b, -3 (ix)
	sub	a, #0x48
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00167$
	ld	-4 (ix), #0x48
	ld	-3 (ix), #0
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:153: if (team == TEAM_2 && target_y > 440) target_y = 440;
	ld	a, -29 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01821$
	xor	a, a
01821$:
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	or	a, a
	jr	Z, 00170$
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, #0xb8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00170$
	ld	-4 (ix), #0xb8
	ld	-3 (ix), #0x01
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:155: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00173$
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, #0xc0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00173$
	ld	-4 (ix), #0xc0
	ld	-3 (ix), #0
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:156: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, l
	or	a, a
	jr	Z, 00195$
	ld	a, -4 (ix)
	ld	b, -3 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00195$
	ld	-4 (ix), #0x40
	ld	-3 (ix), #0x01
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:161: if (target_x < 36) target_x = 36;
	ld	a, -6 (ix)
	ld	b, -5 (ix)
	sub	a, #0x24
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00197$
	ld	-6 (ix), #0x24
	ld	-5 (ix), #0
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:162: if (target_x > 204) target_x = 204;
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	a, #0xcc
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	NC, 00220$
	ld	-6 (ix), #0xcc
	ld	-5 (ix), #0
	jp	00220$
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:165: target_x = (role % 2 == 1) ? 80 : 144;
	ld	a, -2 (ix)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
	ld	a, c
	dec	a
	or	a, b
	jr	NZ, 00501$
	ld	bc, #0x0050
	jp	00502$
00501$:
	ld	bc, #0x0090
00502$:
	ld	-6 (ix), c
	ld	-5 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:166: target_y = Ball->ly + ((team == TEAM_1) ? -32 : 32);
	ld	c, -18 (ix)
	ld	b, -17 (ix)
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00503$
	ld	hl, #0xffe0
	jp	00504$
00503$:
	ld	hl, #0x0020
00504$:
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:168: if (role <= 2) {
	ld	a, #0x02
	sub	a, -2 (ix)
	jr	C, 00207$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:169: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00201$
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, #0xc0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00201$
	ld	-4 (ix), #0xc0
	ld	-3 (ix), #0
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:170: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, -29 (ix)
	dec	a
	jr	NZ, 00207$
	ld	a, -4 (ix)
	ld	b, -3 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00207$
	ld	-4 (ix), #0x40
	ld	-3 (ix), #0x01
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:174: if (target_x < 36) target_x = 36;
	ld	a, -6 (ix)
	ld	b, -5 (ix)
	sub	a, #0x24
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00209$
	ld	-6 (ix), #0x24
	ld	-5 (ix), #0
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:175: if (target_x > 204) target_x = 204;
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	a, #0xcc
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00220$
	ld	-6 (ix), #0xcc
	ld	-5 (ix), #0
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:181: if ((ball_free_nearby || (LastTouchTeam != team) || (!g_is_ball_carried && (Ball->anim < 5 || LastTouchTeam != team))) && i == closest_mate) {
	ld	a, -14 (ix)
	or	a, a
	jr	NZ, 00313$
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	ld	a, #0x01
	jr	Z, 01827$
	xor	a, a
01827$:
	ld	c, a
	bit	0, c
	jr	Z, 00313$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	NZ, 00308$
	ld	a, -13 (ix)
	sub	a, #0x05
	ld	a, -12 (ix)
	sbc	a, #0x00
	jr	C, 00313$
	bit	0, c
	jp	NZ, 00308$
00313$:
	ld	a, -1 (ix)
	sub	a, -28 (ix)
	jp	NZ,00308$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:183: u16 press_radius = 24 + (g_ActiveStats[team].aggro_defense * 8);
	ld	c, -29 (ix)
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
	ld	e, (hl)
	ld	l, e
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
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:109: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	ld	a, #0x01
	jr	Z, 01831$
	xor	a, a
01831$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:184: if (LastTouchTeam == 0xFF || !g_is_ball_carried) press_radius = 500; // Palla libera o non controllata: vai a prenderla!
	ld	-7 (ix), a
	or	a, a
	jr	NZ, 00221$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00222$
00221$:
	ld	bc, #0x01f4
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:186: bool is_human_team = FALSE;
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:187: if (team == TEAM_2) is_human_team = TRUE;
	ld	a, -29 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01833$
	xor	a, a
01833$:
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00228$
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	jp	00229$
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:188: else if (team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human_team = TRUE;
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00229$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00229$
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
00229$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:190: bool should_press = TRUE;
	ld	d, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:192: if (LastTouchTeam != 0xFF) {
	bit	0, -7 (ix)
	jp	NZ, 00254$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:193: if (is_human_team && g_is_ball_carried) {
	ld	a, l
	or	a, a
	jr	Z, 00250$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00250$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:197: should_press = FALSE;
	ld	d, #0x00
	jp	00254$
00250$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:200: if (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1) press_radius = 500;
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00246$
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00246$
	ld	bc, #0x01f4
	jp	00254$
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:202: else if (team == TEAM_1 && Ball->ly < 220) press_radius = 500; // Pressing asfissiante in trequarti
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00242$
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -18 (ix)
	ld	h, -17 (ix)
	sub	a, #0xdc
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00242$
	ld	bc, #0x01f4
	jp	00254$
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:203: else if (team == TEAM_2 && Ball->ly > 292) press_radius = 500;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00238$
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x24
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00238$
	ld	bc, #0x01f4
	jp	00254$
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:204: else if (team == TEAM_1 && Ball->ly < 256) press_radius += 48; // Inizia il pressing nella propria metà campo
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00234$
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -17 (ix)
	sub	a, #0x01
	jr	NC, 00234$
	ld	hl, #0x0030
	add	hl, bc
	ld	c, l
	ld	b, h
	jp	00254$
00234$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:205: else if (team == TEAM_2 && Ball->ly > 256) press_radius += 48;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00254$
	ld	l, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00254$
	ld	hl, #0x0030
	add	hl, bc
	ld	c, l
	ld	b, h
00254$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:209: if (should_press && b_dist_x < press_radius && b_dist_y < press_radius) {
	ld	a, d
	or	a, a
	jp	Z, 00308$
	ld	a, -24 (ix)
	sub	a, c
	ld	a, -23 (ix)
	sbc	a, b
	jp	NC, 00308$
	ld	a, -16 (ix)
	sub	a, c
	ld	a, -15 (ix)
	sbc	a, b
	jp	NC, 00308$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:210: target_x = Ball->lx;
	ld	a, -27 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:211: target_y = Ball->ly;
	ld	a, -18 (ix)
	ld	c, -17 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:214: if (g_is_ball_carried && LastTouchTeam != team && b_dist_x <= 32 && b_dist_y <= 16 && Player->count == 0 && RestartType == 0 && Ball->count == 0) {
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00258$
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	jp	Z,00258$
	ld	c, -24 (ix)
	ld	b, -23 (ix)
	ld	a, #0x20
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C, 00258$
	ld	c, -16 (ix)
	ld	b, -15 (ix)
	ld	a, #0x10
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	C, 00258$
	ld	a, -31 (ix)
	add	a, #0x15
	ld	c, a
	ld	a, -30 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, c
	ld	h, b
	ld	d, (hl)
	inc	hl
	ld	a, (hl)
	or	a, d
	jp	NZ, 00258$
	ld	a, (_RestartType+0)
	or	a, a
	jr	NZ, 00258$
	ld	hl, (#(_SwSprite + 322) + 21)
	ld	a, h
	or	a, l
	jr	NZ, 00258$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:215: u8 slide_chance = 20 + (g_ActiveStats[team].aggro_defense * 15); 
	ld	a, e
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, e
	add	a, #0x14
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:216: if ((Frms + i * 7) % 100 < slide_chance) {
	ld	a, (_Frms+0)
	ld	e, a
	ld	d, #0x00
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
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 01837$
	xor	a, #0x80
01837$:
	jp	P, 00258$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:217: Player->count = 30; // durata scivolata + cooldown per penalità se manca la palla
	ld	a, #0x1e
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:218: Player->dx = (Ball->lx > Player->lx) ? 4 : -4;
	ld	a, -31 (ix)
	add	a, #0x11
	ld	c, a
	ld	a, -30 (ix)
	adc	a, #0x00
	ld	b, a
	ld	hl, #(_SwSprite + 322)
	ld	e, (hl)
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	sub	a, e
	jr	NC, 00505$
	ld	de, #0x0004
	jp	00506$
00505$:
	ld	de, #0xfffc
00506$:
	ld	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:219: Player->dy = 0; // Solo scivolata orizzontale
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:220: return; // Esce e inizia la scivolata dal prossimo frame
	jp	00417$
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:225: bool is_free_ball = (!g_is_ball_carried);
	ld	a, (_g_is_ball_carried+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:226: bool can_steal_standing = FALSE;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:228: if (is_free_ball || (LastTouchTeam == team && LastTouchPlayer != i)) {
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00282$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:33: if (Ball->anim == 5 && LastTouchTeam == team) ball_free_nearby = FALSE; // Non disturbare i propri passaggi
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	ld	a, #0x01
	jr	Z, 01839$
	xor	a, a
01839$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:228: if (is_free_ball || (LastTouchTeam == team && LastTouchPlayer != i)) {
	ld	b, a
	or	a, a
	jr	Z, 00283$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00283$
00282$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:230: if (b_dist_x <= 20 && b_dist_y <= 20) can_steal_standing = TRUE;
	ld	b, -24 (ix)
	ld	e, -23 (ix)
	ld	a, #0x14
	cp	a, b
	ld	a, #0x00
	sbc	a, e
	jp	C, 00284$
	ld	b, -16 (ix)
	ld	e, -15 (ix)
	ld	a, #0x14
	cp	a, b
	ld	a, #0x00
	sbc	a, e
	jp	C, 00284$
	ld	c, #0x01
	jp	00284$
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:231: } else if (LastTouchTeam != team && LastTouchTeam != 0xFF) {
	bit	0, b
	jp	NZ, 00284$
	bit	0, -7 (ix)
	jp	NZ, 00284$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:233: u8 opp_idx = LastTouchPlayer;
	ld	a, (_LastTouchPlayer+0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:234: struct ObjectInfo* Opponent = &SwSprite[opp_idx];
	ld	e, a
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:236: bool is_in_front = FALSE;
	ld	-9 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:238: if (Player->ly > Opponent->ly - 4) is_in_front = TRUE; // Difensore (Team 2) deve essere "sotto"
	ld	a, -20 (ix)
	ld	-8 (ix), a
	ld	a, -19 (ix)
	ld	-7 (ix), a
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:237: if (LastTouchTeam == TEAM_1) { // Avversario (Team 1) attacca verso Sud (Y crescente)
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	NZ, 00273$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:238: if (Player->ly > Opponent->ly - 4) is_in_front = TRUE; // Difensore (Team 2) deve essere "sotto"
	ld	a, e
	add	a, #0xfc
	ld	b, a
	ld	a, d
	adc	a, #0xff
	ld	e, a
	ld	a, b
	sub	a, -8 (ix)
	ld	a, e
	sbc	a, -7 (ix)
	jr	NC, 00274$
	ld	-9 (ix), #0x01
	jp	00274$
00273$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:240: if (Player->ly < Opponent->ly + 4) is_in_front = TRUE; // Difensore (Team 1) deve essere "sopra"
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a, -8 (ix)
	sub	a, e
	ld	a, -7 (ix)
	sbc	a, d
	jr	NC, 00274$
	ld	-9 (ix), #0x01
00274$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:243: if (is_in_front && b_dist_x <= 14 && b_dist_y <= 14) {
	ld	a, -9 (ix)
	or	a, a
	jr	Z, 00284$
	ld	b, -24 (ix)
	ld	e, -23 (ix)
	ld	a, #0x0e
	cp	a, b
	ld	a, #0x00
	sbc	a, e
	jr	C, 00284$
	ld	b, -16 (ix)
	ld	e, -15 (ix)
	ld	a, #0x0e
	cp	a, b
	ld	a, #0x00
	sbc	a, e
	jr	C, 00284$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:244: can_steal_standing = TRUE;
	ld	c, #0x01
00284$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:248: if (can_steal_standing && Ball->anim < 5 && Ball->count == 0 && RestartType == 0) {
	ld	a, c
	or	a, a
	jp	Z, 00308$
	ld	a, -13 (ix)
	sub	a, #0x05
	ld	a, -12 (ix)
	sbc	a, #0x00
	jp	NC, 00308$
	ld	hl, (#(_SwSprite + 343) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00308$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00308$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:33: if (Ball->anim == 5 && LastTouchTeam == team) ball_free_nearby = FALSE; // Non disturbare i propri passaggi
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	ld	a, #0x01
	jr	Z, 01842$
	xor	a, a
01842$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:249: if (LastTouchTeam != team) { // Solo se furto da avversario o palla libera
	ld	b, c
	bit	0, b
	jr	NZ, 00296$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:250: Ball->count = is_free_ball ? 10 : 30;
	ld	de, #(_SwSprite + 343)
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00507$
	ld	bc, #0x000a
	jp	00508$
00507$:
	ld	bc, #0x001e
00508$:
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:251: LastTouchTeam = team;
	ld	a, -29 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:252: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:253: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:254: if (Ball->anim > 3) Ball->anim = 3; 
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00288$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:255: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
	jp	00308$
00296$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:256: } else if (is_free_ball && LastTouchTeam == team && LastTouchPlayer != i) {
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00308$
	ld	a, c
	or	a, a
	jr	Z, 00308$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00308$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:258: Ball->count = 20; // Immunità alla ricezione
	ld	hl, #0x0014
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:259: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:260: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:261: if (Ball->anim > 3) Ball->anim = 3; 
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00290$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:262: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
00308$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:269: bool is_cpu_team = (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1);
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00509$
	ld	a, -29 (ix)
	or	a, a
	jr	Z, 00510$
00509$:
	ld	c, #0x00
	jp	00511$
00510$:
	ld	c, #0x01
00511$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:270: if (is_cpu_team && i == closest_mate && LastTouchTeam == team && g_is_ball_carried) {
	ld	-2 (ix), c
	ld	a, c
	or	a, a
	jp	Z, 00383$
	ld	a, -28 (ix)
	sub	a, -1 (ix)
	jp	NZ,00383$
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	jp	NZ,00383$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00383$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:271: u16 d_bx = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	ld	-20 (ix), a
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-4 (ix), a
	ld	a, -20 (ix)
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -4 (ix)
	sub	a, -20 (ix)
	jr	NC, 00512$
	ld	a, -10 (ix)
	sub	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, -9 (ix)
	sbc	a, -5 (ix)
	ld	-2 (ix), a
	jp	00513$
00512$:
	ld	a, -6 (ix)
	sub	a, -10 (ix)
	ld	-3 (ix), a
	ld	a, -5 (ix)
	sbc	a, -9 (ix)
	ld	-2 (ix), a
00513$:
	ld	a, -3 (ix)
	ld	-14 (ix), a
	ld	a, -2 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:272: u16 d_by = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, -8 (ix)
	ld	a, -2 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00514$
	ld	a, -8 (ix)
	sub	a, -3 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sbc	a, -2 (ix)
	ld	-5 (ix), a
	jp	00515$
00514$:
	ld	a, -3 (ix)
	sub	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -2 (ix)
	sbc	a, -7 (ix)
	ld	-5 (ix), a
00515$:
	ld	a, -6 (ix)
	ld	-12 (ix), a
	ld	a, -5 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:273: if (d_bx + d_by <= 26) {
	ld	a, -12 (ix)
	add	a, -14 (ix)
	ld	-6 (ix), a
	ld	a, -11 (ix)
	adc	a, -13 (ix)
	ld	-5 (ix), a
	ld	a, #0x1a
	cp	a, -6 (ix)
	ld	a, #0x00
	sbc	a, -5 (ix)
	ld	a, #0x00
	rla
	ld	-19 (ix), a
	bit	0, -19 (ix)
	jp	NZ, 00380$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:275: target_x = 128; 
	ld	-6 (ix), #0x80
	ld	-5 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:276: target_y = 480; 
	ld	-4 (ix), #0xe0
	ld	-3 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:279: u8 closest_opp = 0xFF;
	ld	-18 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:280: u16 min_opp_dist = 0xFFFF;
	ld	-24 (ix), #0xff
	ld	-23 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:281: for (u8 j = 7; j < 14; j++) {
	ld	-2 (ix), #0x07
00415$:
	ld	a, -2 (ix)
	sub	a, #0x0e
	jp	NC, 00316$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:282: u16 odx = (SwSprite[j].lx > Player->lx) ? (SwSprite[j].lx - Player->lx) : (Player->lx - SwSprite[j].lx);
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
	ld	-14 (ix), l
	ld	-13 (ix), h
	ld	a, -14 (ix)
	add	a, #<(_SwSprite)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	adc	a, #>(_SwSprite)
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	c, (hl)
	ld	-16 (ix), c
	ld	-15 (ix), #0x00
	ld	a, -20 (ix)
	sub	a, c
	jr	NC, 00516$
	ld	a, -16 (ix)
	sub	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	sbc	a, -9 (ix)
	ld	-13 (ix), a
	jp	00517$
00516$:
	ld	a, -10 (ix)
	sub	a, -16 (ix)
	ld	-14 (ix), a
	ld	a, -9 (ix)
	sbc	a, -15 (ix)
	ld	-13 (ix), a
00517$:
	ld	a, -14 (ix)
	ld	-16 (ix), a
	ld	a, -13 (ix)
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:283: u16 ody = (SwSprite[j].ly > Player->ly) ? (SwSprite[j].ly - Player->ly) : (Player->ly - SwSprite[j].ly);
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-14 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-13 (ix), a
	ld	a, -8 (ix)
	sub	a, -14 (ix)
	ld	a, -7 (ix)
	sbc	a, -13 (ix)
	jr	NC, 00518$
	ld	a, -14 (ix)
	sub	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	sbc	a, -7 (ix)
	ld	-11 (ix), a
	jp	00519$
00518$:
	ld	a, -8 (ix)
	sub	a, -14 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	sbc	a, -13 (ix)
	ld	-11 (ix), a
00519$:
	ld	a, -12 (ix)
	ld	c, -11 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:284: if (odx + ody < min_opp_dist) {
	add	a, -16 (ix)
	ld	-12 (ix), a
	ld	a, c
	adc	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	sub	a, -24 (ix)
	ld	a, -11 (ix)
	sbc	a, -23 (ix)
	jr	NC, 00416$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:285: min_opp_dist = odx + ody;
	ld	a, -12 (ix)
	ld	-24 (ix), a
	ld	a, -11 (ix)
	ld	-23 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:286: closest_opp = j;
	ld	a, -2 (ix)
	ld	-18 (ix), a
00416$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:281: for (u8 j = 7; j < 14; j++) {
	inc	-2 (ix)
	jp	00415$
00316$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:289: bool under_pressure = (min_opp_dist < 40);
	ld	a, -24 (ix)
	ld	b, -23 (ix)
	sub	a, #0x28
	ld	a, b
	sbc	a, #0x00
	ld	a, #0x00
	rla
	ld	-11 (ix), a
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:292: if (under_pressure) {
	ld	a, -11 (ix)
	or	a, a
	jp	Z, 00320$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:293: u8 evade_chance = g_ActiveStats[team].dribble_variation * 15; // Da 15% a 75%
	ld	c, -29 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-14 (ix), l
	ld	-13 (ix), h
	ld	a, #<(_g_ActiveStats)
	add	a, -14 (ix)
	ld	-12 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -13 (ix)
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:294: u8 rand_evade = ((i * 17) + (Frms / 16) * 13) % 100; // Mantiene la stessa decisione (sterzata) per ~0.25 sec
	ld	a, -1 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-16 (ix), l
	ld	-15 (ix), h
	ld	a, (_Frms+0)
	ld	-14 (ix), a
	ld	-13 (ix), #0x00
	ld	a, -14 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-11 (ix), a
	bit	7, -13 (ix)
	jr	Z, 00520$
	ld	a, -14 (ix)
	add	a, #0x0f
	ld	-12 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
00520$:
	sra	-11 (ix)
	rr	-12 (ix)
	sra	-11 (ix)
	rr	-12 (ix)
	sra	-11 (ix)
	rr	-12 (ix)
	sra	-11 (ix)
	rr	-12 (ix)
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-14 (ix), l
	ld	-13 (ix), h
	ld	a, -16 (ix)
	add	a, -14 (ix)
	ld	-12 (ix), a
	ld	a, -15 (ix)
	adc	a, -13 (ix)
	ld	-11 (ix), a
	ld	de, #0x0064
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-12 (ix), e
	ld	-11 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:295: if (rand_evade < evade_chance) {
	ld	a, -12 (ix)
	sub	a, -17 (ix)
	jr	NC, 00320$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:296: target_x = (SwSprite[closest_opp].lx > Player->lx) ? ((Player->lx > 48) ? Player->lx - 48 : 24) : ((Player->lx < 208) ? Player->lx + 48 : 232);
	ld	c, -18 (ix)
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
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -6 (ix)
	ld	-12 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -5 (ix)
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a,-20 (ix)
	sub	a,(hl)
	jr	NC, 00521$
	ld	a, #0x30
	sub	a, -20 (ix)
	jr	NC, 00523$
	ld	a, -10 (ix)
	add	a, #0xd0
	ld	c, a
	ld	a, -9 (ix)
	adc	a, #0xff
	jp	00522$
00523$:
	ld	c, #0x18
	xor	a, a
	jp	00522$
00521$:
	ld	a, -20 (ix)
	sub	a, #0xd0
	jr	NC, 00525$
	ld	a, -10 (ix)
	add	a, #0x30
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	jp	00526$
00525$:
	ld	-6 (ix), #0xe8
	ld	-5 (ix), #0
00526$:
	ld	c, -6 (ix)
	ld	a, -5 (ix)
00522$:
	ld	-6 (ix), c
	ld	-5 (ix), a
00320$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:301: if (d_bx + d_by <= 26 && Ball->anim == 0) {
	bit	0, -19 (ix)
	jp	NZ, 00383$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00383$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:302: bool action_taken = FALSE;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:306: if (Player->ly > 258 && Field.ly == 320) {
	ld	a, #0x02
	cp	a, -8 (ix)
	ld	a, #0x01
	sbc	a, -7 (ix)
	jp	NC, 00337$
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	sub	a, #0x40
	jp	NZ,00337$
	ld	a, -11 (ix)
	dec	a
	jp	NZ,00337$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:307: u8 rand_shot = (Player->lx + Frms) % 100;
	ld	a, (_Frms+0)
	ld	c, a
	ld	b, #0x00
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	add	hl, bc
	ld	de, #0x0064
	call	__modsint
	ld	-9 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:308: u8 shot_prob = 0;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:309: if (Player->ly > 380) {
	ld	a, #0x7c
	cp	a, -8 (ix)
	ld	a, #0x01
	sbc	a, -7 (ix)
	jr	NC, 00327$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:311: shot_prob = 50 + (g_ActiveStats[team].aggro_attack * 6); // 56-80%
	ld	c, -29 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, #<(_g_ActiveStats)
	add	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -10 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, #0x32
	ld	-10 (ix), a
	jp	00328$
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:312: } else if (Player->ly > 300) {
	ld	a, #0x2c
	cp	a, -8 (ix)
	ld	a, #0x01
	sbc	a, -7 (ix)
	jr	NC, 00324$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:314: shot_prob = 18 + (g_ActiveStats[team].aggro_attack * 5); // 23-43%
	ld	c, -29 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, #<(_g_ActiveStats)
	add	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -10 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, #0x12
	ld	-10 (ix), a
	jp	00328$
00324$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:315: } else if (Player->ly > 260) {
	ld	a, #0x04
	cp	a, -8 (ix)
	ld	a, #0x01
	sbc	a, -7 (ix)
	jr	NC, 00328$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:317: shot_prob = 6 + (g_ActiveStats[team].aggro_attack * 3); // 9-21%
	ld	c, -29 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, #<(_g_ActiveStats)
	add	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -10 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	c, a
	add	a, a
	add	a, c
	add	a, #0x06
	ld	-10 (ix), a
00328$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:319: if (shot_prob > 0 && rand_shot < shot_prob) {
	ld	a, -10 (ix)
	or	a, a
	jp	Z, 00337$
	ld	a, -9 (ix)
	sub	a, -10 (ix)
	jp	NC, 00337$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:320: action_taken = TRUE;
	ld	-20 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:321: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:322: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:323: g_pass_start_x = Player->lx;
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:324: g_pass_start_y = Player->ly;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:325: g_pass_target_x = g_h_arrow_x; // Freccia non visibile ma oscilla come quella umana
	ld	hl, (_g_h_arrow_x)
	ld	(_g_pass_target_x), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:326: g_pass_target_y = 496; // Dentro la porta Sud
	ld	hl, #0x01f0
	ld	(_g_pass_target_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:328: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00527$
	ld	hl, #_g_pass_start_x
	ld	a, (_g_pass_target_x+0)
	sub	a, (hl)
	inc	hl
	ld	e, a
	ld	a, (_g_pass_target_x+1)
	sbc	a, (hl)
	ld	d, a
	jp	00528$
00527$:
	ld	hl, #_g_pass_target_x
	ld	a, (_g_pass_start_x+0)
	sub	a, (hl)
	inc	hl
	ld	e, a
	ld	a, (_g_pass_start_x+1)
	sbc	a, (hl)
	ld	d, a
00528$:
	ld	-10 (ix), e
	ld	-9 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:329: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	inc	hl
	sub	a, #0xf0
	ld	a, (hl)
	sbc	a, #0x01
	jr	NC, 00529$
	ld	hl, #_g_pass_start_y
	ld	a, #0xf0
	sub	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, #0x01
	sbc	a, (hl)
	ld	-7 (ix), a
	jp	00530$
00529$:
	ld	a, (_g_pass_start_y+0)
	add	a, #0x10
	ld	-8 (ix), a
	ld	a, (_g_pass_start_y+1)
	adc	a, #0xfe
	ld	-7 (ix), a
00530$:
	ld	c, -8 (ix)
	ld	b, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:331: g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	add	hl, bc
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:332: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x0a
	jr	NC, 00330$
	ld	0 (iy), #0x0a
00330$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:333: if (g_pass_max_frames > 25) g_pass_max_frames = 25;
	ld	a, #0x19
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00332$
	ld	0 (iy), #0x19
00332$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:334: g_pass_max_height = 2; // Tiro rasoterra e limitato
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:336: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:337: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00337$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:342: if (!action_taken && Frms % 16 == 0) {
	ld	a, -20 (ix)
	or	a, a
	jp	NZ, 00361$
	ld	a, (_Frms+0)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0x0f
	jp	NZ,00361$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:343: u8 rand_pass = (Player->lx * 5 + Player->ly * 3 + Frms) % 100;
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	l, -22 (ix)
	ld	h, -21 (ix)
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
	ld	-7 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:346: u8 pass_prob = 10 + (g_ActiveStats[team].pass_tendency * 10);
	ld	bc, #_g_ActiveStats+0
	ld	e, -29 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, bc
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	a, c
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, #0x0a
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:349: if (under_pressure) {
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00340$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:350: pass_prob += 15 + (g_ActiveStats[team].pass_tendency * 5);
	ld	a, c
	add	a, a
	add	a, a
	add	a, c
	add	a, #0x0f
	add	a, e
	ld	e, a
00340$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:353: if (rand_pass < pass_prob) {
	ld	a, -7 (ix)
	sub	a, e
	jp	NC, 00361$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:356: i8 pass_dx = (ai_last_dx[i] > 0) ? 1 : ((ai_last_dx[i] < 0) ? -1 : 0);
	ld	bc, #_ai_last_dx+0
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01852$
	xor	a, #0x80
01852$:
	jp	P, 00531$
	ld	de, #0x0001
	jp	00532$
00531$:
	bit	7, c
	jr	Z, 00533$
	ld	de, #0xffff
	jp	00534$
00533$:
	ld	de, #0x0000
00534$:
00532$:
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:358: u8 receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, i, 0xFF, pass_dx, pass_dy);
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, a
	ld	l, #0xff
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x14
	call	_CallFnc_U16_P4B
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:359: if (receiver != 0xFF) {
	ld	-9 (ix), e
	ld	a, e
	inc	a
	jp	Z,00361$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:361: if (SwSprite[receiver].ly > Player->ly - 16) {
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
	ld	-24 (ix), l
	ld	-23 (ix), h
	ld	a, -24 (ix)
	add	a, #0x04
	ld	-19 (ix), a
	ld	a, -23 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-26 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-25 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-17 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-16 (ix), a
	ld	a, -17 (ix)
	ld	-11 (ix), a
	ld	a, -16 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	add	a, #0xf0
	ld	-8 (ix), a
	ld	a, -10 (ix)
	adc	a, #0xff
	ld	-7 (ix), a
	ld	a, -26 (ix)
	ld	-15 (ix), a
	ld	a, -25 (ix)
	ld	-14 (ix), a
	ld	a, -8 (ix)
	sub	a, -15 (ix)
	ld	a, -7 (ix)
	sbc	a, -14 (ix)
	jp	NC, 00361$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:362: u16 r_dx = (SwSprite[receiver].lx > Player->lx) ? (SwSprite[receiver].lx - Player->lx) : (Player->lx - SwSprite[receiver].lx);
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	ld	a, -12 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	jr	NC, 00535$
	ld	a, -11 (ix)
	sub	a, -8 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	sbc	a, -7 (ix)
	ld	-12 (ix), a
	jp	00536$
00535$:
	ld	a, -8 (ix)
	sub	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -7 (ix)
	sbc	a, -10 (ix)
	ld	-12 (ix), a
00536$:
	ld	c, -13 (ix)
	ld	b, -12 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:363: u16 r_dy = (SwSprite[receiver].ly > Player->ly) ? (SwSprite[receiver].ly - Player->ly) : (Player->ly - SwSprite[receiver].ly);
	ld	a, -17 (ix)
	sub	a, -26 (ix)
	ld	a, -16 (ix)
	sbc	a, -25 (ix)
	jr	NC, 00537$
	ld	a, -26 (ix)
	sub	a, -17 (ix)
	ld	e, a
	ld	a, -25 (ix)
	sbc	a, -16 (ix)
	jp	00538$
00537$:
	ld	a, -17 (ix)
	sub	a, -26 (ix)
	ld	e, a
	ld	a, -16 (ix)
	sbc	a, -25 (ix)
00538$:
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:365: if (r_dx + r_dy >= 48) {
	add	hl, bc
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	a, -13 (ix)
	sub	a, #0x30
	ld	a, -12 (ix)
	sbc	a, #0x00
	jp	C, 00361$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:366: action_taken = TRUE;
	ld	-20 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:369: bool is_offside = FALSE;
	ld	-2 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:370: if (team == TEAM_1) {
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00347$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:371: u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	hl, #_SwSprite + 188
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	hl, #_SwSprite + 211
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sub	a, -11 (ix)
	ld	a, -7 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00539$
	ld	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, -10 (ix)
	ld	-7 (ix), a
00539$:
	ld	c, -8 (ix)
	ld	b, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:372: if (Player->ly > offside_line) offside_line = Player->ly;
	ld	a, c
	sub	a, -17 (ix)
	ld	a, b
	sbc	a, -16 (ix)
	jr	NC, 00342$
	ld	c, -17 (ix)
	ld	b, -16 (ix)
00342$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:373: if (SwSprite[receiver].ly > offside_line + 8 && SwSprite[receiver].ly > 256) is_offside = TRUE;
	ld	hl, #0x0008
	add	hl, bc
	ld	a, l
	sub	a, -15 (ix)
	ld	a, h
	sbc	a, -14 (ix)
	jr	NC, 00347$
	xor	a, a
	cp	a, -15 (ix)
	ld	a, #0x01
	sbc	a, -14 (ix)
	jr	NC, 00347$
	ld	-2 (ix), #0x01
00347$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:376: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:377: g_pass_receiver = receiver | (is_offside ? 0x80 : 0);
	ld	a, -2 (ix)
	or	a, a
	ld	a, #0x80
	jr	NZ, 00542$
	xor	a, a
00542$:
	or	a, -9 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:378: g_pass_start_x = Player->lx;
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:379: g_pass_start_y = Player->ly;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:380: g_pass_target_x = SwSprite[receiver].lx;
	ld	l, -24 (ix)
	ld	h, -23 (ix)
	ld	a, (hl)
	ld	(_g_pass_target_x+0), a
	ld	hl, #_g_pass_target_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:381: g_pass_target_y = SwSprite[receiver].ly;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:382: g_pass_max_frames = (r_dx + r_dy) / 5;
	ld	de, #0x0005
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:383: if (g_pass_max_frames < 8) g_pass_max_frames = 8;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x08
	jr	NC, 00349$
	ld	0 (iy), #0x08
00349$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:384: if (g_pass_max_frames > 34) g_pass_max_frames = 34;
	ld	a, #0x22
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00351$
	ld	0 (iy), #0x22
00351$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:385: g_pass_max_height = 7;
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:387: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:388: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00361$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:396: if (!action_taken) {
	ld	a, -20 (ix)
	or	a, a
	jp	NZ, 00383$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:397: i8 move_dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
	ld	c, -31 (ix)
	ld	b, -30 (ix)
	ld	hl, #17
	add	hl, bc
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01854$
	xor	a, #0x80
01854$:
	jp	P, 00543$
	ld	de, #0x0001
	jp	00544$
00543$:
	bit	7, c
	jr	Z, 00545$
	ld	de, #0xffff
	jp	00546$
00545$:
	ld	de, #0x0000
00546$:
00544$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:400: if (Player->ly > 450) {
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:401: Ball->dx = 0; Ball->dy = 0;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:400: if (Player->ly > 450) {
	ld	a, #0xc2
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00372$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:401: Ball->dx = 0; Ball->dy = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:402: Ball->anim = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	jp	00383$
00372$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:404: i8 off_x = 0;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:405: i8 off_y = (move_dx != 0) ? 11 : 8;
	ld	a, e
	or	a, a
	jr	Z, 00547$
	ld	hl, #0x000b
	jp	00548$
00547$:
	ld	hl, #0x0008
00548$:
	ld	d, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:406: if (move_dx > 0) off_x = 3; else if (move_dx < 0) off_x = -3;
	xor	a, a
	sub	a, e
	jp	PO, 01855$
	xor	a, #0x80
01855$:
	jp	P, 00366$
	ld	c, #0x03
	jp	00367$
00366$:
	bit	7, e
	jr	Z, 00367$
	ld	c, #0xfd
00367$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:408: Ball->lx = (u8)((i16)Player->lx + off_x);
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	add	a, c
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:409: Ball->ly = (u16)((i16)Player->ly + off_y) & 511;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, d
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
	ld	a, h
	and	a, #0x01
	ld	b, a
	ld	((_SwSprite + 326)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:214: if (g_is_ball_carried && LastTouchTeam != team && b_dist_x <= 32 && b_dist_y <= 16 && Player->count == 0 && RestartType == 0 && Ball->count == 0) {
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:411: if (move_dx == 0) {
	ld	a, e
	or	a, a
	jr	NZ, 00369$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:413: Ball->dx = 0; Ball->dy = 1;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:414: Ball->anim = 4; Ball->count = 0;
	ld	hl, #0x0004
	ld	((_SwSprite + 341)), hl
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:415: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00383$
00369$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:418: Ball->dx = move_dx; Ball->dy = 1;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), e
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:419: Ball->anim = 2; Ball->count = 12; // Immunità durante il cambio di direzione
	ld	hl, #0x0002
	ld	((_SwSprite + 341)), hl
	ld	l, #0x0c
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:420: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00383$
00380$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:427: target_x = Ball->lx;
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:428: target_y = Ball->ly;
	ld	a, -3 (ix)
	ld	c, -2 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), c
00383$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:433: if (target_x < 16) target_x = 16; 
	ld	a, -6 (ix)
	ld	b, -5 (ix)
	sub	a, #0x10
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00388$
	ld	-6 (ix), #0x10
	ld	-5 (ix), #0
00388$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:434: if (target_x > 224) target_x = 224;
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	ld	a, #0xe0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00390$
	ld	-6 (ix), #0xe0
	ld	-5 (ix), #0
00390$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:435: if (target_y < 24) target_y = 24;
	ld	a, -4 (ix)
	ld	b, -3 (ix)
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00392$
	ld	-4 (ix), #0x18
	ld	-3 (ix), #0
00392$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:436: if (target_y > 478) target_y = 478;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	ld	a, #0xde
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00394$
	ld	-4 (ix), #0xde
	ld	-3 (ix), #0x01
00394$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:440: u16 dist_x = (target_x > Player->lx) ? (target_x - Player->lx) : (Player->lx - target_x);
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	ld	c, a
	ld	b, #0x00
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, c
	sub	a, -6 (ix)
	ld	a, b
	sbc	a, -5 (ix)
	jr	NC, 00549$
	ld	a, -6 (ix)
	ld	-12 (ix), a
	ld	a, -5 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	ld	-7 (ix), a
	jp	00550$
00549$:
	ld	a, -8 (ix)
	ld	c, -7 (ix)
	sub	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, c
	sbc	a, -5 (ix)
	ld	-7 (ix), a
00550$:
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:441: u16 dist_y = (target_y > Player->ly) ? (target_y - Player->ly) : (Player->ly - target_y);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	sub	a, -4 (ix)
	ld	a, -11 (ix)
	sbc	a, -3 (ix)
	jr	NC, 00551$
	ld	a, -4 (ix)
	sub	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	sbc	a, -11 (ix)
	ld	-7 (ix), a
	jp	00552$
00551$:
	ld	a, -12 (ix)
	sub	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sbc	a, -3 (ix)
	ld	-7 (ix), a
00552$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:444: u8 speed = 1;
	ld	-2 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:446: if (dist_x > 24 || dist_y > 24 || (LastTouchTeam == team && i == closest_mate) || (!g_is_ball_carried && Ball->anim < 5 && i == closest_mate)) speed = 2;
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00395$
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, #0x18
	cp	a, -12 (ix)
	ld	a, #0x00
	sbc	a, -11 (ix)
	jr	C, 00395$
	ld	a, (_LastTouchTeam+0)
	sub	a, -29 (ix)
	jr	NZ, 00402$
	ld	a, -1 (ix)
	sub	a, -28 (ix)
	jr	Z, 00395$
00402$:
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00396$
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	sub	a, #0x05
	ld	a, -11 (ix)
	sbc	a, #0x00
	jr	NC, 00396$
	ld	a, -1 (ix)
	sub	a, -28 (ix)
	jr	NZ, 00396$
00395$:
	ld	-2 (ix), #0x02
00396$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:448: Player->dx = 0; Player->dy = 0;
	ld	a, -31 (ix)
	add	a, #0x11
	ld	-18 (ix), a
	ld	a, -30 (ix)
	adc	a, #0x00
	ld	-17 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0x00
	ld	a, -31 (ix)
	add	a, #0x12
	ld	-16 (ix), a
	ld	a, -30 (ix)
	adc	a, #0x00
	ld	-15 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:450: if (dist_x > speed) Player->dx = (target_x > Player->lx) ? speed : -speed;
	ld	a, -2 (ix)
	ld	-14 (ix), a
	ld	-13 (ix), #0x00
	ld	a, -14 (ix)
	sub	a, -10 (ix)
	ld	a, -13 (ix)
	sbc	a, -9 (ix)
	jr	NC, 00404$
	ld	a, -18 (ix)
	ld	-12 (ix), a
	ld	a, -17 (ix)
	ld	-11 (ix), a
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, -10 (ix)
	sub	a, -6 (ix)
	ld	a, -9 (ix)
	sbc	a, -5 (ix)
	jr	NC, 00553$
	ld	a, -2 (ix)
	ld	-5 (ix), a
	jp	00554$
00553$:
	xor	a, a
	sub	a, -2 (ix)
	ld	-5 (ix), a
00554$:
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
00404$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:451: if (dist_y > speed) Player->dy = (target_y > Player->ly) ? speed : -speed;
	ld	a, -14 (ix)
	sub	a, -8 (ix)
	ld	a, -13 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00406$
	ld	a, -16 (ix)
	ld	-6 (ix), a
	ld	a, -15 (ix)
	ld	-5 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -4 (ix)
	ld	a, b
	sbc	a, -3 (ix)
	jr	NC, 00555$
	ld	a, -2 (ix)
	jp	00556$
00555$:
	xor	a, a
	sub	a, -2 (ix)
00556$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
00406$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:453: if (Player->dx != 0 || Player->dy != 0) {
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:462: Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
	ld	a, -31 (ix)
	add	a, #0x0f
	ld	-3 (ix), a
	ld	a, -30 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:453: if (Player->dx != 0 || Player->dy != 0) {
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00410$
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00411$
00410$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:454: ai_last_dx[i] = Player->dx;
	ld	a, #<(_ai_last_dx)
	add	a, -1 (ix)
	ld	-6 (ix), a
	ld	a, #>(_ai_last_dx)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:455: ai_last_dy[i] = Player->dy;
	ld	a, #<(_ai_last_dy)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_ai_last_dy)
	adc	a, #0x00
	ld	b, a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:457: Player->lx += Player->dx;
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	c, (hl)
	add	a, c
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:458: Player->ly += Player->dy;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	rlca
	sbc	a, a
	ld	-4 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	add	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	adc	a, -6 (ix)
	ld	-4 (ix), a
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:460: Player->anim++;
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	de, #0x0013
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	inc	bc
	ld	-5 (ix), c
	ld	-4 (ix), b
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:461: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-35 (ix), #0x00
	ld	-34 (ix), #0x01
	ld	-33 (ix), #0x02
	ld	-32 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:462: Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
	ld	de, #0x0003
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
	and	a, #0x03
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, (hl)
	ld	-5 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	h, -5 (ix)
	ld	l, -4 (ix)
	push	hl
	ld	h, -6 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00417$
00411$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:27: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:465: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	l, -31 (ix)
	ld	h, -30 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	l, a
	ld	h, #0x00
	ld	de, #0x0004
	add	hl, de
	ld	-7 (ix), c
	ld	-6 (ix), #0x00
	ld	a, l
	sub	a, -7 (ix)
	ld	a, h
	sbc	a, -6 (ix)
	jp	PO, 01861$
	xor	a, #0x80
01861$:
	jp	P, 00557$
	ld	-5 (ix), #0x01
	ld	-4 (ix), #0
	jp	00558$
00557$:
	ld	a, -9 (ix)
	add	a, #0xfc
	ld	-5 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-4 (ix), a
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	ld	a, -6 (ix)
	sbc	a, -4 (ix)
	jp	PO, 01862$
	xor	a, #0x80
01862$:
	jp	P, 00559$
	ld	-5 (ix), #0xff
	ld	-4 (ix), #0xff
	jp	00560$
00559$:
	xor	a, a
	ld	-5 (ix), a
	ld	-4 (ix), a
00560$:
00558$:
	ld	a, -5 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:28: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:466: i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	add	a, #0x04
	ld	-8 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sub	a, -5 (ix)
	ld	a, -7 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00561$
	ld	-5 (ix), #0x01
	ld	-4 (ix), #0
	jp	00562$
00561$:
	ld	a, -10 (ix)
	add	a, #0xfc
	ld	-8 (ix), a
	ld	a, -9 (ix)
	adc	a, #0xff
	ld	-7 (ix), a
	ld	a, -5 (ix)
	sub	a, -8 (ix)
	ld	a, -4 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00563$
	ld	-5 (ix), #0xff
	ld	-4 (ix), #0xff
	jp	00564$
00563$:
	xor	a, a
	ld	-5 (ix), a
	ld	-4 (ix), a
00564$:
00562$:
	ld	a, -5 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:467: if (dir_x == 0 && dir_y == 0) {
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00408$
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00408$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:468: dir_y = (team == TEAM_1) ? 1 : -1;
	ld	a, -29 (ix)
	or	a, a
	jr	NZ, 00565$
	ld	-5 (ix), #0x01
	ld	-4 (ix), #0
	jp	00566$
00565$:
	ld	-5 (ix), #0xff
	ld	-4 (ix), #0xff
00566$:
	ld	a, -5 (ix)
	ld	-4 (ix), a
00408$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:470: Player->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, dir_x, dir_y);
	ld	h, -4 (ix)
	ld	l, -6 (ix)
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	-5 (ix), e
	ld	-4 (ix), d
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
00417$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:472: }
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
	.area _SEG21
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
