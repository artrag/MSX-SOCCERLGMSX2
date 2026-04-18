;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s17_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ShowMenu
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
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
	.globl _UpdateGameState_Penalties_End
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
	.area _SEG17
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:11: void UpdateGameState_Penalties_End(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
;	---------------------------------
; Function UpdateGameState_Penalties_End
; ---------------------------------
_UpdateGameState_Penalties_End::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-30
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:15: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:18: if (*game_state == 16) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	sub	a, #0x10
	ld	a, #0x01
	jr	Z, 00779$
	xor	a, a
00779$:
	ld	-1 (ix), a
	or	a, a
	jr	Z, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:19: keeper_idx = (g_penalty_shooter_idx < 7) ? 7 : 0; // Il portiere che ha appena finito
	ld	a, (_g_penalty_shooter_idx+0)
	sub	a, #0x07
	jr	NC, 00245$
	ld	de, #0x0007
	jp	00246$
00245$:
	ld	de, #0x0000
00246$:
	ld	-26 (ix), e
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:21: keeper_idx = (g_penalty_team == TEAM_1) ? 7 : 0; // Il portiere che deve parare
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00247$
	ld	bc, #0x0007
	jp	00248$
00247$:
	ld	bc, #0x0000
00248$:
	ld	-26 (ix), c
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:24: if(*game_state == 15) { // STATO 15: Attesa esito rigore
	ld	a, -6 (ix)
	sub	a, #0x0f
	jp	NZ,00236$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:25: if (Ball->anim == 5) {
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
	jp	NZ,00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:26: u8 progress = Ball->count;
	ld	a, (#(_SwSprite + 343) + 0)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:27: i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
	ld	hl, (_g_pass_target_x)
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	hl, (_g_pass_start_x)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:28: i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
	ld	hl, (_g_pass_target_y)
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	hl, (_g_pass_start_y)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:32: Ball->ly = g_pass_target_y;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:30: if (progress >= g_pass_max_frames) {
	ld	hl, #_g_pass_max_frames
	ld	a, -1 (ix)
	sub	a, (hl)
	jr	C, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:31: Ball->lx = g_pass_target_x;
	ld	a, (_g_pass_target_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:32: Ball->ly = g_pass_target_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_target_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:33: Ball->anim = 0; // Tiro terminato
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:34: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); // Ripristina grandezza a terra
	xor	a, a
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:36: if (Ball->ly <= 24 && Ball->lx >= 82 && Ball->lx <= 156) {
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, #0x18
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	C, 00108$
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	a, c
	sub	a, #0x52
	jr	C, 00108$
	ld	a, #0x9c
	sub	a, c
	jr	C, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:37: if (g_penalty_team == TEAM_2) ScoreTeam2++; else ScoreTeam1++;
	ld	a, (_g_penalty_team+0)
	dec	a
	jr	NZ, 00105$
	ld	hl, #_ScoreTeam2
	inc	(hl)
	jp	00106$
00105$:
	ld	hl, #_ScoreTeam1
	inc	(hl)
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:38: RestartType = RESTART_GOAL; // Segnala il goal per poter attivare l'esultanza
	ld	iy, #_RestartType
	ld	0 (iy), #0x05
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:40: *wait_secs = 2; // Inizializza attesa post-tiro prima di cambiare giocatore
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:41: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00243$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:43: Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
	ld	a, (_g_pass_start_x+0)
	ld	-8 (ix), a
	ld	c, -1 (ix)
	ld	b, #0x00
	push	bc
	ld	e, c
	ld	d, b
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
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
	add	a, -8 (ix)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:44: Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
	ld	hl, (_g_pass_start_y)
	push	hl
	ld	e, c
	ld	d, b
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:45: Ball->count++;
	ld	bc, (#(_SwSprite + 343) + 0)
	inc	bc
	ld	((_SwSprite + 343)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:49: u8 half_frame = g_pass_max_frames >> 1;
	ld	a, (#_g_pass_max_frames + 0)
	ld	c, a
	srl	c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:51: scale = (progress * g_pass_max_height) / half_frame;
	ld	b, c
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:50: if (progress <= half_frame) {
	ld	a, c
	sub	a, -1 (ix)
	jr	C, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:51: scale = (progress * g_pass_max_height) / half_frame;
	push	de
	push	bc
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00786$:
	add	hl, hl
	jr	NC, 00787$
	add	hl, de
00787$:
	djnz	00786$
	pop	bc
	pop	de
	ld	d, e
	ld	e, b
	call	__divsint
	ld	b, e
	jp	00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:53: u8 progress_down = progress - half_frame;
	ld	a, -1 (ix)
	sub	a, c
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:54: scale = g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
	push	de
	push	bc
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00788$:
	add	hl, hl
	jr	NC, 00789$
	add	hl, de
00789$:
	djnz	00788$
	pop	bc
	pop	de
	ld	a, (_g_pass_max_frames+0)
	ld	d, #0x00
	sub	a, b
	ld	c, a
	ld	a, d
	sbc	a, e
	ld	d, a
	ld	e, c
	call	__divsint
	ld	a, (_g_pass_max_height+0)
	sub	a, e
	ld	b, a
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:56: if (scale > 7) scale = 7;
	ld	a, #0x07
	sub	a, b
	jr	NC, 00115$
	ld	b, #0x07
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:57: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
	push	bc
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00243$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:59: } else if(Ball->anim == 0) { // Attesa post-tiro
	ld	a, -6 (ix)
	or	a, -7 (ix)
	jp	NZ, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:60: if (*start_sec < Frms) { 
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	e, a
	ld	hl, #_Frms
	ld	a, e
	sub	a, (hl)
	jr	NC, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:61: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00122$
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:63: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:65: if (*wait_secs == 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:67: u8 shot_idx = g_penalty_shot_count[g_penalty_team];
	ld	a, (_g_penalty_team+0)
	add	a, #<(_g_penalty_shot_count)
	ld	c, a
	ld	a, #0x00
	adc	a, #>(_g_penalty_shot_count)
	ld	b, a
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:68: if (shot_idx < 5) {
	ld	-1 (ix), a
	sub	a, #0x05
	jp	NC, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:69: u8 spr_idx = (g_penalty_team == TEAM_1) ? (27 + shot_idx) : (32 + shot_idx);
	ld	c, -1 (ix)
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00249$
	ld	a, c
	add	a, #0x1b
	jp	00250$
00249$:
	ld	a, c
	add	a, #0x20
00250$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:70: SwSprite[spr_idx].lx = (g_penalty_team == TEAM_1) ? 8 : 240;
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
	ld	c, l
	ld	b, h
	ld	-7 (ix), c
	ld	-6 (ix), b
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00251$
	ld	de, #0x0008
	jp	00252$
00251$:
	ld	de, #0x00f0
00252$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:71: SwSprite[spr_idx].ly = 150 + shot_idx * 16;
	ld	hl, #0x0004
	add	hl, bc
	ld	e, -1 (ix)
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	a, e
	add	a, #0x96
	ld	e, a
	ld	a, d
	adc	a, #0x00
	ld	(hl), e
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:72: bool scored = (RestartType == RESTART_GOAL);
	ld	a, (_RestartType+0)
	sub	a, #0x05
	ld	a, #0x01
	jr	Z, 00791$
	xor	a, a
00791$:
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:73: SwSprite[spr_idx].frame = (g_penalty_team == TEAM_1) ? (scored ? SPR_T1_O : SPR_T1_X) : (scored ? SPR_T2_O : SPR_T2_X);
	ld	hl, #0x000f
	add	hl, bc
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, (_g_penalty_team+0)
	or	a,a
	jr	NZ, 00253$
	or	a,e
	jr	Z, 00255$
	ld	de, #0x002f
	jp	00256$
00255$:
	ld	de, #0x0016
00256$:
	ld	c, e
	jp	00254$
00253$:
	ld	a, e
	or	a, a
	jr	Z, 00257$
	ld	-7 (ix), #0x9f
	ld	-6 (ix), #0
	jp	00258$
00257$:
	ld	-7 (ix), #0x86
	ld	-6 (ix), #0
00258$:
	ld	c, -7 (ix)
	ld	d, -6 (ix)
00254$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), d
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:76: g_penalty_shot_count[g_penalty_team]++;
	ld	a, #<(_g_penalty_shot_count)
	ld	hl, #_g_penalty_team
	add	a, (hl)
	ld	c, a
	ld	a, #>(_g_penalty_shot_count)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	inc	a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:77: g_penalty_team = (g_penalty_team == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00259$
	ld	a, #0x01
	ld	c, #0x00
	jp	00260$
00259$:
	xor	a, a
	ld	c, a
00260$:
	ld	(_g_penalty_team+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:80: Ball->ly = 1000;
	ld	hl, #0x03e8
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:83: u8 p_idx = g_penalty_shooter_idx;
	ld	a, (_g_penalty_shooter_idx+0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:84: u8 role = (p_idx < 7) ? p_idx : p_idx - 7;
	ld	-6 (ix), a
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00261$
	ld	a, -6 (ix)
	ld	-1 (ix), a
	jp	00262$
00261$:
	ld	a, -6 (ix)
	ld	-1 (ix), a
	add	a, #0xf9
	ld	-1 (ix), a
00262$:
	ld	a, -1 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:85: u8 t_cx = (p_idx < 7) ? 64 : 192;
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00263$
	ld	-9 (ix), #0x40
	ld	-8 (ix), #0
	jp	00264$
00263$:
	ld	-9 (ix), #0xc0
	ld	-8 (ix), #0
00264$:
	ld	a, -9 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:86: i8 off_x = 0; i8 off_y = 0;
	ld	-11 (ix), #0x00
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:87: switch(role) {
	ld	a, #0x06
	sub	a, -7 (ix)
	jr	C, 00132$
	ld	c, -7 (ix)
	ld	b, #0x00
	ld	hl, #00792$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00792$:
	jp	00125$
	jp	00126$
	jp	00127$
	jp	00128$
	jp	00129$
	jp	00130$
	jp	00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:88: case 0: off_x = -18; off_y = -18; break; case 1: off_x =   2; off_y = -18; break;
00125$:
	ld	-11 (ix), #0xee
	ld	-10 (ix), #0xee
	jp	00132$
00126$:
	ld	-11 (ix), #0x02
	ld	-10 (ix), #0xee
	jp	00132$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:89: case 2: off_x =  22; off_y = -18; break; case 3: off_x = -22; off_y =   2; break;
00127$:
	ld	-11 (ix), #0x16
	ld	-10 (ix), #0xee
	jp	00132$
00128$:
	ld	-11 (ix), #0xea
	ld	-10 (ix), #0x02
	jp	00132$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:90: case 4: off_x =  -2; off_y =   2; break; case 5: off_x =  18; off_y =   2; break;
00129$:
	ld	-11 (ix), #0xfe
	ld	-10 (ix), #0x02
	jp	00132$
00130$:
	ld	-11 (ix), #0x12
	ld	-10 (ix), #0x02
	jp	00132$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:91: case 6: off_x = -10; off_y =  22; break;
00131$:
	ld	-11 (ix), #0xf6
	ld	-10 (ix), #0x16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:92: }
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:93: SwSprite[p_idx].tx = (u8)(t_cx + off_x); SwSprite[p_idx].ty = (u16)(256 + off_y);
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
	ld	-9 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -6 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:95: p_idx = keeper_idx;
	ld	a, -26 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:96: role = (p_idx < 7) ? p_idx : p_idx - 7;
	ld	a, -26 (ix)
	sub	a, #0x07
	jr	NC, 00265$
	ld	a, -26 (ix)
	ld	-1 (ix), a
	jp	00266$
00265$:
	ld	a, -26 (ix)
	ld	-1 (ix), a
	add	a, #0xf9
	ld	-1 (ix), a
00266$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:97: t_cx = (p_idx < 7) ? 64 : 192;
	ld	a, -6 (ix)
	sub	a, #0x07
	jr	NC, 00267$
	ld	-8 (ix), #0x40
	ld	-7 (ix), #0
	jp	00268$
00267$:
	ld	-8 (ix), #0xc0
	ld	-7 (ix), #0
00268$:
	ld	c, -8 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:98: switch(role) {
	ld	a, #0x06
	sub	a, -1 (ix)
	jr	C, 00140$
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #00793$
	add	hl, de
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:99: case 0: off_x = -18; off_y = -18; break; case 1: off_x =   2; off_y = -18; break;
	jp	(hl)
00793$:
	jr	00133$
	jr	00134$
	jr	00135$
	jr	00136$
	jr	00137$
	jr	00138$
	jr	00139$
00133$:
	ld	-11 (ix), #0xee
	ld	-10 (ix), #0xee
	jp	00140$
00134$:
	ld	-11 (ix), #0x02
	ld	-10 (ix), #0xee
	jp	00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:100: case 2: off_x =  22; off_y = -18; break; case 3: off_x = -22; off_y =   2; break;
00135$:
	ld	-11 (ix), #0x16
	ld	-10 (ix), #0xee
	jp	00140$
00136$:
	ld	-11 (ix), #0xea
	ld	-10 (ix), #0x02
	jp	00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:101: case 4: off_x =  -2; off_y =   2; break; case 5: off_x =  18; off_y =   2; break;
00137$:
	ld	-11 (ix), #0xfe
	ld	-10 (ix), #0x02
	jp	00140$
00138$:
	ld	-11 (ix), #0x12
	ld	-10 (ix), #0x02
	jp	00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:102: case 6: off_x = -10; off_y =  22; break;
00139$:
	ld	-11 (ix), #0xf6
	ld	-10 (ix), #0x16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:103: }
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:104: SwSprite[p_idx].tx = (u8)(t_cx + off_x); SwSprite[p_idx].ty = (u16)(256 + off_y);
	ld	e, -6 (ix)
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
	ld	hl, #0x000c
	add	hl, de
	ld	a, c
	add	a, -11 (ix)
	ld	(hl), a
	ld	hl, #0x000d
	add	hl, de
	ld	a, -10 (ix)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	inc	a
	ld	(hl), c
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:107: SwSprite[26].tx = (u8)(128 + 24); SwSprite[26].ty = (u16)(256 - 24);
	ld	hl, #(_SwSprite + 610)
	ld	(hl), #0x98
	ld	hl, #0x00e8
	ld	((_SwSprite + 611)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:109: *game_state = 16; // Prepara ritorno a centrocampo
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x10
	jp	00243$
00236$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:113: else if(*game_state == 16) { // STATO 16: Ritorno a centrocampo
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00233$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:114: bool all_in_position = TRUE;
	ld	-25 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:117: u16 cam_target = (SwSprite[keeper_idx].ly < 96) ? 0 : SwSprite[keeper_idx].ly - 96;
	ld	c, -26 (ix)
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
	jr	NC, 00269$
	xor	a, a
	ld	c, a
	jp	00270$
00269$:
	ld	a, c
	add	a, #0xa0
	ld	c, a
	ld	a, b
	adc	a, #0xff
00270$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:118: if (cam_target > 512 - 192) cam_target = 512 - 192; // clamp visivo
	ld	-11 (ix), c
	ld	-10 (ix), a
	ld	b, a
	ld	a, #0x40
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00149$
	ld	-11 (ix), #0x40
	ld	-10 (ix), #0x01
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:119: if (Field.ly > cam_target + 3) { Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE; }
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
	ld	-13 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, c
	sub	a, -13 (ix)
	ld	a, b
	sbc	a, -12 (ix)
	jr	NC, 00157$
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
	jp	00379$
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:120: else if (Field.ly + 3 < cam_target) { Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE; }
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
	jr	NC, 00154$
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
	ld	a, -9 (ix)
	add	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, -10 (ix)
	ld	-6 (ix), a
	ld	hl, #(_Field + 4)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	ld	-25 (ix), #0x00
	jp	00379$
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:121: else if (Field.ly != cam_target) { Field.dy = (i8)(cam_target - Field.ly); Field.ly = cam_target; all_in_position = FALSE; }
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	jr	NZ, 00794$
	ld	a, -8 (ix)
	sub	a, -10 (ix)
	jr	Z, 00151$
00794$:
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
	jp	00379$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:122: else { Field.dy = 0; }
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:124: for(u8 i=0; i<3; i++) {
00379$:
	ld	-1 (ix), #0x00
00239$:
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NC, 00186$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:125: u8 actor_idx = (i == 0) ? g_penalty_shooter_idx : ((i == 1) ? keeper_idx : 26);
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00271$
	ld	a, (_g_penalty_shooter_idx+0)
	jp	00272$
00271$:
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00273$
	ld	a, -26 (ix)
	jp	00274$
00273$:
	ld	a, #0x1a
00274$:
00272$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:126: struct ObjectInfo* p = &SwSprite[actor_idx];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:127: if (p->lx != p->tx || p->ly != p->ty) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:130: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:134: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:144: p->frame = (actor_idx < 7) ? 
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:127: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00182$
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
	jp	Z,00183$
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:128: all_in_position = FALSE;
	ld	-25 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:130: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NC, 00163$
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
	jr	C, 00275$
	ld	de, #0x0002
	jp	00276$
00275$:
	ld	de, #0x0001
00276$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), e
	jp	00164$
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:131: else if (p->tx < p->lx) p->dx = (i8)((p->lx - p->tx >= 2) ? -2 : -1); 
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NC, 00160$
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
	jr	C, 00277$
	ld	a, #0xfe
	jp	00278$
00277$:
	ld	a, #0xff
00278$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00164$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:132: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:134: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
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
	jr	NC, 00169$
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
	jr	C, 00279$
	ld	de, #0x0002
	jp	00280$
00279$:
	ld	de, #0x0001
00280$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), e
	jp	00170$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:135: else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00166$
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ex	de, hl
	ld	a, e
	sub	a, #0x02
	ld	a, d
	sbc	a, #0x00
	jr	C, 00281$
	ld	a, #0xfe
	jp	00282$
00281$:
	ld	a, #0xff
00282$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00170$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:136: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:138: p->lx += p->dx; p->ly += p->dy; p->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:139: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-30 (ix), #0x00
	ld	-29 (ix), #0x01
	ld	-28 (ix), #0x02
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:138: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:143: u8 step = walk_seq[(p->anim / 3) % 4];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:142: if (RestartType == RESTART_GOAL && actor_idx == g_penalty_shooter_idx && p->dy > 0) {
	ld	a, (_RestartType+0)
	sub	a, #0x05
	jr	NZ, 00172$
	ld	a, -24 (ix)
	ld	iy, #_g_penalty_shooter_idx
	sub	a, 0 (iy)
	jr	NZ, 00172$
	xor	a, a
	sub	a, c
	jp	PO, 00804$
	xor	a, #0x80
00804$:
	jp	P, 00172$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:143: u8 step = walk_seq[(p->anim / 3) % 4];
	ld	c, b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:144: p->frame = (actor_idx < 7) ? 
	ld	a, -24 (ix)
	sub	a, #0x07
	jr	NC, 00283$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:145: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, c
	or	a, a
	jr	NZ, 00285$
	ld	bc, #0x003c
	jp	00284$
00285$:
	dec	c
	jr	NZ, 00287$
	ld	bc, #0x003d
	jp	00284$
00287$:
	ld	bc, #0x003e
	jp	00284$
00283$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:146: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, c
	or	a, a
	jr	NZ, 00289$
	ld	bc, #0x009c
	jp	00290$
00289$:
	dec	c
	jr	NZ, 00291$
	ld	bc, #0x009d
	jp	00292$
00291$:
	ld	bc, #0x009e
00292$:
00290$:
00284$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00240$
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:148: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
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
	jp	00240$
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:151: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:152: i8 look_dx = 0, look_dy = 1;
	ld	(hl), #0x00
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:153: if (actor_idx == 26) { look_dy = 1; }
	ld	a, -24 (ix)
	sub	a, #0x1a
	jr	NZ, 00177$
	ld	e, #0x01
	jp	00178$
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:155: look_dx = (i8)((actor_idx % 3) - 1);
	ld	l, -24 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x0003
	call	__modsint
	ld	b, e
	pop	hl
	dec	b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:156: look_dy = (i8)(((actor_idx / 3) % 3) - 1);
	push	bc
	ld	de, #0x0003
	call	__divsint
	ex	de, hl
	ld	de, #0x0003
	call	__modsint
	pop	bc
	dec	e
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:158: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, b
	or	a,a
	jr	NZ, 00180$
	or	a,e
	jr	NZ, 00180$
	ld	e, #0x01
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:159: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_2, GetPlayerIdleFrame, actor_idx, look_dx, look_dy);
	ld	a, e
	push	af
	inc	sp
	push	bc
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
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:124: for(u8 i=0; i<3; i++) {
	inc	-1 (ix)
	jp	00239$
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:163: if (all_in_position) {
	ld	a, -25 (ix)
	or	a, a
	jp	Z, 00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:164: *game_state = 12; // Inizia il prossimo rigore
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:165: RestartType = 0;  // Azzera il flag di esito per il prossimo
	ld	iy, #_RestartType
	ld	0 (iy), #0x00
	jp	00243$
00233$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:168: else if (*game_state == 17) { // STATO 17: Vittoria Rigori e Uscita Sconfitti
	ld	a, -6 (ix)
	sub	a, #0x11
	jp	NZ,00243$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:169: u8 winning_team = (ScoreTeam1 > ScoreTeam2) ? TEAM_1 : TEAM_2;
	ld	a, (#_ScoreTeam2)
	ld	iy, #_ScoreTeam1
	sub	a, 0 (iy)
	jr	NC, 00293$
	ld	bc, #0x0000
	jp	00294$
00293$:
	ld	bc, #0x0001
00294$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:170: u8 losing_team = (winning_team == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	-23 (ix), c
	ld	a, c
	or	a, a
	jr	NZ, 00295$
	ld	bc, #0x0001
	jp	00296$
00295$:
	ld	bc, #0x0000
00296$:
	ld	-22 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:171: bool losers_offscreen = TRUE;
	ld	-21 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:173: for (u8 i = 0; i <= 26; i++) {
	ld	-1 (ix), #0x00
00242$:
	ld	a, #0x1a
	sub	a, -1 (ix)
	jp	C, 00221$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:174: if (i >= 14 && i < 26) continue; // Salta Palla e UI
	ld	a, -1 (ix)
	sub	a, #0x0e
	ld	a, #0x00
	rla
	ld	-6 (ix), a
	bit	0, -6 (ix)
	jr	NZ, 00190$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	C, 00220$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:176: struct ObjectInfo* p = &SwSprite[i];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:177: u8 team = (i < 7) ? TEAM_1 : ((i < 14) ? TEAM_2 : 0xFF);
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00297$
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00298$
00297$:
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00299$
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
	jp	00300$
00299$:
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0
00300$:
00298$:
	ld	a, -7 (ix)
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:179: if (team == losing_team || i == 26) {
	ld	a, -22 (ix)
	sub	a, -18 (ix)
	jr	Z, 00216$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	NZ,00217$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:181: if (p->ly < 512) {
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
	jp	NC, 00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:182: losers_offscreen = FALSE;
	ld	-21 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:183: p->dy = 2; p->dx = 0;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:184: p->ly += p->dy;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:185: p->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:186: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-30 (ix), #0x00
	ld	-29 (ix), #0x01
	ld	-28 (ix), #0x02
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:187: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
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
	ld	hl, #0
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
	jp	00220$
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:189: p->ly = 1000;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x03
	jp	00220$
00217$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:191: } else if (team == winning_team) {
	ld	a, -18 (ix)
	sub	a, -23 (ix)
	jp	NZ,00220$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:194: u16 center_y = Field.ly + 96;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:197: u16 t_x = center_x - 40 + ((i * 13 + Frms) % 80);
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
	ld	de, #0x0050
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
	add	a, #0x58
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:198: u16 t_y = center_y - 40 + ((i * 17 + Frms) % 80);
	ld	a, -11 (ix)
	add	a, #0xd8
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
	add	hl, hl
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
	ld	de, #0x0050
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:200: if (p->lx < t_x - 2) p->dx = 2; else if (p->lx > t_x + 2) p->dx = -2; else p->dx = 0;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:183: p->dy = 2; p->dx = 0;
	ld	a, -20 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:200: if (p->lx < t_x - 2) p->dx = 2; else if (p->lx > t_x + 2) p->dx = -2; else p->dx = 0;
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00199$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x02
	jp	00200$
00199$:
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
	jr	NC, 00196$
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0xfe
	jp	00200$
00196$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:201: if (p->ly < t_y - 2) p->dy = 2; else if (p->ly > t_y + 2) p->dy = -2; else p->dy = 0;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:183: p->dy = 2; p->dx = 0;
	ld	a, -20 (ix)
	add	a, #0x12
	ld	-9 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:201: if (p->ly < t_y - 2) p->dy = 2; else if (p->ly > t_y + 2) p->dy = -2; else p->dy = 0;
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00205$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x02
	jp	00206$
00205$:
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
	jr	NC, 00202$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0xfe
	jp	00206$
00202$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x00
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:203: p->lx += p->dx; p->ly += p->dy; p->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:205: u8 step = (p->anim / 3) % 4;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:206: if (step == 3) step = 1;
	ld	-7 (ix), a
	sub	a, #0x03
	jr	NZ, 00208$
	ld	-7 (ix), #0x01
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:208: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:187: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
	ld	a, -20 (ix)
	add	a, #0x0f
	ld	-9 (ix), a
	ld	a, -19 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:208: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	bit	7, -6 (ix)
	jr	NZ, 00209$
	ld	a, -6 (ix)
	or	a, a
	jp	NZ, 00210$
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
	jr	NC, 00210$
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:209: p->frame = (team == TEAM_1) ? 
	ld	a, -18 (ix)
	or	a, a
	jr	NZ, 00301$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:210: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00303$
	ld	-7 (ix), #0x5c
	ld	-6 (ix), #0
	jp	00302$
00303$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00305$
	ld	-7 (ix), #0x5d
	ld	-6 (ix), #0
	jp	00302$
00305$:
	ld	-7 (ix), #0x5e
	ld	-6 (ix), #0
	jp	00302$
00301$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:211: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00307$
	ld	-7 (ix), #0xcc
	ld	-6 (ix), #0
	jp	00308$
00307$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00309$
	ld	-7 (ix), #0xcd
	ld	-6 (ix), #0
	jp	00310$
00309$:
	ld	-7 (ix), #0xce
	ld	-6 (ix), #0
00310$:
00308$:
00302$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00220$
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:213: p->frame = (team == TEAM_1) ? 
	ld	a, -18 (ix)
	or	a, a
	jr	NZ, 00311$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:214: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00313$
	ld	-7 (ix), #0x3c
	ld	-6 (ix), #0
	jp	00312$
00313$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00315$
	ld	-7 (ix), #0x3d
	ld	-6 (ix), #0
	jp	00312$
00315$:
	ld	-7 (ix), #0x3e
	ld	-6 (ix), #0
	jp	00312$
00311$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:215: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00317$
	ld	-7 (ix), #0x9c
	ld	-6 (ix), #0
	jp	00318$
00317$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00319$
	ld	-7 (ix), #0x9d
	ld	-6 (ix), #0
	jp	00320$
00319$:
	ld	-7 (ix), #0x9e
	ld	-6 (ix), #0
00320$:
00318$:
00312$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00220$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:173: for (u8 i = 0; i <= 26; i++) {
	inc	-1 (ix)
	jp	00242$
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:220: if (losers_offscreen) {
	ld	a, -21 (ix)
	or	a, a
	jr	Z, 00228$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:221: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:222: if (*start_sec < Frms) { 
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00223$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:223: (*wait_secs)--; 
	dec	c
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:225: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
	jp	00243$
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:227: CallFnc_VOID(SEG_MENU, ShowMenu);
	ld	de, #_ShowMenu
	ld	a, #0x0e
	call	_CallFnc_VOID
	jp	00243$
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:230: *wait_secs = 6; // Resetta il timer a 6 finché non sono usciti tutti gli sconfitti
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:231: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s17_b3.c:234: }
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
	.area _SEG17
	.area _INITIALIZER
	.area _CABS (ABS)
