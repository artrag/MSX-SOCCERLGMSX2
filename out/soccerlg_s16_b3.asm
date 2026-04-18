;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s16_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ShowMenu
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _EventPenaltyWhistle
	.globl _SetBallSprite
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
	.globl _UpdateGameState_Penalties
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
	.area _SEG16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:11: void UpdateGameState_Penalties(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
;	---------------------------------
; Function UpdateGameState_Penalties
; ---------------------------------
_UpdateGameState_Penalties::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-36
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:15: if (*game_state >= 12 && *game_state <= 17) { // --- RIGORI ---
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	sub	a, #0x0c
	jp	C, 00380$
	ld	a, #0x11
	sub	a, -8 (ix)
	jp	C, 00380$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:17: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:20: if (*game_state == 16 || *game_state == 17) {
	ld	a, -8 (ix)
	sub	a, #0x10
	ld	a, #0x01
	jr	Z, 01314$
	xor	a, a
01314$:
	ld	-1 (ix), a
	or	a, a
	jr	NZ, 00101$
	ld	a, -8 (ix)
	sub	a, #0x11
	jr	NZ, 00102$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:21: keeper_idx = (g_penalty_shooter_idx < 7) ? 7 : 0; // Il portiere che ha appena finito
	ld	a, (_g_penalty_shooter_idx+0)
	sub	a, #0x07
	jr	NC, 00382$
	ld	-7 (ix), #0x07
	ld	-6 (ix), #0
	jp	00383$
00382$:
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
00383$:
	ld	a, -7 (ix)
	ld	-28 (ix), a
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:23: keeper_idx = (g_penalty_team == TEAM_1) ? 7 : 0; // Il portiere che deve parare
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00384$
	ld	-7 (ix), #0x07
	ld	-6 (ix), #0
	jp	00385$
00384$:
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
00385$:
	ld	a, -7 (ix)
	ld	-28 (ix), a
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:26: if(*game_state == 12) { // STATO 12: Setup del prossimo rigore
	ld	a, -8 (ix)
	sub	a, #0x0c
	jp	NZ,00362$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:27: g_is_penalty_shootout = TRUE; // Attiva la modalità rigori
	ld	hl, #_g_is_penalty_shootout
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:30: bool match_over = FALSE;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:31: if (g_penalty_shot_count[0] == g_penalty_shot_count[1] && g_penalty_shot_count[0] >= 5) {
	ld	a, (#_g_penalty_shot_count + 0)
	ld	-1 (ix), a
	ld	a, (#_g_penalty_shot_count + 1)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00119$
	ld	a, -1 (ix)
	sub	a, #0x05
	jr	C, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:32: if (ScoreTeam1 != ScoreTeam2) {
	ld	a, (_ScoreTeam1+0)
	ld	hl, #_ScoreTeam2
	sub	a, (hl)
	jr	Z, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:33: match_over = TRUE;
	ld	-10 (ix), #0x01
	jp	00120$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:34: } else if (g_penalty_shot_count[0] == 5) {
	ld	a, -1 (ix)
	sub	a, #0x05
	jp	NZ,00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:36: for (u8 i = 27; i < 37; i++) SwSprite[i].ly = 1000;
	ld	c, #0x1b
00368$:
	ld	a, c
	sub	a, #0x25
	jp	NC, 00120$
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
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x03
	inc	c
	jp	00368$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:38: } else if (g_penalty_shot_count[0] <= 5 && g_penalty_shot_count[1] <= 5) {
	ld	a, #0x05
	sub	a, -1 (ix)
	jr	C, 00120$
	ld	a, #0x05
	sub	a, -6 (ix)
	jr	C, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:39: u8 rem1 = 5 - g_penalty_shot_count[0];
	ld	c, -1 (ix)
	ld	a, #0x05
	sub	a, c
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:40: u8 rem2 = 5 - g_penalty_shot_count[1];
	ld	c, -6 (ix)
	ld	a, #0x05
	sub	a, c
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:41: if (ScoreTeam1 > ScoreTeam2 + rem2) match_over = TRUE;
	ld	a, (_ScoreTeam2+0)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	b, #0x00
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	add	hl, bc
	ld	a, (_ScoreTeam1+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, l
	sub	a, -7 (ix)
	ld	a, h
	sbc	a, -6 (ix)
	jp	PO, 01324$
	xor	a, #0x80
01324$:
	jp	P, 00112$
	ld	-10 (ix), #0x01
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:42: if (ScoreTeam2 > ScoreTeam1 + rem1) match_over = TRUE;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, bc
	ld	a, l
	sub	a, -9 (ix)
	ld	a, h
	sbc	a, -8 (ix)
	jp	PO, 01325$
	xor	a, #0x80
01325$:
	jp	P, 00120$
	ld	-10 (ix), #0x01
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:45: if (match_over) {
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:46: *game_state = 17; // Vittoria rigori
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:47: *wait_secs = 6; *start_sec = Frms;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x06
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:48: g_is_penalty_shootout = FALSE; // Turn off to allow generic behavior if needed
	ld	iy, #_g_is_penalty_shootout
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:49: return;
	jp	00380$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:53: u8 shooter_role = 1 + (g_penalty_shot_count[g_penalty_team] % 6);
	ld	iy, #_g_penalty_shot_count
	ld	de, (_g_penalty_team)
	ld	d, #0x00
	add	iy, de
	ld	l, 0 (iy)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0006
	call	__modsint
	inc	e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:54: g_penalty_shooter_idx = (g_penalty_team == TEAM_1) ? shooter_role : shooter_role + 7;
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	Z, 00387$
	ld	a, e
	add	a, #0x07
	ld	e, a
00387$:
	ld	iy, #_g_penalty_shooter_idx
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:58: Ball->lx = 120; Ball->ty = 80; Ball->tx = 120; Ball->ly = 80;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
	ld	hl, #0x0050
	ld	((_SwSprite + 335)), hl
	ld	hl, #(_SwSprite + 334)
	ld	(hl), #0x78
	ld	hl, #0x0050
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:59: Ball->anim = 0; Ball->frame = SPR_BALL_SIZE_1;
	ld	l, h
	ld	((_SwSprite + 341)), hl
	ld	l, #0x60
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:62: SwSprite[g_penalty_shooter_idx].tx = 120;     // Tiratore dietro la palla
	ld	bc, (_g_penalty_shooter_idx)
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
	ld	bc, #0x000c
	add	hl, bc
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:63: SwSprite[g_penalty_shooter_idx].ty = 96;      // 80 + 16
	ld	bc, (_g_penalty_shooter_idx)
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
	ld	bc, #0x000d
	add	hl, bc
	ld	(hl), #0x60
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:64: SwSprite[keeper_idx].tx = 120;                // Portiere al centro della porta
	ld	c, -28 (ix)
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
	ld	hl, #0x000c
	add	hl, de
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:65: SwSprite[keeper_idx].ty = 32;
	ld	hl, #0x000d
	add	hl, de
	ld	(hl), #0x20
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:66: SwSprite[26].tx = 62;                         // Arbitro a lato dell'area
	ld	hl, #(_SwSprite + 610)
	ld	(hl), #0x3e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:67: SwSprite[26].ty = 56;
	ld	hl, #0x0038
	ld	((_SwSprite + 611)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:70: for(u8 i=0; i<=26; i++) {
	ld	c, #0x00
00371$:
	ld	a, #0x1a
	sub	a, c
	jr	C, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:71: if(i == g_penalty_shooter_idx || i == keeper_idx || i == 26 || (i>=14 && i<26)) continue;
	ld	a, (_g_penalty_shooter_idx+0)
	sub	a, c
	jr	Z, 00130$
	ld	a, -28 (ix)
	sub	a, c
	jr	Z, 00130$
	ld	a,c
	cp	a,#0x1a
	jr	Z, 00130$
	cp	a,#0x0e
	jr	C, 00125$
	sub	a, #0x1a
	jr	C, 00130$
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:72: SwSprite[i].lx = SwSprite[i].tx;
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
	push	de
	pop	iy
	ld	a, 12 (iy)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:73: SwSprite[i].ly = SwSprite[i].ty;
	ld	hl, #0x0004
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	hl, #13
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:70: for(u8 i=0; i<=26; i++) {
	inc	c
	jp	00371$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:76: *game_state = 13; // Passa alla fase di avvicinamento
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0d
	jp	00363$
00362$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:78: else if(*game_state == 13) { // STATO 13: Avvicinamento al dischetto
	ld	a, -8 (ix)
	sub	a, #0x0d
	jp	NZ,00359$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:79: bool all_in_position = TRUE;
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:82: u16 cam_target = (SwSprite[keeper_idx].ly < 96) ? 0 : SwSprite[keeper_idx].ly - 96;
	ld	c, -28 (ix)
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
	ld	-26 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -6 (ix)
	ld	-25 (ix), a
	ld	a, -26 (ix)
	ld	-7 (ix), a
	ld	a, -25 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, #0x60
	ld	a, -8 (ix)
	sbc	a, #0x00
	jr	NC, 00388$
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00389$
00388$:
	ld	a, -9 (ix)
	add	a, #0xa0
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-6 (ix), a
00389$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:83: if (Field.ly > cam_target + 3) { Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE; }
	ld	de, (#(_Field + 4) + 0)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, l
	sub	a, -7 (ix)
	ld	a, h
	sbc	a, -6 (ix)
	jr	NC, 00139$
	ld	hl, #(_Field + 18)
	ld	(hl), #0xfc
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 18) + 0)
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
	ld	((_Field + 4)), de
	ld	-27 (ix), #0x00
	jp	00535$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:84: else if (Field.ly + 3 < cam_target) { Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE; }
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	xor	a, a
	sbc	hl, bc
	jr	NC, 00136$
	ld	hl, #(_Field + 18)
	ld	(hl), #0x04
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 18) + 0)
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
	ld	((_Field + 4)), de
	ld	-27 (ix), #0x00
	jp	00535$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:85: else if (Field.ly != cam_target) { Field.dy = (i8)(cam_target - Field.ly); Field.ly = cam_target; all_in_position = FALSE; }
	ld	l, c
	ld	h, b
	cp	a, a
	sbc	hl, de
	jr	Z, 00133$
	ld	a, c
	sub	a, e
	ld	hl, #(_Field + 18)
	ld	(hl), a
	ld	((_Field + 4)), bc
	ld	-27 (ix), #0x00
	jp	00535$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:86: else { Field.dy = 0; }
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:88: for(u8 i=0; i<3; i++) {
00535$:
	ld	-1 (ix), #0x00
00373$:
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NC, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:89: u8 actor_idx = (i == 0) ? g_penalty_shooter_idx : ((i == 1) ? keeper_idx : 26);
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00390$
	ld	a, (_g_penalty_shooter_idx+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	jp	00391$
00390$:
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00392$
	ld	a, -28 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	jp	00393$
00392$:
	ld	-7 (ix), #0x1a
	ld	-6 (ix), #0
00393$:
00391$:
	ld	a, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:90: struct ObjectInfo* p = &SwSprite[actor_idx];
	ld	-24 (ix), a
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
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-23 (ix), a
	ld	a, -6 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:93: u8 final_tx = (actor_idx == 26) ? 62 : 120; 
	ld	a, -24 (ix)
	sub	a, #0x1a
	jr	NZ, 00394$
	ld	bc, #0x003e
	jp	00395$
00394$:
	ld	bc, #0x0078
00395$:
	ld	-6 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:95: if (actor_idx == g_penalty_shooter_idx && p->ly > p->ty + 4) current_tx = 96;
	ld	a, -23 (ix)
	add	a, #0x04
	ld	-21 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-20 (ix), a
	ld	a, -23 (ix)
	add	a, #0x0d
	ld	-19 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
	ld	a, -24 (ix)
	ld	hl, #_g_penalty_shooter_idx
	sub	a, (hl)
	jr	NZ, 00142$
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	add	a, #0x04
	ld	-10 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	a, -10 (ix)
	sub	a, -8 (ix)
	ld	a, -9 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00142$
	ld	-6 (ix), #0x60
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:96: if (actor_idx == keeper_idx && p->ly > p->ty + 4) current_tx = 144;
	ld	a, -24 (ix)
	sub	a, -28 (ix)
	ld	a, #0x01
	jr	Z, 01339$
	xor	a, a
01339$:
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00145$
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -14 (ix)
	add	a, #0x04
	ld	-12 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
	ld	a, -12 (ix)
	sub	a, -10 (ix)
	ld	a, -11 (ix)
	sbc	a, -9 (ix)
	jr	NC, 00145$
	ld	-6 (ix), #0x90
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:98: if (p->lx != current_tx || p->ly != p->ty) {
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:101: if (current_tx > p->lx) p->dx = (i8)((current_tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:105: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:111: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:98: if (p->lx != current_tx || p->ly != p->ty) {
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NZ, 00159$
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
	jp	Z,00160$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:99: all_in_position = FALSE;
	ld	-27 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:101: if (current_tx > p->lx) p->dx = (i8)((current_tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NC, 00151$
	ld	a, -6 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00396$
	ld	de, #0x0002
	jp	00397$
00396$:
	ld	de, #0x0001
00397$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), e
	jp	00152$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:102: else if (current_tx < p->lx) p->dx = (i8)((p->lx - current_tx >= 2) ? -2 : -1); 
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NC, 00148$
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -6 (ix)
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
	jr	C, 00398$
	ld	a, #0xfe
	jp	00399$
00398$:
	ld	a, #0xff
00399$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00152$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:103: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:105: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
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
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00157$
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	C, 00400$
	ld	de, #0x0002
	jp	00401$
00400$:
	ld	de, #0x0001
00401$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	jp	00158$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:106: else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00154$
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	ld	b, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	sub	a, #0x02
	ld	a, b
	sbc	a, #0x00
	jr	C, 00402$
	ld	a, #0xfe
	jp	00403$
00402$:
	ld	a, #0xff
00403$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00158$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:107: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:109: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	c, (hl)
	add	a, c
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	(hl), a
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
	ld	l, -23 (ix)
	ld	h, -22 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:110: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x02
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:111: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
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
	ld	a, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	b, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	d, (hl)
	push	af
	inc	sp
	ld	c, d
	push	bc
	ld	a, -24 (ix)
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
	jp	00374$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:113: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:114: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, actor_idx, 0, (i8)((actor_idx == keeper_idx) ? 1 : -1));
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00404$
	ld	bc, #0x0001
	jp	00405$
00404$:
	ld	bc, #0xffff
00405$:
	ld	a, c
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	a, -24 (ix)
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
00374$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:88: for(u8 i=0; i<3; i++) {
	inc	-1 (ix)
	jp	00373$
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:118: if (all_in_position) {
	ld	a, -27 (ix)
	or	a, a
	jp	Z, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:119: CallFnc_VOID(SEG_EVENTS, EventPenaltyWhistle);
	ld	de, #_EventPenaltyWhistle
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:120: *wait_secs = 5; *start_sec = Frms;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x05
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:121: SwSprite[keeper_idx].dx = 1; // Resetta scelta tuffo al centro
	ld	a, -26 (ix)
	add	a, #0x11
	ld	-7 (ix), a
	ld	a, -25 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:122: *game_state = 14;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0e
	jp	00363$
00359$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:125: else if(*game_state == 14) { // STATO 14: Mira e Tiro
	ld	a, -8 (ix)
	sub	a, #0x0e
	jp	NZ,00356$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:126: struct ObjectInfo* Keeper = &SwSprite[keeper_idx];
	ld	c, -28 (ix)
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
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:127: u8 keeper_team_idx = (keeper_idx == 0) ? 0 : 1;
	ld	a, -28 (ix)
	or	a, a
	jr	NZ, 00406$
	ld	de, #0x0000
	jp	00407$
00406$:
	ld	de, #0x0001
00407$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:128: bool is_keeper_human = (keeper_team_idx == TEAM_1) || (keeper_team_idx == TEAM_2 && GameMode == GAMEMODE_P1_VS_P2);
	ld	-1 (ix), e
	ld	a, e
	or	a, a
	jr	Z, 00409$
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00408$
	ld	a, (_GameMode+0)
	dec	a
	jr	Z, 00409$
00408$:
	ld	e, #0x00
	jp	00410$
00409$:
	ld	e, #0x01
00410$:
	ld	-11 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:129: bool is_shooter_human = (g_penalty_team == TEAM_1) || (g_penalty_team == TEAM_2 && GameMode == GAMEMODE_P1_VS_P2);
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	Z, 00415$
	ld	a, (_g_penalty_team+0)
	dec	a
	jr	NZ, 00414$
	ld	a, (_GameMode+0)
	dec	a
	jr	Z, 00415$
00414$:
	xor	a, a
	jp	00416$
00415$:
	ld	a, #0x01
00416$:
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:130: bool do_shot = FALSE;
	ld	-9 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:131: u8 shot_dir = 1; // 0=sx, 1=centro, 2=dx
	ld	-8 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:134: SwSprite[25].ly = 1000;
	ld	hl, #0x03e8
	ld	((_SwSprite + 579)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:137: if(is_keeper_human) {
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00176$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:138: u8 k_dir = g_player_input[keeper_team_idx].direction;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, -15 (ix)
	add	a, #<(_g_player_input)
	ld	-7 (ix), a
	ld	a, -14 (ix)
	adc	a, #>(_g_player_input)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:139: if(k_dir == DIRECTION_LEFT || k_dir == DIRECTION_UP_LEFT || k_dir == DIRECTION_DOWN_LEFT) Keeper->dx = 0; 
	cp	a, #0x07
	jr	Z, 00170$
	cp	a, #0x08
	jr	Z, 00170$
	cp	a, #0x06
	jr	NZ, 00171$
00170$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
	jp	00176$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:140: else if (k_dir == DIRECTION_RIGHT || k_dir == DIRECTION_UP_RIGHT || k_dir == DIRECTION_DOWN_RIGHT) Keeper->dx = 2; 
	cp	a, #0x03
	jr	Z, 00166$
	cp	a, #0x02
	jr	Z, 00166$
	sub	a, #0x04
	jr	NZ, 00176$
00166$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x02
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:144: if(is_shooter_human) {
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:145: u8 dir = g_player_input[g_penalty_team].direction;
	ld	bc, (_g_penalty_team)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, #<(_g_player_input)
	add	a, -15 (ix)
	ld	-7 (ix), a
	ld	a, #>(_g_player_input)
	adc	a, -14 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:146: if(dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT) shot_dir = 0;
	ld	-1 (ix), a
	sub	a, #0x07
	jr	Z, 00182$
	ld	a, -1 (ix)
	sub	a, #0x08
	jr	Z, 00182$
	ld	a, -1 (ix)
	sub	a, #0x06
	jr	NZ, 00183$
00182$:
	ld	-8 (ix), #0x00
	jp	00184$
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:147: else if(dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) shot_dir = 2;
	ld	a, -1 (ix)
	sub	a, #0x03
	jr	Z, 00177$
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	Z, 00177$
	ld	a, -1 (ix)
	sub	a, #0x04
	jr	NZ, 00178$
00177$:
	ld	-8 (ix), #0x02
	jp	00184$
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:148: else shot_dir = 1;
	ld	-8 (ix), #0x01
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:150: if(g_player_input[g_penalty_team].trigger_pressed) do_shot = TRUE; // Impedisce tiri accidentali
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	inc	hl
	ld	a, (hl)
	or	a, a
	jr	Z, 00193$
	ld	-9 (ix), #0x01
	jp	00193$
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:153: u8 target_wait = 2 + (Frms % 3); // random tra 2, 3 o 4 (pari a 3s, 2s, 1s di attesa)
	ld	a, (_Frms+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	de, #0x0003
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
	ld	-1 (ix), a
	inc	-1 (ix)
	inc	-1 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:154: if(*wait_secs <= target_wait) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	C, 00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:155: do_shot = TRUE;
	ld	-9 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:156: shot_dir = Frms % 3; // CPU sceglie a caso
	ld	a, -7 (ix)
	ld	-8 (ix), a
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:160: if (*start_sec < Frms) { if (*wait_secs > 0) (*wait_secs)--; }
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	c, a
	ld	hl, #_Frms
	ld	a, c
	sub	a, (hl)
	jr	NC, 00197$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00197$
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:161: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:164: if (*wait_secs == 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jr	NZ, 00201$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:165: do_shot = TRUE;
	ld	-9 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:166: if (is_shooter_human) shot_dir = Frms % 3;
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00201$
	ld	a, (_Frms+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	de, #0x0003
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
	ld	-8 (ix), a
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:169: if(do_shot) {
	ld	a, -9 (ix)
	or	a, a
	jp	Z, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:170: *wait_secs = 0; // Prepara il timer per lo stato 15
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:172: u8 target_x_pos[] = {92, 120, 148};
	ld	-31 (ix), #0x5c
	ld	-30 (ix), #0x78
	ld	-29 (ix), #0x94
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:173: g_pass_start_x = Ball->lx; g_pass_start_y = Ball->ly;
	ld	a, (#(_SwSprite + 322) + 0)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 322) + 4
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:174: g_pass_target_x = target_x_pos[shot_dir]; g_pass_target_y = 16;
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	hl, #5
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
	ld	-1 (ix), a
	ld	(_g_pass_target_x+0), a
	ld	hl, #_g_pass_target_x + 1
	ld	(hl), #0x00
	ld	hl, #0x0010
	ld	(_g_pass_target_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:175: g_pass_max_frames = 15; g_pass_max_height = 1; // Tiro basso e veloce (dimensione 1)
	ld	a, #0x0f
	ld	(#_g_pass_max_frames), a
	ld	a, #0x01
	ld	(#_g_pass_max_height), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:176: g_pass_receiver = 0xFF;
	ld	a, #0xff
	ld	(#_g_pass_receiver), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:177: Ball->anim = 5; Ball->count = 1;
	ld	l, #0x05
	ld	((_SwSprite + 341)), hl
	ld	l, #0x01
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:180: SwSprite[g_penalty_shooter_idx].frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, g_penalty_shooter_idx, 0, (i8)-1);
	ld	bc, (_g_penalty_shooter_idx)
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
	ld	a, -7 (ix)
	add	a, #<(_SwSprite)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	adc	a, #>(_SwSprite)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, #0xff
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	a, (_g_penalty_shooter_idx+0)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:184: if(is_keeper_human) {
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00203$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:185: dive_dir = Keeper->dx; // Usa la direzione memorizzata
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	hl, #17
	add	hl, bc
	ld	a, (hl)
	ld	-1 (ix), a
	jp	00204$
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:187: dive_dir = (Frms + g_penalty_shot_count[0]) % 3;
	ld	a, (_Frms+0)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	a, (#_g_penalty_shot_count + 0)
	ld	-1 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, -15 (ix)
	add	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -14 (ix)
	adc	a, -9 (ix)
	ld	-6 (ix), a
	ld	de, #0x0003
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-1 (ix), e
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:192: Keeper->frame = SPR_GK_PLAYER_DOWN_EAST;
	ld	a, -13 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:191: if(dive_dir == 0) { // Tuffo a Sinistra (X=92)
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:192: Keeper->frame = SPR_GK_PLAYER_DOWN_EAST;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xee
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:193: Keeper->lx = 84; // Sposta il body a 84, mani della maglietta a 92
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x54
	jp	00210$
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:195: else if(dive_dir == 2) { // Tuffo a Destra (X=148)
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	NZ, 00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:196: Keeper->frame = SPR_GK_PLAYER_DOWN_WEST;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0xef
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:197: Keeper->lx = 156; // Sposta il body a 156, mani della maglietta a 148
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x9c
	jp	00210$
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:200: Keeper->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, keeper_idx, 0, 1); // Posa in attesa centrale
	ld	a, #0x01
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	a, -28 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P3
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:201: Keeper->lx = 120;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x78
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:205: if(dive_dir == shot_dir) {
	ld	a, -8 (ix)
	sub	a, -1 (ix)
	jr	NZ, 00215$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:206: g_pass_max_frames = 10; // Tiro smorzato
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), #0x0a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:207: if (shot_dir == 1) {
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00212$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:208: g_pass_target_y = 40;   // Fermiamo la palla prima per farla fermare sul petto
	ld	hl, #0x0028
	ld	(_g_pass_target_y), hl
	jp	00215$
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:210: g_pass_target_y = 32;   // Tuffo laterale, manteniamo 32
	ld	hl, #0x0020
	ld	(_g_pass_target_y), hl
00215$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:214: *game_state = 15;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0f
	jp	00363$
00356$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:217: else if(*game_state == 15) { // STATO 15: Attesa esito rigore
	ld	a, -8 (ix)
	sub	a, #0x0f
	jp	NZ,00353$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:218: if (Ball->anim == 5) {
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	a, c
	sub	a, #0x05
	or	a, b
	jp	NZ,00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:219: u8 progress = Ball->count;
	ld	a, (#(_SwSprite + 343) + 0)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:220: i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
	ld	hl, (_g_pass_target_x)
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	hl, (_g_pass_start_x)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -13 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:221: i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
	ld	hl, (_g_pass_target_y)
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	hl, (_g_pass_start_y)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -15 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -14 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:58: Ball->lx = 120; Ball->ty = 80; Ball->tx = 120; Ball->ly = 80;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:223: if (progress >= g_pass_max_frames) {
	ld	hl, #_g_pass_max_frames
	ld	a, -11 (ix)
	sub	a, (hl)
	jr	C, 00231$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:224: Ball->lx = g_pass_target_x;
	ld	a, (_g_pass_target_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:225: Ball->ly = g_pass_target_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_target_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:226: Ball->anim = 0; // Tiro terminato
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:227: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); // Ripristina grandezza a terra
	xor	a, a
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:229: if (Ball->ly <= 24 && Ball->lx >= 82 && Ball->lx <= 156) {
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	a, #0x18
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	C, 00222$
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	a, c
	sub	a, #0x52
	jr	C, 00222$
	ld	a, #0x9c
	sub	a, c
	jr	C, 00222$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:230: if (g_penalty_team == TEAM_2) ScoreTeam2++; else ScoreTeam1++;
	ld	a, (_g_penalty_team+0)
	dec	a
	jr	NZ, 00219$
	ld	hl, #_ScoreTeam2
	inc	(hl)
	jp	00220$
00219$:
	ld	hl, #_ScoreTeam1
	inc	(hl)
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:231: RestartType = RESTART_GOAL; // Segnala il goal per poter attivare l'esultanza
	ld	iy, #_RestartType
	ld	0 (iy), #0x05
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:233: *wait_secs = 2; // Inizializza attesa post-tiro prima di cambiare giocatore
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:234: *start_sec = Frms;
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00363$
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:236: Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
	ld	a, (_g_pass_start_x+0)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	-15 (ix), e
	ld	-14 (ix), d
	ld	a, (_g_pass_max_frames+0)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	l, -15 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	-13 (ix), e
	ld	-12 (ix), d
	ld	a, -13 (ix)
	ld	-1 (ix), a
	add	a, -8 (ix)
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:237: Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
	ld	hl, (_g_pass_start_y)
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	a, (_g_pass_max_frames+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	a, -9 (ix)
	add	a, -13 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, -12 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:238: Ball->count++;
	ld	hl, #(_SwSprite + 343)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x01
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 343)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:242: u8 half_frame = g_pass_max_frames >> 1;
	ld	a, (_g_pass_max_frames+0)
	srl	a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:244: scale = (progress * g_pass_max_height) / half_frame;
	ld	-1 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:243: if (progress <= half_frame) {
	ld	a, -1 (ix)
	sub	a, -11 (ix)
	jr	C, 00226$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:244: scale = (progress * g_pass_max_height) / half_frame;
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
01379$:
	add	hl, hl
	jr	NC, 01380$
	add	hl, de
01380$:
	djnz	01379$
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	call	__divsint
	ld	-1 (ix), e
	jp	00227$
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:246: u8 progress_down = progress - half_frame;
	ld	a, -11 (ix)
	sub	a, -1 (ix)
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:247: scale = g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
	ld	a, (#_g_pass_max_height + 0)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
01381$:
	add	hl, hl
	jr	NC, 01382$
	add	hl, de
01382$:
	djnz	01381$
	ld	a, (_g_pass_max_frames+0)
	ld	c, #0x00
	sub	a, -7 (ix)
	ld	e, a
	ld	a, c
	sbc	a, -6 (ix)
	ld	d, a
	call	__divsint
	ld	a, (_g_pass_max_height+0)
	sub	a, e
	ld	-1 (ix), a
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:249: if (scale > 7) scale = 7;
	ld	a, #0x07
	sub	a, -1 (ix)
	jr	NC, 00229$
	ld	-1 (ix), #0x07
00229$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:250: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00363$
00263$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:252: } else if(Ball->anim == 0) { // Attesa post-tiro
	ld	a, -6 (ix)
	or	a, -7 (ix)
	jp	NZ, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:253: if (*start_sec < Frms) { 
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	c, a
	ld	hl, #_Frms
	ld	a, c
	sub	a, (hl)
	jr	NC, 00236$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:254: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00236$
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
00236$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:256: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:258: if (*wait_secs == 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:260: u8 shot_idx = g_penalty_shot_count[g_penalty_team];
	ld	a, #<(_g_penalty_shot_count)
	ld	hl, #_g_penalty_team
	add	a, (hl)
	ld	c, a
	ld	a, #>(_g_penalty_shot_count)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:261: if (shot_idx < 5) {
	ld	-1 (ix), a
	sub	a, #0x05
	jp	NC, 00241$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:262: u8 spr_idx = (g_penalty_team == TEAM_1) ? (27 + shot_idx) : (32 + shot_idx);
	ld	a, -1 (ix)
	ld	-6 (ix), a
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00420$
	ld	a, -6 (ix)
	add	a, #0x1b
	ld	-6 (ix), a
	jp	00421$
00420$:
	ld	a, -6 (ix)
	add	a, #0x20
	ld	-6 (ix), a
00421$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:263: bool scored = (RestartType == RESTART_GOAL);
	ld	a, (_RestartType+0)
	sub	a, #0x05
	ld	a, #0x01
	jr	Z, 01384$
	xor	a, a
01384$:
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:265: SwSprite[spr_idx].lx = 32 + shot_idx * 12;
	ld	c, -6 (ix)
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
	ld	a, -1 (ix)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:266: SwSprite[spr_idx].ly = 16; // Dietro la porta a Y=16
	ld	a, -11 (ix)
	add	a, #0x04
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:267: SwSprite[spr_idx].frame = scored ? SPR_T1_O : SPR_T1_X;
	ld	a, -11 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:264: if (g_penalty_team == TEAM_1) {
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00238$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:265: SwSprite[spr_idx].lx = 32 + shot_idx * 12;
	ld	a, -1 (ix)
	add	a, #0x20
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:266: SwSprite[spr_idx].ly = 16; // Dietro la porta a Y=16
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:267: SwSprite[spr_idx].frame = scored ? SPR_T1_O : SPR_T1_X;
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00422$
	ld	-9 (ix), #0x2f
	ld	-8 (ix), #0
	jp	00423$
00422$:
	ld	-9 (ix), #0x16
	ld	-8 (ix), #0
00423$:
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00241$
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:269: SwSprite[spr_idx].lx = 168 + shot_idx * 12;
	ld	a, -1 (ix)
	add	a, #0xa8
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:270: SwSprite[spr_idx].ly = 16; // Dietro la porta a Y=16
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:271: SwSprite[spr_idx].frame = scored ? SPR_T2_O : SPR_T2_X;
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00424$
	ld	-9 (ix), #0x9f
	ld	-8 (ix), #0
	jp	00425$
00424$:
	ld	-9 (ix), #0x86
	ld	-8 (ix), #0
00425$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
00241$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:275: g_penalty_shot_count[g_penalty_team]++;
	ld	a, #<(_g_penalty_shot_count)
	ld	hl, #_g_penalty_team
	add	a, (hl)
	ld	-7 (ix), a
	ld	a, #>(_g_penalty_shot_count)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	inc	a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:276: g_penalty_team = (g_penalty_team == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00426$
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
	jp	00427$
00426$:
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
00427$:
	ld	a, -7 (ix)
	ld	(_g_penalty_team+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:279: Ball->ly = 1000;
	ld	hl, #0x03e8
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:282: u8 p_idx = g_penalty_shooter_idx;
	ld	a, (_g_penalty_shooter_idx+0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:283: u8 role = (p_idx < 7) ? p_idx : p_idx - 7;
	ld	-6 (ix), a
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00428$
	ld	a, -6 (ix)
	ld	-1 (ix), a
	jp	00429$
00428$:
	ld	a, -6 (ix)
	ld	-1 (ix), a
	add	a, #0xf9
	ld	-1 (ix), a
00429$:
	ld	a, -1 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:284: u8 t_cx = (p_idx < 7) ? 64 : 192;
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00430$
	ld	-9 (ix), #0x40
	ld	-8 (ix), #0
	jp	00431$
00430$:
	ld	-9 (ix), #0xc0
	ld	-8 (ix), #0
00431$:
	ld	a, -9 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:285: i8 off_x = 0; i8 off_y = 0;
	ld	-11 (ix), #0x00
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:286: switch(role) {
	ld	a, #0x06
	sub	a, -7 (ix)
	jr	C, 00249$
	ld	c, -7 (ix)
	ld	b, #0x00
	ld	hl, #01385$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
01385$:
	jp	00242$
	jp	00243$
	jp	00244$
	jp	00245$
	jp	00246$
	jp	00247$
	jp	00248$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:287: case 0: off_x = -18; off_y = -18; break; case 1: off_x =   2; off_y = -18; break;
00242$:
	ld	-11 (ix), #0xee
	ld	-10 (ix), #0xee
	jp	00249$
00243$:
	ld	-11 (ix), #0x02
	ld	-10 (ix), #0xee
	jp	00249$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:288: case 2: off_x =  22; off_y = -18; break; case 3: off_x = -22; off_y =   2; break;
00244$:
	ld	-11 (ix), #0x16
	ld	-10 (ix), #0xee
	jp	00249$
00245$:
	ld	-11 (ix), #0xea
	ld	-10 (ix), #0x02
	jp	00249$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:289: case 4: off_x =  -2; off_y =   2; break; case 5: off_x =  18; off_y =   2; break;
00246$:
	ld	-11 (ix), #0xfe
	ld	-10 (ix), #0x02
	jp	00249$
00247$:
	ld	-11 (ix), #0x12
	ld	-10 (ix), #0x02
	jp	00249$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:290: case 6: off_x = -10; off_y =  22; break;
00248$:
	ld	-11 (ix), #0xf6
	ld	-10 (ix), #0x16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:291: }
00249$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:292: SwSprite[p_idx].tx = (u8)(t_cx + off_x); SwSprite[p_idx].ty = (u16)(256 + off_y);
	ld	c, -6 (ix)
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
	ld	a, -7 (ix)
	add	a, #<(_SwSprite)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	adc	a, #>(_SwSprite)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x0c
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -1 (ix)
	add	a, -11 (ix)
	ld	-1 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	add	a, #0x0d
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -10 (ix)
	ld	-13 (ix), a
	rlca
	sbc	a, a
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	a
	ld	-8 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:294: p_idx = keeper_idx;
	ld	a, -28 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:295: role = (p_idx < 7) ? p_idx : p_idx - 7;
	ld	a, -28 (ix)
	sub	a, #0x07
	jr	NC, 00432$
	ld	a, -28 (ix)
	ld	-1 (ix), a
	jp	00433$
00432$:
	ld	a, -28 (ix)
	ld	-1 (ix), a
	add	a, #0xf9
	ld	-1 (ix), a
00433$:
	ld	a, -1 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:296: t_cx = (p_idx < 7) ? 64 : 192;
	ld	a, -6 (ix)
	sub	a, #0x07
	jr	NC, 00434$
	ld	-8 (ix), #0x40
	ld	-7 (ix), #0
	jp	00435$
00434$:
	ld	-8 (ix), #0xc0
	ld	-7 (ix), #0
00435$:
	ld	a, -8 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:297: switch(role) {
	ld	a, #0x06
	sub	a, -9 (ix)
	jr	C, 00257$
	ld	c, -9 (ix)
	ld	b, #0x00
	ld	hl, #01386$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
01386$:
	jp	00250$
	jp	00251$
	jp	00252$
	jp	00253$
	jp	00254$
	jp	00255$
	jp	00256$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:298: case 0: off_x = -18; off_y = -18; break; case 1: off_x =   2; off_y = -18; break;
00250$:
	ld	-11 (ix), #0xee
	ld	-10 (ix), #0xee
	jp	00257$
00251$:
	ld	-11 (ix), #0x02
	ld	-10 (ix), #0xee
	jp	00257$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:299: case 2: off_x =  22; off_y = -18; break; case 3: off_x = -22; off_y =   2; break;
00252$:
	ld	-11 (ix), #0x16
	ld	-10 (ix), #0xee
	jp	00257$
00253$:
	ld	-11 (ix), #0xea
	ld	-10 (ix), #0x02
	jp	00257$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:300: case 4: off_x =  -2; off_y =   2; break; case 5: off_x =  18; off_y =   2; break;
00254$:
	ld	-11 (ix), #0xfe
	ld	-10 (ix), #0x02
	jp	00257$
00255$:
	ld	-11 (ix), #0x12
	ld	-10 (ix), #0x02
	jp	00257$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:301: case 6: off_x = -10; off_y =  22; break;
00256$:
	ld	-11 (ix), #0xf6
	ld	-10 (ix), #0x16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:302: }
00257$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:303: SwSprite[p_idx].tx = (u8)(t_cx + off_x); SwSprite[p_idx].ty = (u16)(256 + off_y);
	ld	c, -6 (ix)
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
	ld	a, -7 (ix)
	add	a, #<(_SwSprite)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	adc	a, #>(_SwSprite)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x0c
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -1 (ix)
	add	a, -11 (ix)
	ld	-1 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	add	a, #0x0d
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -10 (ix)
	ld	-9 (ix), a
	rlca
	sbc	a, a
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	inc	a
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:306: SwSprite[26].tx = (u8)(128 + 24); SwSprite[26].ty = (u16)(256 - 24);
	ld	hl, #(_SwSprite + 610)
	ld	(hl), #0x98
	ld	hl, #0x00e8
	ld	((_SwSprite + 611)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:308: *game_state = 16; // Prepara ritorno a centrocampo
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x10
	jp	00363$
00353$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:312: else if(*game_state == 16) { // STATO 16: Ritorno a centrocampo
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00350$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:313: bool all_in_position = TRUE;
	ld	-25 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:316: u16 cam_target = (SwSprite[keeper_idx].ly < 96) ? 0 : SwSprite[keeper_idx].ly - 96;
	ld	c, -28 (ix)
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x60
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00436$
	ld	bc, #0x0000
	jp	00437$
00436$:
	ld	a, c
	add	a, #0xa0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
00437$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:317: if (cam_target > 512 - 192) cam_target = 512 - 192; // clamp visivo
	ld	-11 (ix), c
	ld	-10 (ix), b
	ld	a, #0x40
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00266$
	ld	-11 (ix), #0x40
	ld	-10 (ix), #0x01
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:318: if (Field.ly > cam_target + 3) { Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE; }
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	inc	bc
	inc	bc
	inc	bc
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, c
	sub	a, -7 (ix)
	ld	a, b
	sbc	a, -6 (ix)
	jr	NC, 00274$
	ld	hl, #(_Field + 18)
	ld	(hl), #0xfc
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 18) + 0)
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
	ld	((_Field + 4)), de
	ld	-25 (ix), #0x00
	jp	00619$
00274$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:319: else if (Field.ly + 3 < cam_target) { Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE; }
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	inc	bc
	inc	bc
	inc	bc
	ld	a, c
	sub	a, -11 (ix)
	ld	a, b
	sbc	a, -10 (ix)
	jr	NC, 00271$
	ld	hl, #(_Field + 18)
	ld	(hl), #0x04
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 18) + 0)
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
	ld	((_Field + 4)), de
	ld	-25 (ix), #0x00
	jp	00619$
00271$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:320: else if (Field.ly != cam_target) { Field.dy = (i8)(cam_target - Field.ly); Field.ly = cam_target; all_in_position = FALSE; }
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	jr	NZ, 01387$
	ld	a, -8 (ix)
	sub	a, -10 (ix)
	jr	Z, 00268$
01387$:
	ld	a, -11 (ix)
	ld	c, -9 (ix)
	sub	a, c
	ld	(#(_Field + 18)),a
	ld	hl, #(_Field + 4)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
	ld	-25 (ix), #0x00
	jp	00619$
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:321: else { Field.dy = 0; }
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:323: for(u8 i=0; i<3; i++) {
00619$:
	ld	-1 (ix), #0x00
00376$:
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NC, 00303$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:324: u8 actor_idx = (i == 0) ? g_penalty_shooter_idx : ((i == 1) ? keeper_idx : 26);
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00438$
	ld	a, (_g_penalty_shooter_idx+0)
	jp	00439$
00438$:
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00440$
	ld	a, -28 (ix)
	jp	00441$
00440$:
	ld	a, #0x1a
00441$:
00439$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:325: struct ObjectInfo* p = &SwSprite[actor_idx];
	ld	-24 (ix), a
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
	ld	de, #_SwSprite
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:326: if (p->lx != p->tx || p->ly != p->ty) {
	ld	-23 (ix), l
	ld	-22 (ix), h
	ld	a, (hl)
	ld	-7 (ix), a
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	hl, #12
	add	hl, bc
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -23 (ix)
	add	a, #0x04
	ld	-21 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-20 (ix), a
	ld	a, -23 (ix)
	add	a, #0x0d
	ld	-19 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:329: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:333: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:343: p->frame = (actor_idx < 7) ? 
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:326: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00299$
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
	jp	Z,00300$
00299$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:327: all_in_position = FALSE;
	ld	-25 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:329: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NC, 00280$
	ld	a, -6 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00442$
	ld	de, #0x0002
	jp	00443$
00442$:
	ld	de, #0x0001
00443$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), e
	jp	00281$
00280$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:330: else if (p->tx < p->lx) p->dx = (i8)((p->lx - p->tx >= 2) ? -2 : -1); 
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NC, 00277$
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -6 (ix)
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
	jr	C, 00444$
	ld	a, #0xfe
	jp	00445$
00444$:
	ld	a, #0xff
00445$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00281$
00277$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:331: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00281$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:333: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
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
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00286$
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	C, 00446$
	ld	bc, #0x0002
	jp	00447$
00446$:
	ld	bc, #0x0001
00447$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), c
	jp	00287$
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:334: else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00283$
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x02
	ld	a, b
	sbc	a, #0x00
	jr	C, 00448$
	ld	a, #0xfe
	jp	00449$
00448$:
	ld	a, #0xff
00449$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00287$
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:335: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00287$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:337: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	c, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	(hl), a
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
	ld	l, -23 (ix)
	ld	h, -22 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:338: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-36 (ix), #0x00
	ld	-35 (ix), #0x01
	ld	-34 (ix), #0x02
	ld	-33 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:337: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:342: u8 step = walk_seq[(p->anim / 3) % 4];
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
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:341: if (RestartType == RESTART_GOAL && actor_idx == g_penalty_shooter_idx && p->dy > 0) {
	ld	a, (_RestartType+0)
	sub	a, #0x05
	jp	NZ,00289$
	ld	a, -24 (ix)
	ld	iy, #_g_penalty_shooter_idx
	sub	a, 0 (iy)
	jp	NZ,00289$
	xor	a, a
	sub	a, c
	jp	PO, 01397$
	xor	a, #0x80
01397$:
	jp	P, 00289$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:342: u8 step = walk_seq[(p->anim / 3) % 4];
	ld	-6 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:343: p->frame = (actor_idx < 7) ? 
	ld	a, -24 (ix)
	sub	a, #0x07
	jr	NC, 00450$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:344: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00452$
	ld	-7 (ix), #0x3c
	ld	-6 (ix), #0
	jp	00451$
00452$:
	ld	a, -6 (ix)
	dec	a
	jr	NZ, 00454$
	ld	-7 (ix), #0x3d
	ld	-6 (ix), #0
	jp	00451$
00454$:
	ld	-7 (ix), #0x3e
	ld	-6 (ix), #0
	jp	00451$
00450$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:345: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00456$
	ld	-7 (ix), #0x9c
	ld	-6 (ix), #0
	jp	00457$
00456$:
	ld	a, -6 (ix)
	dec	a
	jr	NZ, 00458$
	ld	-7 (ix), #0x9d
	ld	-6 (ix), #0
	jp	00459$
00458$:
	ld	-7 (ix), #0x9e
	ld	-6 (ix), #0
00459$:
00457$:
00451$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00377$
00289$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:348: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	push	bc
	inc	sp
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	a, -24 (ix)
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
	jp	00377$
00300$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:351: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:352: i8 look_dx = 0, look_dy = 1;
	ld	(hl), #0x00
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:353: if (actor_idx == 26) { look_dy = 1; }
	ld	a, -24 (ix)
	sub	a, #0x1a
	jr	NZ, 00294$
	ld	b, #0x01
	jp	00295$
00294$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:355: look_dx = (i8)((actor_idx % 3) - 1);
	ld	l, -24 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x0003
	call	__modsint
	ld	c, e
	pop	hl
	dec	c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:356: look_dy = (i8)(((actor_idx / 3) % 3) - 1);
	push	bc
	ld	de, #0x0003
	call	__divsint
	ex	de, hl
	ld	de, #0x0003
	call	__modsint
	pop	bc
	ld	b, e
	dec	b
00295$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:358: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, c
	or	a,a
	jr	NZ, 00297$
	or	a,b
	jr	NZ, 00297$
	ld	b, #0x01
00297$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:360: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, actor_idx, look_dx, look_dy);
	push	bc
	ld	a, -24 (ix)
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
00377$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:323: for(u8 i=0; i<3; i++) {
	inc	-1 (ix)
	jp	00376$
00303$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:364: if (all_in_position) {
	ld	a, -25 (ix)
	or	a, a
	jp	Z, 00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:365: *game_state = 12; // Inizia il prossimo rigore
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:366: RestartType = 0;  // Azzera il flag di esito per il prossimo
	ld	iy, #_RestartType
	ld	0 (iy), #0x00
	jp	00363$
00350$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:369: else if (*game_state == 17) { // STATO 17: Vittoria Rigori e Uscita Sconfitti
	ld	a, -8 (ix)
	sub	a, #0x11
	jp	NZ,00363$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:370: u8 winning_team = (ScoreTeam1 > ScoreTeam2) ? TEAM_1 : TEAM_2;
	ld	a, (#_ScoreTeam2)
	ld	iy, #_ScoreTeam1
	sub	a, 0 (iy)
	jr	NC, 00460$
	ld	bc, #0x0000
	jp	00461$
00460$:
	ld	bc, #0x0001
00461$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:371: u8 losing_team = (winning_team == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	-23 (ix), c
	ld	a, c
	or	a, a
	jr	NZ, 00462$
	ld	bc, #0x0001
	jp	00463$
00462$:
	ld	bc, #0x0000
00463$:
	ld	-22 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:372: bool losers_offscreen = TRUE;
	ld	-21 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:374: for (u8 i = 0; i <= 26; i++) {
	ld	-1 (ix), #0x00
00379$:
	ld	a, #0x1a
	sub	a, -1 (ix)
	jp	C, 00338$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:375: if (i >= 14 && i < 26) continue; // Salta Palla e UI
	ld	a, -1 (ix)
	sub	a, #0x0e
	ld	a, #0x00
	rla
	ld	-6 (ix), a
	bit	0, -6 (ix)
	jr	NZ, 00307$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	C, 00337$
00307$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:377: struct ObjectInfo* p = &SwSprite[i];
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
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-20 (ix), a
	ld	a, -7 (ix)
	ld	-19 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:378: u8 team = (i < 7) ? TEAM_1 : ((i < 14) ? TEAM_2 : 0xFF);
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00464$
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00465$
00464$:
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00466$
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
	jp	00467$
00466$:
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0
00467$:
00465$:
	ld	a, -7 (ix)
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:380: if (team == losing_team || i == 26) {
	ld	a, -22 (ix)
	sub	a, -18 (ix)
	jr	Z, 00333$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	NZ,00334$
00333$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:382: if (p->ly < 512) {
	ld	a, -20 (ix)
	add	a, #0x04
	ld	-17 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	sub	a, #0x02
	jp	NC, 00310$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:383: losers_offscreen = FALSE;
	ld	-21 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:384: p->dy = 2; p->dx = 0;
	ld	a, -20 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x02
	ld	a, -20 (ix)
	add	a, #0x11
	ld	-13 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:385: p->ly += p->dy;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
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
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:386: p->anim++;
	ld	a, -20 (ix)
	add	a, #0x13
	ld	-11 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x01
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:387: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x02
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:388: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
	ld	a, -20 (ix)
	add	a, #0x0f
	ld	-9 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	de, #0x0003
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	and	a, #0x03
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	hl, #4
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	b, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, b
	push	hl
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00337$
00310$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:390: p->ly = 1000;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x03
	jp	00337$
00334$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:392: } else if (team == winning_team) {
	ld	a, -18 (ix)
	sub	a, -23 (ix)
	jp	NZ,00337$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:395: u16 center_y = Field.ly + 96;
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x60
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:398: u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-13 (ix), l
	ld	-12 (ix), h
	ld	a, (_Frms+0)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	a, -15 (ix)
	add	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, -14 (ix)
	adc	a, -12 (ix)
	ld	-8 (ix), a
	ld	de, #0x00a0
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	a, -9 (ix)
	ld	-13 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0x30
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:399: u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
	ld	a, -11 (ix)
	add	a, #0xc4
	ld	-13 (ix), a
	ld	a, -10 (ix)
	adc	a, #0xff
	ld	-12 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -15 (ix)
	add	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -14 (ix)
	adc	a, -10 (ix)
	ld	-6 (ix), a
	ld	de, #0x0078
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
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	add	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, -10 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:401: if (p->lx < t_x - 2) p->dx = 2; else if (p->lx > t_x + 2) p->dx = -2; else p->dx = 0;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -9 (ix)
	ld	-13 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0xfe
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0xff
	ld	-8 (ix), a
	ld	a, -10 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:384: p->dy = 2; p->dx = 0;
	ld	a, -20 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:401: if (p->lx < t_x - 2) p->dx = 2; else if (p->lx > t_x + 2) p->dx = -2; else p->dx = 0;
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00316$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x02
	jp	00317$
00316$:
	ld	a, -13 (ix)
	add	a, #0x02
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00313$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0xfe
	jp	00317$
00313$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00317$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:402: if (p->ly < t_y - 2) p->dy = 2; else if (p->ly > t_y + 2) p->dy = -2; else p->dy = 0;
	ld	a, -20 (ix)
	add	a, #0x04
	ld	-15 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0xfe
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, #0xff
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:384: p->dy = 2; p->dx = 0;
	ld	a, -20 (ix)
	add	a, #0x12
	ld	-9 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:402: if (p->ly < t_y - 2) p->dy = 2; else if (p->ly > t_y + 2) p->dy = -2; else p->dy = 0;
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00322$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x02
	jp	00323$
00322$:
	ld	a, -13 (ix)
	add	a, #0x02
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00319$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0xfe
	jp	00323$
00319$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x00
00323$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:404: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	c, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	(hl), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	add	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, -10 (ix)
	ld	-6 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	ld	a, -20 (ix)
	add	a, #0x13
	ld	-13 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	add	a, #0x01
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:406: u8 step = (p->anim / 3) % 4;
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0003
	call	__divuint
	ld	a, e
	and	a, #0x03
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:407: if (step == 3) step = 1;
	ld	-7 (ix), a
	sub	a, #0x03
	jr	NZ, 00325$
	ld	-7 (ix), #0x01
00325$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:409: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:388: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
	ld	a, -20 (ix)
	add	a, #0x0f
	ld	-9 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:409: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	bit	7, -6 (ix)
	jr	NZ, 00326$
	ld	a, -6 (ix)
	or	a, a
	jp	NZ, 00327$
	ld	a, (_Frms+0)
	and	a, #0x3f
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -11 (ix)
	sub	a, #0x20
	ld	a, -10 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00327$
00326$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:410: p->frame = (team == TEAM_1) ? 
	ld	a, -18 (ix)
	or	a, a
	jr	NZ, 00468$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:411: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00470$
	ld	-7 (ix), #0x5c
	ld	-6 (ix), #0
	jp	00469$
00470$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00472$
	ld	-7 (ix), #0x5d
	ld	-6 (ix), #0
	jp	00469$
00472$:
	ld	-7 (ix), #0x5e
	ld	-6 (ix), #0
	jp	00469$
00468$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:412: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00474$
	ld	-7 (ix), #0xcc
	ld	-6 (ix), #0
	jp	00475$
00474$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00476$
	ld	-7 (ix), #0xcd
	ld	-6 (ix), #0
	jp	00477$
00476$:
	ld	-7 (ix), #0xce
	ld	-6 (ix), #0
00477$:
00475$:
00469$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00337$
00327$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:414: p->frame = (team == TEAM_1) ? 
	ld	a, -18 (ix)
	or	a, a
	jr	NZ, 00478$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:415: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00480$
	ld	-7 (ix), #0x3c
	ld	-6 (ix), #0
	jp	00479$
00480$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00482$
	ld	-7 (ix), #0x3d
	ld	-6 (ix), #0
	jp	00479$
00482$:
	ld	-7 (ix), #0x3e
	ld	-6 (ix), #0
	jp	00479$
00478$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:416: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00484$
	ld	-7 (ix), #0x9c
	ld	-6 (ix), #0
	jp	00485$
00484$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00486$
	ld	-7 (ix), #0x9d
	ld	-6 (ix), #0
	jp	00487$
00486$:
	ld	-7 (ix), #0x9e
	ld	-6 (ix), #0
00487$:
00485$:
00479$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00337$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:374: for (u8 i = 0; i <= 26; i++) {
	inc	-1 (ix)
	jp	00379$
00338$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:421: if (losers_offscreen) {
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00345$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:422: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00342$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:423: if (*start_sec < Frms) { 
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00340$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:424: (*wait_secs)--; 
	dec	c
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
00340$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:426: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
	jp	00363$
00342$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:428: CallFnc_VOID(SEG_MENU, ShowMenu);
	ld	de, #_ShowMenu
	ld	a, #0x0e
	call	_CallFnc_VOID
	jp	00363$
00345$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:431: *wait_secs = 6; // Resetta il timer a 6 finché non sono usciti tutti gli sconfitti
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:432: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
00363$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:435: return;
00380$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:437: }
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
	.area _SEG16
	.area _INITIALIZER
	.area _CABS (ABS)
