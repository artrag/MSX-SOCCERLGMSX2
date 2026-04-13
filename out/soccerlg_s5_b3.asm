;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s5_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DEBUG_LOG
	.globl _VPD_CommandSetupR32
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
	.globl _PlotField
	.globl _RemoveSwSprite
	.globl _RemoveScoreBoardLeft
	.globl _PrintScoreBoardLeft
	.globl _RemoveScoreBoardRight
	.globl _PrintScoreBoardRight
	.globl _SetBallSprite
	.globl _IsBallForeground
	.globl _ShowSpriteMessage
	.globl _HideSpriteMessage
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
	.area _SEG5
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:11: void PlotField(u16 y,u16 page)
;	---------------------------------
; Function PlotField
; ---------------------------------
_PlotField::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	push	af
	ld	c, l
	ld	b, h
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:13: for (u16 i=y;i<y+192;i+=16)
	ld	e, c
	ld	d, b
00104$:
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	de, #0x00c0
	add	hl, de
	pop	de
	inc	sp
	inc	sp
	push	de
	ld	a, -6 (ix)
	sub	a, l
	ld	a, -5 (ix)
	sbc	a, h
	jr	NC, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:14: VDP_CommandYMMM(FieldMap[i]+768,0,i+page,16, 0);		
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	hl, #_FieldMap
	add	hl, de
	ld	a, (hl)
	ld	d, #0x00
	ld	e, a
	ld	a, d
	add	a, #0x03
	ld	d, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	hl, #0x0010
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	push	bc
	call	_VPD_CommandSetupR32
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:13: for (u16 i=y;i<y+192;i+=16)
	pop	hl
	push	hl
	ld	de, #0x0010
	add	hl, de
	ex	de, hl
	jp	00104$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:15: }
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
_FieldMap:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x2a	; 42
	.db #0x2b	; 43
	.db #0x2c	; 44
	.db #0x2d	; 45
	.db #0x2e	; 46
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x3a	; 58
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3b	; 59
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x5e	; 94
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x6d	; 109	'm'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7a	; 122	'z'
	.db #0x7b	; 123
	.db #0x7c	; 124
	.db #0x7d	; 125
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x82	; 130
	.db #0x83	; 131
	.db #0x84	; 132
	.db #0x85	; 133
	.db #0x86	; 134
	.db #0x87	; 135
	.db #0x88	; 136
	.db #0x89	; 137
	.db #0x8a	; 138
	.db #0x8b	; 139
	.db #0x8c	; 140
	.db #0x8d	; 141
	.db #0x8e	; 142
	.db #0x8f	; 143
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0x92	; 146
	.db #0x93	; 147
	.db #0x94	; 148
	.db #0x95	; 149
	.db #0x96	; 150
	.db #0x97	; 151
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x99	; 153
	.db #0x9a	; 154
	.db #0x9b	; 155
	.db #0x9c	; 156
	.db #0x9d	; 157
	.db #0x9e	; 158
	.db #0x9f	; 159
	.db #0xa0	; 160
	.db #0xa1	; 161
	.db #0xa2	; 162
	.db #0xa3	; 163
	.db #0xa4	; 164
	.db #0xa5	; 165
	.db #0xa6	; 166
	.db #0xa7	; 167
	.db #0xa8	; 168
	.db #0xa9	; 169
	.db #0xaa	; 170
	.db #0xab	; 171
	.db #0xac	; 172
	.db #0xad	; 173
	.db #0xae	; 174
	.db #0xaf	; 175
	.db #0xb0	; 176
	.db #0xb1	; 177
	.db #0xb2	; 178
	.db #0xb3	; 179
	.db #0xb4	; 180
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb5	; 181
	.db #0xb6	; 182
	.db #0xb7	; 183
	.db #0xb8	; 184
	.db #0xb9	; 185
	.db #0xba	; 186
	.db #0xbb	; 187
	.db #0xbc	; 188
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xbf	; 191
	.db #0xc0	; 192
	.db #0xc1	; 193
	.db #0xc2	; 194
	.db #0xc3	; 195
	.db #0xc4	; 196
	.db #0xc5	; 197
	.db #0xc6	; 198
	.db #0xc7	; 199
	.db #0xc8	; 200
	.db #0xc9	; 201
	.db #0xca	; 202
	.db #0xcb	; 203
	.db #0xcc	; 204
	.db #0xcd	; 205
	.db #0xce	; 206
	.db #0xcf	; 207
	.db #0xd0	; 208
	.db #0xd1	; 209
	.db #0xd2	; 210
	.db #0xd3	; 211
	.db #0xd4	; 212
	.db #0xd5	; 213
	.db #0xd6	; 214
	.db #0xd7	; 215
	.db #0xd8	; 216
	.db #0xd9	; 217
	.db #0xda	; 218
	.db #0xdb	; 219
	.db #0xdc	; 220
	.db #0xdd	; 221
	.db #0xde	; 222
	.db #0xdf	; 223
	.db #0xe0	; 224
	.db #0xe1	; 225
	.db #0xe2	; 226
	.db #0xe3	; 227
	.db #0xe4	; 228
	.db #0xe5	; 229
	.db #0xe6	; 230
	.db #0xe7	; 231
	.db #0xe8	; 232
	.db #0xe9	; 233
	.db #0xea	; 234
	.db #0xeb	; 235
	.db #0xec	; 236
	.db #0xed	; 237
	.db #0xee	; 238
	.db #0xef	; 239
	.db #0xf0	; 240
	.db #0xf1	; 241
	.db #0xf2	; 242
	.db #0xf3	; 243
	.db #0xf4	; 244
	.db #0xf5	; 245
	.db #0xf6	; 246
	.db #0xf7	; 247
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0xfa	; 250
	.db #0xfb	; 251
	.db #0xfc	; 252
	.db #0xfd	; 253
	.db #0xfe	; 254
	.db #0xff	; 255
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:19: void RemoveSwSprite(u8 px,u16 py,u16 page) 
;	---------------------------------
; Function RemoveSwSprite
; ---------------------------------
_RemoveSwSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:21: u16 diff = (py + 512 - Field.ly) & 511;
	inc	sp
	inc	sp
	push	de
	ld	c, -11 (ix)
	ld	a, -10 (ix)
	add	a, #0x02
	ld	b, a
	ld	hl, (#(_Field + 4) + 0)
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	and	a, #0x01
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:22: if (diff < 224 || diff > 480) 
	ld	a, c
	sub	a, #0xe0
	ld	a, b
	sbc	a, #0x00
	jr	C, 00104$
	ld	a, #0xe0
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jp	NC, 00113$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:24: if SplitSprite(py) {
	ld	c, -11 (ix)
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:26: VDP_CommandHMMM(px,FieldMap[(py)    &511]+768,px,((py)&255)+page,16,  t);	
	ld	a, -1 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	and	a, #0x01
	ld	-2 (ix), a
	ld	-7 (ix), c
	ld	-6 (ix), b
	ld	a, -7 (ix)
	add	a, 4 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, 5 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:24: if SplitSprite(py) {
	ld	a, #0xf0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:25: u8 t = 256 - (py & 255) ;
	xor	a, a
	sub	a, e
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:26: VDP_CommandHMMM(px,FieldMap[(py)    &511]+768,px,((py)&255)+page,16,  t);	
	ld	-7 (ix), e
	ld	-6 (ix), #0x00
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, #<(_FieldMap)
	add	a, -3 (ix)
	ld	d, a
	ld	a, #>(_FieldMap)
	adc	a, -2 (ix)
	ld	l, d
	ld	h, a
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x03
	ld	-3 (ix), l
	ld	-2 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0010
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	push	de
	call	_VPD_CommandSetupR32
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:27: VDP_CommandHMMM(px,FieldMap[((py)+t)&511]+768,px,           page,16,16-t);	
	ld	d, #0x00
	ld	hl, #0x0010
	cp	a, a
	sbc	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, -11 (ix)
	add	a, e
	ld	e, a
	ld	a, -10 (ix)
	adc	a, d
	and	a, #0x01
	ld	d, a
	ld	hl, #_FieldMap
	add	hl, de
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	a, h
	add	a, #0x03
	ld	d, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0010
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:27: VDP_CommandHMMM(px,FieldMap[((py)+t)&511]+768,px,           page,16,16-t);	
	jp	00113$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:30: VDP_CommandHMMM(px,FieldMap[(py)&511]+768,px, ((py)&255)+page,16, 16);	
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	a, #<(_FieldMap)
	add	a, -3 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_FieldMap)
	adc	a, -2 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #0x0300
	add	hl, de
	ex	de, hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0010
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:30: VDP_CommandHMMM(px,FieldMap[(py)&511]+768,px, ((py)&255)+page,16, 16);	
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:32: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:34: void RemoveScoreBoardLeft(u8 px,u16 py,u16 page)
;	---------------------------------
; Function RemoveScoreBoardLeft
; ---------------------------------
_RemoveScoreBoardLeft::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
	ld	c, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:36: if (((py&255)>256-SCOREBOARD_NY_LEFT) ) 
	ld	a, -2 (ix)
	ld	-11 (ix), a
	ld	a, -1 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:39: VDP_CommandHMMM(px, FieldMap[(py)&511]+768,   px, ((py)&255)+page, SCOREBOARD_NX_LEFT, t);
	ld	-9 (ix), c
	ld	-8 (ix), #0x00
	ld	c, -11 (ix)
	ld	a, -10 (ix)
	and	a, #0x01
	ld	b, a
	ld	a, -4 (ix)
	ld	d, -3 (ix)
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:36: if (((py&255)>256-SCOREBOARD_NY_LEFT) ) 
	ld	a, #0x2c
	cp	a, -4 (ix)
	ld	a, #0x00
	sbc	a, -3 (ix)
	jp	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:38: u8 t = 256 - (py & 255) ;
	ld	a, -2 (ix)
	neg
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:39: VDP_CommandHMMM(px, FieldMap[(py)&511]+768,   px, ((py)&255)+page, SCOREBOARD_NX_LEFT, t);
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	hl, #_FieldMap
	add	hl, bc
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	c, l
	ld	a, h
	add	a, #0x03
	ld	b, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:40: VDP_CommandHMMM(px, FieldMap[((py)+t)&511]+768, px, page,            SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT-t);
	ld	e, -7 (ix)
	ld	d, #0x00
	ld	hl, #0x00d4
	cp	a, a
	sbc	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, -11 (ix)
	add	a, e
	ld	e, a
	ld	a, -10 (ix)
	adc	a, d
	and	a, #0x01
	ld	d, a
	ld	hl, #_FieldMap
	add	hl, de
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	a, h
	add	a, #0x03
	ld	d, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:40: VDP_CommandHMMM(px, FieldMap[((py)+t)&511]+768, px, page,            SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT-t);
	jp	00110$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:43: VDP_CommandHMMM(px, FieldMap[(py)&511]+768, px, ((py)&255)+page, SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT);
	ld	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -8 (ix)
	ld	-3 (ix), a
	ld	hl, #_FieldMap+0
	add	hl, bc
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	c, l
	ld	a, h
	add	a, #0x03
	ld	b, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	l, #0xd4
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:43: VDP_CommandHMMM(px, FieldMap[(py)&511]+768, px, ((py)&255)+page, SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT);
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:44: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:46: void PrintScoreBoardLeft(u8 px,u16 py,u16 page)
;	---------------------------------
; Function PrintScoreBoardLeft
; ---------------------------------
_PrintScoreBoardLeft::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
	ld	c, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:48: if (((py&255)>256-SCOREBOARD_NY_LEFT) ) 
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:51: VDP_CommandHMMM(0, 768,   px, ((py)&255)+page, SCOREBOARD_NX_LEFT, t);
	ld	b, #0x00
	ld	a, -4 (ix)
	ld	d, -3 (ix)
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:48: if (((py&255)>256-SCOREBOARD_NY_LEFT) ) 
	ld	a, #0x2c
	cp	a, -4 (ix)
	ld	a, #0x00
	sbc	a, -3 (ix)
	jp	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:50: u8 t = 256 - (py & 255) ;
	ld	a, -2 (ix)
	neg
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:51: VDP_CommandHMMM(0, 768,   px, ((py)&255)+page, SCOREBOARD_NX_LEFT, t);
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	-4 (ix), c
	ld	-3 (ix), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #0x0000
	ld	(_g_VDP_Command), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	h, #0x03
	ld	((_g_VDP_Command + 2)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	push	bc
	call	_VPD_CommandSetupR32
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:52: VDP_CommandHMMM(0, 768+t, px, page,            SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT-t);
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xd4
	sub	a, l
	ld	e, a
	sbc	a, a
	sub	a, h
	ld	-6 (ix), e
	ld	-5 (ix), a
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, h
	add	a, #0x03
	ld	-4 (ix), l
	ld	-3 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #0x0000
	ld	(_g_VDP_Command), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:52: VDP_CommandHMMM(0, 768+t, px, page,            SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT-t);
	jp	00110$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:55: VDP_CommandHMMM(0, 768, px, ((py)&255)+page, SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #0x0000
	ld	(_g_VDP_Command), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	h, #0x03
	ld	((_g_VDP_Command + 2)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	l, #0xd4
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:55: VDP_CommandHMMM(0, 768, px, ((py)&255)+page, SCOREBOARD_NX_LEFT, SCOREBOARD_NY_LEFT);
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:56: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:58: void RemoveScoreBoardRight(u8 px,u16 py,u16 page)
;	---------------------------------
; Function RemoveScoreBoardRight
; ---------------------------------
_RemoveScoreBoardRight::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
	ld	c, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:60: if (((py&255)>256-SCOREBOARD_NY_RIGHT) ) 
	ld	a, -2 (ix)
	ld	-11 (ix), a
	ld	a, -1 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:63: VDP_CommandHMMM(px, FieldMap[(py)&511]+768,   px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, t);
	ld	-9 (ix), c
	ld	-8 (ix), #0x00
	ld	c, -11 (ix)
	ld	a, -10 (ix)
	and	a, #0x01
	ld	b, a
	ld	a, -4 (ix)
	ld	d, -3 (ix)
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:60: if (((py&255)>256-SCOREBOARD_NY_RIGHT) ) 
	ld	a, #0x2c
	cp	a, -4 (ix)
	ld	a, #0x00
	sbc	a, -3 (ix)
	jp	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:62: u8 t = 256 - (py & 255) ;
	ld	a, -2 (ix)
	neg
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:63: VDP_CommandHMMM(px, FieldMap[(py)&511]+768,   px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, t);
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	hl, #_FieldMap
	add	hl, bc
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	c, l
	ld	a, h
	add	a, #0x03
	ld	b, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:64: VDP_CommandHMMM(px, FieldMap[((py)+t)&511]+768, px, page,            SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT-t);
	ld	e, -7 (ix)
	ld	d, #0x00
	ld	hl, #0x00d4
	cp	a, a
	sbc	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, -11 (ix)
	add	a, e
	ld	e, a
	ld	a, -10 (ix)
	adc	a, d
	and	a, #0x01
	ld	d, a
	ld	hl, #_FieldMap
	add	hl, de
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	a, h
	add	a, #0x03
	ld	d, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:64: VDP_CommandHMMM(px, FieldMap[((py)+t)&511]+768, px, page,            SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT-t);
	jp	00110$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:67: VDP_CommandHMMM(px, FieldMap[(py)&511]+768, px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT);
	ld	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -8 (ix)
	ld	-3 (ix), a
	ld	hl, #_FieldMap+0
	add	hl, bc
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	c, l
	ld	a, h
	add	a, #0x03
	ld	b, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	l, #0xd4
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:67: VDP_CommandHMMM(px, FieldMap[(py)&511]+768, px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT);
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:68: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:70: void PrintScoreBoardRight(u8 px,u16 py,u16 page)
;	---------------------------------
; Function PrintScoreBoardRight
; ---------------------------------
_PrintScoreBoardRight::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
	ld	c, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:72: if (((py&255)>256-SCOREBOARD_NY_RIGHT) ) 
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:75: VDP_CommandHMMM(px, 768,   px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, t);
	ld	b, #0x00
	ld	a, -4 (ix)
	ld	d, -3 (ix)
	add	a, 4 (ix)
	ld	e, a
	ld	a, d
	adc	a, 5 (ix)
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:72: if (((py&255)>256-SCOREBOARD_NY_RIGHT) ) 
	ld	a, #0x2c
	cp	a, -4 (ix)
	ld	a, #0x00
	sbc	a, -3 (ix)
	jp	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:74: u8 t = 256 - (py & 255) ;
	ld	a, -2 (ix)
	neg
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:75: VDP_CommandHMMM(px, 768,   px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, t);
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	-4 (ix), c
	ld	-3 (ix), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	(_g_VDP_Command), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	hl, #0x0300
	ld	((_g_VDP_Command + 2)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	push	bc
	call	_VPD_CommandSetupR32
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:76: VDP_CommandHMMM(px, 768+t, px, page,            SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT-t);
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xd4
	sub	a, l
	ld	e, a
	sbc	a, a
	sub	a, h
	ld	-6 (ix), e
	ld	-5 (ix), a
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, h
	add	a, #0x03
	ld	-4 (ix), l
	ld	-3 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	(_g_VDP_Command), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:76: VDP_CommandHMMM(px, 768+t, px, page,            SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT-t);
	jp	00110$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:79: VDP_CommandHMMM(px, 768, px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT);
	ld	-4 (ix), c
	ld	-3 (ix), b
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	(_g_VDP_Command), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	hl, #0x0300
	ld	((_g_VDP_Command + 2)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	l, #0xd4
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:79: VDP_CommandHMMM(px, 768, px, ((py)&255)+page, SCOREBOARD_NX_RIGHT, SCOREBOARD_NY_RIGHT);
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:80: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:84: void SetBallSprite(u8 height) 
;	---------------------------------
; Function SetBallSprite
; ---------------------------------
_SetBallSprite::
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:86: if (height > 7) height = 7;
	ld	a, #0x07
	sub	a, c
	jr	NC, 00102$
	ld	c, #0x07
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:87: SwSprite[14].frame = SPR_BALL_SIZE_1 + height;
	ld	b, #0x00
	ld	hl, #0x0060
	add	hl, bc
	ex	de, hl
	ld	((_SwSprite + 337)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:88: }
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:91: bool IsBallForeground() 
;	---------------------------------
; Function IsBallForeground
; ---------------------------------
_IsBallForeground::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:94: if (SwSprite[14].frame > SPR_BALL_SIZE_1) return TRUE;
	ld	hl, (#_SwSprite + 337)
	ld	a, #0x60
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	NC, 00102$
	ld	a, #0x01
	jp	00114$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:96: u8 closest_player = 0;
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:97: u16 min_dist = 0xFFFF;
	ld	-5 (ix), #0xff
	ld	-4 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:100: for (u8 i = 0; i < 14; i++) {
	ld	a, (#_SwSprite + 322)
	ld	-3 (ix), a
	ld	d, #0x00
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:104: u16 dy_diff_16 = (u16)(SwSprite[i].ly - SwSprite[14].ly) & 511;
	ld	bc, (#_SwSprite + 326)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:100: for (u8 i = 0; i < 14; i++) {
	ld	a, d
	sub	a, #0x0e
	jr	NC, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:101: u8 dx_diff = (u8)(SwSprite[i].lx - SwSprite[14].lx);
	push	de
	ld	e, d
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
	pop	de
	ld	a, (hl)
	sub	a, -3 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:102: u16 dx = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	sub	a, #0x80
	jr	NC, 00116$
	ld	a, -7 (ix)
	ld	-2 (ix), a
	ld	a, -6 (ix)
	ld	-1 (ix), a
	jp	00117$
00116$:
	xor	a, a
	sub	a, -7 (ix)
	ld	-2 (ix), a
	ld	a, #0x01
	sbc	a, -6 (ix)
	ld	-1 (ix), a
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:104: u16 dy_diff_16 = (u16)(SwSprite[i].ly - SwSprite[14].ly) & 511;
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
	sub	a, c
	ld	c, a
	ld	a, h
	sbc	a, b
	and	a, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:105: u16 dy = (dy_diff_16 < 256) ? dy_diff_16 : (512 - dy_diff_16);
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	b, a
	sub	a, #0x01
	jr	C, 00119$
	xor	a, a
	sub	a, c
	ld	c, a
	ld	a, #0x02
	sbc	a, b
	ld	b, a
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:107: u16 dist = dx + dy;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:109: if (dist < min_dist) {
	ld	a, l
	sub	a, -5 (ix)
	ld	a, h
	sbc	a, -4 (ix)
	jr	NC, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:110: min_dist = dist;
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:111: closest_player = i;
	ld	e, d
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:100: for (u8 i = 0; i < 14; i++) {
	inc	d
	jp	00112$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:115: u16 dy_diff = (SwSprite[14].ly - SwSprite[closest_player].ly) & 511;
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
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
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
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	and	a, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:119: if (dy_diff < 256) {
	ld	b, a
	sub	a, #0x01
	jr	NC, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:120: u8 dx_diff = (u8)(SwSprite[14].lx - SwSprite[closest_player].lx);
	ld	a, (de)
	ld	e, a
	ld	a, -3 (ix)
	sub	a, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:121: u8 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	cp	a, #0x80
	jr	C, 00121$
	neg
00121$:
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:125: if (dist_x <= 4 && dy_diff <= 4) {
	ld	a,#0x04
	cp	a,e
	jr	C, 00107$
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	C, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:126: return FALSE;
	xor	a, a
	jp	00114$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:129: return TRUE;
	ld	a, #0x01
	jp	00114$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:132: return FALSE;
	xor	a, a
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:133: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:136: void ShowSpriteMessage(u16 messageId)
;	---------------------------------
; Function ShowSpriteMessage
; ---------------------------------
_ShowSpriteMessage::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-9
	add	iy, sp
	ld	sp, iy
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:138: DEBUG_LOG("1-1");
	push	hl
	ld	hl, #___str_0
	call	_DEBUG_LOG
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:142: if (messageId == SPR_MSG_KICKOFF) {
	ld	a, c
	sub	a, #0x20
	jr	NZ, 00123$
	ld	a, b
	dec	a
	jr	NZ, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:143: len = SPRITE_MSG_KICKOFF_LENGTH;
	ld	-9 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:144: logical_y = (KickOffTeam == TEAM_1) ? (Field.ly + 48) : (Field.ly + 144); // Centro della rispettiva metà inquadratura
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	NZ, 00135$
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0030
	add	hl, de
	jp	00136$
00135$:
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0090
	add	hl, de
00136$:
	ex	de, hl
	jp	00124$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:145: } else if (messageId == SPR_MSG_GOALKICK) {
	ld	a, c
	sub	a, #0x24
	jr	NZ, 00120$
	ld	a, b
	dec	a
	jr	NZ, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:146: len = SPRITE_MSG_GOALKICK_LENGTH;
	ld	-9 (ix), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:147: logical_y = Field.ly + 96; // Metà dello schermo (192 / 2)
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0060
	add	hl, de
	ex	de, hl
	jp	00124$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:148: } else if (messageId == SPR_MSG_THROWIN) {
	ld	a, c
	sub	a, #0x29
	jr	NZ, 00117$
	ld	a, b
	dec	a
	jr	NZ, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:149: len = SPRITE_MSG_THROWIN_LENGTH;
	ld	-9 (ix), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:150: logical_y = Field.ly + 96;
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0060
	add	hl, de
	ex	de, hl
	jp	00124$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:151: } else if (messageId == SPR_MSG_CORNERKICK) {
	ld	a, c
	sub	a, #0x30
	jr	NZ, 00114$
	ld	a, b
	dec	a
	jr	NZ, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:152: len = SPRITE_MSG_CORNERKICK_LENGTH;
	ld	-9 (ix), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:153: logical_y = Field.ly + 96;
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0060
	add	hl, de
	ex	de, hl
	jp	00124$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:154: } else if (messageId == SPR_MSG_INGOAL) {
	ld	a, c
	sub	a, #0x39
	jr	NZ, 00111$
	ld	a, b
	dec	a
	jr	NZ, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:155: len = SPRITE_MSG_INGOAL_LENGTH;
	ld	-9 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:156: logical_y = Field.ly + 96;
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0060
	add	hl, de
	ex	de, hl
	jp	00124$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:157: } else if (messageId == SPR_MSG_TIMEUP) {
	ld	a, c
	sub	a, #0x40
	jr	NZ, 00108$
	ld	a, b
	dec	a
	jr	NZ, 00108$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:158: len = SPRITE_MSG_TIMEUP_LENGTH;
	ld	-9 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:159: logical_y = Field.ly + 96;
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0060
	add	hl, de
	ex	de, hl
	jp	00124$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:160: } else if (messageId == SPR_MSG_HALFTIME) {
	ld	a, c
	sub	a, #0x44
	jr	NZ, 00105$
	ld	a, b
	dec	a
	jr	NZ, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:161: len = SPRITE_MSG_HALFTIME_LENGTH;
	ld	-9 (ix), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:162: logical_y = Field.ly + 96;
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0060
	add	hl, de
	ex	de, hl
	jp	00124$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:163: } else if (messageId == SPR_MSG_PENALTIES) {
	ld	a, c
	sub	a, #0x49
	jp	NZ,00133$
	ld	a, b
	dec	a
	jp	NZ,00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:164: len = SPRITE_MSG_PENALTIES_LENGTH;
	ld	-9 (ix), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:165: logical_y = Field.ly + 96;
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0060
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:167: return;
	jp	00124$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:170: u8 start_x = 128 - (len * 8); // Centrato orizzontalmente: 128 - (lunghezza * 16 / 2)
	ld	a, -9 (ix)
	add	a, a
	add	a, a
	add	a, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x80
	sub	a, l
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:172: for (u8 i = 0; i < len; i++) {
	ld	-1 (ix), #0x00
00128$:
	ld	a, -1 (ix)
	sub	a, -9 (ix)
	jp	NC, 00125$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:173: SwSprite[15 + i].lx = start_x + (i * 16);
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	add	a, #0x0f
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	ld	a, l
	add	a, #<(_SwSprite)
	ld	-7 (ix), a
	ld	a, h
	adc	a, #>(_SwSprite)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	a, l
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:174: SwSprite[15 + i].ly = logical_y;
	ld	a, -7 (ix)
	add	a, #0x04
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:175: SwSprite[15 + i].frame = messageId + i;
	ld	a, -7 (ix)
	add	a, #0x0f
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:176: SwSprite[15 + i].dx = 0;
	ld	a, -7 (ix)
	add	a, #0x11
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:177: SwSprite[15 + i].dy = 0;
	ld	a, -7 (ix)
	add	a, #0x12
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:172: for (u8 i = 0; i < len; i++) {
	inc	-1 (ix)
	jp	00128$
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:181: for (u8 i = 15 + len; i < NumSprite; i++) {
	ld	a, -9 (ix)
	add	a, #0x0f
	ld	c, a
00131$:
	ld	a, c
	sub	a, #0x18
	jr	NC, 00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:182: SwSprite[i].ly = 1000;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:181: for (u8 i = 15 + len; i < NumSprite; i++) {
	inc	c
	jp	00131$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:184: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "1-1"
	.db 0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:187: void HideSpriteMessage()
;	---------------------------------
; Function HideSpriteMessage
; ---------------------------------
_HideSpriteMessage::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:189: for (u8 i = 15; i < NumSprite; i++) {
	ld	de, #_SwSprite+0
	ld	c, #0x0f
00103$:
	ld	a, c
	sub	a, #0x18
	ret	NC
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:190: SwSprite[i].ly = 1000;
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
	add	hl, de
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:189: for (u8 i = 15; i < NumSprite; i++) {
	inc	c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s5_b3.c:192: }
	jp	00103$
	.area _SEG5
	.area _INITIALIZER
	.area _CABS (ABS)
