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
	.globl _SetBallSprite
	.globl _CallFnc_U16_P4B
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
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
	ld	hl, #-43
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
	ld	-39 (ix), a
	ld	a, -2 (ix)
	ld	-38 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:16: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00418$
	ld	bc, #0x0000
	jp	00419$
00418$:
	ld	bc, #0x0001
00419$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:21: u8 role = (team == TEAM_1) ? i : (i - 7); // 1,2: Dif, 3,4: Cen, 5,6: Att
	ld	-37 (ix), c
	ld	a, c
	or	a, a
	jr	NZ, 00420$
	ld	a, -1 (ix)
	jp	00421$
00420$:
	ld	a, -1 (ix)
	add	a, #0xf9
00421$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:24: u8 closest_mate = (team == TEAM_1) ? g_closest_t1 : g_closest_t2;
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00422$
	ld	a, (_g_closest_t1+0)
	jp	00423$
00422$:
	ld	a, (_g_closest_t2+0)
00423$:
	ld	-36 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:27: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	ld	-35 (ix), a
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-34 (ix), a
	ld	a, -35 (ix)
	ld	-33 (ix), a
	ld	-32 (ix), #0x00
	ld	a, -34 (ix)
	ld	-31 (ix), a
	ld	-30 (ix), #0x00
	ld	a, -34 (ix)
	sub	a, -35 (ix)
	jr	NC, 00424$
	ld	a, -33 (ix)
	sub	a, -31 (ix)
	ld	e, a
	ld	a, -32 (ix)
	sbc	a, -30 (ix)
	jp	00425$
00424$:
	ld	a, -31 (ix)
	sub	a, -33 (ix)
	ld	e, a
	ld	a, -30 (ix)
	sbc	a, -32 (ix)
00425$:
	ld	-29 (ix), e
	ld	-28 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:28: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	a, -39 (ix)
	add	a, #0x04
	ld	-27 (ix), a
	ld	a, -38 (ix)
	adc	a, #0x00
	ld	-26 (ix), a
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	a, (hl)
	ld	-25 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-24 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-23 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-22 (ix), a
	ld	a, -23 (ix)
	sub	a, -25 (ix)
	ld	a, -22 (ix)
	sbc	a, -24 (ix)
	jr	NC, 00426$
	ld	a, -25 (ix)
	sub	a, -23 (ix)
	ld	e, a
	ld	a, -24 (ix)
	sbc	a, -22 (ix)
	jp	00427$
00426$:
	ld	a, -23 (ix)
	sub	a, -25 (ix)
	ld	e, a
	ld	a, -22 (ix)
	sbc	a, -24 (ix)
00427$:
	ld	-21 (ix), e
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:32: bool ball_free_nearby = (!g_is_ball_carried && b_dist_x <= 48 && b_dist_y <= 48);
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00428$
	ld	c, -29 (ix)
	ld	b, -28 (ix)
	ld	a, #0x30
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00428$
	ld	c, -21 (ix)
	ld	b, -20 (ix)
	ld	a, #0x30
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00429$
00428$:
	xor	a, a
	jp	00430$
00429$:
	ld	a, #0x01
00430$:
	ld	-19 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:33: if (Ball->anim == 5 && LastTouchTeam == team) ball_free_nearby = FALSE; // Non disturbare i propri passaggi
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	-18 (ix), l
	ld	-17 (ix), h
	ld	a, -18 (ix)
	sub	a, #0x05
	or	a, -17 (ix)
	ld	a, #0x01
	jr	Z, 01743$
	xor	a, a
01743$:
	ld	-16 (ix), a
	or	a, a
	jr	Z, 00102$
	ld	a, (_LastTouchTeam+0)
	sub	a, -37 (ix)
	jr	NZ, 00102$
	ld	-19 (ix), #0x00
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:34: if (ball_free_nearby) {
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00201$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:35: target_x = Ball->lx;
	ld	a, -34 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:36: target_y = Ball->ly;
	ld	a, -23 (ix)
	ld	c, -22 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), c
	jp	00202$
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:38: if (LastTouchTeam == team) {
	ld	a, (_LastTouchTeam+0)
	sub	a, -37 (ix)
	jp	NZ,00198$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:40: u8 run_dist = g_ActiveStats[team].aggro_attack * 10; 
	ld	bc, #_g_ActiveStats+0
	ld	e, -37 (ix)
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
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:45: if (team == TEAM_1) {
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:46: offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
	ld	hl, #_SwSprite + 188
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	hl, #_SwSprite + 211
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sub	a, -7 (ix)
	ld	a, -3 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00434$
	ld	a, -7 (ix)
	ld	-4 (ix), a
	ld	a, -6 (ix)
	ld	-3 (ix), a
00434$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:47: if (offside_line < 256) offside_line = 256; // Il fuorigioco esiste solo nella metà campo offensiva
	ld	a, -4 (ix)
	ld	-7 (ix), a
	ld	a, -3 (ix)
	ld	-6 (ix), a
	sub	a, #0x01
	jr	NC, 00110$
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x01
	jp	00110$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:49: offside_line = (SwSprite[1].ly < SwSprite[2].ly) ? SwSprite[1].ly : SwSprite[2].ly;
	ld	bc, (#_SwSprite + 27)
	ld	de, (#_SwSprite + 50)
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00436$
	ld	e, c
	ld	d, b
00436$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:50: if (offside_line > 256) offside_line = 256;
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	c, e
	ld	b, d
	xor	a, a
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00110$
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x01
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:53: if (role >= 5) { // Attaccanti (Ali)
	ld	a, -2 (ix)
	sub	a, #0x05
	jp	C, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:54: target_y = Ball->ly + ((team == TEAM_1) ? (60 + run_dist) : -(60 + run_dist));
	ld	a, -23 (ix)
	ld	-8 (ix), a
	ld	a, -22 (ix)
	ld	-7 (ix), a
	ld	a, -5 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -6 (ix)
	add	a, #0x3c
	ld	-10 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00438$
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
	jp	00439$
00438$:
	xor	a, a
	sub	a, -10 (ix)
	ld	-6 (ix), a
	sbc	a, a
	sub	a, -9 (ix)
	ld	-5 (ix), a
00439$:
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	add	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-13 (ix), a
	ld	a, -5 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:56: if (role == 5) {
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	NZ, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:57: target_x = (Ball->lx > 180) ? 100 : 36; // Ala Sx (si accentra solo se palla a estrema dx)
	ld	a, #0xb4
	sub	a, -34 (ix)
	jr	NC, 00440$
	ld	-6 (ix), #0x64
	ld	-5 (ix), #0
	jp	00441$
00440$:
	ld	-6 (ix), #0x24
	ld	-5 (ix), #0
00441$:
	ld	a, -6 (ix)
	ld	-15 (ix), a
	ld	a, -5 (ix)
	ld	-14 (ix), a
	jp	00125$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:59: target_x = (Ball->lx < 76) ? 156 : 220; // Ala Dx (si accentra solo se palla a estrema sx)
	ld	a, -34 (ix)
	sub	a, #0x4c
	jr	NC, 00442$
	ld	-6 (ix), #0x9c
	ld	-5 (ix), #0
	jp	00443$
00442$:
	ld	-6 (ix), #0xdc
	ld	-5 (ix), #0
00443$:
	ld	a, -6 (ix)
	ld	-15 (ix), a
	ld	a, -5 (ix)
	ld	-14 (ix), a
	jp	00125$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:61: } else if (role >= 3) { // Centrocampisti a supporto
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:62: target_y = Ball->ly + ((team == TEAM_1) ? 24 : -24);
	ld	a, -23 (ix)
	ld	-8 (ix), a
	ld	a, -22 (ix)
	ld	-7 (ix), a
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00444$
	ld	-6 (ix), #0x18
	ld	-5 (ix), #0
	jp	00445$
00444$:
	ld	-6 (ix), #0xe8
	ld	-5 (ix), #0xff
00445$:
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	add	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-13 (ix), a
	ld	a, -5 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:63: target_x = (role == 3) ? 64 : 192; // Più larghi per coprire le fasce
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	NZ, 00446$
	ld	de, #0x0040
	jp	00447$
00446$:
	ld	de, #0x00c0
00447$:
	ld	-15 (ix), e
	ld	-14 (ix), d
	jp	00125$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:65: target_y = Ball->ly + ((team == TEAM_1) ? -64 : 64);
	ld	a, -23 (ix)
	ld	-8 (ix), a
	ld	a, -22 (ix)
	ld	-7 (ix), a
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00448$
	ld	-6 (ix), #0xc0
	ld	-5 (ix), #0xff
	jp	00449$
00448$:
	ld	-6 (ix), #0x40
	ld	-5 (ix), #0
00449$:
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	-13 (ix), l
	ld	-12 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:66: target_x = (role == 1) ? 80 : 144;
	ld	a, -2 (ix)
	dec	a
	jr	NZ, 00450$
	ld	bc, #0x0050
	jp	00451$
00450$:
	ld	bc, #0x0090
00451$:
	ld	-15 (ix), c
	ld	-14 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:68: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00115$
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	a, #0xc0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00115$
	ld	-13 (ix), #0xc0
	ld	-12 (ix), #0
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:69: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, -37 (ix)
	dec	a
	jr	NZ, 00125$
	ld	a, -13 (ix)
	ld	b, -12 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00125$
	ld	-13 (ix), #0x40
	ld	-12 (ix), #0x01
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:47: if (offside_line < 256) offside_line = 256; // Il fuorigioco esiste solo nella metà campo offensiva
	ld	c, -4 (ix)
	ld	b, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:75: u16 max_y = (role == 6 && (Secs % 5) == 0) ? offside_line + 16 : offside_line - 12;
	ld	a, -2 (ix)
	sub	a, #0x06
	ld	a, #0x01
	jr	Z, 01757$
	xor	a, a
01757$:
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:73: if (team == TEAM_1) {
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:75: u16 max_y = (role == 6 && (Secs % 5) == 0) ? offside_line + 16 : offside_line - 12;
	bit	0, -3 (ix)
	jr	Z, 00452$
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
	jr	NZ, 00452$
	ld	hl, #0x0010
	add	hl, bc
	jp	00453$
00452$:
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
00453$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:76: if (target_y > max_y) target_y = max_y;
	ld	a, l
	sub	a, -13 (ix)
	ld	a, h
	sbc	a, -12 (ix)
	jr	NC, 00127$
	ld	-13 (ix), l
	ld	-12 (ix), h
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:77: if (target_y > 440) target_y = 440; // Evita di schiacciarsi sulla linea di fondo avversaria
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	a, #0xb8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00136$
	ld	-13 (ix), #0xb8
	ld	-12 (ix), #0x01
	jp	00136$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:80: u16 min_y = (role == 6 && (Secs % 5) == 0) ? offside_line - 16 : offside_line + 12;
	bit	0, -3 (ix)
	jr	Z, 00457$
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
	jr	NZ, 00457$
	ld	a, c
	add	a, #0xf0
	ld	e, a
	ld	a, b
	adc	a, #0xff
	ld	d, a
	jp	00458$
00457$:
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
00458$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:81: if (target_y < min_y) target_y = min_y;
	ld	a, -13 (ix)
	sub	a, e
	ld	a, -12 (ix)
	sbc	a, d
	jr	NC, 00131$
	ld	-13 (ix), e
	ld	-12 (ix), d
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:82: if (target_y < 72) target_y = 72; // Evita di schiacciarsi sulla linea di fondo avversaria
	ld	a, -13 (ix)
	ld	b, -12 (ix)
	sub	a, #0x48
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00136$
	ld	-13 (ix), #0x48
	ld	-12 (ix), #0
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
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	e, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
	ld	d, h
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	a, -15 (ix)
	sub	a, l
	ld	a, -14 (ix)
	sbc	a, h
	jr	NC, 00462$
	ld	a, e
	sub	a, -15 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -14 (ix)
	jp	00463$
00462$:
	ld	a, c
	sub	a, e
	ld	e, a
	ld	a, b
	sbc	a, d
00463$:
	ld	-4 (ix), e
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:88: u16 dist_c_y = (SwSprite[LastTouchPlayer].ly > target_y) ? (SwSprite[LastTouchPlayer].ly - target_y) : (target_y - SwSprite[LastTouchPlayer].ly);
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -13 (ix)
	sub	a, e
	ld	a, -12 (ix)
	sbc	a, d
	jr	NC, 00464$
	ld	a, e
	sub	a, -13 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -12 (ix)
	jp	00465$
00464$:
	ld	a, -13 (ix)
	sub	a, e
	ld	e, a
	ld	a, -12 (ix)
	sbc	a, d
00465$:
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:89: if (dist_c_x < 48 && dist_c_y < 48) {
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -4 (ix)
	ld	h, -3 (ix)
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
	jr	NC, 00466$
	ld	hl, #0x0030
	jp	00467$
00466$:
	ld	hl, #0xffd0
00467$:
	add	hl, bc
	ld	-15 (ix), l
	ld	-14 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:91: target_y += (team == TEAM_1) ? 32 : -32; 
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00468$
	ld	hl, #0x0020
	jp	00469$
00468$:
	ld	hl, #0xffe0
00469$:
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	add	hl, bc
	ld	-13 (ix), l
	ld	-12 (ix), h
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
	jr	NZ, 00470$
	inc	c
	jp	00471$
00470$:
	dec	c
00471$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:97: u8 twin_idx = (team == TEAM_1) ? twin_role : twin_role + 7;
	ld	a, -37 (ix)
	or	a, a
	jr	Z, 00473$
	ld	a, c
	add	a, #0x07
	ld	c, a
00473$:
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
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	e, a
	ld	-11 (ix), e
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:87: u16 dist_c_x = (SwSprite[LastTouchPlayer].lx > target_x) ? (SwSprite[LastTouchPlayer].lx - target_x) : (target_x - SwSprite[LastTouchPlayer].lx);
	ld	a, -15 (ix)
	ld	-9 (ix), a
	ld	a, -14 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:99: u16 d_mx = (SwSprite[twin_idx].lx > target_x) ? (SwSprite[twin_idx].lx - target_x) : (target_x - SwSprite[twin_idx].lx);
	ld	d, #0x00
	ld	a, -15 (ix)
	sub	a, -11 (ix)
	ld	a, -14 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00474$
	ld	a, e
	sub	a, -15 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -14 (ix)
	jp	00475$
00474$:
	ld	a, -9 (ix)
	sub	a, e
	ld	e, a
	ld	a, -8 (ix)
	sbc	a, d
00475$:
	ld	-7 (ix), e
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:100: u16 d_my = (SwSprite[twin_idx].ly > target_y) ? (SwSprite[twin_idx].ly - target_y) : (target_y - SwSprite[twin_idx].ly);
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -13 (ix)
	sub	a, -5 (ix)
	ld	a, -12 (ix)
	sbc	a, -4 (ix)
	jr	NC, 00476$
	ld	a, -5 (ix)
	sub	a, -13 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sbc	a, -12 (ix)
	ld	-2 (ix), a
	jp	00477$
00476$:
	ld	a, -13 (ix)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -12 (ix)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
00477$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:101: if (d_mx < 40 && d_my < 40) {
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, e
	sub	a, #0x28
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00147$
	ld	a, c
	sub	a, #0x28
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:102: target_x += (target_x > SwSprite[twin_idx].lx) ? 24 : -24;
	ld	a, -11 (ix)
	sub	a, -15 (ix)
	ld	a, -10 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00478$
	ld	bc, #0x0018
	jp	00479$
00478$:
	ld	bc, #0xffe8
00479$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	add	hl, bc
	ld	-15 (ix), l
	ld	-14 (ix), h
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:107: if (target_x < 36) target_x = 36;
	ld	a, -15 (ix)
	ld	b, -14 (ix)
	sub	a, #0x24
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00150$
	ld	-15 (ix), #0x24
	ld	-14 (ix), #0
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:108: if (target_x > 204) target_x = 204;
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	a, #0xcc
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	NC, 00202$
	ld	-15 (ix), #0xcc
	ld	-14 (ix), #0
	jp	00202$
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:109: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	jp	Z,00195$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:111: if (role >= 5) { // Attaccanti alti
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	C, 00176$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:112: target_y = Ball->ly + ((team == TEAM_1) ? -40 : 40);
	ld	a, -23 (ix)
	ld	-6 (ix), a
	ld	a, -22 (ix)
	ld	-5 (ix), a
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00480$
	ld	-4 (ix), #0xd8
	ld	-3 (ix), #0xff
	jp	00481$
00480$:
	ld	-4 (ix), #0x28
	ld	-3 (ix), #0
00481$:
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
	ld	a, -4 (ix)
	ld	-13 (ix), a
	ld	a, -3 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:113: target_x = (role == 5) ? 80 : 144;
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	NZ, 00482$
	ld	bc, #0x0050
	jp	00483$
00482$:
	ld	bc, #0x0090
00483$:
	ld	-15 (ix), c
	ld	-14 (ix), b
	jp	00177$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:114: } else if (role >= 3) { // Centrocampisti chiudono il centro
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	C, 00173$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:115: target_y = Ball->ly + ((team == TEAM_1) ? 32 : -32);
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00484$
	ld	hl, #0x0020
	jp	00485$
00484$:
	ld	hl, #0xffe0
00485$:
	add	hl, bc
	ld	-13 (ix), l
	ld	-12 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:116: target_x = Ball->lx + ((role == 3) ? -32 : 32);
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	NZ, 00486$
	ld	-3 (ix), #0xe0
	ld	-2 (ix), #0xff
	jp	00487$
00486$:
	ld	-3 (ix), #0x20
	ld	-2 (ix), #0
00487$:
	ld	a, -31 (ix)
	add	a, -3 (ix)
	ld	c, a
	ld	a, -30 (ix)
	adc	a, -2 (ix)
	ld	-15 (ix), c
	ld	-14 (ix), a
	jp	00177$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:120: bool ball_in_own_area = (team == TEAM_1) ? (Ball->ly < 140) : (Ball->ly > 372);
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00488$
	ld	a, c
	sub	a, #0x8c
	ld	a, b
	sbc	a, #0x00
	ld	a, #0x00
	rla
	jp	00489$
00488$:
	ld	a, #0x74
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	ld	a, #0x00
	rla
00489$:
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:121: bool side_presses = (role == 1) ? (Ball->lx < 128) : (Ball->lx >= 128);
	ld	a, -2 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01770$
	xor	a, a
01770$:
	ld	-2 (ix), a
	ld	a, -34 (ix)
	sub	a, #0x80
	ld	a, #0x00
	rla
	ld	-3 (ix), a
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00491$
	ld	a, -3 (ix)
	xor	a, #0x01
	ld	-3 (ix), a
00491$:
	ld	c, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:123: if (ball_in_own_area && side_presses) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00169$
	ld	a, c
	or	a, a
	jr	Z, 00169$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:125: target_x = Ball->lx;
	ld	a, -34 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:126: target_y = Ball->ly;
	ld	a, -23 (ix)
	ld	c, -22 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), c
	jp	00177$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:127: } else if (ball_in_own_area) {
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00166$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:129: target_x = (role == 1) ? 80 : 144;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00492$
	ld	-3 (ix), #0x50
	ld	-2 (ix), #0
	jp	00493$
00492$:
	ld	-3 (ix), #0x90
	ld	-2 (ix), #0
00493$:
	ld	a, -3 (ix)
	ld	-15 (ix), a
	ld	a, -2 (ix)
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:130: target_y = (team == TEAM_1) ? 88 : 424;
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00494$
	ld	-3 (ix), #0x58
	ld	-2 (ix), #0
	jp	00495$
00494$:
	ld	-3 (ix), #0xa8
	ld	-2 (ix), #0x01
00495$:
	ld	a, -3 (ix)
	ld	-13 (ix), a
	ld	a, -2 (ix)
	ld	-12 (ix), a
	jp	00177$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:132: target_y = Ball->ly + ((team == TEAM_1) ? 80 : -80);
	ld	a, -23 (ix)
	ld	-6 (ix), a
	ld	a, -22 (ix)
	ld	-5 (ix), a
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00496$
	ld	-4 (ix), #0x50
	ld	-3 (ix), #0
	jp	00497$
00496$:
	ld	-4 (ix), #0xb0
	ld	-3 (ix), #0xff
00497$:
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-13 (ix), a
	ld	a, -3 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:133: target_x = Ball->lx + ((role == 1) ? -24 : 24);
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00498$
	ld	-3 (ix), #0xe8
	ld	-2 (ix), #0xff
	jp	00499$
00498$:
	ld	-3 (ix), #0x18
	ld	-2 (ix), #0
00499$:
	ld	a, -3 (ix)
	add	a, -31 (ix)
	ld	c, a
	ld	a, -2 (ix)
	adc	a, -30 (ix)
	ld	-15 (ix), c
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:135: if (team == TEAM_1 && target_y < 72) target_y = 72;
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00154$
	ld	a, -13 (ix)
	ld	-3 (ix), a
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	sub	a, #0x48
	ld	a, -2 (ix)
	sbc	a, #0x00
	jr	NC, 00154$
	ld	-13 (ix), #0x48
	ld	-12 (ix), #0
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:136: if (team == TEAM_2 && target_y > 440) target_y = 440;
	ld	a, -37 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01772$
	xor	a, a
01772$:
	ld	-4 (ix), a
	or	a, a
	jr	Z, 00157$
	ld	a, -13 (ix)
	ld	-3 (ix), a
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, #0xb8
	cp	a, -3 (ix)
	ld	a, #0x01
	sbc	a, -2 (ix)
	jr	NC, 00157$
	ld	-13 (ix), #0xb8
	ld	-12 (ix), #0x01
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:138: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00160$
	ld	a, -13 (ix)
	ld	-3 (ix), a
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, #0xc0
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jr	NC, 00160$
	ld	-13 (ix), #0xc0
	ld	-12 (ix), #0
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:139: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, -4 (ix)
	or	a, a
	jr	Z, 00177$
	ld	a, -13 (ix)
	ld	b, -12 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00177$
	ld	-13 (ix), #0x40
	ld	-12 (ix), #0x01
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:144: if (target_x < 36) target_x = 36;
	ld	a, -15 (ix)
	ld	b, -14 (ix)
	sub	a, #0x24
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00179$
	ld	-15 (ix), #0x24
	ld	-14 (ix), #0
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:145: if (target_x > 204) target_x = 204;
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	a, #0xcc
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	NC, 00202$
	ld	-15 (ix), #0xcc
	ld	-14 (ix), #0
	jp	00202$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:148: target_x = (role % 2 == 1) ? 80 : 144;
	ld	a, -2 (ix)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
	ld	a, c
	dec	a
	or	a, b
	jr	NZ, 00500$
	ld	bc, #0x0050
	jp	00501$
00500$:
	ld	bc, #0x0090
00501$:
	ld	-15 (ix), c
	ld	-14 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:149: target_y = Ball->ly + ((team == TEAM_1) ? -32 : 32);
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00502$
	ld	hl, #0xffe0
	jp	00503$
00502$:
	ld	hl, #0x0020
00503$:
	add	hl, bc
	ld	-13 (ix), l
	ld	-12 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:151: if (role <= 2) {
	ld	a, #0x02
	sub	a, -2 (ix)
	jr	C, 00189$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:152: if (team == TEAM_1 && target_y > 192) target_y = 192;
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00183$
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	a, #0xc0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00183$
	ld	-13 (ix), #0xc0
	ld	-12 (ix), #0
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:153: if (team == TEAM_2 && target_y < 320) target_y = 320;
	ld	a, -37 (ix)
	dec	a
	jr	NZ, 00189$
	ld	a, -13 (ix)
	ld	b, -12 (ix)
	sub	a, #0x40
	ld	a, b
	sbc	a, #0x01
	jr	NC, 00189$
	ld	-13 (ix), #0x40
	ld	-12 (ix), #0x01
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:157: if (target_x < 36) target_x = 36;
	ld	a, -15 (ix)
	ld	b, -14 (ix)
	sub	a, #0x24
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00191$
	ld	-15 (ix), #0x24
	ld	-14 (ix), #0
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:158: if (target_x > 204) target_x = 204;
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	a, #0xcc
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00202$
	ld	-15 (ix), #0xcc
	ld	-14 (ix), #0
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:201: Player->dx = (Ball->lx > Player->lx) ? 4 : -4;
	ld	a, -39 (ix)
	add	a, #0x11
	ld	-5 (ix), a
	ld	a, -38 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:202: Player->dy = 0; // Solo scivolata orizzontale
	ld	a, -39 (ix)
	add	a, #0x12
	ld	-3 (ix), a
	ld	a, -38 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:164: if ((ball_free_nearby || (LastTouchTeam != team) || (!g_is_ball_carried && (Ball->anim < 5 || LastTouchTeam != team))) && i == closest_mate) {
	ld	a, -19 (ix)
	or	a, a
	jr	NZ, 00324$
	ld	a, (_LastTouchTeam+0)
	sub	a, -37 (ix)
	ld	a, #0x01
	jr	Z, 01778$
	xor	a, a
01778$:
	ld	c, a
	bit	0, c
	jr	Z, 00324$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	NZ, 00319$
	ld	a, -18 (ix)
	sub	a, #0x05
	ld	a, -17 (ix)
	sbc	a, #0x00
	jr	C, 00324$
	bit	0, c
	jp	NZ, 00319$
00324$:
	ld	a, -1 (ix)
	sub	a, -36 (ix)
	jp	NZ,00319$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:166: u16 press_radius = 24 + (g_ActiveStats[team].aggro_defense * 8);
	ld	bc, #_g_ActiveStats+0
	ld	e, -37 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	de, #0x0004
	add	hl, de
	ld	c, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #0x0018
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:109: } else if (LastTouchTeam != 0xFF) {
	ld	a, (_LastTouchTeam+0)
	inc	a
	ld	a, #0x01
	jr	Z, 01782$
	xor	a, a
01782$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:167: if (LastTouchTeam == 0xFF || !g_is_ball_carried) press_radius = 500; // Palla libera o non controllata: vai a prenderla!
	ld	b, a
	or	a, a
	jr	NZ, 00203$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00204$
00203$:
	ld	de, #0x01f4
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:169: bool is_human_team = FALSE;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:170: if (team == TEAM_2) is_human_team = TRUE;
	ld	a, -37 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 01784$
	xor	a, a
01784$:
	ld	-7 (ix), a
	or	a, a
	jr	Z, 00210$
	ld	-8 (ix), #0x01
	jp	00211$
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:171: else if (team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human_team = TRUE;
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00211$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00211$
	ld	-8 (ix), #0x01
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:173: bool should_press = TRUE;
	ld	-6 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:175: if (LastTouchTeam != 0xFF) {
	bit	0, b
	jp	NZ, 00236$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:176: if (is_human_team && g_is_ball_carried) {
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00232$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	Z, 00232$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:180: should_press = FALSE;
	ld	-6 (ix), #0x00
	jp	00236$
00232$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:183: if (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1) press_radius = 500;
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00228$
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00228$
	ld	de, #0x01f4
	jp	00236$
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:185: else if (team == TEAM_1 && Ball->ly < 220) press_radius = 500; // Pressing asfissiante in trequarti
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00224$
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -23 (ix)
	ld	l, -22 (ix)
	sub	a, #0xdc
	ld	a, l
	sbc	a, #0x00
	jr	NC, 00224$
	ld	de, #0x01f4
	jp	00236$
00224$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:186: else if (team == TEAM_2 && Ball->ly > 292) press_radius = 500;
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00220$
	ld	b, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x24
	cp	a, b
	ld	a, #0x01
	sbc	a, l
	jr	NC, 00220$
	ld	de, #0x01f4
	jp	00236$
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:187: else if (team == TEAM_1 && Ball->ly < 256) press_radius += 48; // Inizia il pressing nella propria metà campo
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00216$
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -22 (ix)
	sub	a, #0x01
	jr	NC, 00216$
	ld	hl, #0x0030
	add	hl, de
	ex	de, hl
	jp	00236$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:188: else if (team == TEAM_2 && Ball->ly > 256) press_radius += 48;
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00236$
	ld	b, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	cp	a, b
	ld	a, #0x01
	sbc	a, l
	jr	NC, 00236$
	ld	hl, #0x0030
	add	hl, de
	ex	de, hl
00236$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:192: if (should_press && b_dist_x < press_radius && b_dist_y < press_radius) {
	ld	a, -6 (ix)
	or	a, a
	jp	Z, 00319$
	ld	a, -29 (ix)
	sub	a, e
	ld	a, -28 (ix)
	sbc	a, d
	jp	NC, 00319$
	ld	a, -21 (ix)
	sub	a, e
	ld	a, -20 (ix)
	sbc	a, d
	jp	NC, 00319$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:193: target_x = Ball->lx;
	ld	a, -34 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:194: target_y = Ball->ly;
	ld	a, -23 (ix)
	ld	b, -22 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:32: bool ball_free_nearby = (!g_is_ball_carried && b_dist_x <= 48 && b_dist_y <= 48);
	ld	a, -29 (ix)
	ld	-9 (ix), a
	ld	a, -28 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:33: if (Ball->anim == 5 && LastTouchTeam == team) ball_free_nearby = FALSE; // Non disturbare i propri passaggi
	ld	a, (_LastTouchTeam+0)
	sub	a, -37 (ix)
	ld	a, #0x01
	jr	Z, 01788$
	xor	a, a
01788$:
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:197: if (g_is_ball_carried && LastTouchTeam != team && b_dist_x <= 48 && b_dist_y <= 24 && Player->count == 0 && RestartType == 0) {
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00240$
	ld	b, -7 (ix)
	bit	0, b
	jp	NZ, 00240$
	ld	a, #0x30
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jp	C, 00240$
	ld	b, -21 (ix)
	ld	e, -20 (ix)
	ld	a, #0x18
	cp	a, b
	ld	a, #0x00
	sbc	a, e
	jp	C, 00240$
	ld	a, -39 (ix)
	add	a, #0x15
	ld	-29 (ix), a
	ld	a, -38 (ix)
	adc	a, #0x00
	ld	-28 (ix), a
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	or	a, b
	jp	NZ, 00240$
	ld	a, (_RestartType+0)
	or	a, a
	jr	NZ, 00240$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:198: u8 slide_chance = 20 + (g_ActiveStats[team].aggro_defense * 15); 
	ld	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	add	a, #0x14
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:199: if ((Frms + i * 7) % 100 < slide_chance) {
	ld	a, (_Frms+0)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	e, -11 (ix)
	ld	d, -10 (ix)
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
	jp	PO, 01789$
	xor	a, #0x80
01789$:
	jp	P, 00240$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:200: Player->count = 8; // durata scivolata (corta e chirurgica)
	ld	l, -29 (ix)
	ld	h, -28 (ix)
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:201: Player->dx = (Ball->lx > Player->lx) ? 4 : -4;
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	sub	a, c
	jr	NC, 00504$
	ld	-7 (ix), #0x04
	ld	-6 (ix), #0
	jp	00505$
00504$:
	ld	-7 (ix), #0xfc
	ld	-6 (ix), #0xff
00505$:
	ld	a, -7 (ix)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:202: Player->dy = 0; // Solo scivolata orizzontale
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:203: return; // Esce e inizia la scivolata dal prossimo frame
	jp	00416$
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:208: bool is_free_ball = (!g_is_ball_carried);
	ld	a, (_g_is_ball_carried+0)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:209: bool can_steal_standing = FALSE;
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:211: if (LastTouchTeam == team || is_free_ball) {
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00289$
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00290$
00289$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:212: if (b_dist_x <= 20 && b_dist_y <= 20) can_steal_standing = TRUE;
	ld	a, #0x14
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jp	C, 00291$
	ld	c, -21 (ix)
	ld	e, -20 (ix)
	ld	a, #0x14
	cp	a, c
	ld	a, #0x00
	sbc	a, e
	jp	C, 00291$
	ld	b, #0x01
	jp	00291$
00290$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:213: } else if (b_dist_x <= 14 && b_dist_y <= 14) {
	ld	a, #0x0e
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jp	C, 00291$
	ld	c, -21 (ix)
	ld	e, -20 (ix)
	ld	a, #0x0e
	cp	a, c
	ld	a, #0x00
	sbc	a, e
	jp	C, 00291$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:214: u8 opp_idx = LastTouchPlayer;
	ld	a, (_LastTouchPlayer+0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:215: if (opp_idx != 0xFF) {
	cp	a, #0xff
	jp	Z,00291$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:216: i8 opp_dx = SwSprite[opp_idx].dx;
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
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	de, #17
	add	hl, de
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:217: i8 opp_dy = SwSprite[opp_idx].dy;
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	hl, #18
	add	hl, de
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:219: if (opp_dx == 0 && opp_dy == 0) {
	ld	a, -8 (ix)
	or	a,a
	jr	NZ, 00281$
	or	a,e
	jr	NZ, 00281$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:220: can_steal_standing = TRUE; // Avversario fermo
	ld	b, #0x01
	jp	00291$
00281$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:223: bool face_to_face = FALSE;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:224: if (opp_dx > 0 && Player->lx > SwSprite[opp_idx].lx) face_to_face = TRUE;
	xor	a, a
	ld	c, a
	sub	a, -8 (ix)
	jp	PO, 01791$
	xor	a, #0x80
01791$:
	rlca
	and	a,#0x01
	ld	-9 (ix), a
	or	a, a
	jr	Z, 00250$
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	sub	a, -35 (ix)
	jr	NC, 00250$
	ld	c, #0x01
00250$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:225: if (opp_dx < 0 && Player->lx < SwSprite[opp_idx].lx) face_to_face = TRUE;
	ld	a, -8 (ix)
	rlca
	and	a,#0x01
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00253$
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a,-35 (ix)
	sub	a,(hl)
	jr	NC, 00253$
	ld	c, #0x01
00253$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:226: if (opp_dy > 0 && Player->ly > SwSprite[opp_idx].ly) face_to_face = TRUE;
	xor	a, a
	sub	a, e
	jp	PO, 01792$
	xor	a, #0x80
01792$:
	rlca
	and	a,#0x01
	ld	-19 (ix), a
	or	a, a
	jr	Z, 00256$
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	d, (hl)
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	a, d
	sub	a, -25 (ix)
	ld	a, l
	sbc	a, -24 (ix)
	jr	NC, 00256$
	ld	c, #0x01
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:227: if (opp_dy < 0 && Player->ly < SwSprite[opp_idx].ly) face_to_face = TRUE;
	ld	a, e
	rlca
	and	a,#0x01
	ld	d, a
	or	a, a
	jr	Z, 00259$
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	a, -25 (ix)
	sub	a, e
	ld	a, -24 (ix)
	sbc	a, l
	jr	NC, 00259$
	ld	c, #0x01
00259$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:230: bool overtaking = FALSE;
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:231: if (opp_dx > 0 && Player->dx > 0 && Player->lx >= Ball->lx - 4) overtaking = TRUE;
	ld	a, -9 (ix)
	or	a, a
	jr	Z, 00262$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	l, (hl)
;	spillPairReg hl
	xor	a, a
	sub	a, l
	jp	PO, 01793$
	xor	a, #0x80
01793$:
	jp	P, 00262$
	ld	a, -31 (ix)
	add	a, #0xfc
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -30 (ix)
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -33 (ix)
	sub	a, l
	ld	a, -32 (ix)
	sbc	a, h
	jp	PO, 01794$
	xor	a, #0x80
01794$:
	jp	M, 00262$
	ld	e, #0x01
00262$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:232: if (opp_dx < 0 && Player->dx < 0 && Player->lx <= Ball->lx + 4) overtaking = TRUE;
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00266$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
;	spillPairReg hl
	bit	7, (hl)
	jr	Z, 00266$
	ld	a, -31 (ix)
	add	a, #0x04
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -30 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, -33 (ix)
	ld	a, h
	sbc	a, -32 (ix)
	jp	PO, 01795$
	xor	a, #0x80
01795$:
	jp	M, 00266$
	ld	e, #0x01
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:233: if (opp_dy > 0 && Player->dy > 0 && Player->ly >= Ball->ly - 4) overtaking = TRUE;
	ld	a, -19 (ix)
	or	a, a
	jr	Z, 00270$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	l, (hl)
;	spillPairReg hl
	xor	a, a
	sub	a, l
	jp	PO, 01796$
	xor	a, #0x80
01796$:
	jp	P, 00270$
	ld	a, -23 (ix)
	ld	l, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	a, #0xfc
	ld	-9 (ix), a
	ld	a, l
	adc	a, #0xff
	ld	-8 (ix), a
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -25 (ix)
	ld	h, -24 (ix)
	sub	a, -9 (ix)
	ld	a, h
	sbc	a, -8 (ix)
	jr	C, 00270$
	ld	e, #0x01
00270$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:234: if (opp_dy < 0 && Player->dy < 0 && Player->ly <= Ball->ly + 4) overtaking = TRUE;
	ld	a, d
	or	a, a
	jr	Z, 00274$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	d, (hl)
	bit	7, d
	jr	Z, 00274$
	ld	l, -23 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -22 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, -25 (ix)
	ld	-9 (ix), a
	ld	a, -24 (ix)
	ld	-8 (ix), a
	ld	a, l
	sub	a, -9 (ix)
	ld	a, h
	sbc	a, -8 (ix)
	jr	C, 00274$
	ld	e, #0x01
00274$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:236: if (face_to_face || overtaking) can_steal_standing = TRUE;
	ld	a, c
	or	a,a
	jr	NZ, 00277$
	or	a,e
	jr	Z, 00291$
00277$:
	ld	b, #0x01
00291$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:242: bool is_flying_pass = (Ball->anim == 5);
	ld	a, -16 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:243: if (can_steal_standing && (Ball->anim < 5 || (is_flying_pass && LastTouchTeam != team)) && Ball->count == 0 && RestartType == 0) {
	ld	a, b
	or	a, a
	jp	Z, 00319$
	ld	a, -18 (ix)
	sub	a, #0x05
	ld	a, -17 (ix)
	sbc	a, #0x00
	jr	C, 00312$
	ld	a, -8 (ix)
	or	a, a
	jp	Z, 00319$
	ld	c, -7 (ix)
	bit	0, c
	jp	NZ, 00319$
00312$:
	ld	hl, (#(_SwSprite + 343) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00319$
	ld	a, (_RestartType+0)
	or	a, a
	jp	NZ, 00319$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:244: if (LastTouchTeam != team) { // Solo se furto da avversario o palla libera
	ld	c, -7 (ix)
	bit	0, c
	jr	NZ, 00305$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:245: Ball->count = is_free_ball ? 2 : 16;
	ld	de, #(_SwSprite + 343)
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00506$
	ld	bc, #0x0002
	jp	00507$
00506$:
	ld	bc, #0x0010
00507$:
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:246: LastTouchTeam = team;
	ld	a, -37 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:247: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:248: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:249: if (is_flying_pass) {
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00296$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:250: Ball->anim = 3; // Blocca la palla a terra
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:251: Ball->dx = 0; Ball->dy = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:252: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0);
	xor	a, a
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00297$
00296$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:253: } else if (Ball->anim > 3) Ball->anim = 3; 
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00297$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:254: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
	jp	00319$
00305$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:255: } else if (is_free_ball && LastTouchTeam == team && LastTouchPlayer != i) {
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00319$
	ld	a, -7 (ix)
	or	a, a
	jr	Z, 00319$
	ld	a, (_LastTouchPlayer+0)
	sub	a, -1 (ix)
	jr	Z, 00319$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:257: LastTouchPlayer = i;
	ld	a, -1 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:258: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:259: if (Ball->anim > 3) Ball->anim = 3; 
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00299$
	ld	hl, #0x0003
	ld	((_SwSprite + 341)), hl
00299$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:260: Ball->frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
00319$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:267: bool is_cpu_team = (GameMode == GAMEMODE_P1_VS_CPU && team == TEAM_1);
	ld	a, (_GameMode+0)
	or	a, a
	jr	NZ, 00508$
	ld	a, -37 (ix)
	or	a, a
	jr	Z, 00509$
00508$:
	ld	c, #0x00
	jp	00510$
00509$:
	ld	c, #0x01
00510$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:268: if (is_cpu_team && i == closest_mate && LastTouchTeam == team && g_is_ball_carried) {
	ld	a, c
	or	a, a
	jp	Z, 00385$
	ld	a, -36 (ix)
	sub	a, -1 (ix)
	jp	NZ,00385$
	ld	a, (_LastTouchTeam+0)
	sub	a, -37 (ix)
	jp	NZ,00385$
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jp	Z, 00385$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:269: u16 d_bx = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	e, (hl)
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-8 (ix), a
	ld	-17 (ix), e
	ld	-16 (ix), #0x00
	ld	c, -8 (ix)
	ld	b, #0x00
	ld	a, -8 (ix)
	sub	a, e
	jr	NC, 00511$
	ld	a, -17 (ix)
	sub	a, c
	ld	c, a
	ld	a, -16 (ix)
	sbc	a, b
	jp	00512$
00511$:
	ld	a, c
	sub	a, -17 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -16 (ix)
00512$:
	ld	-10 (ix), c
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:270: u16 d_by = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, c
	ld	a, -6 (ix)
	sbc	a, b
	jr	NC, 00513$
	ld	a, c
	sub	a, -7 (ix)
	ld	e, a
	ld	a, b
	sbc	a, -6 (ix)
	jp	00514$
00513$:
	ld	a, -7 (ix)
	sub	a, c
	ld	e, a
	ld	a, -6 (ix)
	sbc	a, b
00514$:
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:271: if (d_bx + d_by <= 26) {
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	add	hl, de
	ld	a, #0x1a
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	ld	a, #0x00
	rla
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	bit	0, l
	jp	NZ, 00382$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:273: target_x = 128; 
	ld	-15 (ix), #0x80
	ld	-14 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:274: target_y = 480; 
	ld	-13 (ix), #0xe0
	ld	-12 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:277: if (d_bx + d_by <= 26 && Ball->anim == 0) {
	bit	0, l
	jp	NZ, 00385$
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00385$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:278: bool action_taken = FALSE;
	ld	-28 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:282: if (Player->ly > 258 && Field.ly == 320) {
	ld	-11 (ix), c
	ld	-10 (ix), b
	ld	a, #0x02
	cp	a, -11 (ix)
	ld	a, #0x01
	sbc	a, -10 (ix)
	jp	NC, 00341$
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x40
	jp	NZ,00341$
	ld	a, -6 (ix)
	dec	a
	jp	NZ,00341$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:283: u8 rand_shot = (Player->lx + Frms) % 100;
	ld	a, (_Frms+0)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -9 (ix)
	add	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, -16 (ix)
	ld	-6 (ix), a
	ld	de, #0x0064
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:284: u8 shot_prob = 0;
	ld	-7 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:285: if (Player->ly > 380) {
	ld	a, #0x7c
	cp	a, -11 (ix)
	ld	a, #0x01
	sbc	a, -10 (ix)
	jr	NC, 00331$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:287: shot_prob = 50 + (g_ActiveStats[team].aggro_attack * 6); // 56-80%
	ld	c, -37 (ix)
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
	ld	-7 (ix), a
	jp	00332$
00331$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:288: } else if (Player->ly > 300) {
	ld	a, #0x2c
	cp	a, -11 (ix)
	ld	a, #0x01
	sbc	a, -10 (ix)
	jr	NC, 00328$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:290: shot_prob = 18 + (g_ActiveStats[team].aggro_attack * 5); // 23-43%
	ld	c, -37 (ix)
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
	ld	-7 (ix), a
	jp	00332$
00328$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:291: } else if (Player->ly > 260) {
	ld	a, #0x04
	cp	a, -11 (ix)
	ld	a, #0x01
	sbc	a, -10 (ix)
	jr	NC, 00332$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:293: shot_prob = 6 + (g_ActiveStats[team].aggro_attack * 3); // 9-21%
	ld	c, -37 (ix)
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
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0005
	add	hl, de
	ld	a, (hl)
	ld	c, a
	add	a, a
	add	a, c
	add	a, #0x06
	ld	-7 (ix), a
00332$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:295: if (shot_prob > 0 && rand_shot < shot_prob) {
	ld	a, -7 (ix)
	or	a, a
	jp	Z, 00341$
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jp	NC, 00341$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:296: action_taken = TRUE;
	ld	-28 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:297: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:298: g_pass_receiver = 0xFF;
	ld	hl, #_g_pass_receiver
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:299: g_pass_start_x = Player->lx;
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:300: g_pass_start_y = Player->ly;
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:301: g_pass_target_x = g_h_arrow_x; // Freccia non visibile ma oscilla come quella umana
	ld	hl, (_g_h_arrow_x)
	ld	(_g_pass_target_x), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:302: g_pass_target_y = 496; // Dentro la porta Sud
	ld	hl, #0x01f0
	ld	(_g_pass_target_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:304: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00515$
	ld	bc, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, bc
	jp	00516$
00515$:
	ld	bc, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, bc
00516$:
	ld	-11 (ix), l
	ld	-10 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:305: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	inc	hl
	sub	a, #0xf0
	ld	a, (hl)
	sbc	a, #0x01
	jr	NC, 00517$
	ld	hl, #_g_pass_start_y
	ld	a, #0xf0
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, #0x01
	sbc	a, (hl)
	ld	-6 (ix), a
	jp	00518$
00517$:
	ld	a, (_g_pass_start_y+0)
	add	a, #0x10
	ld	-7 (ix), a
	ld	a, (_g_pass_start_y+1)
	adc	a, #0xfe
	ld	-6 (ix), a
00518$:
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:307: g_pass_max_frames = (r_dx + r_dy) / 8; // Tiro potente
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	srl	-6 (ix)
	rr	-7 (ix)
	srl	-6 (ix)
	rr	-7 (ix)
	srl	-6 (ix)
	rr	-7 (ix)
	ld	a, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:308: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	(_g_pass_max_frames+0), a
	sub	a, #0x0a
	jr	NC, 00334$
	ld	hl, #_g_pass_max_frames
	ld	(hl), #0x0a
00334$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:309: if (g_pass_max_frames > 25) g_pass_max_frames = 25;
	ld	a, #0x19
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00336$
	ld	0 (iy), #0x19
00336$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:310: g_pass_max_height = 2; // Tiro rasoterra e limitato
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:312: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:313: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00341$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:318: if (!action_taken && Frms % 16 == 0) {
	ld	a, -28 (ix)
	or	a, a
	jp	NZ, 00363$
	ld	a, (_Frms+0)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	and	a, #0x0f
	jp	NZ,00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:319: u8 rand_pass = (Player->lx * 5 + Player->ly * 3 + Frms) % 100;
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	l, -27 (ix)
	ld	h, -26 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:322: u8 pass_prob = 10 + (g_ActiveStats[team].pass_tendency * 10);
	ld	c, -37 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:323: if (rand_pass < pass_prob) {
	ld	a, e
	sub	a, c
	jp	NC, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:326: i8 pass_dx = (ai_last_dx[i] > 0) ? 1 : ((ai_last_dx[i] < 0) ? -1 : 0);
	ld	bc, #_ai_last_dx+0
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01806$
	xor	a, #0x80
01806$:
	jp	P, 00519$
	ld	de, #0x0001
	jp	00520$
00519$:
	bit	7, c
	jr	Z, 00521$
	ld	de, #0xffff
	jp	00522$
00521$:
	ld	de, #0x0000
00522$:
00520$:
	ld	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:328: u8 receiver = (u8)CallFnc_U16_P4B(SEG_HELPERS, FindReceiver, i, 0xFF, pass_dx, pass_dy);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:329: if (receiver != 0xFF) {
	ld	-11 (ix), e
	ld	a, e
	inc	a
	jp	Z,00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:331: if (SwSprite[receiver].ly > Player->ly - 16) {
	ld	c, -11 (ix)
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
	ld	-25 (ix), l
	ld	-24 (ix), h
	ld	a, -25 (ix)
	add	a, #0x04
	ld	-23 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-22 (ix), a
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	ld	-30 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-29 (ix), a
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	a, (hl)
	ld	-21 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-20 (ix), a
	ld	a, -21 (ix)
	ld	b, -20 (ix)
	add	a, #0xf0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	a, -30 (ix)
	ld	-19 (ix), a
	ld	a, -29 (ix)
	ld	-18 (ix), a
	ld	a, c
	sub	a, -19 (ix)
	ld	a, b
	sbc	a, -18 (ix)
	jp	NC, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:332: u16 r_dx = (SwSprite[receiver].lx > Player->lx) ? (SwSprite[receiver].lx - Player->lx) : (Player->lx - SwSprite[receiver].lx);
	ld	l, -25 (ix)
	ld	h, -24 (ix)
	ld	c, (hl)
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	b, (hl)
	ld	-17 (ix), c
	ld	-16 (ix), #0x00
	ld	-9 (ix), b
	ld	-8 (ix), #0x00
	ld	a, b
	sub	a, c
	jr	NC, 00523$
	ld	a, -17 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -16 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	jp	00524$
00523$:
	ld	a, -9 (ix)
	sub	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -16 (ix)
	ld	-6 (ix), a
00524$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:333: u16 r_dy = (SwSprite[receiver].ly > Player->ly) ? (SwSprite[receiver].ly - Player->ly) : (Player->ly - SwSprite[receiver].ly);
	ld	a, -21 (ix)
	sub	a, -30 (ix)
	ld	a, -20 (ix)
	sbc	a, -29 (ix)
	jr	NC, 00525$
	ld	a, -30 (ix)
	sub	a, -21 (ix)
	ld	e, a
	ld	a, -29 (ix)
	sbc	a, -20 (ix)
	jp	00526$
00525$:
	ld	a, -21 (ix)
	sub	a, -30 (ix)
	ld	e, a
	ld	a, -20 (ix)
	sbc	a, -29 (ix)
00526$:
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:335: if (r_dx + r_dy >= 48) {
	add	hl, bc
	ld	-17 (ix), l
	ld	-16 (ix), h
	ld	a, -17 (ix)
	sub	a, #0x30
	ld	a, -16 (ix)
	sbc	a, #0x00
	jp	C, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:336: action_taken = TRUE;
	ld	-28 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:339: bool is_offside = FALSE;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:340: if (team == TEAM_1) {
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00349$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:341: u16 offside_line = (SwSprite[8].ly > SwSprite[9].ly) ? SwSprite[8].ly : SwSprite[9].ly;
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
	jr	NC, 00527$
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	ld	-6 (ix), a
00527$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:342: if (Player->ly > offside_line) offside_line = Player->ly;
	ld	a, c
	sub	a, -21 (ix)
	ld	a, b
	sbc	a, -20 (ix)
	jr	NC, 00344$
	ld	c, -21 (ix)
	ld	b, -20 (ix)
00344$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:343: if (SwSprite[receiver].ly > offside_line + 8 && SwSprite[receiver].ly > 256) is_offside = TRUE;
	ld	hl, #0x0008
	add	hl, bc
	ld	a, l
	sub	a, -19 (ix)
	ld	a, h
	sbc	a, -18 (ix)
	jr	NC, 00349$
	xor	a, a
	cp	a, -19 (ix)
	ld	a, #0x01
	sbc	a, -18 (ix)
	jr	NC, 00349$
	ld	-8 (ix), #0x01
00349$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:346: Ball->anim = 0; Ball->count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:347: g_pass_receiver = receiver | (is_offside ? 0x80 : 0);
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00529$
	ld	a, #0x80
	ld	c, #0x00
	jp	00530$
00529$:
	xor	a, a
	ld	c, a
00530$:
	or	a, -11 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:348: g_pass_start_x = Player->lx;
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:349: g_pass_start_y = Player->ly;
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:350: g_pass_target_x = SwSprite[receiver].lx;
	ld	l, -25 (ix)
	ld	h, -24 (ix)
	ld	a, (hl)
	ld	(_g_pass_target_x+0), a
	ld	hl, #_g_pass_target_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:351: g_pass_target_y = SwSprite[receiver].ly;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:352: g_pass_max_frames = (r_dx + r_dy) / 5;
	ld	de, #0x0005
	ld	l, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -16 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:353: if (g_pass_max_frames < 8) g_pass_max_frames = 8;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x08
	jr	NC, 00351$
	ld	0 (iy), #0x08
00351$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:354: if (g_pass_max_frames > 34) g_pass_max_frames = 34;
	ld	a, #0x22
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00353$
	ld	0 (iy), #0x22
00353$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:355: g_pass_max_height = 7;
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:357: Ball->anim = 5;
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:358: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
00363$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:366: if (!action_taken) {
	ld	a, -28 (ix)
	or	a, a
	jp	NZ, 00385$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:367: i8 move_dx = (Player->dx > 0) ? 1 : ((Player->dx < 0) ? -1 : 0);
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 01808$
	xor	a, #0x80
01808$:
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:370: if (Player->ly > 450) {
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:251: Ball->dx = 0; Ball->dy = 0;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:370: if (Player->ly > 450) {
	ld	a, #0xc2
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00374$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:371: Ball->dx = 0; Ball->dy = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:372: Ball->anim = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
	jp	00385$
00374$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:374: i8 off_x = 0;
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:375: i8 off_y = (move_dx != 0) ? 13 : 8;
	ld	a, e
	or	a, a
	jr	Z, 00535$
	ld	hl, #0x000d
	jp	00536$
00535$:
	ld	hl, #0x0008
00536$:
	ld	d, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:376: if (move_dx > 0) off_x = 8; else if (move_dx < 0) off_x = -8;
	xor	a, a
	sub	a, e
	jp	PO, 01809$
	xor	a, #0x80
01809$:
	jp	P, 00368$
	ld	c, #0x08
	jp	00369$
00368$:
	bit	7, e
	jr	Z, 00369$
	ld	c, #0xf8
00369$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:378: Ball->lx = (u8)((i16)Player->lx + off_x);
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	add	a, c
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:379: Ball->ly = (u16)((i16)Player->ly + off_y) & 511;
	ld	l, -27 (ix)
	ld	h, -26 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:243: if (can_steal_standing && (Ball->anim < 5 || (is_flying_pass && LastTouchTeam != team)) && Ball->count == 0 && RestartType == 0) {
	ld	bc, #(_SwSprite + 322) + 21
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:381: if (move_dx == 0) {
	ld	a, e
	or	a, a
	jr	NZ, 00371$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:383: Ball->dx = 0; Ball->dy = 1;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:384: Ball->anim = 4; Ball->count = 0;
	ld	hl, #0x0004
	ld	((_SwSprite + 341)), hl
	xor	a, a
	ld	(bc), a
	inc	bc
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:385: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00385$
00371$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:388: Ball->dx = move_dx; Ball->dy = 1;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), e
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:389: Ball->anim = 2; Ball->count = 0;
	ld	hl, #0x0002
	ld	((_SwSprite + 341)), hl
	xor	a, a
	ld	(bc), a
	inc	bc
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:390: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00385$
00382$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:397: target_x = Ball->lx;
	ld	a, -8 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:398: target_y = Ball->ly;
	ld	a, -7 (ix)
	ld	c, -6 (ix)
	ld	-13 (ix), a
	ld	-12 (ix), c
00385$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:403: if (target_x < 16) target_x = 16; 
	ld	a, -15 (ix)
	ld	b, -14 (ix)
	sub	a, #0x10
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00390$
	ld	-15 (ix), #0x10
	ld	-14 (ix), #0
00390$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:404: if (target_x > 224) target_x = 224;
	ld	c, -15 (ix)
	ld	b, -14 (ix)
	ld	a, #0xe0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00392$
	ld	-15 (ix), #0xe0
	ld	-14 (ix), #0
00392$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:405: if (target_y < 24) target_y = 24;
	ld	a, -13 (ix)
	ld	b, -12 (ix)
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00394$
	ld	-13 (ix), #0x18
	ld	-12 (ix), #0
00394$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:406: if (target_y > 478) target_y = 478;
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	a, #0xde
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00396$
	ld	-13 (ix), #0xde
	ld	-12 (ix), #0x01
00396$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:410: u16 dist_x = (target_x > Player->lx) ? (target_x - Player->lx) : (Player->lx - target_x);
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	ld	c, a
	ld	b, #0x00
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, c
	sub	a, -15 (ix)
	ld	a, b
	sbc	a, -14 (ix)
	jr	NC, 00537$
	ld	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
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
	jp	00538$
00537$:
	ld	a, -7 (ix)
	ld	c, -6 (ix)
	sub	a, -15 (ix)
	ld	-7 (ix), a
	ld	a, c
	sbc	a, -14 (ix)
	ld	-6 (ix), a
00538$:
	ld	a, -7 (ix)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:411: u16 dist_y = (target_y > Player->ly) ? (target_y - Player->ly) : (Player->ly - target_y);
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -13 (ix)
	ld	a, -6 (ix)
	sbc	a, -12 (ix)
	jr	NC, 00539$
	ld	a, -13 (ix)
	sub	a, -7 (ix)
	ld	-17 (ix), a
	ld	a, -12 (ix)
	sbc	a, -6 (ix)
	ld	-16 (ix), a
	jp	00540$
00539$:
	ld	a, -7 (ix)
	sub	a, -13 (ix)
	ld	-17 (ix), a
	ld	a, -6 (ix)
	sbc	a, -12 (ix)
	ld	-16 (ix), a
00540$:
	ld	a, -17 (ix)
	ld	-8 (ix), a
	ld	a, -16 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:414: u8 speed = 1;
	ld	-6 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:416: if (dist_x > 24 || dist_y > 24 || (LastTouchTeam == team && i == closest_mate) || (!g_is_ball_carried && Ball->anim < 5 && i == closest_mate)) speed = 2;
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00397$
	ld	a, -8 (ix)
	ld	-17 (ix), a
	ld	a, -7 (ix)
	ld	-16 (ix), a
	ld	a, #0x18
	cp	a, -17 (ix)
	ld	a, #0x00
	sbc	a, -16 (ix)
	jr	C, 00397$
	ld	a, (_LastTouchTeam+0)
	sub	a, -37 (ix)
	jr	NZ, 00404$
	ld	a, -1 (ix)
	sub	a, -36 (ix)
	jr	Z, 00397$
00404$:
	ld	a, (_g_is_ball_carried+0)
	or	a, a
	jr	NZ, 00398$
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-17 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-16 (ix), a
	ld	a, -17 (ix)
	sub	a, #0x05
	ld	a, -16 (ix)
	sbc	a, #0x00
	jr	NC, 00398$
	ld	a, -1 (ix)
	sub	a, -36 (ix)
	jr	NZ, 00398$
00397$:
	ld	-6 (ix), #0x02
00398$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:418: Player->dx = 0; Player->dy = 0;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x00
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:420: if (dist_x > speed) Player->dx = (target_x > Player->lx) ? speed : -speed;
	ld	a, -6 (ix)
	ld	-19 (ix), a
	ld	-18 (ix), #0x00
	ld	a, -19 (ix)
	sub	a, -10 (ix)
	ld	a, -18 (ix)
	sbc	a, -9 (ix)
	jr	NC, 00406$
	ld	a, -5 (ix)
	ld	-17 (ix), a
	ld	a, -4 (ix)
	ld	-16 (ix), a
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, -10 (ix)
	sub	a, -15 (ix)
	ld	a, -9 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00541$
	ld	a, -6 (ix)
	ld	-9 (ix), a
	jp	00542$
00541$:
	xor	a, a
	sub	a, -6 (ix)
	ld	-9 (ix), a
00542$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
00406$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:421: if (dist_y > speed) Player->dy = (target_y > Player->ly) ? speed : -speed;
	ld	a, -19 (ix)
	sub	a, -8 (ix)
	ld	a, -18 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00408$
	ld	a, -3 (ix)
	ld	-8 (ix), a
	ld	a, -2 (ix)
	ld	-7 (ix), a
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -13 (ix)
	ld	a, b
	sbc	a, -12 (ix)
	jr	NC, 00543$
	ld	a, -6 (ix)
	jp	00544$
00543$:
	xor	a, a
	sub	a, -6 (ix)
00544$:
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), a
00408$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:423: if (Player->dx != 0 || Player->dy != 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:432: Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
	ld	a, -39 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -38 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:423: if (Player->dx != 0 || Player->dy != 0) {
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00412$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	or	a, a
	jp	Z, 00413$
00412$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:424: ai_last_dx[i] = Player->dx;
	ld	a, #<(_ai_last_dx)
	add	a, -1 (ix)
	ld	-10 (ix), a
	ld	a, #>(_ai_last_dx)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:425: ai_last_dy[i] = Player->dy;
	ld	a, #<(_ai_last_dy)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_ai_last_dy)
	adc	a, #0x00
	ld	b, a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:427: Player->lx += Player->dx;
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	add	a, c
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:428: Player->ly += Player->dy;
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	rlca
	sbc	a, a
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	add	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, -10 (ix)
	ld	-8 (ix), a
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:430: Player->anim++;
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	de, #0x0013
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	inc	bc
	ld	-9 (ix), c
	ld	-8 (ix), b
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:431: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-43 (ix), #0x00
	ld	-42 (ix), #0x01
	ld	-41 (ix), #0x02
	ld	-40 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:432: Player->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, Player->dx, Player->dy, walk_seq[(Player->anim / 3) % 4]);
	ld	de, #0x0003
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	a, -9 (ix)
	and	a, #0x03
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, (hl)
	ld	-8 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	b, (hl)
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00416$
00413$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:27: u16 b_dist_x = (Player->lx > Ball->lx) ? (Player->lx - Ball->lx) : (Ball->lx - Player->lx);
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:435: i8 dir_x = (Ball->lx > Player->lx + 4) ? 1 : ((Ball->lx < Player->lx - 4) ? -1 : 0);
	ld	l, -39 (ix)
	ld	h, -38 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	l, a
	ld	h, #0x00
	ld	de, #0x0004
	add	hl, de
	ld	-5 (ix), c
	ld	-4 (ix), #0x00
	ld	a, l
	sub	a, -5 (ix)
	ld	a, h
	sbc	a, -4 (ix)
	jp	PO, 01815$
	xor	a, #0x80
01815$:
	jp	P, 00545$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00546$
00545$:
	ld	a, -9 (ix)
	add	a, #0xfc
	ld	-3 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sub	a, -3 (ix)
	ld	a, -4 (ix)
	sbc	a, -2 (ix)
	jp	PO, 01816$
	xor	a, #0x80
01816$:
	jp	P, 00547$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00548$
00547$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00548$:
00546$:
	ld	a, -3 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:28: u16 b_dist_y = (Player->ly > Ball->ly) ? (Player->ly - Ball->ly) : (Ball->ly - Player->ly);
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:436: i8 dir_y = (Ball->ly > Player->ly + 4) ? 1 : ((Ball->ly < Player->ly - 4) ? -1 : 0);
	ld	l, -27 (ix)
	ld	h, -26 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	add	a, #0x04
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -3 (ix)
	ld	a, -8 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00549$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00550$
00549$:
	ld	a, -11 (ix)
	add	a, #0xfc
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0xff
	ld	-8 (ix), a
	ld	a, -3 (ix)
	sub	a, -9 (ix)
	ld	a, -2 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00551$
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
	jp	00552$
00551$:
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00552$:
00550$:
	ld	a, -3 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:437: if (dir_x == 0 && dir_y == 0) {
	ld	a, -4 (ix)
	or	a, a
	jr	NZ, 00410$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ, 00410$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:438: dir_y = (team == TEAM_1) ? 1 : -1;
	ld	a, -37 (ix)
	or	a, a
	jr	NZ, 00553$
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
	jp	00554$
00553$:
	ld	-3 (ix), #0xff
	ld	-2 (ix), #0xff
00554$:
	ld	a, -3 (ix)
	ld	-2 (ix), a
00410$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:440: Player->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, dir_x, dir_y);
	ld	h, -2 (ix)
	ld	l, -4 (ix)
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
00416$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s21_b3.c:442: }
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
