;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WaitForVBlank
	.globl _DEBUG_INIT
	.globl _PlayPresentation
	.globl _UpdatePhase3
	.globl _UpdatePhase2
	.globl _UpdatePhase1
	.globl _ScrollInsertRowUp
	.globl _ScrollInsertRowDown
	.globl _InitScrollPages
	.globl _Print_SetColor
	.globl _Print_DrawText
	.globl _Print_SetBitmapFont
	.globl _Print_SetMode
	.globl _Print_Initialize
	.globl _VPD_CommandSetupR36
	.globl _VPD_CommandSetupR32
	.globl _VDP_SetPage
	.globl _VDP_SetLayoutTable
	.globl _VDP_SetPalette
	.globl _VDP_WriteVRAM_128K
	.globl _VDP_RegWriteBakMask
	.globl _VDP_RegWrite
	.globl _VDP_SetMode
	.globl _Bios_ClearScreen
	.globl _g_R23
	.globl _g_PageScrollY
	.globl _g_VSynch
	.globl _g_dx
	.globl _g_frame
	.globl _g_y2
	.globl _g_y1
	.globl _g_y0
	.globl _g_x2
	.globl _g_x1
	.globl _g_x0
	.globl _g_ly
	.globl _g_lx
	.globl _ScreenPos
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
	.globl _g_Palette
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
	.globl _CallFnc_VOID
	.globl _CallFnc_VOID_P1
	.globl _CallFnc_VOID_P2
	.globl _CallFnc_VOID_16_P2
	.globl _CallFnc_U8
	.globl _CallFnc_U8_P1
	.globl _CallFnc_U16_P1
	.globl _CallFnc_U8_P2
	.globl _CallFnc_BOOL
	.globl _CallFnc_BOOL_P1
	.globl _CallFnc_VOID_U8U8U16
	.globl _CallSpriteFrame_B3
	.globl _CallSpriteFrame
	.globl _VSyncCallback
	.globl _DrawField
	.globl _main
	.globl _TestPerformanceAnimation
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
_ScreenPos	=	0xc00b
_g_lx::
	.ds 15
_g_ly::
	.ds 15
_g_x0::
	.ds 15
_g_x1::
	.ds 15
_g_x2::
	.ds 15
_g_y0::
	.ds 30
_g_y1::
	.ds 30
_g_y2::
	.ds 30
_g_frame::
	.ds 30
_g_dx::
	.ds 15
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_VSynch::
	.ds 1
_g_PageScrollY::
	.ds 6
_g_R23::
	.ds 3
_g_scrollDir:
	.ds 1
_g_hudTimer:
	.ds 1
_g_hudSec:
	.ds 1
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
	.area _CODE
;./soccerlg.c:75: void CallFnc_VOID(u8 segment, void (*func)()) {
;	---------------------------------
; Function CallFnc_VOID
; ---------------------------------
_CallFnc_VOID::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:76: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:77: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:78: func();
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:79: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:79: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:80: }
	inc	sp
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
_g_Palette:
	.db #0x55	; 85	'U'
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x06	; 6
	.db #0x77	; 119	'w'
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x33	; 51	'3'
	.db #0x03	; 3
	.db #0x62	; 98	'b'
	.db #0x04	; 4
	.db #0x72	; 114	'r'
	.db #0x06	; 6
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x05	; 5
	.db #0x70	; 112	'p'
	.db #0x07	; 7
	.db #0x77	; 119	'w'
	.db #0x07	; 7
	.db #0x16	; 22
	.db #0x02	; 2
	.db #0x77	; 119	'w'
	.db #0x07	; 7
;./soccerlg.c:82: void CallFnc_VOID_P1(u8 segment, void (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_VOID_P1
; ---------------------------------
_CallFnc_VOID_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:83: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:84: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:85: func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:86: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:86: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:87: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:89: void CallFnc_VOID_P2(u8 segment, void (*func)(u8, bool), u8 p1, bool p2) {
;	---------------------------------
; Function CallFnc_VOID_P2
; ---------------------------------
_CallFnc_VOID_P2::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:90: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:91: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:92: func(p1,p2);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:93: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:93: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:94: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:96: void CallFnc_VOID_16_P2(u8 segment, void (*func)(u16,u16), u16 p1, u16 p2) {
;	---------------------------------
; Function CallFnc_VOID_16_P2
; ---------------------------------
_CallFnc_VOID_16_P2::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	c, e
	ld	b, d
;./soccerlg.c:97: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-2 (ix), l
;./soccerlg.c:98: SET_BANK_SEGMENT(3, segment);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, e
	ld	h, d
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:99: func(p1,p2);
	ld	e, 6 (ix)
	ld	d, 7 (ix)
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:100: SET_BANK_SEGMENT(3, _old);
	ld	c, -2 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:100: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:101: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;./soccerlg.c:103: u8 CallFnc_U8(u8 segment, u8 (*func)()) {
;	---------------------------------
; Function CallFnc_U8
; ---------------------------------
_CallFnc_U8::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:105: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:106: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:107: _res = func();
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:108: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:109: return _res;
	ld	a, c
;./soccerlg.c:110: }
	inc	sp
	pop	ix
	ret
;./soccerlg.c:112: u8 CallFnc_U8_P1(u8 segment, u8 (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_U8_P1
; ---------------------------------
_CallFnc_U8_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:114: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:115: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:116: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:117: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:118: return _res;
	ld	a, c
;./soccerlg.c:119: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:121: u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_U16_P1
; ---------------------------------
_CallFnc_U16_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:123: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:124: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:125: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:126: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:127: return _res;
;./soccerlg.c:128: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:130: u8 CallFnc_U8_P2(u8 segment, u8 (*func)(u8, u8), u8 p1, u8 p2) {
;	---------------------------------
; Function CallFnc_U8_P2
; ---------------------------------
_CallFnc_U8_P2::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:132: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:133: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:134: _res = func(p1,p2);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
	ld	c, a
;./soccerlg.c:135: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:136: return _res;
	ld	a, c
;./soccerlg.c:137: }
	inc	sp
	pop	ix
	pop	hl
	pop	bc
	jp	(hl)
;./soccerlg.c:139: bool CallFnc_BOOL(u8 segment, bool (*func)()) {
;	---------------------------------
; Function CallFnc_BOOL
; ---------------------------------
_CallFnc_BOOL::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:141: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:142: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:143: _res = func();
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:144: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:145: return _res;
	ld	a, c
;./soccerlg.c:146: }
	inc	sp
	pop	ix
	ret
;./soccerlg.c:148: bool CallFnc_BOOL_P1(u8 segment, bool (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_BOOL_P1
; ---------------------------------
_CallFnc_BOOL_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:150: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:151: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:152: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:153: SET_BANK_SEGMENT(3, _old);
	ld	e, -1 (ix)
	ld	d, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:154: return _res;
	ld	a, c
;./soccerlg.c:155: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:157: void CallFnc_VOID_U8U8U16(u8 segment, void (*func)(u8, u8, u16), u8 p1, u8 p2, u16 p3) {
;	---------------------------------
; Function CallFnc_VOID_U8U8U16
; ---------------------------------
_CallFnc_VOID_U8U8U16::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:158: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:159: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	l, c
	ld	h, b
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, l
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:160: func(p1, p2, p3);
	ld	l, 6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:161: SET_BANK_SEGMENT(3, _old);
	ld	c, -1 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:161: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:162: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;./soccerlg.c:167: void CallSpriteFrame_B3(u8 x, u16 y, u16 frame) {
;	---------------------------------
; Function CallSpriteFrame_B3
; ---------------------------------
_CallSpriteFrame_B3::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	b, a
;./soccerlg.c:168: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	c, l
;./soccerlg.c:169: CallSpriteFrame(x, y, frame);
	push	bc
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, b
	call	_CallSpriteFrame
	pop	bc
;./soccerlg.c:170: SET_BANK_SEGMENT(3, _old);
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:170: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:171: }
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:173: void CallSpriteFrame(u8 x, u16 y, u16 frame)  __naked
;	---------------------------------
; Function CallSpriteFrame
; ---------------------------------
_CallSpriteFrame::
;./soccerlg.c:223: __endasm;
	ld	b,a ; b = x , de = y
	pop	af ; pop return
	pop	hl ; hl = frame
	push	af ; push return
	ld	a,l
	and	#3
	add	a,a
	add	a,a
	ld	c,a ; in c the low address of the function to be called
	srl	h ; page = 100 + frame / 4
	rr	l
	srl	h
	rr	l
	ld	a,#100
	add	a,l ; segments in the current offset (!)
	ld	(#0xB000),a
	ld	(#(_g_Bank0Segment + 6) + 0),a ; prevent future possible issues on the ISR
	ld	h,d ; HLB = y*256+X = 2 * VRAM_address
	ld	l,e
	add	hl,hl ; in h 3 bit di indirizzo per R14
	ld	a,h
	and	#1
	.db	#0xFD
	ld	l,a ;ld iyl,a ; save R14 in iyl
	ld	a,h
	and	#6
	.db	#0xFD
	ld	h,a ;ld iyh,a ; save vram page in iyh
	srl	d
	rr	e
	srl	b
	ld	d,e
	ld	e,b ; DE = (x + y*256)/2 & 0xFFFF
	ld	l,c
	ld	h,#0xA0
	jp	(hl)
;./soccerlg.c:224: }
;./soccerlg.c:230: void VSyncCallback()
;	---------------------------------
; Function VSyncCallback
; ---------------------------------
_VSyncCallback::
;./soccerlg.c:232: g_VSynch = TRUE;
	ld	hl, #_g_VSynch
	ld	(hl), #0x01
;./soccerlg.c:233: }
	ret
;./soccerlg.c:235: void WaitForVBlank(){
;	---------------------------------
; Function WaitForVBlank
; ---------------------------------
_WaitForVBlank::
;./soccerlg.c:236: while(!g_VSynch) {}
00101$:
	ld	a, (_g_VSynch+0)
	or	a, a
	jr	Z, 00101$
;./soccerlg.c:237: g_VSynch = FALSE;
	ld	hl, #_g_VSynch
	ld	(hl), #0x00
;./soccerlg.c:238: }
	ret
;./soccerlg.c:240: void DrawField(u8 vdp_page)
;	---------------------------------
; Function DrawField
; ---------------------------------
_DrawField::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-14
	add	hl, sp
	ld	sp, hl
	ld	e, a
;./soccerlg.c:244: u32 base     = (u32)vdp_page * 0x8000;
	ld	d, #0x00
	ld	hl, #0x0000
	ld	h, l
;	spillPairReg hl
;	spillPairReg hl
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	d, e
	ld	e, #0x00
	ld	b, #0x07
00160$:
	sla	d
	adc	hl, hl
	djnz	00160$
	inc	sp
	inc	sp
	push	de
	ld	-12 (ix), l
	ld	-11 (ix), h
;./soccerlg.c:245: u8  saved_seg = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-10 (ix), l
;./soccerlg.c:247: for (i = 0; i < FIELD_SEG_COUNT; i++)
	ld	-1 (ix), #0x00
00137$:
;./soccerlg.c:249: u32 addr    = base + (u32)i * 8192;
	ld	a, -1 (ix)
	ld	-5 (ix), a
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-8 (ix), a
	ld	a, -4 (ix)
	ld	-7 (ix), a
	ld	a, -3 (ix)
	ld	-6 (ix), a
	ld	-9 (ix), #0x00
	ld	b, #0x05
00162$:
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	djnz	00162$
	ld	a, -14 (ix)
	add	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -13 (ix)
	adc	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -12 (ix)
	adc	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -11 (ix)
	adc	a, -6 (ix)
	ld	-2 (ix), a
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	c, -3 (ix)
;./soccerlg.c:250: u16 addrLow = (u16)(addr & 0xFFFF);
	push	de
	pop	iy
;./soccerlg.c:251: u8  addrHigh = (u8)(addr >> 16);
;./soccerlg.c:253: SET_BANK_SEGMENT(3, FIELD_SEG_BASE + i);
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0x00e6
	add	hl, de
	ex	de, hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	b, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	srl	l
	rr	b
	srl	l
	rr	b
	ld	a, b
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), e
;./soccerlg.c:254: VDP_WriteVRAM_128K((u8*)BANK3_BASE, addrLow, addrHigh, 8192);
	ld	h, #0x20
	push	hl
	ld	a, c
	push	af
	inc	sp
	push	iy
	pop	de
	ld	h, #0xa0
	call	_VDP_WriteVRAM_128K
;./soccerlg.c:247: for (i = 0; i < FIELD_SEG_COUNT; i++)
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x04
	jp	C, 00137$
;./soccerlg.c:257: SET_BANK_SEGMENT(3, saved_seg);
	ld	c, -10 (ix)
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	((_g_Bank0Segment + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	e, c
	ld	d, b
	srl	d
	rr	e
	srl	d
	rr	e
	ld	a, e
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), c
;./soccerlg.c:257: SET_BANK_SEGMENT(3, saved_seg);
;./soccerlg.c:258: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:264: static void UpdateHUDMaster(void)
;	---------------------------------
; Function UpdateHUDMaster
; ---------------------------------
_UpdateHUDMaster:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;./soccerlg.c:266: u8 s  = g_hudSec % 60;
	ld	a, (_g_hudSec+0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x003c
	call	__modsint
	pop	hl
	ld	-1 (ix), e
;./soccerlg.c:267: u8 m  = g_hudSec / 60;
	ld	de, #0x003c
	call	__divsint
	ld	c, e
;./soccerlg.c:269: buf[0] = '0' + m / 10;
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
	ld	a, e
	add	a, #0x30
	ld	-7 (ix), a
;./soccerlg.c:270: buf[1] = '0' + m % 10;
	ld	de, #0x000a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	a, e
	add	a, #0x30
	ld	-6 (ix), a
;./soccerlg.c:271: buf[2] = ':';
	ld	-5 (ix), #0x3a
;./soccerlg.c:272: buf[3] = '0' + s / 10;
	ld	c, -1 (ix)
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
	ld	a, e
	add	a, #0x30
	ld	-4 (ix), a
;./soccerlg.c:273: buf[4] = '0' + s % 10;
	ld	de, #0x000a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	a, e
	add	a, #0x30
	ld	-3 (ix), a
;./soccerlg.c:274: buf[5] = '\0';
	ld	-2 (ix), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:298: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:299: g_VDP_Command.DY = dy; 
	ld	l, #0xf8
	ld	((_g_VDP_Command + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:300: g_VDP_Command.NX = nx; 
	ld	hl, #0x0100
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:301: g_VDP_Command.NY = ny; 
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:302: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), #0x11
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:303: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:304: g_VDP_Command.CMD = VDP_CMD_LMMV + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x80
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:305: VPD_CommandSetupR36();
	call	_VPD_CommandSetupR36
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0004
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x01
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x04
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0xb000
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	h, l
	ld	((_g_PrintData + 5)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #(_g_PrintData + 7)
	ld	(hl), #0xf8
;./soccerlg.c:278: Print_DrawText(buf);
	ld	hl, #0
	add	hl, sp
	call	_Print_DrawText
;./soccerlg.c:279: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:284: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:193: inline u8 Sys_GetMSXVersion() { return g_MSXVER; } 
	ld	a, (_g_MSXVER+0)
;./soccerlg.c:287: if (Sys_GetMSXVersion() == MSXVER_1)
	or	a, a
	jr	NZ, 00102$
;./soccerlg.c:289: Bios_ClearScreen();
	call	_Bios_ClearScreen
;./soccerlg.c:290: Bios_TextPrintSting("This game need MSX2 or above");
	ld	bc, #___str_0+0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:343: inline void Bios_TextPrintString(const c8* str) { while (*str) Bios_TextPrintChar(*str++); }
00104$:
	ld	a, (bc)
	or	a, a
	jp	Z,0x009f
	inc	bc
	ld	e, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	push	bc
	ld	a, e
	call	0x00a2
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:343: inline void Bios_TextPrintString(const c8* str) { while (*str) Bios_TextPrintChar(*str++); }
;./soccerlg.c:290: Bios_TextPrintSting("This game need MSX2 or above");
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:331: inline c8 Bios_GetCharacter() { return ((u8(*)(void))R_CHGET)(); }
;./soccerlg.c:292: return;
	jp	00104$
00102$:
;./soccerlg.c:295: DEBUG_INIT();
	call	_DEBUG_INIT
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:64: inline void Bios_SetKeyClick(bool enable) { g_CLIKSW = enable; }
	ld	hl, #_g_CLIKSW
	ld	(hl), #0x00
;./soccerlg.c:298: VDP_SetMode(VDP_MODE_SCREEN5);
	ld	a, #0x06
	call	_VDP_SetMode
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:834: inline void VDP_SetLineCount(u8 lines) { VDP_RegWriteBakMask(9, (u8)~R09_LN, lines); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0x7f
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_VDP_RegWriteBakMask
;./soccerlg.c:300: VDP_SetLayoutTable(VDP_G4_ADDR_NT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;./soccerlg.c:303: VDP_SetPalette(g_Palette);
	ld	hl, #_g_Palette
	call	_VDP_SetPalette
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:719: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x07
	call	_VDP_RegWrite
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:745: inline void VDP_EnableSprite(u8 enable) { VDP_RegWriteBakMask(8, (u8)~R08_SPD, !enable ? R08_SPD : 0); }
	ld	a, #0x02
	push	af
	inc	sp
	ld	l, #0xfd
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_VDP_RegWriteBakMask
;./soccerlg.c:316: DrawField(3);           // carica il campo compresso in pagina 3 (sorgente per HMMM)
	ld	a, #0x03
	call	_DrawField
;./soccerlg.c:317: CallFnc_VOID(SEG_MAIN, InitScrollPages); // RebuildPage(0..2, 0) via seg5
	ld	de, #_InitScrollPages
	ld	a, #0x05
	call	_CallFnc_VOID
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:298: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:299: g_VDP_Command.DY = dy; 
	ld	((_g_VDP_Command + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:300: g_VDP_Command.NX = nx; 
	ld	h, #0x01
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:301: g_VDP_Command.NY = ny; 
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:302: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), #0x11
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:303: g_VDP_Command.ARG = arg; 
	ld	bc, #_g_VDP_Command + 13
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:304: g_VDP_Command.CMD = VDP_CMD_LMMV + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x80
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:305: VPD_CommandSetupR36();
	push	bc
	call	_VPD_CommandSetupR36
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:298: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:299: g_VDP_Command.DY = dy; 
	ld	h, #0x01
	ld	((_g_VDP_Command + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:300: g_VDP_Command.NX = nx; 
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:301: g_VDP_Command.NY = ny; 
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:302: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), #0x11
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:303: g_VDP_Command.ARG = arg; 
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:304: g_VDP_Command.CMD = VDP_CMD_LMMV + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x80
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:305: VPD_CommandSetupR36();
	push	bc
	call	_VPD_CommandSetupR36
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:298: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:299: g_VDP_Command.DY = dy; 
	ld	h, #0x02
	ld	((_g_VDP_Command + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:300: g_VDP_Command.NX = nx; 
	ld	h, #0x01
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:301: g_VDP_Command.NY = ny; 
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:302: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), #0x11
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:303: g_VDP_Command.ARG = arg; 
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:304: g_VDP_Command.CMD = VDP_CMD_LMMV + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x80
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:305: VPD_CommandSetupR36();
	call	_VPD_CommandSetupR36
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:190: g_Bank0Segment[b] = s;
	ld	hl, #0x0004
	ld	((_g_Bank0Segment + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:191: Poke(YAMANOOTO_OFFR, (s >> 2) & 0xC0);
	ld	a, #0x01
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:195: else if (b == 3)	Poke(ADDR_BANK_3, s & 0xFF);
	ld	a, #0x04
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0xb000),a
;./soccerlg.c:326: Print_SetMode(PRINT_MODE_BITMAP);
	xor	a, a
	call	_Print_SetMode
;./soccerlg.c:327: Print_Initialize();
	call	_Print_Initialize
;./soccerlg.c:328: Print_SetBitmapFont(g_Fonts);
	ld	hl, #_g_Fonts
	call	_Print_SetBitmapFont
;./soccerlg.c:329: Print_SetColor(4,1);
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	call	_Print_SetColor
;./soccerlg.c:332: UpdateHUDMaster();
	call	_UpdateHUDMaster
;./soccerlg.c:335: CallFnc_VOID(SEG_PRESENTATION, PlayPresentation);
	ld	de, #_PlayPresentation
	ld	a, #0x06
	call	_CallFnc_VOID
;./soccerlg.c:338: TestPerformanceAnimation();
;./soccerlg.c:339: }
	jp	_TestPerformanceAnimation
___str_0:
	.ascii "This game need MSX2 or above"
	.db 0x00
;./soccerlg.c:341: void TestPerformanceAnimation(void)
;	---------------------------------
; Function TestPerformanceAnimation
; ---------------------------------
_TestPerformanceAnimation::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;./soccerlg.c:345: for (i=0; i<NOBJ; i++) {
	ld	c, #0x00
00134$:
;./soccerlg.c:346: g_lx[i]    = (u8)(i*16+4);
	ld	hl, #_g_lx
	ld	b, #0x00
	add	hl, bc
	ld	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x04
	ld	(hl), a
;./soccerlg.c:347: g_ly[i]    = (u8)(i*12);
	ld	a, #<(_g_ly)
	add	a, c
	ld	e, a
	ld	a, #>(_g_ly)
	adc	a, #0x00
	ld	d, a
	ld	a, c
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	(de), a
;./soccerlg.c:348: g_frame[i] = 38;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_g_frame
	add	hl, de
	ld	(hl), #0x26
	inc	hl
	ld	(hl), #0x00
;./soccerlg.c:349: g_dx[i]    = 2;
	ld	hl, #_g_dx
	ld	b, #0x00
	add	hl, bc
	ld	(hl), #0x02
;./soccerlg.c:345: for (i=0; i<NOBJ; i++) {
	inc	c
	ld	a, c
	sub	a, #0x0f
	jr	C, 00134$
;./soccerlg.c:371: for (i=0; i<NOBJ; i++)
	ld	-1 (ix), #0x00
00136$:
;./soccerlg.c:373: g_x0[i] = g_lx[i];
	ld	a, #<(_g_x0)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_g_x0)
	adc	a, #0x00
	ld	b, a
	ld	a, #<(_g_lx)
	add	a, -1 (ix)
	ld	-7 (ix), a
	ld	a, #>(_g_lx)
	adc	a, #0x00
	ld	-6 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(bc), a
;./soccerlg.c:374: g_y0[i] = g_ly[i] + HUD_LINES;                   // page 0: offset 0, r23=0
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, #_g_y0
	add	hl, bc
	ex	de, hl
	ld	a, #<(_g_ly)
	add	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, #>(_g_ly)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	add	a, #0x08
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #0x00
	ld	-3 (ix), l
	ld	-2 (ix), a
	ld	a, -3 (ix)
	ld	(de), a
	inc	de
	ld	a, -2 (ix)
	ld	(de), a
;./soccerlg.c:375: g_x1[i] = g_lx[i];
	ld	a, #<(_g_x1)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_g_x1)
	adc	a, #0x00
	ld	d, a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(de), a
;./soccerlg.c:376: g_y1[i] = (u16)256u | (u8)(g_ly[i] + HUD_LINES);       // page 1: offset 256
	ld	hl, #_g_y1
	add	hl, bc
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	add	a, #0x08
	ld	e, a
	ld	d, #0x00
	set	0, d
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;./soccerlg.c:377: g_x2[i] = g_lx[i];
	ld	a, #<(_g_x2)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_g_x2)
	adc	a, #0x00
	ld	d, a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(de), a
;./soccerlg.c:378: g_y2[i] = (u16)512u | (u8)(g_ly[i] + HUD_LINES);                        // page 2: inizializzato correttamente per primo erase
	ld	hl, #_g_y2
	add	hl, bc
	ex	de, hl
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;./soccerlg.c:371: for (i=0; i<NOBJ; i++)
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	C, 00136$
00138$:
;./soccerlg.c:397: if (g_scrollDir > 0) { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 1); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 1); }
	xor	a, a
	ld	hl, #_g_scrollDir
	sub	a, (hl)
	jp	PO, 00204$
	xor	a, #0x80
00204$:
	jp	P, 00104$
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowDown
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowDown
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00105$
00104$:
;./soccerlg.c:398: else                 { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   1); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   1); }
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowUp
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowUp
	ld	a, #0x05
	call	_CallFnc_VOID_P1
00105$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./soccerlg.c:400: VDP_SetPage(0);
	xor	a, a
	call	_VDP_SetPage
;./soccerlg.c:401: VDP_SetVerticalOffset(g_R23[0]);
	ld	hl, #_g_R23
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;./soccerlg.c:404: VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 256u + g_R23[1], 256, HUD_LINES);
	ld	a, (#(_g_R23 + 1) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	c, a
	ld	a, h
	inc	a
	ld	b, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #0x0000
	ld	(_g_VDP_Command), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	l, #0xf8
	ld	((_g_VDP_Command + 2)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	l, h
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	h, #0x01
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;./soccerlg.c:406: CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase1, g_R23[1], g_R23[2], g_PageScrollY[2]);
	ld	de, (#_g_PageScrollY + 4)
	ld	hl, #(_g_R23 + 2)
	ld	b, (hl)
	ld	a, (#(_g_R23 + 1) + 0)
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	de, #_UpdatePhase1
	ld	a, #0x05
	call	_CallFnc_VOID_U8U8U16
;./soccerlg.c:409: if (g_scrollDir > 0) { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 2); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 2); }
	xor	a, a
	ld	hl, #_g_scrollDir
	sub	a, (hl)
	jp	PO, 00205$
	xor	a, #0x80
00205$:
	jp	P, 00107$
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowDown
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowDown
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00108$
00107$:
;./soccerlg.c:410: else                 { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   2); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   2); }
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowUp
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowUp
	ld	a, #0x05
	call	_CallFnc_VOID_P1
00108$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./soccerlg.c:412: VDP_SetPage(1);
	ld	a, #0x01
	call	_VDP_SetPage
;./soccerlg.c:413: VDP_SetVerticalOffset(g_R23[1]);
	ld	hl, #(_g_R23 + 1)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;./soccerlg.c:416: VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 512u + g_R23[2], 256, HUD_LINES);
	ld	a, (#(_g_R23 + 2) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	c, a
	ld	a, h
	add	a, #0x02
	ld	b, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #0x0000
	ld	(_g_VDP_Command), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	l, #0xf8
	ld	((_g_VDP_Command + 2)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	l, h
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	h, #0x01
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;./soccerlg.c:418: CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase2, g_R23[2], g_R23[0], g_PageScrollY[0]);
	ld	de, (#_g_PageScrollY + 0)
	ld	hl, #_g_R23
	ld	b, (hl)
	ld	a, (#(_g_R23 + 2) + 0)
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	de, #_UpdatePhase2
	ld	a, #0x05
	call	_CallFnc_VOID_U8U8U16
;./soccerlg.c:421: if (g_scrollDir > 0) { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 0); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowDown, 0); }
	xor	a, a
	ld	hl, #_g_scrollDir
	sub	a, (hl)
	jp	PO, 00206$
	xor	a, #0x80
00206$:
	jp	P, 00110$
	xor	a, a
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowDown
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	xor	a, a
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowDown
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00111$
00110$:
;./soccerlg.c:422: else                 { CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   0); CallFnc_VOID_P1(SEG_MAIN, ScrollInsertRowUp,   0); }
	xor	a, a
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowUp
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	xor	a, a
	push	af
	inc	sp
	ld	de, #_ScrollInsertRowUp
	ld	a, #0x05
	call	_CallFnc_VOID_P1
00111$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./soccerlg.c:424: VDP_SetPage(2);
	ld	a, #0x02
	call	_VDP_SetPage
;./soccerlg.c:425: VDP_SetVerticalOffset(g_R23[2]);
	ld	hl, #(_g_R23 + 2)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;./soccerlg.c:428: VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, g_R23[0], 256, HUD_LINES);
	ld	a, (#_g_R23 + 0)
	ld	c, a
	ld	b, #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #0x0000
	ld	(_g_VDP_Command), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	l, #0xf8
	ld	((_g_VDP_Command + 2)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	l, h
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	h, #0x01
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:113: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;./soccerlg.c:430: CallFnc_VOID_U8U8U16(SEG_MAIN, UpdatePhase3, g_R23[0], g_R23[1], g_PageScrollY[1]);
	ld	bc, (#_g_PageScrollY + 2)
	ld	a, (#(_g_R23 + 1) + 0)
	ld	hl, #_g_R23
	ld	d, (hl)
	push	bc
	push	af
	inc	sp
	push	de
	inc	sp
	ld	de, #_UpdatePhase3
	ld	a, #0x05
	call	_CallFnc_VOID_U8U8U16
;./soccerlg.c:433: if (++g_hudTimer >= HUD_ITERS_PER_SEC)
	ld	iy, #_g_hudTimer
	inc	0 (iy)
	ld	a, (_g_hudTimer+0)
	sub	a, #0x11
	jr	C, 00113$
;./soccerlg.c:435: g_hudTimer = 0;
	ld	0 (iy), #0x00
;./soccerlg.c:436: g_hudSec++;
	ld	hl, #_g_hudSec
	inc	(hl)
;./soccerlg.c:437: UpdateHUDMaster();
	call	_UpdateHUDMaster
00113$:
;./soccerlg.c:441: if (g_scrollDir > 0 && g_PageScrollY[0] + (SCREEN_LINES - HUD_LINES) >= FIELD_ROWS)
	xor	a, a
	ld	hl, #_g_scrollDir
	sub	a, (hl)
	jp	PO, 00207$
	xor	a, #0x80
00207$:
	jp	P, 00118$
	ld	hl, (#_g_PageScrollY + 0)
	ld	bc, #0x00b8
	add	hl, bc
	ld	de, #0x01f8
	cp	a, a
	sbc	hl, de
	jr	C, 00118$
;./soccerlg.c:442: g_scrollDir = -1;
	ld	hl, #_g_scrollDir
	ld	(hl), #0xff
	jp	00138$
00118$:
;./soccerlg.c:443: else if (g_scrollDir < 0 && g_PageScrollY[0] == 0)
	ld	a, (_g_scrollDir+0)
	bit	7, a
	jp	Z, 00138$
	ld	hl, (#_g_PageScrollY + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00138$
;./soccerlg.c:444: g_scrollDir = 1;
	ld	hl, #_g_scrollDir
	ld	(hl), #0x01
;./soccerlg.c:448: }
	jp	00138$
	.area _CODE
	.area _INITIALIZER
__xinit__g_VSynch:
	.db #0x00	; 0
__xinit__g_PageScrollY:
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
__xinit__g_R23:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__g_scrollDir:
	.db #0x01	;  1
__xinit__g_hudTimer:
	.db #0x00	; 0
__xinit__g_hudSec:
	.db #0x00	; 0
	.area _CABS (ABS)
