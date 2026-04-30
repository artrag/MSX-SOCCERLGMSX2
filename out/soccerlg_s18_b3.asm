;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s18_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _SetBallSprite
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
	.globl _CallFnc_VOID_P1
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
	.globl _UpdateBallPhysics
	.globl _UpdateReferee
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
	.area _SEG18
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:10: void UpdateBallPhysics()
;	---------------------------------
; Function UpdateBallPhysics
; ---------------------------------
_UpdateBallPhysics::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-21
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:12: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:14: if (Ball->anim > 0) {
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	or	a, -4 (ix)
	jp	Z, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:15: if (Ball->anim == 5) {
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, #0x05
	or	a, -1 (ix)
	jp	NZ,00156$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:17: u8 progress = Ball->count; // 0 = inizio da tiratore, max = fine verso ricevitore
	ld	a, (#(_SwSprite + 343) + 0)
	ld	-21 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:18: u8 half_frame = g_pass_max_frames >> 1; // metà del percorso
	ld	a, (_g_pass_max_frames+0)
	srl	a
	ld	-20 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:20: i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
	ld	hl, (_g_pass_target_x)
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	hl, (_g_pass_start_x)
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-19 (ix), a
	ld	a, -1 (ix)
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:21: i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
	ld	hl, (_g_pass_target_y)
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	hl, (_g_pass_start_y)
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-17 (ix), a
	ld	a, -1 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:22: bool hit_post = FALSE;
	ld	-15 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:27: Ball->ly = g_pass_start_y;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:25: if (progress == 0) {
	ld	a, -21 (ix)
	or	a, a
	jr	NZ, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:26: Ball->lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:27: Ball->ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
	jp	00106$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:28: } else if (progress >= g_pass_max_frames) {
	ld	hl, #_g_pass_max_frames
	ld	a, -21 (ix)
	sub	a, (hl)
	jr	C, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:29: Ball->lx = g_pass_target_x;
	ld	a, (_g_pass_target_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:30: Ball->ly = g_pass_target_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_target_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	ld	(hl), a
	jp	00106$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:33: Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
	ld	a, (_g_pass_start_x+0)
	ld	-5 (ix), a
	ld	a, -21 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	l, -19 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -18 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, (_g_pass_max_frames+0)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, -2 (ix)
	ld	-1 (ix), a
	add	a, -5 (ix)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:34: Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
	ld	hl, (_g_pass_start_y)
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -16 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	a, (_g_pass_max_frames+0)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	a, -6 (ix)
	add	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:38: if (g_pass_max_height <= 2 && progress > 0) {
	ld	a, #0x02
	ld	hl, #_g_pass_max_height
	sub	a, (hl)
	jp	C, 00136$
	ld	a, -21 (ix)
	or	a, a
	jp	Z, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:44: i16 old_ly = (i16)g_pass_start_y + (dy_total * (progress - 1)) / g_pass_max_frames;
	ld	hl, (_g_pass_start_y)
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -21 (ix)
	ld	b, #0x00
	add	a, #0xff
	ld	-4 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-3 (ix), a
	ld	l, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -16 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	call	__mulint
	ex	de, hl
	ld	a, (_g_pass_max_frames+0)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	call	__divsint
	ld	-10 (ix), e
	ld	-9 (ix), d
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	add	a, -10 (ix)
	ld	-2 (ix), a
	ld	a, -7 (ix)
	adc	a, -9 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-14 (ix), a
	ld	a, -1 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:45: i16 new_ly = Ball->ly;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:46: i16 old_lx = (i16)g_pass_start_x + (dx_total * (progress - 1)) / g_pass_max_frames;
	ld	hl, (_g_pass_start_x)
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -19 (ix)
	ld	-8 (ix), a
	ld	a, -18 (ix)
	ld	-7 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, -5 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:47: i16 new_lx = Ball->lx;
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:50: if (old_ly > top_boundary && new_ly <= top_boundary) {
	ld	a, -14 (ix)
	ld	-2 (ix), a
	ld	a, -13 (ix)
	ld	-1 (ix), a
	ld	a, #0x18
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	NC, 00121$
	ld	c, -10 (ix)
	ld	b, -9 (ix)
	ld	a, #0x18
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:51: i16 cross_x = old_lx + ((new_lx - old_lx) * (old_ly - top_boundary)) / (old_ly - new_ly);
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -3 (ix)
	sbc	a, -5 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	add	a, #0xe8
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	d, a
	call	__mulint
	ex	de, hl
	ld	a, -14 (ix)
	sub	a, -10 (ix)
	ld	e, a
	ld	a, -13 (ix)
	sbc	a, -9 (ix)
	ld	d, a
	call	__divuint
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:52: if ((cross_x >= goal_left - 4 && cross_x <= goal_left + 4) ||
	ld	a, l
	sub	a, #0x4e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00111$
	ld	a, #0x56
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00321$
	xor	a, #0x80
00321$:
	jp	P, 00107$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:53: (cross_x >= goal_right - 4 && cross_x <= goal_right + 4)) {
	ld	a, l
	sub	a, #0x8e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00122$
	ld	a, #0x96
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00322$
	xor	a, #0x80
00322$:
	jp	M, 00122$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:54: hit_post = TRUE;
	ld	-15 (ix), #0x01
	jp	00122$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:58: else if (old_ly < bottom_boundary && new_ly >= bottom_boundary) {
	ld	a, -2 (ix)
	sub	a, #0xde
	ld	a, -1 (ix)
	sbc	a, #0x01
	jr	NC, 00122$
	ld	a, -10 (ix)
	ld	b, -9 (ix)
	sub	a, #0xde
	ld	a, b
	sbc	a, #0x01
	jr	C, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:59: i16 cross_x = old_lx + ((new_lx - old_lx) * (bottom_boundary - old_ly)) / (new_ly - old_ly);
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -3 (ix)
	sbc	a, -5 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xde
	sub	a, -2 (ix)
	ld	e, a
	ld	a, #0x01
	sbc	a, -1 (ix)
	ld	d, a
	call	__mulint
	ex	de, hl
	ld	a, -10 (ix)
	sub	a, -14 (ix)
	ld	e, a
	ld	a, -9 (ix)
	sbc	a, -13 (ix)
	ld	d, a
	call	__divuint
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:60: if ((cross_x >= goal_left - 4 && cross_x <= goal_left + 4) ||
	ld	a, l
	sub	a, #0x4e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00116$
	ld	a, #0x56
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00323$
	xor	a, #0x80
00323$:
	jp	P, 00112$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:61: (cross_x >= goal_right - 4 && cross_x <= goal_right + 4)) {
	ld	a, l
	sub	a, #0x8e
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00122$
	ld	a, #0x96
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00324$
	xor	a, #0x80
00324$:
	jp	M, 00122$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:62: hit_post = TRUE;
	ld	-15 (ix), #0x01
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:66: if (hit_post) {
	ld	a, -15 (ix)
	or	a, a
	jp	Z, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:71: i16 out_dx = in_dx;
	ld	a, -19 (ix)
	ld	-4 (ix), a
	ld	a, -18 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:72: i16 out_dy = -in_dy;
	xor	a, a
	sub	a, -17 (ix)
	ld	-2 (ix), a
	sbc	a, a
	sub	a, -16 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:75: i16 len = (out_dx > 0 ? out_dx : -out_dx) + (out_dy > 0 ? out_dy : -out_dy);
	xor	a, a
	cp	a, -8 (ix)
	sbc	a, -7 (ix)
	jp	PO, 00325$
	xor	a, #0x80
00325$:
	jp	P, 00165$
	ld	a, -19 (ix)
	ld	-6 (ix), a
	ld	a, -18 (ix)
	ld	-5 (ix), a
	jp	00166$
00165$:
	xor	a, a
	sub	a, -19 (ix)
	ld	-6 (ix), a
	sbc	a, a
	sub	a, -18 (ix)
	ld	-5 (ix), a
00166$:
	ld	a, -2 (ix)
	ld	-10 (ix), a
	ld	a, -1 (ix)
	ld	-9 (ix), a
	xor	a, a
	cp	a, -10 (ix)
	sbc	a, -9 (ix)
	jp	PO, 00326$
	xor	a, #0x80
00326$:
	jp	P, 00167$
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	jp	00168$
00167$:
	xor	a, a
	sub	a, -2 (ix)
	ld	-8 (ix), a
	sbc	a, a
	sub	a, -1 (ix)
	ld	-7 (ix), a
00168$:
	ld	a, -8 (ix)
	add	a, -6 (ix)
	ld	c, a
	ld	a, -7 (ix)
	adc	a, -5 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:76: if (len == 0) len = 1;
	ld	b, a
	or	a, c
	jr	NZ, 00125$
	ld	bc, #0x0001
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:78: out_dx = (out_dx * 60) / len;
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	push	bc
	ld	e, c
	ld	d, b
	call	__divsint
	pop	bc
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:79: out_dy = (out_dy * 60) / len;
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	e, c
	ld	d, b
	call	__divsint
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:82: if (out_dy > 0) {
	ld	-6 (ix), e
	ld	-5 (ix), d
	ld	c, e
	ld	b, d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:83: if (Ball->ly < top_boundary + 2) Ball->ly = top_boundary + 2;
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:82: if (out_dy > 0) {
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00327$
	xor	a, #0x80
00327$:
	jp	P, 00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:83: if (Ball->ly < top_boundary + 2) Ball->ly = top_boundary + 2;
	ld	a, -4 (ix)
	sub	a, #0x1a
	ld	a, -3 (ix)
	sbc	a, #0x00
	jr	NC, 00132$
	ld	hl, #0x001a
	ld	((_SwSprite + 326)), hl
	jp	00132$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:85: if (Ball->ly > bottom_boundary - 2) Ball->ly = bottom_boundary - 2;
	ld	a, #0xdc
	cp	a, -4 (ix)
	ld	a, #0x01
	sbc	a, -3 (ix)
	jr	NC, 00132$
	ld	hl, #0x01dc
	ld	((_SwSprite + 326)), hl
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:88: g_pass_start_x = Ball->lx;
	ld	a, (#(_SwSprite + 322) + 0)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:89: g_pass_start_y = Ball->ly;
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:91: g_pass_target_x = g_pass_start_x + out_dx;
	ld	a, -2 (ix)
	ld	hl, #_g_pass_start_x
	ld	iy, #_g_pass_target_x
	add	a, (hl)
	ld	0 (iy), a
	ld	a, -1 (ix)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:92: g_pass_target_y = g_pass_start_y + out_dy;
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	hl, #_g_pass_start_y
	ld	iy, #_g_pass_target_y
	add	a, (hl)
	ld	0 (iy), a
	ld	a, -1 (ix)
	inc	hl
	adc	a, (hl)
	inc	iy
	ld	0 (iy), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:94: g_pass_max_frames = 10; // Rimbalzo rapido
	ld	hl, #_g_pass_max_frames
	ld	(hl), #0x0a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:95: Ball->count = 0; 
	ld	hl, #0x0000
	ld	((_SwSprite + 343)), hl
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:102: scale = (progress * g_pass_max_height) / half_frame;
	ld	a, -20 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:101: if (progress <= half_frame) {
	ld	a, -20 (ix)
	sub	a, -21 (ix)
	jr	C, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:102: scale = (progress * g_pass_max_height) / half_frame;
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	h, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00328$:
	add	hl, hl
	jr	NC, 00329$
	add	hl, de
00329$:
	djnz	00328$
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, -2 (ix)
	ld	-1 (ix), a
	jp	00140$
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:104: u8 progress_down = progress - half_frame;
	ld	a, -21 (ix)
	sub	a, -20 (ix)
	ld	-3 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:105: scale = g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00330$:
	add	hl, hl
	jr	NC, 00331$
	add	hl, de
00331$:
	djnz	00330$
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, (_g_pass_max_frames+0)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -6 (ix)
	sub	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sbc	a, -1 (ix)
	ld	-3 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	a, (_g_pass_max_height+0)
	sub	a, e
	ld	-1 (ix), a
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:107: if (scale > 7) scale = 7; 
	ld	a, #0x07
	sub	a, -1 (ix)
	jr	NC, 00142$
	ld	-1 (ix), #0x07
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:108: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:110: Ball->count++;
	ld	hl, (#(_SwSprite + 343) + 0)
	inc	hl
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	hl, #(_SwSprite + 343)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:111: if (Ball->count >= g_pass_max_frames) {
	ld	a, (_g_pass_max_frames+0)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	C, 00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:112: Ball->anim = 0; // Passaggio completato
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:113: Ball->count = 0;
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:114: Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:115: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); 
	xor	a, a
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00159$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:118: u8 speed = Ball->anim + 1;
	ld	a, -4 (ix)
	inc	a
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:119: if (Ball->dx > 0) Ball->lx += speed; else if (Ball->dx < 0) Ball->lx -= speed;
	ld	hl, #(_SwSprite + 322) + 17
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 00332$
	xor	a, #0x80
00332$:
	jp	P, 00148$
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-2 (ix), a
	add	a, -1 (ix)
	ld	-2 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -2 (ix)
	ld	(hl), a
	jp	00149$
00148$:
	bit	7, c
	jr	Z, 00149$
	ld	a, (#(_SwSprite + 322) + 0)
	sub	a, -1 (ix)
	ld	(#(_SwSprite + 322)),a
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:120: if (Ball->dy > 0) Ball->ly += speed; else if (Ball->dy < 0) Ball->ly -= speed;
	ld	a, (#(_SwSprite + 322) + 18)
	ld	-2 (ix), a
	xor	a, a
	sub	a, -2 (ix)
	jp	PO, 00333$
	xor	a, #0x80
00333$:
	jp	P, 00153$
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -1 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -4 (ix)
	add	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	adc	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	jp	00154$
00153$:
	bit	7, -2 (ix)
	jr	Z, 00154$
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -1 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:121: Ball->anim--;
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 341)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:126: if (Ball->anim < 5 && Ball->count > 0) {
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, #0x05
	ld	a, -1 (ix)
	sbc	a, #0x00
	jr	NC, 00163$
	ld	hl, #(_SwSprite + 343)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	or	a, -4 (ix)
	jr	Z, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:127: Ball->count--;
	ld	a, -4 (ix)
	add	a, #0xff
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	hl, #(_SwSprite + 343)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:129: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:131: void UpdateReferee()
;	---------------------------------
; Function UpdateReferee
; ---------------------------------
_UpdateReferee::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:133: struct ObjectInfo* Ball = &SwSprite[14];
	ld	bc, #_SwSprite + 322
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:134: struct ObjectInfo* Referee = &SwSprite[26];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:136: u16 target_x = (Ball->lx < 128) ? ((u16)Ball->lx + 40) : ((u16)Ball->lx - 40);
	ld	a, (bc)
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00128$
	ld	hl, #0x0028
	add	hl, de
	jp	00129$
00128$:
	ld	a, e
	add	a, #0xd8
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
00129$:
	push	hl
	pop	iy
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:137: u16 target_y = (Ball->ly < 256) ? (Ball->ly + 48) : (Ball->ly - 48);
	ld	de, (#(_SwSprite + 326) + 0)
	ld	a, d
	sub	a, #0x01
	jr	NC, 00130$
	ld	hl, #0x0030
	add	hl, de
	ld	a, h
	jp	00131$
00130$:
	ld	a, e
	add	a, #0xd0
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, #0xff
00131$:
	ld	-2 (ix), l
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:139: if (target_x < 16) target_x = 16;
	push	iy
	pop	de
	ld	a, e
	sub	a, #0x10
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00102$
	ld	iy, #0x0010
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:140: if (target_x > 224) target_x = 224;
	push	iy
	pop	de
	ld	a, #0xe0
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00104$
	ld	iy, #0x00e0
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:141: if (target_y < 24) target_y = 24;
	ld	a, -2 (ix)
	ld	d, -1 (ix)
	sub	a, #0x18
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00106$
	ld	-2 (ix), #0x18
	ld	-1 (ix), #0
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:142: if (target_y > 488) target_y = 488;
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	a, #0xe8
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00108$
	ld	-2 (ix), #0xe8
	ld	-1 (ix), #0x01
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:144: i8 ref_dx = 0;
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:145: i8 ref_dy = 0;
	ld	-5 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:148: if (target_x > Referee->lx + speed) ref_dx = speed;
	ld	hl, #(_SwSprite + 598)
	ld	e, (hl)
	ld	-12 (ix), e
	ld	-11 (ix), #0x00
	pop	hl
	push	hl
	inc	hl
	push	iy
	ex	(sp), hl
	ld	-4 (ix), l
	ex	(sp), hl
	ex	(sp), hl
	ld	-3 (ix), h
	ex	(sp), hl
	pop	iy
	ld	a, l
	sub	a, -4 (ix)
	ld	a, h
	sbc	a, -3 (ix)
	jr	NC, 00112$
	ld	-6 (ix), #0x01
	jp	00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:149: else if (target_x < Referee->lx - speed) ref_dx = -speed;
	pop	hl
	push	hl
	dec	hl
	ld	a, -4 (ix)
	sub	a, l
	ld	a, -3 (ix)
	sbc	a, h
	jr	NC, 00113$
	ld	-6 (ix), #0xff
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:151: if (target_y > Referee->ly + speed) ref_dy = speed;
	ld	hl, (#(_SwSprite + 602) + 0)
	ld	a, l
	add	a, #0x01
	ld	-4 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00117$
	ld	-5 (ix), #0x01
	jp	00118$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:152: else if (target_y < Referee->ly - speed) ref_dy = -speed;
	dec	hl
	ld	a, -2 (ix)
	sub	a, l
	ld	a, -1 (ix)
	sbc	a, h
	jr	NC, 00118$
	ld	-5 (ix), #0xff
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:154: Referee->lx += ref_dx;
	ld	a, e
	add	a, -6 (ix)
	ld	(#(_SwSprite + 598)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:155: Referee->ly += ref_dy;
	ld	hl, (#(_SwSprite + 602) + 0)
	ld	a, -5 (ix)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	add	hl, de
	ex	de, hl
	ld	((_SwSprite + 602)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:157: i8 look_dx = (Ball->lx > Referee->lx) ? 1 : ((Ball->lx < Referee->lx) ? -1 : 0);
	ld	a, (bc)
	ld	c, a
	ld	hl, #(_SwSprite + 598)
	ld	e, (hl)
	ld	a, e
	sub	a, c
	jr	NC, 00132$
	ld	bc, #0x0001
	jp	00133$
00132$:
	ld	a, c
	sub	a, e
	jr	NC, 00134$
	ld	-2 (ix), #0xff
	ld	-1 (ix), #0xff
	jp	00135$
00134$:
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00135$:
	ld	c, -2 (ix)
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:158: i8 look_dy = (Ball->ly > Referee->ly) ? 1 : ((Ball->ly < Referee->ly) ? -1 : 0);
	ld	de, (#(_SwSprite + 326) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:151: if (target_y > Referee->ly + speed) ref_dy = speed;
	ld	hl, #(_SwSprite + 602)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:158: i8 look_dy = (Ball->ly > Referee->ly) ? 1 : ((Ball->ly < Referee->ly) ? -1 : 0);
	ld	a, -2 (ix)
	sub	a, e
	ld	a, -1 (ix)
	sbc	a, d
	jr	NC, 00136$
	ld	de, #0x0001
	jp	00137$
00136$:
	ld	a, e
	sub	a, -2 (ix)
	ld	a, d
	sbc	a, -1 (ix)
	jr	NC, 00138$
	ld	de, #0xffff
	jp	00139$
00138$:
	ld	de, #0x0000
00139$:
00137$:
	ld	b, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:159: if (look_dx == 0 && look_dy == 0) look_dy = 1; 
	ld	a, c
	or	a,a
	jr	NZ, 00120$
	or	a,b
	jr	NZ, 00120$
	ld	b, #0x01
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:164: Referee->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, 26, look_dx, look_dy, walk_seq[(Referee->anim / 3) % 4]);
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:161: if (ref_dx != 0 || ref_dy != 0) {
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00122$
	ld	a, -5 (ix)
	or	a, a
	jr	Z, 00123$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:162: Referee->anim++;
	ld	de, (#(_SwSprite + 617) + 0)
	inc	de
	ld	((_SwSprite + 617)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:163: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-10 (ix), #0x00
	ld	-9 (ix), #0x01
	ld	-8 (ix), #0x02
	ld	-7 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:164: Referee->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, 26, look_dx, look_dy, walk_seq[(Referee->anim / 3) % 4]);
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
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x1a
	push	hl
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	((_SwSprite + 613)), de
	jp	00126$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:166: Referee->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, 26, look_dx, look_dy);
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x1a
	push	hl
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	((_SwSprite + 613)), de
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s18_b3.c:168: }
	ld	sp, ix
	pop	ix
	ret
	.area _SEG18
	.area _INITIALIZER
	.area _CABS (ABS)
