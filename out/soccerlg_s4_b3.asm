;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s4_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PlayerAI
	.globl _PrintScoreBoardRight
	.globl _RemoveScoreBoardRight
	.globl _PrintScoreBoardLeft
	.globl _RemoveScoreBoardLeft
	.globl _RemoveSwSprite
	.globl _AddLines
	.globl _CallFnc_VOID_U8U16U16
	.globl _CallFnc_VOID_P1
	.globl _CallFnc_VOID
	.globl _CallSpriteFrame
	.globl _Print_DrawFormat
	.globl _VDP_SetPage
	.globl _VDP_RegWrite
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
	.globl _g_Fonts
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
	.globl _MainLoop
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
	.area _SEG4
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:990: void MainLoop(){
;	---------------------------------
; Function MainLoop
; ---------------------------------
_MainLoop::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:995: VDP_SetPage(0);		
	xor	a, a
	call	_VDP_SetPage
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:996: VDP_SetVerticalOffset(Field.ly & 255);
	ld	hl, #(_Field + 4)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:997: CallFnc_VOID(SEG_DRAW, AddLines);
	ld	de, #_AddLines
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:999: for (u8 i=0; i<NumSprite;i++) 
	ld	-1 (ix), #0x00
00142$:
	ld	a, -1 (ix)
	sub	a, #0x18
	jp	NC, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1002: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x2, SwSprite[i].y2, 512);
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_SwSprite)
	ld	-9 (ix), a
	ld	a, h
	adc	a, #>(_SwSprite)
	ld	-8 (ix), a
	pop	bc
	push	bc
	ld	hl, #10
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	push	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1004: if OnScreen(SwSprite[i].y1) 
	pop	bc
	push	bc
	ld	hl, #8
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), c
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	d, a
	ld	bc, (#(_Field + 4) + 0)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	C, 00102$
	ld	-5 (ix), c
	ld	-4 (ix), b
	ld	a, -5 (ix)
	add	a, #0xc0
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	a, -7 (ix)
	sub	a, -3 (ix)
	ld	a, -6 (ix)
	sbc	a, -2 (ix)
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1005: CallSpriteFrame(SwSprite[i].x1,(SwSprite[i].y1&255)+256,SwSprite[i].frame);
	pop	bc
	push	bc
	ld	hl, #12
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -7 (ix)
	xor	a, a
	inc	a
	ld	d, a
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1007: CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_PlayerAI
	ld	a, #0x06
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:999: for (u8 i=0; i<NumSprite;i++) 
	inc	-1 (ix)
	jp	00142$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1012: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x2, ScoreBoardLeft.y2, 512);
	ld	bc, (#(_ScoreBoardLeft + 10) + 0)
	ld	a, (#(_ScoreBoardLeft + 3) + 0)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1013: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x1, ScoreBoardLeft.y1, 256);
	ld	bc, (#(_ScoreBoardLeft + 8) + 0)
	ld	a, (#(_ScoreBoardLeft + 2) + 0)
	ld	hl, #0x0100
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1014: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x2, ScoreBoardRight.y2, 512);
	ld	bc, (#(_ScoreBoardRight + 10) + 0)
	ld	a, (#(_ScoreBoardRight + 3) + 0)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1015: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x1, ScoreBoardRight.y1, 256);
	ld	bc, (#(_ScoreBoardRight + 8) + 0)
	ld	a, (#(_ScoreBoardRight + 2) + 0)
	ld	hl, #0x0100
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1017: Field.ly += Field.dy;
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1018: if ((Field.ly+192>=504)||(Field.ly<=0)) Field.dy =- Field.dy;
	ld	hl, #0x00c0
	add	hl, de
	ld	de, #0x01f8
	cp	a, a
	sbc	hl, de
	jr	NC, 00105$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, h
	or	a, l
	jr	NZ, 00169$
00105$:
	ld	a, (#(_Field + 15) + 0)
	neg
	ld	(#(_Field + 15)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1022: for (u8 i=0; i<NumSprite;i++) 
00169$:
	ld	-1 (ix), #0x00
00145$:
	ld	a, -1 (ix)
	sub	a, #0x18
	jr	NC, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1024: SwSprite[i].x2 = SwSprite[i].lx;
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	b, #0x04
00289$:
	sla	-3 (ix)
	rl	-2 (ix)
	djnz	00289$
	ld	a, #<(_SwSprite)
	add	a, -3 (ix)
	ld	c, a
	ld	a, #>(_SwSprite)
	adc	a, -2 (ix)
	ld	b, a
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	a, (bc)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1025: SwSprite[i].y2 = SwSprite[i].ly;
	ld	hl, #0x000a
	add	hl, bc
	ex	de, hl
	ld	hl, #4
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1022: for (u8 i=0; i<NumSprite;i++) 
	inc	-1 (ix)
	jp	00145$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1027: ScoreBoardLeft.y2 = Field.ly+Field.dy;	
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
	ld	((_ScoreBoardLeft + 10)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1028: ScoreBoardRight.y2 = Field.ly+Field.dy;	
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
	ld	((_ScoreBoardRight + 10)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1031: VDP_SetPage(1);		
	ld	a, #0x01
	call	_VDP_SetPage
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1032: VDP_SetVerticalOffset(Field.ly & 255);
	ld	hl, #(_Field + 4)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1033: CallFnc_VOID(SEG_DRAW, AddLines);
	ld	de, #_AddLines
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1035: for (u8 i=0; i<NumSprite;i++) 
	ld	c, #0x00
00148$:
	ld	a, c
	sub	a, #0x18
	jp	NC, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1038: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x0, SwSprite[i].y0, 0);
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_SwSprite)
	ld	-6 (ix), a
	ld	a, h
	adc	a, #>(_SwSprite)
	ld	-5 (ix), a
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #6
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	a, (hl)
	push	bc
	ld	hl, #0x0000
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1040: if OnScreen(SwSprite[i].y2) 
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #10
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), b
	ld	-3 (ix), a
	ld	a, -4 (ix)
	add	a, #0x0f
	ld	b, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:996: VDP_SetVerticalOffset(Field.ly & 255);
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1040: if OnScreen(SwSprite[i].y2) 
	ld	a, b
	sub	a, -2 (ix)
	ld	a, e
	sbc	a, -1 (ix)
	jr	C, 00110$
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	hl, #0x00c0
	add	hl, de
	ld	a, -4 (ix)
	sub	a, l
	ld	a, -3 (ix)
	sbc	a, h
	jr	NC, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1041: CallSpriteFrame(SwSprite[i].x2,(SwSprite[i].y2&255)+512,SwSprite[i].frame);
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #12
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x02
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	b, (hl)
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, b
	call	_CallSpriteFrame
	pop	bc
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1043: CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
	push	bc
	ld	a, c
	push	af
	inc	sp
	ld	de, #_PlayerAI
	ld	a, #0x06
	call	_CallFnc_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1035: for (u8 i=0; i<NumSprite;i++) 
	inc	c
	jp	00148$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1048: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x0, ScoreBoardLeft.y0, 0);
	ld	hl, (#(_ScoreBoardLeft + 6) + 0)
	ld	bc, #_ScoreBoardLeft + 1
	ld	a, (bc)
	push	bc
	ld	de, #0x0000
	push	de
	push	hl
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1049: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x2, ScoreBoardLeft.y2, 512);
	ld	de, (#(_ScoreBoardLeft + 10) + 0)
	ld	a, (#(_ScoreBoardLeft + 3) + 0)
	push	bc
	ld	hl, #0x0200
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1050: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x0, ScoreBoardRight.y0, 0);
	ld	de, (#(_ScoreBoardRight + 6) + 0)
	ld	a, (#(_ScoreBoardRight + 1) + 0)
	push	bc
	ld	hl, #0x0000
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1051: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x2, ScoreBoardRight.y2, 512);
	ld	de, (#(_ScoreBoardRight + 10) + 0)
	ld	a, (#(_ScoreBoardRight + 3) + 0)
	push	bc
	ld	hl, #0x0200
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1053: Field.ly += Field.dy;
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
	ld	((_Field + 4)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1054: if ((Field.ly+192>=504)||(Field.ly<=0)) Field.dy =- Field.dy;
	ld	hl, #0x00c0
	add	hl, de
	ld	de, #0x01f8
	cp	a, a
	sbc	hl, de
	jr	NC, 00113$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, h
	or	a, l
	jr	NZ, 00176$
00113$:
	ld	a, (#(_Field + 15) + 0)
	neg
	ld	hl, #(_Field + 15)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1058: for (u8 i=0; i<NumSprite;i++) 
00176$:
	ld	-1 (ix), #0x00
00151$:
	ld	a, -1 (ix)
	sub	a, #0x18
	jr	NC, 00116$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1060: SwSprite[i].x0 = SwSprite[i].lx;
	ld	e, -1 (ix)
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_SwSprite
	add	hl, de
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	a, (de)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1061: SwSprite[i].y0 = SwSprite[i].ly;
	ld	hl, #0x0006
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1058: for (u8 i=0; i<NumSprite;i++) 
	inc	-1 (ix)
	jp	00151$
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1063: ScoreBoardLeft.y0 = Field.ly+Field.dy;
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
	ld	((_ScoreBoardLeft + 6)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1064: ScoreBoardRight.y0 = Field.ly+Field.dy;
	ld	de, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
	ld	((_ScoreBoardRight + 6)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1067: VDP_SetPage(2);		
	push	bc
	ld	a, #0x02
	call	_VDP_SetPage
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1068: VDP_SetVerticalOffset(Field.ly & 255);
	ld	hl, #(_Field + 4)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1069: CallFnc_VOID(SEG_DRAW, AddLines);
	push	bc
	ld	de, #_AddLines
	ld	a, #0x05
	call	_CallFnc_VOID
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1071: for (u8 i=0; i<NumSprite;i++) 
	ld	-1 (ix), #0x00
00154$:
	ld	a, -1 (ix)
	sub	a, #0x18
	jp	NC, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1074: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x1, SwSprite[i].y1, 256);
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	add	a, #<(_SwSprite)
	ld	-5 (ix), a
	ld	a, h
	adc	a, #>(_SwSprite)
	ld	-4 (ix), a
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	hl, #8
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	push	bc
	ld	hl, #0x0100
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1076: if OnScreen(SwSprite[i].y0) 
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	hl, #6
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), e
	ld	-2 (ix), a
	ld	a, -3 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:996: VDP_SetVerticalOffset(Field.ly & 255);
	ld	hl, (#(_Field + 4) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1076: if OnScreen(SwSprite[i].y0) 
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	C, 00118$
	ld	de, #0x00c0
	add	hl, de
	ld	a, -3 (ix)
	sub	a, l
	ld	a, -2 (ix)
	sbc	a, h
	jr	NC, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1077: CallSpriteFrame(SwSprite[i].x0,(SwSprite[i].y0&255),SwSprite[i].frame);	
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	hl, #12
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	push	iy
	pop	de
	ld	a, l
	call	_CallSpriteFrame
	pop	bc
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1079: CallFnc_VOID_P1(SEG_LOGIC, PlayerAI, i);
	push	bc
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_PlayerAI
	ld	a, #0x06
	call	_CallFnc_VOID_P1
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1071: for (u8 i=0; i<NumSprite;i++) 
	inc	-1 (ix)
	jp	00154$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1084: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x1, ScoreBoardLeft.y1, 256);
	ld	de, (#(_ScoreBoardLeft + 8) + 0)
	ld	a, (#(_ScoreBoardLeft + 2) + 0)
	push	bc
	ld	hl, #0x0100
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1085: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x0, ScoreBoardLeft.y0, 0);
	ld	hl, (#(_ScoreBoardLeft + 6) + 0)
	ld	a, (bc)
	ld	de, #0x0000
	push	de
	push	hl
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1086: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x1, ScoreBoardRight.y1, 256);
	ld	bc, (#(_ScoreBoardRight + 8) + 0)
	ld	a, (#(_ScoreBoardRight + 2) + 0)
	ld	hl, #0x0100
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1087: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x0, ScoreBoardRight.y0, 0);
	ld	bc, (#(_ScoreBoardRight + 6) + 0)
	ld	a, (#(_ScoreBoardRight + 1) + 0)
	ld	hl, #0x0000
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1089: Field.ly += Field.dy;
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1090: if ((Field.ly+192>=504)||(Field.ly<=0)) Field.dy =- Field.dy;
	ld	hl, #0x00c0
	add	hl, de
	ld	de, #0x01f8
	cp	a, a
	sbc	hl, de
	jr	NC, 00121$
	ld	hl, (#(_Field + 4) + 0)
	ld	a, h
	or	a, l
	jr	NZ, 00183$
00121$:
	ld	a, (#(_Field + 15) + 0)
	neg
	ld	(#(_Field + 15)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1094: for (u8 i=0; i<NumSprite;i++) 
00183$:
	ld	bc, #_SwSprite
	ld	-1 (ix), #0x00
00157$:
	ld	a, -1 (ix)
	sub	a, #0x18
	jr	NC, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1096: SwSprite[i].x1 = SwSprite[i].lx;
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (de)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1097: SwSprite[i].y1 = SwSprite[i].ly;
	ld	hl, #0x0008
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1094: for (u8 i=0; i<NumSprite;i++) 
	inc	-1 (ix)
	jp	00157$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1099: ScoreBoardLeft.y1 = Field.ly+Field.dy;
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
	ld	((_ScoreBoardLeft + 8)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1100: ScoreBoardRight.y1 = Field.ly+Field.dy;
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 15) + 0)
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
	ld	((_ScoreBoardRight + 8)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	bc, #_g_PrintData + 5
	ld	a, #0x01
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0318
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1106: if(LastSecs!=Secs){
	ld	a, (_LastSecs+0)
	ld	iy, #_Secs
	sub	a, 0 (iy)
	jp	Z,00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1107: LastSecs=Secs;
	ld	a, (_Secs+0)
	ld	(_LastSecs+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1109: if(Secs==60){
	ld	a, (_Secs+0)
	sub	a, #0x3c
	jr	NZ, 00126$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	l, #0x30
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1110: Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins+1);
	ld	a, (_Mins+0)
	ld	d, #0x00
	ld	e, a
	inc	de
	push	bc
	push	de
	ld	hl, #___str_0
	push	hl
	call	_Print_DrawFormat
	pop	af
	pop	af
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x033c
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1111: Print_SetPosition(248,  60+768);Print_DrawFormat("0");	
	push	bc
	ld	hl, #___str_1
	push	hl
	call	_Print_DrawFormat
	pop	af
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0344
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1112: Print_SetPosition(248,  68+768);Print_DrawFormat("0");
	ld	hl, #___str_1
	push	hl
	call	_Print_DrawFormat
	pop	af
	jp	00159$
00126$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0330
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1115: Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins);
	ld	a, (_Mins+0)
	ld	e, a
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_0
	push	hl
	call	_Print_DrawFormat
	pop	af
	pop	af
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x033c
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1116: Print_SetPosition(248,  60+768);Print_DrawFormat("%i",Secs/10);	
	ld	a, (_Secs+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	de, #0x000a
	call	__divsint
	push	de
	ld	hl, #___str_0
	push	hl
	call	_Print_DrawFormat
	pop	af
	pop	af
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0344
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1117: Print_SetPosition(248,  68+768);Print_DrawFormat("%i",Secs-Secs/10*10);
	ld	a, (_Secs+0)
	ld	c, a
	ld	b, #0x00
	push	bc
	ld	de, #0x000a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	pop	bc
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, c
	sub	a, -2 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -1 (ix)
	ld	b, a
	push	bc
	ld	hl, #___str_0
	push	hl
	call	_Print_DrawFormat
	pop	af
	pop	af
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1124: }
	jp	00159$
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
_g_Fonts:
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x21	; 33
	.db #0x7e	; 126
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0xd6	; 214
	.db #0x82	; 130
	.db #0xd6	; 214
	.db #0x82	; 130
	.db #0xd6	; 214
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0xc2	; 194
	.db #0xae	; 174
	.db #0xc6	; 198
	.db #0xea	; 234
	.db #0x86	; 134
	.db #0xec	; 236
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0xba	; 186
	.db #0xf6	; 246
	.db #0x6c	; 108	'l'
	.db #0xde	; 222
	.db #0xba	; 186
	.db #0xee	; 238
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0xc8	; 200
	.db #0xae	; 174
	.db #0xca	; 202
	.db #0xb6	; 182
	.db #0xca	; 202
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x58	; 88	'X'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x14	; 20
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x54	; 84	'T'
	.db #0x6c	; 108	'l'
	.db #0x54	; 84	'T'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x6c	; 108	'l'
	.db #0x44	; 68	'D'
	.db #0x6c	; 108	'l'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0xd0	; 208
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x1a	; 26
	.db #0x36	; 54	'6'
	.db #0x6c	; 108	'l'
	.db #0xd8	; 216
	.db #0xb0	; 176
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x68	; 104	'h'
	.db #0x48	; 72	'H'
	.db #0x68	; 104	'h'
	.db #0x6c	; 108	'l'
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x66	; 102	'f'
	.db #0x5e	; 94
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x26	; 38
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x5c	; 92
	.db #0x56	; 86	'V'
	.db #0x42	; 66	'B'
	.db #0x76	; 118	'v'
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x5e	; 94
	.db #0x46	; 70	'F'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x62	; 98	'b'
	.db #0x5e	; 94
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x7a	; 122	'z'
	.db #0x36	; 54	'6'
	.db #0x6c	; 108	'l'
	.db #0x58	; 88	'X'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x62	; 98	'b'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0xd0	; 208
	.db #0x90	; 144
	.db #0xf0	; 240
	.db #0x1c	; 28
	.db #0x34	; 52	'4'
	.db #0x6c	; 108	'l'
	.db #0x58	; 88	'X'
	.db #0x6c	; 108	'l'
	.db #0x34	; 52	'4'
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x58	; 88	'X'
	.db #0x6c	; 108	'l'
	.db #0x34	; 52	'4'
	.db #0x6c	; 108	'l'
	.db #0x58	; 88	'X'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x4c	; 76	'L'
	.db #0x74	; 116	't'
	.db #0x2c	; 44
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0xc6	; 198
	.db #0xba	; 186
	.db #0xfa	; 250
	.db #0x4a	; 74	'J'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x42	; 66	'B'
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x5e	; 94
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x5e	; 94
	.db #0x44	; 68	'D'
	.db #0x5e	; 94
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x5e	; 94
	.db #0x44	; 68	'D'
	.db #0x5c	; 92
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x5e	; 94
	.db #0x52	; 82	'R'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x42	; 66	'B'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x6c	; 108	'l'
	.db #0x28	; 40
	.db #0x6c	; 108	'l'
	.db #0x44	; 68	'D'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x76	; 118	'v'
	.db #0x74	; 116	't'
	.db #0x54	; 84	'T'
	.db #0x6c	; 108	'l'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x5a	; 90	'Z'
	.db #0x56	; 86	'V'
	.db #0x4c	; 76	'L'
	.db #0x56	; 86	'V'
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x5e	; 94
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0xba	; 186
	.db #0x92	; 146
	.db #0xaa	; 170
	.db #0xba	; 186
	.db #0xaa	; 170
	.db #0xee	; 238
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0xba	; 186
	.db #0x9a	; 154
	.db #0xaa	; 170
	.db #0xb2	; 178
	.db #0xba	; 186
	.db #0xee	; 238
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0xc6	; 198
	.db #0xba	; 186
	.db #0xba	; 186
	.db #0xba	; 186
	.db #0xc6	; 198
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x5c	; 92
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x62	; 98	'b'
	.db #0x5a	; 90	'Z'
	.db #0x62	; 98	'b'
	.db #0x3a	; 58
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x62	; 98	'b'
	.db #0x5e	; 94
	.db #0x66	; 102	'f'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x82	; 130
	.db #0xee	; 238
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0xaa	; 170
	.db #0xba	; 186
	.db #0xd6	; 214
	.db #0x54	; 84	'T'
	.db #0x6c	; 108	'l'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0xaa	; 170
	.db #0xba	; 186
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0xd6	; 214
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0xee	; 238
	.db #0xba	; 186
	.db #0xd6	; 214
	.db #0x6c	; 108	'l'
	.db #0xd6	; 214
	.db #0xba	; 186
	.db #0xee	; 238
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x34	; 52	'4'
	.db #0x14	; 20
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x7a	; 122	'z'
	.db #0x66	; 102	'f'
	.db #0x5e	; 94
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x2c	; 44
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xb0	; 176
	.db #0xd8	; 216
	.db #0x6c	; 108	'l'
	.db #0x36	; 54	'6'
	.db #0x1a	; 26
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x34	; 52	'4'
	.db #0x14	; 20
	.db #0x34	; 52	'4'
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x6c	; 108	'l'
	.db #0xd6	; 214
	.db #0xba	; 186
	.db #0xee	; 238
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x82	; 130
	.db #0xfe	; 254
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x68	; 104	'h'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x26	; 38
	.db #0x3a	; 58
	.db #0x62	; 98	'b'
	.db #0x5a	; 90	'Z'
	.db #0x62	; 98	'b'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x5c	; 92
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x62	; 98	'b'
	.db #0x5e	; 94
	.db #0x5e	; 94
	.db #0x62	; 98	'b'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x3a	; 58
	.db #0x62	; 98	'b'
	.db #0x5a	; 90	'Z'
	.db #0x62	; 98	'b'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x5e	; 94
	.db #0x62	; 98	'b'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x62	; 98	'b'
	.db #0x5e	; 94
	.db #0x44	; 68	'D'
	.db #0x5c	; 92
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x62	; 98	'b'
	.db #0x5a	; 90	'Z'
	.db #0x62	; 98	'b'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x5c	; 92
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x7a	; 122	'z'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x70	; 112	'p'
	.db #0x50	; 80	'P'
	.db #0x5e	; 94
	.db #0x52	; 82	'R'
	.db #0x4e	; 78	'N'
	.db #0x52	; 82	'R'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x86	; 134
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x46	; 70	'F'
	.db #0x5c	; 92
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x62	; 98	'b'
	.db #0x5a	; 90	'Z'
	.db #0x62	; 98	'b'
	.db #0x3a	; 58
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x52	; 82	'R'
	.db #0x4e	; 78	'N'
	.db #0x58	; 88	'X'
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x64	; 100	'd'
	.db #0x5c	; 92
	.db #0x66	; 102	'f'
	.db #0x3a	; 58
	.db #0x26	; 38
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x58	; 88	'X'
	.db #0x48	; 72	'H'
	.db #0x58	; 88	'X'
	.db #0x5c	; 92
	.db #0x64	; 100	'd'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x62	; 98	'b'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x5a	; 90	'Z'
	.db #0x56	; 86	'V'
	.db #0x6c	; 108	'l'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0xd6	; 214
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x54	; 84	'T'
	.db #0x6c	; 108	'l'
	.db #0x54	; 84	'T'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x4a	; 74	'J'
	.db #0x72	; 114	'r'
	.db #0x7a	; 122	'z'
	.db #0x46	; 70	'F'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x76	; 118	'v'
	.db #0x6e	; 110	'n'
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x6c	; 108	'l'
	.db #0x48	; 72	'H'
	.db #0x6c	; 108	'l'
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0x6c	; 108	'l'
	.db #0x24	; 36
	.db #0x6c	; 108	'l'
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x6a	; 106	'j'
	.db #0x56	; 86	'V'
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
___str_0:
	.ascii "%i"
	.db 0x00
___str_1:
	.ascii "0"
	.db 0x00
	.area _SEG4
	.area _INITIALIZER
	.area _CABS (ABS)
