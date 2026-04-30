;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s22_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UpdateGameState_Celebrations
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _ShowMenu
	.globl _HideSpriteMessage
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
	.area _SEG22
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:11: void UpdateGameState_Celebrations(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
;	---------------------------------
; Function UpdateGameState_Celebrations
; ---------------------------------
_UpdateGameState_Celebrations::
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:15: if (*game_state == 9) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	sub	a, #0x09
	jp	NZ,00256$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:17: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Nascondi i focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:19: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jr	Z, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:20: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	d, a
	ld	hl, #_Frms
	ld	a, d
	sub	a, (hl)
	jr	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:21: (*wait_secs)--;
	ld	a, e
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:22: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:23: *game_state = 6; // Passa al reset del campo
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:24: *wait_secs = 1;  // Pausa minima per permettere il ridisegno pulito
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:25: *start_sec = 0;  // FIX: Questo valore forza lo Stato 6 a triggerare istantaneamente
	xor	a, a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:26: return;
	jp	00268$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:29: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:32: u8 scoring_team = (KickOffTeam == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	NZ, 00270$
	ld	bc, #0x0001
	jp	00271$
00270$:
	ld	bc, #0x0000
00271$:
	ld	-24 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:34: for (u8 i = 0; i < 14; i++) {
	ld	-1 (ix), #0x00
00259$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00140$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:35: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00272$
	ld	bc, #0x0000
	jp	00273$
00272$:
	ld	bc, #0x0001
00273$:
	ld	-23 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:36: struct ObjectInfo* p = &SwSprite[i];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:46: u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
	ld	-22 (ix), l
	ld	-21 (ix), h
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:47: u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
	ld	a, -22 (ix)
	add	a, #0x04
	ld	-20 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-19 (ix), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:61: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -22 (ix)
	add	a, #0x0f
	ld	-18 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:38: if (team == scoring_team) { 
	ld	a, -23 (ix)
	sub	a, -24 (ix)
	jp	NZ,00138$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:41: u16 center_y = Field.ly + 96;
	ld	hl, (#(_Field + 4) + 0)
	ld	bc, #0x0060
	add	hl, bc
	push	hl
	pop	iy
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:43: u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
	ld	c, -1 (ix)
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
	ld	a, (_Frms+0)
	ld	-14 (ix), a
	ld	-13 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	add	hl, de
	push	bc
	push	iy
	ld	de, #0x00a0
	call	__modsint
	pop	iy
	pop	bc
	ld	hl, #0x0030
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:44: u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
	push	iy
	pop	de
	ld	a, e
	add	a, #0xc4
	ld	-7 (ix), a
	ld	a, d
	adc	a, #0xff
	ld	-6 (ix), a
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
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	add	hl, de
	ld	de, #0x0078
	call	__modsint
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, de
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:46: u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	ld	-6 (ix), a
	ld	a, -10 (ix)
	sub	a, l
	ld	a, -9 (ix)
	sbc	a, h
	jr	NC, 00274$
	ld	a, e
	sub	a, -10 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -9 (ix)
	jp	00275$
00274$:
	ld	a, -7 (ix)
	sub	a, e
	ld	e, a
	ld	a, -6 (ix)
	sbc	a, d
00275$:
	ld	-10 (ix), e
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:47: u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
	ld	a, c
	sub	a, -12 (ix)
	ld	a, b
	sbc	a, -11 (ix)
	jr	NC, 00276$
	ld	a, -12 (ix)
	sub	a, c
	ld	e, a
	ld	a, -11 (ix)
	sbc	a, b
	jp	00277$
00276$:
	ld	a, c
	sub	a, -12 (ix)
	ld	e, a
	ld	a, b
	sbc	a, -11 (ix)
00277$:
	ld	-12 (ix), e
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:48: u8 speed = (dist_x > 100 || dist_y > 100) ? 6 : ((dist_x > 50 || dist_y > 50) ? 4 : 2);
	ld	a, #0x64
	cp	a, -10 (ix)
	ld	a, #0x00
	sbc	a, -9 (ix)
	jr	C, 00281$
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	a, #0x64
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00278$
00281$:
	ld	-10 (ix), #0x06
	ld	-9 (ix), #0
	jp	00279$
00278$:
	ld	a, #0x32
	cp	a, -10 (ix)
	ld	a, #0x00
	sbc	a, -9 (ix)
	jr	C, 00286$
	ld	a, #0x32
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00283$
00286$:
	ld	de, #0x0004
	jp	00284$
00283$:
	ld	de, #0x0002
00284$:
	ld	-10 (ix), e
	ld	-9 (ix), d
00279$:
	ld	a, -10 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:50: if (p->lx < t_x - speed) p->dx = speed; else if (p->lx > t_x + speed) p->dx = -speed; else p->dx = 0;
	ld	-16 (ix), a
	ld	e, #0x00
	ld	-15 (ix), a
	ld	-14 (ix), e
	ld	a, -7 (ix)
	sub	a, -15 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	sbc	a, -14 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -8 (ix)
	ld	d, #0x00
	ld	a, -22 (ix)
	add	a, #0x11
	ld	-13 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00111$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, -16 (ix)
	ld	(hl), a
	jp	00112$
00111$:
	ld	a, -7 (ix)
	add	a, -15 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	adc	a, -14 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	sbc	hl, de
	jr	NC, 00108$
	xor	a, a
	sub	a, -16 (ix)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), a
	jp	00112$
00108$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x00
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:51: if (p->ly < t_y - speed) p->dy = speed; else if (p->ly > t_y + speed) p->dy = -speed; else p->dy = 0;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	-11 (ix), c
	ld	-10 (ix), b
	ld	a, -11 (ix)
	sub	a, -15 (ix)
	ld	c, a
	ld	a, -10 (ix)
	sbc	a, -14 (ix)
	ld	b, a
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	a, -22 (ix)
	add	a, #0x12
	ld	-7 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -9 (ix)
	sub	a, c
	ld	a, -8 (ix)
	sbc	a, b
	jr	NC, 00117$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -16 (ix)
	ld	(hl), a
	jp	00118$
00117$:
	ld	a, -11 (ix)
	add	a, -15 (ix)
	ld	c, a
	ld	a, -10 (ix)
	adc	a, -14 (ix)
	ld	b, a
	ld	a, c
	sub	a, -9 (ix)
	ld	a, b
	sbc	a, -8 (ix)
	jr	NC, 00114$
	xor	a, a
	sub	a, -16 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
	jp	00118$
00114$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x00
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:53: p->lx += p->dx; p->ly += p->dy; 
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	c, (hl)
	add	a, c
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	rlca
	sbc	a, a
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -15 (ix)
	add	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -14 (ix)
	adc	a, -10 (ix)
	ld	-8 (ix), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:54: p->anim++;
	ld	a, -22 (ix)
	add	a, #0x13
	ld	-9 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	-11 (ix), c
	ld	-10 (ix), b
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:56: u8 step = (p->anim / 3) % 4;
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	de, #0x0003
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	a, e
	and	a, #0x03
	ld	c, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:57: if (step == 3) step = 1;
	ld	-8 (ix), a
	sub	a, #0x03
	jr	NZ, 00120$
	ld	-8 (ix), #0x01
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:53: p->lx += p->dx; p->ly += p->dy; 
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:59: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	bit	7, -6 (ix)
	jr	NZ, 00129$
	ld	a, -6 (ix)
	or	a, a
	jp	NZ, 00130$
	ld	a, (_Frms+0)
	and	a, #0x3f
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x20
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00130$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:60: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00121$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00122$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:61: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00288$
	ld	-7 (ix), #0xfd
	ld	-6 (ix), #0
	jp	00289$
00288$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00290$
	ld	-7 (ix), #0xfe
	ld	-6 (ix), #0
	jp	00291$
00290$:
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0
00291$:
00289$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00260$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:63: p->frame = (team == TEAM_1) ? 
	ld	a, -23 (ix)
	or	a, a
	jr	NZ, 00292$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:64: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00294$
	ld	-7 (ix), #0x5c
	ld	-6 (ix), #0
	jp	00293$
00294$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00296$
	ld	-7 (ix), #0x5d
	ld	-6 (ix), #0
	jp	00293$
00296$:
	ld	-7 (ix), #0x5e
	ld	-6 (ix), #0
	jp	00293$
00292$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:65: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00298$
	ld	-7 (ix), #0xcc
	ld	-6 (ix), #0
	jp	00299$
00298$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00300$
	ld	-7 (ix), #0xcd
	ld	-6 (ix), #0
	jp	00301$
00300$:
	ld	-7 (ix), #0xce
	ld	-6 (ix), #0
00301$:
00299$:
00293$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00260$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:68: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00125$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00126$
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:69: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, step);
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	h, -8 (ix)
	ld	l, -6 (ix)
	push	hl
	ld	h, -7 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00260$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:71: p->frame = (team == TEAM_1) ? 
	ld	a, -23 (ix)
	or	a, a
	jr	NZ, 00302$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:72: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00304$
	ld	-7 (ix), #0x3c
	ld	-6 (ix), #0
	jp	00303$
00304$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00306$
	ld	-7 (ix), #0x3d
	ld	-6 (ix), #0
	jp	00303$
00306$:
	ld	-7 (ix), #0x3e
	ld	-6 (ix), #0
	jp	00303$
00302$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:73: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00308$
	ld	-7 (ix), #0x9c
	ld	-6 (ix), #0
	jp	00309$
00308$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00310$
	ld	-7 (ix), #0x9d
	ld	-6 (ix), #0
	jp	00311$
00310$:
	ld	-7 (ix), #0x9e
	ld	-6 (ix), #0
00311$:
00309$:
00303$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00260$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:78: i8 look_dx = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	a, -8 (ix)
	sub	a, c
	jr	NC, 00312$
	ld	de, #0x0001
	jp	00313$
00312$:
	ld	a, c
	sub	a, -8 (ix)
	jr	NC, 00314$
	ld	de, #0xffff
	jp	00315$
00314$:
	ld	de, #0x0000
00315$:
00313$:
	ld	c, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:79: i8 look_dy = (SwSprite[14].ly > p->ly) ? 1 : ((SwSprite[14].ly < p->ly) ? -1 : 0);
	ld	hl, (#_SwSprite + 326)
	ld	a, -12 (ix)
	sub	a, l
	ld	a, -11 (ix)
	sbc	a, h
	jr	NC, 00316$
	ld	de, #0x0001
	jp	00317$
00316$:
	ld	a, l
	sub	a, -12 (ix)
	ld	a, h
	sbc	a, -11 (ix)
	jr	NC, 00318$
	ld	de, #0xffff
	jp	00319$
00318$:
	ld	de, #0x0000
00319$:
00317$:
	ld	b, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:80: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, c
	or	a,a
	jr	NZ, 00135$
	or	a,b
	jr	NZ, 00135$
	ld	b, #0x01
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:81: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, look_dx, look_dy);
	push	bc
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:34: for (u8 i = 0; i < 14; i++) {
	inc	-1 (ix)
	jp	00259$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:86: struct ObjectInfo* ref = &SwSprite[26];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:87: i8 look_dx = (SwSprite[14].lx > ref->lx) ? 1 : ((SwSprite[14].lx < ref->lx) ? -1 : 0);
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 598)
	ld	c, (hl)
	ld	a, c
	sub	a, -1 (ix)
	jr	NC, 00320$
	ld	bc, #0x0001
	jp	00321$
00320$:
	ld	a, -1 (ix)
	sub	a, c
	jr	NC, 00322$
	ld	bc, #0xffff
	jp	00323$
00322$:
	ld	bc, #0x0000
00323$:
00321$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:88: i8 look_dy = (SwSprite[14].ly > ref->ly) ? 1 : ((SwSprite[14].ly < ref->ly) ? -1 : 0);
	ld	hl, #_SwSprite + 326
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	hl, #(_SwSprite + 598) + 4
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00324$
	ld	de, #0x0001
	jp	00325$
00324$:
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00326$
	ld	de, #0xffff
	jp	00327$
00326$:
	ld	de, #0x0000
00327$:
00325$:
	ld	b, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:89: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, c
	or	a,a
	jr	NZ, 00142$
	or	a,b
	jr	NZ, 00142$
	ld	b, #0x01
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:90: ref->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, 26, look_dx, look_dy);
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x1a
	push	hl
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	((_SwSprite + 613)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:91: return;
	jp	00268$
00256$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:92: } else if (*game_state == 10) {
	ld	a, -1 (ix)
	sub	a, #0x0a
	jp	NZ,00253$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:94: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Nascondi i focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:96: bool time_up = FALSE;
	ld	-28 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:97: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00147$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:98: if (*start_sec < Frms) { 
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	hl, #_Frms
	sub	a, (hl)
	jr	NC, 00145$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:99: (*wait_secs)--; 
	dec	c
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:101: *start_sec = Frms;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00148$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:103: time_up = TRUE;
	ld	-28 (ix), #0x01
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:106: u8 winning_team = (ScoreTeam1 > ScoreTeam2) ? TEAM_1 : TEAM_2;
	ld	a, (#_ScoreTeam2)
	ld	iy, #_ScoreTeam1
	sub	a, 0 (iy)
	jr	NC, 00328$
	ld	bc, #0x0000
	jp	00329$
00328$:
	ld	bc, #0x0001
00329$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:107: u8 losing_team = (winning_team == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	-27 (ix), c
	ld	a, c
	or	a, a
	jr	NZ, 00330$
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
	jp	00331$
00330$:
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
00331$:
	ld	a, -7 (ix)
	ld	-26 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:108: bool all_offscreen = TRUE;
	ld	-25 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:110: i8 exit_dy = (Field.ly < 256) ? -3 : 3; // Escono velocemente verso il bordo schermo più vicino
	ld	hl, (#(_Field + 4) + 0)
	ld	a, h
	sub	a, #0x01
	jr	NC, 00332$
	ld	bc, #0xfffd
	jp	00333$
00332$:
	ld	bc, #0x0003
00333$:
	ld	-24 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:112: for (u8 i = 0; i <= 26; i++) {
	ld	-1 (ix), #0x00
00262$:
	ld	a, #0x1a
	sub	a, -1 (ix)
	jp	C, 00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:113: if (i >= 15 && i < 26) continue; // Salta UI e Frecce
	ld	a, -1 (ix)
	sub	a, #0x0f
	jr	C, 00150$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	C, 00192$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:115: struct ObjectInfo* p = &SwSprite[i];
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
	ld	-23 (ix), l
	ld	-22 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:116: u8 team = (i < 7) ? TEAM_1 : ((i < 14) ? TEAM_2 : 0xFF);
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00334$
	ld	bc, #0x0000
	jp	00335$
00334$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC, 00336$
	ld	bc, #0x0001
	jp	00337$
00336$:
	ld	bc, #0x00ff
00337$:
00335$:
	ld	-21 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:118: if (team == winning_team) {
	ld	a, -27 (ix)
	sub	a, -21 (ix)
	jp	NZ,00190$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:121: u16 center_y = Field.ly + 96;
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
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:123: u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
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
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, (_Frms+0)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -15 (ix)
	add	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, -12 (ix)
	ld	-10 (ix), a
	ld	de, #0x00a0
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0x30
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-17 (ix), a
	ld	a, -10 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:124: u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
	ld	a, -9 (ix)
	add	a, #0xc4
	ld	-11 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-10 (ix), a
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
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -13 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
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
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:126: u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	a, -10 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -17 (ix)
	ld	-13 (ix), a
	ld	a, -16 (ix)
	ld	-12 (ix), a
	ld	a, -17 (ix)
	sub	a, -15 (ix)
	ld	a, -16 (ix)
	sbc	a, -14 (ix)
	jr	NC, 00338$
	ld	a, -9 (ix)
	ld	-15 (ix), a
	ld	a, -8 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	sub	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -14 (ix)
	sbc	a, -16 (ix)
	ld	-8 (ix), a
	jp	00339$
00338$:
	ld	a, -9 (ix)
	ld	-15 (ix), a
	ld	a, -8 (ix)
	ld	-14 (ix), a
	ld	a, -13 (ix)
	sub	a, -15 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sbc	a, -14 (ix)
	ld	-8 (ix), a
00339$:
	ld	a, -9 (ix)
	ld	-15 (ix), a
	ld	a, -8 (ix)
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:127: u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
	ld	a, -23 (ix)
	add	a, #0x04
	ld	-20 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-19 (ix), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, (hl)
	ld	-17 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-16 (ix), a
	ld	a, -7 (ix)
	sub	a, -17 (ix)
	ld	a, -6 (ix)
	sbc	a, -16 (ix)
	jr	NC, 00340$
	ld	a, -17 (ix)
	sub	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -16 (ix)
	sbc	a, -6 (ix)
	ld	-8 (ix), a
	jp	00341$
00340$:
	ld	a, -7 (ix)
	sub	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	sbc	a, -16 (ix)
	ld	-8 (ix), a
00341$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:128: u8 speed = (dist_x > 100 || dist_y > 100) ? 6 : ((dist_x > 50 || dist_y > 50) ? 4 : 2);
	ld	a, #0x64
	cp	a, -15 (ix)
	ld	a, #0x00
	sbc	a, -14 (ix)
	jr	C, 00345$
	ld	a, #0x64
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jr	NC, 00342$
00345$:
	ld	-9 (ix), #0x06
	ld	-8 (ix), #0
	jp	00343$
00342$:
	ld	a, #0x32
	cp	a, -15 (ix)
	ld	a, #0x00
	sbc	a, -14 (ix)
	jr	C, 00350$
	ld	a, #0x32
	cp	a, -9 (ix)
	ld	a, #0x00
	sbc	a, -8 (ix)
	jr	NC, 00347$
00350$:
	ld	-9 (ix), #0x04
	ld	-8 (ix), #0
	jp	00348$
00347$:
	ld	-9 (ix), #0x02
	ld	-8 (ix), #0
00348$:
00343$:
	ld	a, -9 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:130: if (p->lx < t_x - speed) p->dx = speed; else if (p->lx > t_x + speed) p->dx = -speed; else p->dx = 0;
	ld	-18 (ix), a
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -9 (ix)
	ld	-17 (ix), a
	ld	a, -8 (ix)
	ld	-16 (ix), a
	ld	a, -13 (ix)
	sub	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	sbc	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, -10 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00156$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, -18 (ix)
	ld	(hl), a
	jp	00157$
00156$:
	ld	a, -13 (ix)
	add	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	adc	a, -16 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00153$
	xor	a, a
	sub	a, -18 (ix)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00157$
00153$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:131: if (p->ly < t_y - speed) p->dy = speed; else if (p->ly > t_y + speed) p->dy = -speed; else p->dy = 0;
	ld	l, -20 (ix)
	ld	h, -19 (ix)
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
	sub	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	sbc	a, -16 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-9 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00162$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -18 (ix)
	ld	(hl), a
	jp	00163$
00162$:
	ld	a, -13 (ix)
	add	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, -16 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00159$
	xor	a, a
	sub	a, -18 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), a
	jp	00163$
00159$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x00
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:133: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	c, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	(hl), a
	ld	l, -20 (ix)
	ld	h, -19 (ix)
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
	ld	l, -20 (ix)
	ld	h, -19 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	ld	a, -23 (ix)
	add	a, #0x13
	ld	-13 (ix), a
	ld	a, -22 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:135: u8 step = (p->anim / 3) % 4;
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
	ld	a, -11 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:136: if (step == 3) step = 1;
	ld	-7 (ix), a
	sub	a, #0x03
	jr	NZ, 00165$
	ld	-7 (ix), #0x01
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:133: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:140: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-9 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:138: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	bit	7, -6 (ix)
	jr	NZ, 00174$
	ld	a, -6 (ix)
	or	a, a
	jp	NZ, 00175$
	ld	a, (_Frms+0)
	and	a, #0x3f
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x20
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00175$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:139: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00166$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00167$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:140: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00352$
	ld	-7 (ix), #0xfd
	ld	-6 (ix), #0
	jp	00353$
00352$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00354$
	ld	-7 (ix), #0xfe
	ld	-6 (ix), #0
	jp	00355$
00354$:
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0
00355$:
00353$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00192$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:142: p->frame = (team == TEAM_1) ? 
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00356$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:143: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00358$
	ld	de, #0x005c
	jp	00359$
00358$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00360$
	ld	de, #0x005d
	jp	00361$
00360$:
	ld	de, #0x005e
00361$:
00359$:
	ld	-7 (ix), e
	ld	-6 (ix), d
	jp	00357$
00356$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:144: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00362$
	ld	-7 (ix), #0xcc
	ld	-6 (ix), #0
	jp	00363$
00362$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00364$
	ld	-7 (ix), #0xcd
	ld	-6 (ix), #0
	jp	00365$
00364$:
	ld	-7 (ix), #0xce
	ld	-6 (ix), #0
00365$:
00363$:
00357$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00192$
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:147: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00170$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00171$
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:148: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, step);
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00192$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:150: p->frame = (team == TEAM_1) ? 
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00366$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:151: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00368$
	ld	de, #0x003c
	jp	00367$
00368$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00370$
	ld	de, #0x003d
	jp	00367$
00370$:
	ld	de, #0x003e
	jp	00367$
00366$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:152: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -7 (ix)
	or	a, a
	jr	NZ, 00372$
	ld	de, #0x009c
	jp	00373$
00372$:
	ld	a, -7 (ix)
	dec	a
	jr	NZ, 00374$
	ld	de, #0x009d
	jp	00375$
00374$:
	ld	de, #0x009e
00375$:
00373$:
00367$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00192$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:156: else if (team == losing_team || i == 26 || i == 14) {
	ld	a, -21 (ix)
	sub	a, -26 (ix)
	jr	Z, 00185$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jr	Z, 00185$
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NZ,00192$
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:158: if (OnScreen(p->ly)) {
	ld	a, -23 (ix)
	add	a, #0x04
	ld	c, a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	sub	a, #0x02
	jp	NC, 00182$
	ld	hl, #0x020f
	add	hl, de
	ex	de, hl
	ld	hl, (#(_Field + 4) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
	ld	d, a
	ld	a, e
	sub	a, #0xcf
	ld	a, d
	sbc	a, #0x00
	jp	NC, 00182$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:159: all_offscreen = FALSE; 
	ld	-25 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:160: p->dy = exit_dy; p->dx = 0;
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-9 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -24 (ix)
	ld	(hl), a
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-7 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:161: p->ly = (p->ly + p->dy) & 511; // Evita l'underflow matematico
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -24 (ix)
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
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:162: if (i != 14) { // Anima i giocatori e l'arbitro (non la palla)
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	Z, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:163: p->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:164: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x02
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:165: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	c, a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	b, a
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
	ld	d, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	h, (hl)
;	spillPairReg hl
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	push	hl
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	pop	bc
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jp	00192$
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:168: p->ly = 1000; // Nascondi del tutto quando fuori visuale
	ld	a, #0xe8
	ld	(bc), a
	inc	bc
	ld	a, #0x03
	ld	(bc), a
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:112: for (u8 i = 0; i <= 26; i++) {
	inc	-1 (ix)
	jp	00262$
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:174: if (time_up && all_offscreen) {
	ld	a, -28 (ix)
	or	a, a
	jp	Z,00268$
	ld	a, -25 (ix)
	or	a, a
	jp	Z,00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:175: CallFnc_VOID(SEG_MENU, ShowMenu);
	ld	de, #_ShowMenu
	ld	a, #0x0e
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:177: return;
	jp	00268$
00253$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:178: } else if (*game_state == 11) {
	ld	a, -1 (ix)
	sub	a, #0x0b
	jp	NZ,00268$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:181: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jp	Z, 00211$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:182: if (*start_sec < Frms) { 
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	d, a
	ld	hl, #_Frms
	ld	a, d
	sub	a, (hl)
	jp	NC, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:183: (*wait_secs)--;
	ld	a, e
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:184: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00198$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:185: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	bc
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	pop	bc
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:189: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Rimuovi tutti i focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:190: for(u8 i=0; i<14; i++) {
	ld	-1 (ix), #0x00
00264$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00207$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:191: u8 role = (i < 7) ? i : i - 7;
	ld	a, -1 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	e, a
	or	a, a
	jr	Z, 00376$
	ld	d, -1 (ix)
	jp	00377$
00376$:
	ld	a, -1 (ix)
	add	a, #0xf9
	ld	d, a
00377$:
	ld	-6 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:192: u8 t_cx = (i < 7) ? 64 : 192;
	ld	a, e
	or	a, a
	jr	Z, 00378$
	ld	de, #0x0040
	jp	00379$
00378$:
	ld	de, #0x00c0
00379$:
	ld	-8 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:193: i8 off_x = 0; i8 off_y = 0;
	ld	de, #0x0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:194: switch(role) {
	ld	a, #0x06
	sub	a, -6 (ix)
	jr	C, 00206$
	ld	e, -6 (ix)
	ld	d, #0x00
	ld	hl, #01061$
	add	hl, de
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:195: case 0: off_x = -18; off_y = -18; break; // Giocatore 1 (dietro)
	jp	(hl)
01061$:
	jr	00199$
	jr	00200$
	jr	00201$
	jr	00202$
	jr	00203$
	jr	00204$
	jr	00205$
00199$:
	ld	de, #0xeeee
	jp	00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:196: case 1: off_x =   2; off_y = -18; break; // Giocatore 2 (dietro)
00200$:
	ld	de, #0x2ee
	jp	00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:197: case 2: off_x =  22; off_y = -18; break; // Giocatore 3 (dietro)
00201$:
	ld	de, #0x16ee
	jp	00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:198: case 3: off_x = -22; off_y =   2; break; // Giocatore 4 (centro)
00202$:
	ld	de, #0xea02
	jp	00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:199: case 4: off_x =  -2; off_y =   2; break; // Giocatore 5 (centro)
00203$:
	ld	de, #0xfe02
	jp	00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:200: case 5: off_x =  18; off_y =   2; break; // Giocatore 6 (centro)
00204$:
	ld	de, #0x1202
	jp	00206$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:201: case 6: off_x = -10; off_y =  22; break; // Giocatore 7 (avanti)
00205$:
	ld	de, #0xf616
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:202: }
00206$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:203: SwSprite[i].tx = (u8)(t_cx + off_x);
	push	de
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
	pop	de
	ld	a, #<(_SwSprite)
	add	a, l
	ld	-7 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, h
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0x0c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -8 (ix)
	add	a, d
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:204: SwSprite[i].ty = (u16)(256 + off_y);
	ld	a, -7 (ix)
	add	a, #0x0d
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	inc	a
	ld	(hl), e
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:190: for(u8 i=0; i<14; i++) {
	inc	-1 (ix)
	jp	00264$
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:207: SwSprite[26].tx = (u8)(128 + 24);
	ld	hl, #(_SwSprite + 610)
	ld	(hl), #0x98
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:208: SwSprite[26].ty = (u16)(256 - 24);
	ld	hl, #0x00e8
	ld	((_SwSprite + 611)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:211: SwSprite[14].ly = 1000;
	ld	h, #0x03
	ld	((_SwSprite + 326)), hl
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:213: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:214: return;
	jp	00268$
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:217: bool all_in_position = TRUE;
	ld	-24 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:220: if (Field.ly > 156 + 3) {
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:221: Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:220: if (Field.ly > 156 + 3) {
	ld	a, #0x9f
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	NC, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:221: Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
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
	ld	-24 (ix), #0x00
	jp	00520$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:222: } else if (Field.ly + 3 < 156) {
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, e
	sub	a, #0x9c
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00216$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:223: Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE;
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
	ld	-24 (ix), #0x00
	jp	00520$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:224: } else if (Field.ly != 156) {
	ld	a, c
	sub	a, #0x9c
	or	a, b
	jr	Z, 00213$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:225: Field.dy = (i8)(156 - Field.ly); Field.ly = 156; all_in_position = FALSE;
	ld	c, -7 (ix)
	ld	a, #0x9c
	sub	a, c
	ld	(#(_Field + 18)),a
	ld	hl, #0x009c
	ld	((_Field + 4)), hl
	ld	-24 (ix), #0x00
	jp	00520$
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:227: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:231: for (u8 i = 0; i <= 26; i++) {
00520$:
	ld	-1 (ix), #0x00
00267$:
	ld	a, #0x1a
	sub	a, -1 (ix)
	jp	C, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:232: if (i >= 14 && i < 26) continue; // Salta UI e Palla
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	C, 00222$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	C, 00246$
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:233: struct ObjectInfo* p = &SwSprite[i];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:234: if (p->lx != p->tx || p->ly != p->ty) {
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:237: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:241: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:247: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:234: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00242$
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
	jp	Z,00243$
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:235: all_in_position = FALSE;
	ld	-24 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:237: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NC, 00228$
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
	jr	C, 00380$
	ld	-7 (ix), #0x02
	ld	-6 (ix), #0
	jp	00381$
00380$:
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
00381$:
	ld	a, -7 (ix)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00229$
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:238: else if (p->tx < p->lx) p->dx = (i8)((p->lx - p->tx >= 2) ? -2 : -1); 
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NC, 00225$
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
	jr	C, 00382$
	ld	a, #0xfe
	jp	00383$
00382$:
	ld	a, #0xff
00383$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00229$
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:239: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00229$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:241: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
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
	jr	NC, 00234$
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
	jr	C, 00384$
	ld	bc, #0x0002
	jp	00385$
00384$:
	ld	bc, #0x0001
00385$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), c
	jp	00235$
00234$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:242: else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00231$
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
	jr	C, 00386$
	ld	a, #0xfe
	jp	00387$
00386$:
	ld	a, #0xff
00387$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00235$
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:243: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00235$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:245: p->lx += p->dx; p->ly += p->dy; p->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:246: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-32 (ix), #0x00
	ld	-31 (ix), #0x01
	ld	-30 (ix), #0x02
	ld	-29 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:247: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
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
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00246$
00243$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:249: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:251: if (i == 26) { // L'arbitro fissa sempre la palla
	ld	a, -1 (ix)
	sub	a, #0x1a
	jr	NZ, 00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:252: look_dx = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
	ld	hl, #_SwSprite + 322
	ld	c, (hl)
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	b, (hl)
	ld	a, b
	sub	a, c
	jr	NC, 00388$
	ld	bc, #0x0001
	jp	00389$
00388$:
	ld	a, c
	sub	a, b
	jr	NC, 00390$
	ld	bc, #0xffff
	jp	00391$
00390$:
	ld	bc, #0x0000
00391$:
00389$:
	ld	-8 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:253: look_dy = (SwSprite[14].ly > p->ly) ? 1 : ((SwSprite[14].ly < p->ly) ? -1 : 0);
	ld	hl, #_SwSprite + 326
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -21 (ix)
	ld	h, -20 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, -7 (ix)
	ld	a, b
	sbc	a, -6 (ix)
	jr	NC, 00392$
	ld	bc, #0x0001
	jp	00238$
00392$:
	ld	a, -7 (ix)
	sub	a, c
	ld	a, -6 (ix)
	sbc	a, b
	jr	NC, 00394$
	ld	bc, #0xffff
	jp	00238$
00394$:
	ld	bc, #0x0000
	jp	00238$
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:255: look_dx = (i8)((i % 3) - 1);
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x0003
	call	__modsint
	pop	hl
	ld	a, e
	dec	a
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:256: look_dy = (i8)(((i / 3) % 3) - 1);
	ld	de, #0x0003
	call	__divsint
	ex	de, hl
	ld	de, #0x0003
	call	__modsint
	ld	c, e
	dec	c
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:258: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, -8 (ix)
	or	a,a
	jr	NZ, 00240$
	or	a,c
	jr	NZ, 00240$
	ld	c, #0x01
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:259: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, i, look_dx, look_dy);
	ld	h, c
	ld	l, -8 (ix)
	push	hl
	ld	a, -1 (ix)
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
00246$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:231: for (u8 i = 0; i <= 26; i++) {
	inc	-1 (ix)
	jp	00267$
00247$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:262: if (all_in_position) *game_state = 12; // Va in Loop infinito dei Rigori
	ld	a, -24 (ix)
	or	a, a
	jr	Z, 00249$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0c
00249$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:263: return;
00268$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s22_b3.c:265: }
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
	.area _SEG22
	.area _INITIALIZER
	.area _CABS (ABS)
