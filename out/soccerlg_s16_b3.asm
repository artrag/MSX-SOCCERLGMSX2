;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s16_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _EventPenaltyWhistle
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
	ld	iy, #-32
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:15: if (*game_state >= 12 && *game_state <= 14) { // --- RIGORI ---
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	sub	a, #0x0c
	jp	C, 00236$
	ld	a, #0x0e
	sub	a, -1 (ix)
	jp	C, 00236$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:17: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:18: u8 keeper_idx = (g_penalty_team == TEAM_1) ? 7 : 0; // Il portiere che deve parare
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00238$
	ld	bc, #0x0007
	jp	00239$
00238$:
	ld	bc, #0x0000
00239$:
	ld	-28 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:20: if(*game_state == 12) { // STATO 12: Setup del prossimo rigore
	ld	a, -1 (ix)
	sub	a, #0x0c
	jp	NZ,00223$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:21: g_is_penalty_shootout = TRUE; // Attiva la modalità rigori
	ld	hl, #_g_is_penalty_shootout
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:24: bool match_over = FALSE;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:25: if (g_penalty_shot_count[0] == g_penalty_shot_count[1] && g_penalty_shot_count[0] >= 5) {
	ld	a, (#_g_penalty_shot_count + 0)
	ld	-1 (ix), a
	ld	a, (#_g_penalty_shot_count + 1)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00115$
	ld	a, -1 (ix)
	sub	a, #0x05
	jr	C, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:26: if (ScoreTeam1 != ScoreTeam2) {
	ld	a, (_ScoreTeam1+0)
	ld	hl, #_ScoreTeam2
	sub	a, (hl)
	jr	Z, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:27: match_over = TRUE;
	ld	-10 (ix), #0x01
	jp	00116$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:28: } else if (g_penalty_shot_count[0] == 5) {
	ld	a, -1 (ix)
	sub	a, #0x05
	jp	NZ,00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:30: for (u8 i = 27; i < 37; i++) SwSprite[i].ly = 1000;
	ld	c, #0x1b
00229$:
	ld	a, c
	sub	a, #0x25
	jp	NC, 00116$
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
	jp	00229$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:32: } else if (g_penalty_shot_count[0] <= 5 && g_penalty_shot_count[1] <= 5) {
	ld	a, #0x05
	sub	a, -1 (ix)
	jr	C, 00116$
	ld	a, #0x05
	sub	a, -6 (ix)
	jr	C, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:33: u8 rem1 = 5 - g_penalty_shot_count[0];
	ld	c, -1 (ix)
	ld	a, #0x05
	sub	a, c
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:34: u8 rem2 = 5 - g_penalty_shot_count[1];
	ld	c, -6 (ix)
	ld	a, #0x05
	sub	a, c
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:35: if (ScoreTeam1 > ScoreTeam2 + rem2) match_over = TRUE;
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
	jp	PO, 00664$
	xor	a, #0x80
00664$:
	jp	P, 00108$
	ld	-10 (ix), #0x01
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:36: if (ScoreTeam2 > ScoreTeam1 + rem1) match_over = TRUE;
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, bc
	ld	a, l
	sub	a, -9 (ix)
	ld	a, h
	sbc	a, -8 (ix)
	jp	PO, 00665$
	xor	a, #0x80
00665$:
	jp	P, 00116$
	ld	-10 (ix), #0x01
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:39: if (match_over) {
	ld	a, -10 (ix)
	or	a, a
	jr	Z, 00119$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:40: *game_state = 17; // Vittoria rigori
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:41: *wait_secs = 6; *start_sec = Frms;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x06
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:42: g_is_penalty_shootout = FALSE; // Turn off to allow generic behavior if needed
	ld	iy, #_g_is_penalty_shootout
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:43: return;
	jp	00236$
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:47: u8 shooter_role = 1 + (g_penalty_shot_count[g_penalty_team] % 6);
	ld	a, #<(_g_penalty_shot_count)
	ld	hl, #_g_penalty_team
	add	a, (hl)
	ld	c, a
	ld	a, #>(_g_penalty_shot_count)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0006
	call	__modsint
	inc	e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:48: g_penalty_shooter_idx = (g_penalty_team == TEAM_1) ? shooter_role : shooter_role + 7;
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	Z, 00241$
	ld	a, e
	add	a, #0x07
	ld	e, a
00241$:
	ld	iy, #_g_penalty_shooter_idx
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:52: Ball->lx = 120; Ball->ty = 80; Ball->tx = 120; Ball->ly = 80;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
	ld	hl, #0x0050
	ld	((_SwSprite + 335)), hl
	ld	hl, #(_SwSprite + 334)
	ld	(hl), #0x78
	ld	hl, #0x0050
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:53: Ball->anim = 0; Ball->frame = SPR_BALL_SIZE_1;
	ld	l, h
	ld	((_SwSprite + 341)), hl
	ld	l, #0x60
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:56: SwSprite[g_penalty_shooter_idx].tx = 120;     // Tiratore dietro la palla
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:57: SwSprite[g_penalty_shooter_idx].ty = 96;      // 80 + 16
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:58: SwSprite[keeper_idx].tx = 120;                // Portiere al centro della porta
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:59: SwSprite[keeper_idx].ty = 32;
	ld	hl, #0x000d
	add	hl, de
	ld	(hl), #0x20
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:60: SwSprite[26].tx = 62;                         // Arbitro a lato dell'area
	ld	hl, #(_SwSprite + 610)
	ld	(hl), #0x3e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:61: SwSprite[26].ty = 56;
	ld	hl, #0x0038
	ld	((_SwSprite + 611)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:64: for(u8 i=0; i<=26; i++) {
	ld	c, #0x00
00232$:
	ld	a, #0x1a
	sub	a, c
	jr	C, 00127$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:65: if(i == g_penalty_shooter_idx || i == keeper_idx || i == 26 || (i>=14 && i<26)) continue;
	ld	a, (_g_penalty_shooter_idx+0)
	sub	a, c
	jr	Z, 00126$
	ld	a, -28 (ix)
	sub	a, c
	jr	Z, 00126$
	ld	a,c
	cp	a,#0x1a
	jr	Z, 00126$
	cp	a,#0x0e
	jr	C, 00121$
	sub	a, #0x1a
	jr	C, 00126$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:66: SwSprite[i].lx = SwSprite[i].tx;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:67: SwSprite[i].ly = SwSprite[i].ty;
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
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:64: for(u8 i=0; i<=26; i++) {
	inc	c
	jp	00232$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:70: *game_state = 13; // Passa alla fase di avvicinamento
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0d
	jp	00224$
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:72: else if(*game_state == 13) { // STATO 13: Avvicinamento al dischetto
	ld	a, -1 (ix)
	sub	a, #0x0d
	jp	NZ,00220$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:73: bool all_in_position = TRUE;
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:76: u16 cam_target = (SwSprite[keeper_idx].ly < 96) ? 0 : SwSprite[keeper_idx].ly - 96;
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
	jr	NC, 00242$
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00243$
00242$:
	ld	a, -9 (ix)
	add	a, #0xa0
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-6 (ix), a
00243$:
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:77: if (Field.ly > cam_target + 3) { Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE; }
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0x03
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-13 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	sub	a, -13 (ix)
	ld	a, -6 (ix)
	sbc	a, -12 (ix)
	jr	NC, 00135$
	ld	hl, #(_Field + 18)
	ld	(hl), #0xfc
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
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
	ld	-27 (ix), #0x00
	jp	00319$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:78: else if (Field.ly + 3 < cam_target) { Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE; }
	ld	a, -13 (ix)
	add	a, #0x03
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00132$
	ld	hl, #(_Field + 18)
	ld	(hl), #0x04
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
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
	ld	-27 (ix), #0x00
	jp	00319$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:79: else if (Field.ly != cam_target) { Field.dy = (i8)(cam_target - Field.ly); Field.ly = cam_target; all_in_position = FALSE; }
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	jr	NZ, 00671$
	ld	a, -10 (ix)
	sub	a, -8 (ix)
	jr	Z, 00129$
00671$:
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
	ld	-27 (ix), #0x00
	jp	00319$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:80: else { Field.dy = 0; }
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:82: for(u8 i=0; i<3; i++) {
00319$:
	ld	-1 (ix), #0x00
00234$:
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NC, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:83: u8 actor_idx = (i == 0) ? g_penalty_shooter_idx : ((i == 1) ? keeper_idx : 26);
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00244$
	ld	a, (_g_penalty_shooter_idx+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	jp	00245$
00244$:
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00246$
	ld	a, -28 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	jp	00247$
00246$:
	ld	-7 (ix), #0x1a
	ld	-6 (ix), #0
00247$:
00245$:
	ld	a, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:84: struct ObjectInfo* p = &SwSprite[actor_idx];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:87: u8 final_tx = (actor_idx == 26) ? 62 : 120; 
	ld	a, -24 (ix)
	sub	a, #0x1a
	jr	NZ, 00248$
	ld	bc, #0x003e
	jp	00249$
00248$:
	ld	bc, #0x0078
00249$:
	ld	-6 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:89: if (actor_idx == g_penalty_shooter_idx && p->ly > p->ty + 4) current_tx = 96;
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
	jr	NZ, 00138$
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
	jr	NC, 00138$
	ld	-6 (ix), #0x60
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:90: if (actor_idx == keeper_idx && p->ly > p->ty + 4) current_tx = 144;
	ld	a, -24 (ix)
	sub	a, -28 (ix)
	ld	a, #0x01
	jr	Z, 00679$
	xor	a, a
00679$:
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00141$
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
	jr	NC, 00141$
	ld	-6 (ix), #0x90
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:92: if (p->lx != current_tx || p->ly != p->ty) {
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:95: if (current_tx > p->lx) p->dx = (i8)((current_tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:99: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:105: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:92: if (p->lx != current_tx || p->ly != p->ty) {
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NZ, 00155$
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
	jp	Z,00156$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:93: all_in_position = FALSE;
	ld	-27 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:95: if (current_tx > p->lx) p->dx = (i8)((current_tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NC, 00147$
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
	jr	C, 00250$
	ld	de, #0x0002
	jp	00251$
00250$:
	ld	de, #0x0001
00251$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), e
	jp	00148$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:96: else if (current_tx < p->lx) p->dx = (i8)((p->lx - current_tx >= 2) ? -2 : -1); 
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NC, 00144$
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
	jr	C, 00252$
	ld	a, #0xfe
	jp	00253$
00252$:
	ld	a, #0xff
00253$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00148$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:97: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:99: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
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
	jr	NC, 00153$
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
	jr	C, 00254$
	ld	de, #0x0002
	jp	00255$
00254$:
	ld	de, #0x0001
00255$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	jp	00154$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:100: else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00150$
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
	jr	C, 00256$
	ld	a, #0xfe
	jp	00257$
00256$:
	ld	a, #0xff
00257$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00154$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:101: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:103: p->lx += p->dx; p->ly += p->dy; p->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:104: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x02
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:105: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ld	a, e
	and	a, #0x03
	ld	c, a
	ld	b, #0x00
	ld	hl, #0
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
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00235$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:107: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:108: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, actor_idx, 0, (i8)((actor_idx == keeper_idx) ? 1 : -1));
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00258$
	ld	bc, #0x0001
	jp	00259$
00258$:
	ld	bc, #0xffff
00259$:
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
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:82: for(u8 i=0; i<3; i++) {
	inc	-1 (ix)
	jp	00234$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:112: if (all_in_position) {
	ld	a, -27 (ix)
	or	a, a
	jp	Z, 00224$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:113: CallFnc_VOID(SEG_EVENTS, EventPenaltyWhistle);
	ld	de, #_EventPenaltyWhistle
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:114: *wait_secs = 5; *start_sec = Frms;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:115: SwSprite[keeper_idx].dx = 1; // Resetta scelta tuffo al centro
	ld	a, -26 (ix)
	add	a, #0x11
	ld	-7 (ix), a
	ld	a, -25 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:116: *game_state = 14;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0e
	jp	00224$
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:119: else if(*game_state == 14) { // STATO 14: Mira e Tiro
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NZ,00224$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:120: struct ObjectInfo* Keeper = &SwSprite[keeper_idx];
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
	ld	-12 (ix), l
	ld	-11 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:121: u8 keeper_team_idx = (keeper_idx == 0) ? 0 : 1;
	ld	a, -28 (ix)
	or	a, a
	jr	NZ, 00260$
	ld	bc, #0x0000
	jp	00261$
00260$:
	ld	bc, #0x0001
00261$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:122: bool is_keeper_human = (keeper_team_idx == TEAM_2) || (keeper_team_idx == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2);
	ld	-10 (ix), c
	ld	a, c
	dec	a
	jr	Z, 00263$
	ld	a, -10 (ix)
	or	a, a
	jr	NZ, 00262$
	ld	a, (_GameMode+0)
	dec	a
	jr	Z, 00263$
00262$:
	xor	a, a
	jp	00264$
00263$:
	ld	a, #0x01
00264$:
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:123: bool is_shooter_human = (g_penalty_team == TEAM_2) || (g_penalty_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2);
	ld	a, (_g_penalty_team+0)
	dec	a
	jr	Z, 00269$
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00268$
	ld	a, (_GameMode+0)
	dec	a
	jr	Z, 00269$
00268$:
	xor	a, a
	jp	00270$
00269$:
	ld	a, #0x01
00270$:
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:124: bool do_shot = FALSE;
	ld	-7 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:125: u8 shot_dir = 1; // 0=sx, 1=centro, 2=dx
	ld	-6 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:128: SwSprite[25].ly = 1000;
	ld	hl, #0x03e8
	ld	((_SwSprite + 579)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:131: if(is_keeper_human) {
	ld	a, -9 (ix)
	or	a, a
	jr	Z, 00172$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:132: u8 k_dir = g_player_input[keeper_team_idx].direction;
	ld	bc, #_g_player_input+0
	ld	e, -10 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:133: if(k_dir == DIRECTION_LEFT || k_dir == DIRECTION_UP_LEFT || k_dir == DIRECTION_DOWN_LEFT) Keeper->dx = 2; 
	cp	a, #0x07
	jr	Z, 00166$
	cp	a, #0x08
	jr	Z, 00166$
	cp	a, #0x06
	jr	NZ, 00167$
00166$:
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x02
	jp	00172$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:134: else if (k_dir == DIRECTION_RIGHT || k_dir == DIRECTION_UP_RIGHT || k_dir == DIRECTION_DOWN_RIGHT) Keeper->dx = 0; 
	cp	a, #0x03
	jr	Z, 00162$
	cp	a, #0x02
	jr	Z, 00162$
	sub	a, #0x04
	jr	NZ, 00172$
00162$:
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:138: if(is_shooter_human) {
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00188$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:139: u8 dir = g_player_input[g_penalty_team].direction;
	ld	de, #_g_player_input+0
	ld	bc, (_g_penalty_team)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, de
	ld	b,l
	ld	e,h
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:140: if(dir == DIRECTION_LEFT || dir == DIRECTION_UP_LEFT || dir == DIRECTION_DOWN_LEFT) shot_dir = 2;
	cp	a, #0x07
	jr	Z, 00178$
	cp	a, #0x08
	jr	Z, 00178$
	cp	a, #0x06
	jr	NZ, 00179$
00178$:
	ld	-6 (ix), #0x02
	jp	00180$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:141: else if(dir == DIRECTION_RIGHT || dir == DIRECTION_UP_RIGHT || dir == DIRECTION_DOWN_RIGHT) shot_dir = 0;
	cp	a, #0x03
	jr	Z, 00173$
	cp	a, #0x02
	jr	Z, 00173$
	sub	a, #0x04
	jr	NZ, 00174$
00173$:
	ld	-6 (ix), #0x00
	jp	00180$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:142: else shot_dir = 1;
	ld	-6 (ix), #0x01
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:144: if(g_player_input[g_penalty_team].trigger_pressed) do_shot = TRUE; // Impedisce tiri accidentali
	ld	c, b
	ld	b, e
	inc	bc
	ld	a, (bc)
	or	a, a
	jr	Z, 00189$
	ld	-7 (ix), #0x01
	jp	00189$
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:147: u8 target_wait = 2 + (Frms % 3); // random tra 2, 3 o 4 (pari a 3s, 2s, 1s di attesa)
	ld	a, (_Frms+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0003
	call	__modsint
	ld	-14 (ix), e
	ld	-13 (ix), d
	ld	c, -14 (ix)
	inc	c
	inc	c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:148: if(*wait_secs <= target_wait) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	C, 00189$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:149: do_shot = TRUE;
	ld	-7 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:150: shot_dir = Frms % 3; // CPU sceglie a caso
	ld	a, -14 (ix)
	ld	-6 (ix), a
00189$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:154: if (*start_sec < Frms) { if (*wait_secs > 0) (*wait_secs)--; }
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	e, a
	ld	hl, #_Frms
	ld	a, e
	sub	a, (hl)
	jr	NC, 00193$
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00193$
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:155: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:158: if (*wait_secs == 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jr	NZ, 00197$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:159: do_shot = TRUE;
	ld	-7 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:160: if (is_shooter_human) shot_dir = Frms % 3;
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00197$
	ld	a, (_Frms+0)
	ld	-14 (ix), a
	ld	-13 (ix), #0x00
	ld	de, #0x0003
	ld	l, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-14 (ix), e
	ld	-13 (ix), d
	ld	a, -14 (ix)
	ld	-6 (ix), a
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:163: if(do_shot) {
	ld	a, -7 (ix)
	or	a, a
	jp	Z, 00224$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:164: *wait_secs = 0; // Prepara il timer per lo stato 15
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:166: u8 target_x_pos[] = {92, 120, 148};
	ld	-31 (ix), #0x5c
	ld	-30 (ix), #0x78
	ld	-29 (ix), #0x94
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:167: g_pass_start_x = Ball->lx; g_pass_start_y = Ball->ly;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:168: g_pass_target_x = target_x_pos[shot_dir]; g_pass_target_y = 16;
	ld	e, -6 (ix)
	ld	d, #0x00
	ld	hl, #1
	add	hl, sp
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, (hl)
	ld	-1 (ix), a
	ld	(_g_pass_target_x+0), a
	ld	hl, #_g_pass_target_x + 1
	ld	(hl), #0x00
	ld	hl, #0x0010
	ld	(_g_pass_target_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:169: g_pass_max_frames = 15; g_pass_max_height = 1; // Tiro basso e veloce (dimensione 1)
	ld	a, #0x0f
	ld	(#_g_pass_max_frames), a
	ld	a, #0x01
	ld	(#_g_pass_max_height), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:170: g_pass_receiver = 0xFF;
	ld	a, #0xff
	ld	(#_g_pass_receiver), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:171: Ball->anim = 5; Ball->count = 1;
	ld	l, #0x05
	ld	((_SwSprite + 341)), hl
	ld	l, #0x01
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:174: SwSprite[g_penalty_shooter_idx].frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, g_penalty_shooter_idx, 0, (i8)-1);
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
	ld	-14 (ix), l
	ld	-13 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -14 (ix)
	ld	-8 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -13 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	add	a, #0x0f
	ld	-14 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
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
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:178: if(is_keeper_human) {
	ld	a, -9 (ix)
	or	a, a
	jr	Z, 00202$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:179: dive_dir = Keeper->dx; // Usa la direzione memorizzata
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	a, (hl)
	ld	-1 (ix), a
	jp	00203$
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:182: u8 skill_chance = g_ActiveStats[keeper_team_idx].gk_penalty_skill * 12; // Es: Stat 5 = 60%
	ld	c, -10 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, #<(_g_ActiveStats)
	add	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, #>(_g_ActiveStats)
	adc	a, -7 (ix)
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	de, #0x0006
	add	hl, de
	ld	a, (hl)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:183: if ((Frms % 100) < skill_chance) {
	ld	a, (_Frms+0)
	ld	-14 (ix), a
	ld	-13 (ix), #0x00
	ld	de, #0x0064
	ld	l, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-10 (ix), e
	ld	-9 (ix), d
	ld	a, -1 (ix)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -10 (ix)
	sub	a, -8 (ix)
	ld	a, -9 (ix)
	sbc	a, -7 (ix)
	jp	PO, 00705$
	xor	a, #0x80
00705$:
	jp	P, 00199$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:184: dive_dir = shot_dir; // Il portiere intuisce la direzione corretta!
	ld	a, -6 (ix)
	ld	-1 (ix), a
	jp	00203$
00199$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:187: dive_dir = (shot_dir + 1 + (Frms % 2)) % 3;
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -8 (ix)
	add	a, #0x01
	ld	-10 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	a, -14 (ix)
	and	a, #0x01
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -10 (ix)
	add	a, -8 (ix)
	ld	-14 (ix), a
	ld	a, -9 (ix)
	adc	a, -7 (ix)
	ld	-13 (ix), a
	ld	de, #0x0003
	ld	l, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-1 (ix), e
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:193: Keeper->frame = SPR_GK_PLAYER_DOWN_WEST_NORTH; // Ovest = Tuffo a Sinistra
	ld	a, -12 (ix)
	add	a, #0x0f
	ld	-8 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:192: if(dive_dir == 0) { // Tuffo a Sinistra (X=92)
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00208$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:193: Keeper->frame = SPR_GK_PLAYER_DOWN_WEST_NORTH; // Ovest = Tuffo a Sinistra
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), #0xee
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:194: Keeper->lx = 100; // Sposta il body a 100, mani della maglietta a 92
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), #0x64
	jp	00209$
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:196: else if(dive_dir == 2) { // Tuffo a Destra (X=148)
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	NZ, 00205$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:197: Keeper->frame = SPR_GK_PLAYER_DOWN_EAST_NORTH; // Est = Tuffo a Destra
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), #0xef
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:198: Keeper->lx = 140; // Sposta il body a 140, mani della maglietta a 148
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), #0x8c
	jp	00209$
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:201: Keeper->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, keeper_idx, 0, 1); // Posa in attesa centrale
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
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:202: Keeper->lx = 120;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), #0x78
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:206: if(dive_dir == shot_dir) {
	ld	a, -6 (ix)
	sub	a, -1 (ix)
	jr	NZ, 00214$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:207: g_pass_max_frames = 10; // Tiro smorzato
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), #0x0a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:208: if (shot_dir == 1) {
	ld	a, -6 (ix)
	dec	a
	jr	NZ, 00211$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:209: g_pass_target_y = 40;   // Fermiamo la palla prima per farla fermare sul petto
	ld	hl, #0x0028
	ld	(_g_pass_target_y), hl
	jp	00214$
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:211: g_pass_target_y = 32;   // Tuffo laterale, manteniamo 32
	ld	hl, #0x0020
	ld	(_g_pass_target_y), hl
00214$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:215: *game_state = 15;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0f
00224$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:218: return;
00236$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s16_b3.c:220: }
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
