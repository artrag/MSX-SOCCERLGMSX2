;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UpdatePhase3
	.globl _UpdatePhase2
	.globl _UpdatePhase1
	.globl _ScrollInsertRowUp
	.globl _ScrollInsertRowDown
	.globl _WaitForVBlank
	.globl _DEBUG_INIT
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
	.globl _g_VSynch
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
	.globl _CallSpriteFrame
	.globl _VSyncCallback
	.globl _DrawField
	.globl _main
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
_g_lx:
	.ds 15
_g_ly:
	.ds 15
_g_x0:
	.ds 15
_g_x1:
	.ds 15
_g_x2:
	.ds 15
_g_y0:
	.ds 30
_g_y1:
	.ds 30
_g_y2:
	.ds 30
_g_frame:
	.ds 30
_g_dx:
	.ds 15
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_VSynch::
	.ds 1
_g_PageScrollY:
	.ds 6
_g_R23:
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
;./soccerlg.c:74: void CallSpriteFrame(u8 x, u16 y, u16 frame)  __naked
;	---------------------------------
; Function CallSpriteFrame
; ---------------------------------
_CallSpriteFrame::
;./soccerlg.c:124: __endasm;
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
;./soccerlg.c:125: }
;./soccerlg.c:134: void VSyncCallback()
;	---------------------------------
; Function VSyncCallback
; ---------------------------------
_VSyncCallback::
;./soccerlg.c:136: g_VSynch = TRUE;
	ld	hl, #_g_VSynch
	ld	(hl), #0x01
;./soccerlg.c:137: }
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
;./soccerlg.c:139: void WaitForVBlank(){
;	---------------------------------
; Function WaitForVBlank
; ---------------------------------
_WaitForVBlank::
;./soccerlg.c:140: while(!g_VSynch) {}
00101$:
	ld	a, (_g_VSynch+0)
	or	a, a
	jr	Z, 00101$
;./soccerlg.c:141: g_VSynch = FALSE;
	ld	hl, #_g_VSynch
	ld	(hl), #0x00
;./soccerlg.c:142: }
	ret
;./soccerlg.c:144: void DrawField(u8 vdp_page)
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
;./soccerlg.c:148: u32 base     = (u32)vdp_page * 0x8000;
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
;./soccerlg.c:149: u8  saved_seg = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-10 (ix), l
;./soccerlg.c:151: for (i = 0; i < FIELD_SEG_COUNT; i++)
	ld	-1 (ix), #0x00
00137$:
;./soccerlg.c:153: u32 addr    = base + (u32)i * 8192;
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
;./soccerlg.c:154: u16 addrLow = (u16)(addr & 0xFFFF);
	push	de
	pop	iy
;./soccerlg.c:155: u8  addrHigh = (u8)(addr >> 16);
;./soccerlg.c:157: SET_BANK_SEGMENT(3, FIELD_SEG_BASE + i);
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
;./soccerlg.c:158: VDP_WriteVRAM_128K((u8*)BANK3_BASE, addrLow, addrHigh, 8192);
	ld	h, #0x20
	push	hl
	ld	a, c
	push	af
	inc	sp
	push	iy
	pop	de
	ld	h, #0xa0
	call	_VDP_WriteVRAM_128K
;./soccerlg.c:151: for (i = 0; i < FIELD_SEG_COUNT; i++)
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x04
	jp	C, 00137$
;./soccerlg.c:161: SET_BANK_SEGMENT(3, saved_seg);
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
;./soccerlg.c:161: SET_BANK_SEGMENT(3, saved_seg);
;./soccerlg.c:162: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:168: static void RebuildPage(u8 page, u16 scroll_y)
;	---------------------------------
; Function RebuildPage
; ---------------------------------
_RebuildPage:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
	ld	c, a
	ld	-4 (ix), e
	ld	-3 (ix), d
;./soccerlg.c:170: u16 dst_y = (u16)page * 256u + HUD_LINES;
	ld	d, c
	ld	e, #0x00
	ld	hl, #0x0008
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
;./soccerlg.c:171: const u8* pField = &FieldMap[scroll_y];
	ld	de, #_FieldMap+0
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ex	de, hl
;./soccerlg.c:172: u8 remaining = (u8)(SCREEN_LINES - HUD_LINES);
	ld	-2 (ix), #0xb8
;./soccerlg.c:174: while (remaining > 0)
00114$:
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00116$
;./soccerlg.c:176: u8 src = pField[0];
	ld	a, (de)
	ld	-5 (ix), a
;./soccerlg.c:178: while (step < remaining && pField[step] == (u8)(src + step))
	ld	-1 (ix), #0x01
00102$:
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jr	NC, 00132$
	ld	a, e
	add	a, -1 (ix)
	ld	-9 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	b, (hl)
	ld	a, -5 (ix)
	add	a, -1 (ix)
	sub	a, b
	jr	NZ, 00132$
;./soccerlg.c:179: step++;
	inc	-1 (ix)
	jp	00102$
00132$:
	ld	b, -1 (ix)
;./soccerlg.c:181: if (step > 1) {
	ld	a, #0x01
	sub	a, -1 (ix)
	jr	NC, 00129$
;./soccerlg.c:182: VDP_CommandYMMM(768u + src, 0, dst_y, step, 0);
	ld	a, -1 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x03
	ld	-11 (ix), l
	ld	-10 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	push	bc
	push	de
	call	_VPD_CommandSetupR32
	pop	de
	pop	bc
;./soccerlg.c:182: VDP_CommandYMMM(768u + src, 0, dst_y, step, 0);
	jp	00113$
;./soccerlg.c:184: while (step < remaining && pField[step] == src)
00129$:
00106$:
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jr	NC, 00133$
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, de
	ld	a,-5 (ix)
	sub	a,(hl)
	jr	NZ, 00133$
;./soccerlg.c:185: step++;
	inc	-1 (ix)
	jp	00106$
00133$:
	ld	b, -1 (ix)
;./soccerlg.c:186: VDP_CommandYMMM(768u + src, 0, dst_y, 1, 0);
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x03
	ld	-9 (ix), l
	ld	-8 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	hl, #0x0001
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	push	bc
	push	de
	call	_VPD_CommandSetupR32
	pop	de
	pop	bc
;./soccerlg.c:187: if (step > 1)
	ld	a, #0x01
	sub	a, -1 (ix)
	jr	NC, 00113$
;./soccerlg.c:188: VDP_CommandYMMM(dst_y, 0, dst_y + 1, step - 1, 0);
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	dec	hl
	ex	(sp), hl
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	-9 (ix), l
	ld	-8 (ix), h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	push	bc
	push	de
	call	_VPD_CommandSetupR32
	pop	de
	pop	bc
;./soccerlg.c:188: VDP_CommandYMMM(dst_y, 0, dst_y + 1, step - 1, 0);
00113$:
;./soccerlg.c:190: pField += step;
	ld	a, e
	add	a, b
	ld	e, a
	jr	NC, 00178$
	inc	d
00178$:
;./soccerlg.c:191: dst_y += step;
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -7 (ix)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	ld	-9 (ix), a
	ld	a, l
	add	a, -10 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, -9 (ix)
	ld	-7 (ix), l
	ld	-6 (ix), a
;./soccerlg.c:192: remaining -= step;
	ld	a, -2 (ix)
	sub	a, b
	ld	-2 (ix), a
	jp	00114$
00116$:
;./soccerlg.c:194: g_R23[page]         = 0;
	ld	hl, #_g_R23
	ld	b, #0x00
	add	hl, bc
;./soccerlg.c:195: g_PageScrollY[page] = scroll_y;
	ld	(hl), #0x00
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
	add	hl, hl
	ld	de, #_g_PageScrollY
	add	hl, de
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;./soccerlg.c:196: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:201: static void RebuildPageUp(u8 page, u16 scroll_y)
;	---------------------------------
; Function RebuildPageUp
; ---------------------------------
_RebuildPageUp:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-13
	add	hl, sp
	ld	sp, hl
	ld	-5 (ix), a
	ld	-7 (ix), e
	ld	-6 (ix), d
;./soccerlg.c:203: u16 dst_y       = (u16)page * 256u + HUD_LINES;
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -2 (ix)
	ld	-3 (ix), a
	ld	-4 (ix), #0x00
	xor	a, a
	add	a, #0x08
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	-13 (ix), a
	ld	a, -1 (ix)
	ld	-12 (ix), a
;./soccerlg.c:204: u8  vtop        = (scroll_y >= VTOP_MAX) ? VTOP_MAX : (u8)scroll_y;
	ld	a, -7 (ix)
	sub	a, #0x31
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	C, 00122$
	ld	a, #0x31
	jp	00123$
00122$:
	ld	a, -7 (ix)
00123$:
	ld	-11 (ix), a
;./soccerlg.c:205: const u8* pField = &FieldMap[scroll_y - vtop];
	ld	bc, #_FieldMap+0
	ld	e, -11 (ix)
	ld	d, #0x00
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, de
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;./soccerlg.c:206: u8  remaining   = vtop + SCREEN_LINES - HUD_LINES;
	ld	a, -11 (ix)
	add	a, #0xb8
	ld	-2 (ix), a
;./soccerlg.c:208: while (remaining > 0)
00114$:
	ld	a, -2 (ix)
	or	a, a
	jp	Z, 00116$
;./soccerlg.c:210: u8 src = pField[0];
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
;./soccerlg.c:212: while (step < remaining && pField[step] == (u8)(src + step))
	ld	-1 (ix), #0x01
00102$:
	ld	a, -1 (ix)
	sub	a, -2 (ix)
	jr	NC, 00135$
	ld	a, -4 (ix)
	add	a, -1 (ix)
	ld	-9 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	c, (hl)
	ld	a, -10 (ix)
	add	a, -1 (ix)
	sub	a, c
	jr	NZ, 00135$
;./soccerlg.c:213: step++;
	inc	-1 (ix)
	jp	00102$
00135$:
	ld	c, -1 (ix)
;./soccerlg.c:215: if (step > 1) {
	ld	a, #0x01
	sub	a, -1 (ix)
	jr	NC, 00132$
;./soccerlg.c:216: VDP_CommandYMMM(768u + src, 0, dst_y, step, 0);
	ld	e, -1 (ix)
	ld	d, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	b, -10 (ix)
	xor	a, a
	add	a, #0x03
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	hl, #_g_VDP_Command + 2
	ld	(hl), b
	inc	hl
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	((_g_VDP_Command + 10)), de
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
;./soccerlg.c:216: VDP_CommandYMMM(768u + src, 0, dst_y, step, 0);
	jp	00113$
;./soccerlg.c:218: while (step < remaining && pField[step] == src)
00132$:
	ld	e, -1 (ix)
00106$:
	ld	a, e
	sub	a, -2 (ix)
	jr	NC, 00136$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	d, #0x00
	add	hl, de
	ld	a,-10 (ix)
	sub	a,(hl)
	jr	NZ, 00136$
;./soccerlg.c:219: step++;
	inc	e
	jp	00106$
00136$:
	ld	c, e
;./soccerlg.c:220: VDP_CommandYMMM(768u + src, 0, dst_y, 1, 0);
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x03
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	b, l
	ld	d, h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	(hl), b
	inc	hl
	ld	(hl), d
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	hl, #0x0001
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	push	bc
	push	de
	call	_VPD_CommandSetupR32
	pop	de
	pop	bc
;./soccerlg.c:221: if (step > 1)
	ld	a, #0x01
	sub	a, e
	jr	NC, 00113$
;./soccerlg.c:222: VDP_CommandYMMM(dst_y, 0, dst_y + 1, step - 1, 0);
	ld	d, #0x00
	dec	de
	ld	-9 (ix), e
	ld	-8 (ix), d
	pop	de
	push	de
	inc	de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -13 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -12 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
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
;./soccerlg.c:222: VDP_CommandYMMM(dst_y, 0, dst_y + 1, step - 1, 0);
00113$:
;./soccerlg.c:224: pField += step;
	ld	a, -4 (ix)
	add	a, c
	ld	-4 (ix), a
	jr	NC, 00185$
	inc	-3 (ix)
00185$:
;./soccerlg.c:225: dst_y += step;
	ld	e, c
	ld	d, #0x00
	pop	hl
	push	hl
	add	hl, de
	ex	(sp), hl
;./soccerlg.c:226: remaining -= step;
	ld	a, -2 (ix)
	sub	a, c
	ld	-2 (ix), a
	jp	00114$
00116$:
;./soccerlg.c:228: g_R23[page]         = vtop;
	ld	bc, #_g_R23+0
	ld	l, -5 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, -11 (ix)
	ld	(hl), a
;./soccerlg.c:229: g_PageScrollY[page] = scroll_y;
	ld	l, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_g_PageScrollY
	add	hl, de
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;./soccerlg.c:230: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:236: void ScrollInsertRowDown(u8 write_page)
;	---------------------------------
; Function ScrollInsertRowDown
; ---------------------------------
_ScrollInsertRowDown::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;./soccerlg.c:241: if (g_PageScrollY[write_page] + (SCREEN_LINES - HUD_LINES) >= FIELD_ROWS) return;
	ld	bc, #_g_PageScrollY+0
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x00b8
	add	hl, bc
	ex	(sp), hl
	ld	a, -6 (ix)
	sub	a, #0xf8
	ld	a, -5 (ix)
	sbc	a, #0x01
	jp	NC,00106$
;./soccerlg.c:243: if (g_R23[write_page] >= VTOP_MAX)
	ld	a, #<(_g_R23)
	add	a, -1 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_R23)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	sub	a, #0x31
	jr	C, 00104$
;./soccerlg.c:246: RebuildPage(write_page, g_PageScrollY[write_page] + 1);
	inc	bc
	ld	e, c
	ld	d, b
	ld	a, -1 (ix)
	call	_RebuildPage
;./soccerlg.c:247: return;
	jp	00106$
00104$:
;./soccerlg.c:251: logical_row = g_PageScrollY[write_page] + (SCREEN_LINES - HUD_LINES);
	pop	bc
	push	bc
;./soccerlg.c:252: src   = FieldMap[logical_row];
	ld	hl, #_FieldMap
	add	hl, bc
	ld	l, (hl)
;	spillPairReg hl
;./soccerlg.c:253: dst_y = g_R23[write_page] + (u8)SCREEN_LINES;
	ld	a, -2 (ix)
	add	a, #0xc0
;./soccerlg.c:255: VDP_CommandYMMM(768u + src, 0, (u16)write_page * 256u + dst_y, 1, 0);
	ld	b, -1 (ix)
	ld	c, #0x00
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	add	a, c
	ld	c, a
	ld	a, h
	adc	a, b
	ld	b, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x03
	ld	-6 (ix), l
	ld	-5 (ix), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	l, #0x01
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	push	de
	call	_VPD_CommandSetupR32
	pop	de
;./soccerlg.c:257: g_R23[write_page]++;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	inc	a
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), a
;./soccerlg.c:258: g_PageScrollY[write_page]++;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
00106$:
;./soccerlg.c:259: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:264: void ScrollInsertRowUp(u8 write_page)
;	---------------------------------
; Function ScrollInsertRowUp
; ---------------------------------
_ScrollInsertRowUp::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
;./soccerlg.c:267: if (g_PageScrollY[write_page] == 0) return;
	ld	bc, #_g_PageScrollY+0
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, b
	or	a, c
	jr	Z, 00106$
;./soccerlg.c:269: if (g_R23[write_page] == 0)
	ld	a, #<(_g_R23)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_R23)
	adc	a, #0x00
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl)
	or	a, a
	jr	NZ, 00104$
;./soccerlg.c:271: RebuildPageUp(write_page, g_PageScrollY[write_page] - 1);
	dec	bc
	ld	e, c
	ld	d, b
	ld	a, -1 (ix)
	call	_RebuildPageUp
;./soccerlg.c:272: return;
	jp	00106$
00104$:
;./soccerlg.c:275: g_R23[write_page]--;
	dec	a
	ld	-2 (ix), a
	ld	(hl), a
;./soccerlg.c:276: g_PageScrollY[write_page]--;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	bc
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
;./soccerlg.c:278: src   = FieldMap[g_PageScrollY[write_page]];
	ld	hl, #_FieldMap
	add	hl, bc
	ld	c, (hl)
;./soccerlg.c:279: dst_y = g_R23[write_page] + HUD_LINES;
	ld	a, -2 (ix)
	add	a, #0x08
;./soccerlg.c:280: VDP_CommandYMMM(768u + src, 0, (u16)write_page * 256u + dst_y, 1, 0);
	ld	d, -1 (ix)
	ld	e, #0x00
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	xor	a, a
	add	a, #0x03
	ld	b, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	l, #0x01
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;./soccerlg.c:280: VDP_CommandYMMM(768u + src, 0, (u16)write_page * 256u + dst_y, 1, 0);
00106$:
;./soccerlg.c:281: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:284: static void EraseSprite16(u8 x, u16 dst_y, u16 absolute_logical_y)
;	---------------------------------
; Function EraseSprite16
; ---------------------------------
_EraseSprite16:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	c, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;./soccerlg.c:287: if (absolute_logical_y > max_y) absolute_logical_y = max_y;
	ld	a, #0xe8
	cp	a, 4 (ix)
	ld	a, #0x01
	sbc	a, 5 (ix)
	jr	NC, 00102$
	ld	4 (ix), #0xe8
	ld	5 (ix), #0x01
00102$:
;./soccerlg.c:289: u8 src = FieldMap[absolute_logical_y];
	ld	de, #_FieldMap+0
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	add	hl, de
	ld	e, (hl)
;./soccerlg.c:291: VDP_CommandHMMM(x, 768u + src, x, dst_y, 16, 16);
	ld	b, #0x00
	inc	sp
	inc	sp
	push	bc
	ld	d, #0x00
	ld	hl, #0x0300
	add	hl, de
	ex	de, hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	(_g_VDP_Command), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
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
;./soccerlg.c:291: VDP_CommandHMMM(x, 768u + src, x, dst_y, 16, 16);
;./soccerlg.c:292: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:335: void UpdatePhase1(u8 r23_w, u8 r23_e, u16 scroll_e)
;	---------------------------------
; Function UpdatePhase1
; ---------------------------------
_UpdatePhase1::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	-2 (ix), l
;./soccerlg.c:337: UNROLL_PHASE(1, 2, 256u, 512u, r23_w, r23_e, scroll_e);
	ld	bc, #_g_x1+14
	ld	a, (#(_g_lx + 14) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 14) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 28)), bc
	ld	a, (#(_g_y2 + 28) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00102$
	ld	bc, #0x0000
00102$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+14
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 28) + 0)
	ld	de, (#(_g_y1 + 28) + 0)
	ld	hl, #_g_x1+14
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+14
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 14) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00103$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00104$
00103$:
	ld	bc, #_g_dx+14
	ld	a, (bc)
	neg
	ld	(bc), a
00104$:
	ld	bc, #_g_x1+13
	ld	a, (#(_g_lx + 13) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 13) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 26)), bc
	ld	a, (#(_g_y2 + 26) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00107$
	ld	bc, #0x0000
00107$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+13
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 26) + 0)
	ld	de, (#(_g_y1 + 26) + 0)
	ld	hl, #_g_x1+13
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+13
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 13) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00108$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00109$
00108$:
	ld	bc, #_g_dx+13
	ld	a, (bc)
	neg
	ld	(bc), a
00109$:
	ld	bc, #_g_x1+12
	ld	a, (#(_g_lx + 12) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 12) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 24)), bc
	ld	a, (#(_g_y2 + 24) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00112$
	ld	bc, #0x0000
00112$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+12
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 24) + 0)
	ld	de, (#(_g_y1 + 24) + 0)
	ld	hl, #_g_x1+12
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+12
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 12) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00113$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00114$
00113$:
	ld	bc, #_g_dx+12
	ld	a, (bc)
	neg
	ld	(bc), a
00114$:
	ld	bc, #_g_x1+11
	ld	a, (#(_g_lx + 11) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 11) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 22)), bc
	ld	a, (#(_g_y2 + 22) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00117$
	ld	bc, #0x0000
00117$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+11
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 22) + 0)
	ld	de, (#(_g_y1 + 22) + 0)
	ld	hl, #_g_x1+11
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+11
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 11) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00118$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00119$
00118$:
	ld	bc, #_g_dx+11
	ld	a, (bc)
	neg
	ld	(bc), a
00119$:
	ld	bc, #_g_x1+10
	ld	a, (#(_g_lx + 10) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 10) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 20)), bc
	ld	a, (#(_g_y2 + 20) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00122$
	ld	bc, #0x0000
00122$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+10
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 20) + 0)
	ld	de, (#(_g_y1 + 20) + 0)
	ld	hl, #_g_x1+10
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+10
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 10) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00123$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00124$
00123$:
	ld	bc, #_g_dx+10
	ld	a, (bc)
	neg
	ld	(bc), a
00124$:
	ld	bc, #_g_x1+9
	ld	a, (#(_g_lx + 9) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 9) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 18)), bc
	ld	a, (#(_g_y2 + 18) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00127$
	ld	bc, #0x0000
00127$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+9
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 18) + 0)
	ld	de, (#(_g_y1 + 18) + 0)
	ld	hl, #_g_x1+9
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+9
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 9) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00128$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00129$
00128$:
	ld	bc, #_g_dx+9
	ld	a, (bc)
	neg
	ld	(bc), a
00129$:
	ld	bc, #_g_x1+8
	ld	a, (#(_g_lx + 8) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 8) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 16)), bc
	ld	a, (#(_g_y2 + 16) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00132$
	ld	bc, #0x0000
00132$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+8
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 16) + 0)
	ld	de, (#(_g_y1 + 16) + 0)
	ld	hl, #_g_x1+8
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+8
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 8) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00133$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00134$
00133$:
	ld	bc, #_g_dx+8
	ld	a, (bc)
	neg
	ld	(bc), a
00134$:
	ld	bc, #_g_x1+7
	ld	a, (#(_g_lx + 7) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 7) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 14)), bc
	ld	a, (#(_g_y2 + 14) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00137$
	ld	bc, #0x0000
00137$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+7
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 14) + 0)
	ld	de, (#(_g_y1 + 14) + 0)
	ld	hl, #_g_x1+7
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+7
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 7) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00138$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00139$
00138$:
	ld	bc, #_g_dx+7
	ld	a, (bc)
	neg
	ld	(bc), a
00139$:
	ld	bc, #_g_x1+6
	ld	a, (#(_g_lx + 6) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 6) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 12)), bc
	ld	a, (#(_g_y2 + 12) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00142$
	ld	bc, #0x0000
00142$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+6
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 12) + 0)
	ld	de, (#(_g_y1 + 12) + 0)
	ld	hl, #_g_x1+6
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+6
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 6) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00143$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00144$
00143$:
	ld	bc, #_g_dx+6
	ld	a, (bc)
	neg
	ld	(bc), a
00144$:
	ld	bc, #_g_x1+5
	ld	a, (#(_g_lx + 5) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 5) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 10)), bc
	ld	a, (#(_g_y2 + 10) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00147$
	ld	bc, #0x0000
00147$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+5
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 10) + 0)
	ld	de, (#(_g_y1 + 10) + 0)
	ld	hl, #_g_x1+5
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+5
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 5) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00148$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00149$
00148$:
	ld	bc, #_g_dx+5
	ld	a, (bc)
	neg
	ld	(bc), a
00149$:
	ld	bc, #_g_x1+4
	ld	a, (#(_g_lx + 4) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 4) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 8)), bc
	ld	a, (#(_g_y2 + 8) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00152$
	ld	bc, #0x0000
00152$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+4
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 8) + 0)
	ld	de, (#(_g_y1 + 8) + 0)
	ld	hl, #_g_x1+4
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+4
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 4) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00153$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00154$
00153$:
	ld	bc, #_g_dx+4
	ld	a, (bc)
	neg
	ld	(bc), a
00154$:
	ld	bc, #_g_x1+3
	ld	a, (#(_g_lx + 3) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 3) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 6)), bc
	ld	a, (#(_g_y2 + 6) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00157$
	ld	bc, #0x0000
00157$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+3
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 6) + 0)
	ld	de, (#(_g_y1 + 6) + 0)
	ld	hl, #_g_x1+3
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+3
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 3) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00158$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00159$
00158$:
	ld	bc, #_g_dx+3
	ld	a, (bc)
	neg
	ld	(bc), a
00159$:
	ld	bc, #_g_x1+2
	ld	a, (#(_g_lx + 2) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 2) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 4)), bc
	ld	a, (#(_g_y2 + 4) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00162$
	ld	bc, #0x0000
00162$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+2
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 4) + 0)
	ld	de, (#(_g_y1 + 4) + 0)
	ld	hl, #_g_x1+2
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+2
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 2) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00163$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00164$
00163$:
	ld	bc, #_g_dx+2
	ld	a, (bc)
	neg
	ld	(bc), a
00164$:
	ld	bc, #_g_x1+1
	ld	a, (#(_g_lx + 1) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 1) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	((_g_y1 + 2)), bc
	ld	a, (#(_g_y2 + 2) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00167$
	ld	bc, #0x0000
00167$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+1
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 2) + 0)
	ld	de, (#(_g_y1 + 2) + 0)
	ld	hl, #_g_x1+1
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+1
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 1) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00168$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00169$
00168$:
	ld	bc, #_g_dx+1
	ld	a, (bc)
	neg
	ld	(bc), a
00169$:
	ld	bc, #_g_x1+0
	ld	a, (#_g_lx + 0)
	ld	(bc), a
	ld	a, (#_g_ly + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	0, b
	ld	(_g_y1), bc
	ld	a, (#_g_y2 + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00172$
	ld	bc, #0x0000
00172$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	1, d
	ld	hl, #_g_x2+0
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#_g_frame + 0)
	ld	de, (#_g_y1 + 0)
	ld	hl, #_g_x1+0
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+0
	ld	a, (de)
	ld	c, a
	ld	a, (#_g_dx + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00173$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00176$
00173$:
	ld	bc, #_g_dx+0
	ld	a, (bc)
	neg
	ld	(bc), a
00176$:
;./soccerlg.c:338: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:340: void UpdatePhase2(u8 r23_w, u8 r23_e, u16 scroll_e)
;	---------------------------------
; Function UpdatePhase2
; ---------------------------------
_UpdatePhase2::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	-2 (ix), l
;./soccerlg.c:342: UNROLL_PHASE(2, 0, 512u, 0u, r23_w, r23_e, scroll_e);
	ld	bc, #_g_x2+14
	ld	a, (#(_g_lx + 14) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 14) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 28)), bc
	ld	a, (#(_g_y0 + 28) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00102$
	ld	bc, #0x0000
00102$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+14
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 28) + 0)
	ld	de, (#(_g_y2 + 28) + 0)
	ld	hl, #_g_x2+14
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+14
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 14) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00103$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00104$
00103$:
	ld	bc, #_g_dx+14
	ld	a, (bc)
	neg
	ld	(bc), a
00104$:
	ld	bc, #_g_x2+13
	ld	a, (#(_g_lx + 13) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 13) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 26)), bc
	ld	a, (#(_g_y0 + 26) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00107$
	ld	bc, #0x0000
00107$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+13
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 26) + 0)
	ld	de, (#(_g_y2 + 26) + 0)
	ld	hl, #_g_x2+13
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+13
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 13) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00108$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00109$
00108$:
	ld	bc, #_g_dx+13
	ld	a, (bc)
	neg
	ld	(bc), a
00109$:
	ld	bc, #_g_x2+12
	ld	a, (#(_g_lx + 12) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 12) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 24)), bc
	ld	a, (#(_g_y0 + 24) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00112$
	ld	bc, #0x0000
00112$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+12
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 24) + 0)
	ld	de, (#(_g_y2 + 24) + 0)
	ld	hl, #_g_x2+12
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+12
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 12) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00113$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00114$
00113$:
	ld	bc, #_g_dx+12
	ld	a, (bc)
	neg
	ld	(bc), a
00114$:
	ld	bc, #_g_x2+11
	ld	a, (#(_g_lx + 11) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 11) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 22)), bc
	ld	a, (#(_g_y0 + 22) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00117$
	ld	bc, #0x0000
00117$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+11
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 22) + 0)
	ld	de, (#(_g_y2 + 22) + 0)
	ld	hl, #_g_x2+11
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+11
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 11) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00118$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00119$
00118$:
	ld	bc, #_g_dx+11
	ld	a, (bc)
	neg
	ld	(bc), a
00119$:
	ld	bc, #_g_x2+10
	ld	a, (#(_g_lx + 10) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 10) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 20)), bc
	ld	a, (#(_g_y0 + 20) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00122$
	ld	bc, #0x0000
00122$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+10
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 20) + 0)
	ld	de, (#(_g_y2 + 20) + 0)
	ld	hl, #_g_x2+10
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+10
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 10) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00123$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00124$
00123$:
	ld	bc, #_g_dx+10
	ld	a, (bc)
	neg
	ld	(bc), a
00124$:
	ld	bc, #_g_x2+9
	ld	a, (#(_g_lx + 9) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 9) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 18)), bc
	ld	a, (#(_g_y0 + 18) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00127$
	ld	bc, #0x0000
00127$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+9
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 18) + 0)
	ld	de, (#(_g_y2 + 18) + 0)
	ld	hl, #_g_x2+9
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+9
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 9) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00128$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00129$
00128$:
	ld	bc, #_g_dx+9
	ld	a, (bc)
	neg
	ld	(bc), a
00129$:
	ld	bc, #_g_x2+8
	ld	a, (#(_g_lx + 8) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 8) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 16)), bc
	ld	a, (#(_g_y0 + 16) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00132$
	ld	bc, #0x0000
00132$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+8
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 16) + 0)
	ld	de, (#(_g_y2 + 16) + 0)
	ld	hl, #_g_x2+8
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+8
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 8) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00133$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00134$
00133$:
	ld	bc, #_g_dx+8
	ld	a, (bc)
	neg
	ld	(bc), a
00134$:
	ld	bc, #_g_x2+7
	ld	a, (#(_g_lx + 7) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 7) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 14)), bc
	ld	a, (#(_g_y0 + 14) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00137$
	ld	bc, #0x0000
00137$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+7
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 14) + 0)
	ld	de, (#(_g_y2 + 14) + 0)
	ld	hl, #_g_x2+7
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+7
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 7) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00138$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00139$
00138$:
	ld	bc, #_g_dx+7
	ld	a, (bc)
	neg
	ld	(bc), a
00139$:
	ld	bc, #_g_x2+6
	ld	a, (#(_g_lx + 6) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 6) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 12)), bc
	ld	a, (#(_g_y0 + 12) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00142$
	ld	bc, #0x0000
00142$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+6
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 12) + 0)
	ld	de, (#(_g_y2 + 12) + 0)
	ld	hl, #_g_x2+6
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+6
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 6) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00143$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00144$
00143$:
	ld	bc, #_g_dx+6
	ld	a, (bc)
	neg
	ld	(bc), a
00144$:
	ld	bc, #_g_x2+5
	ld	a, (#(_g_lx + 5) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 5) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 10)), bc
	ld	a, (#(_g_y0 + 10) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00147$
	ld	bc, #0x0000
00147$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+5
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 10) + 0)
	ld	de, (#(_g_y2 + 10) + 0)
	ld	hl, #_g_x2+5
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+5
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 5) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00148$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00149$
00148$:
	ld	bc, #_g_dx+5
	ld	a, (bc)
	neg
	ld	(bc), a
00149$:
	ld	bc, #_g_x2+4
	ld	a, (#(_g_lx + 4) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 4) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 8)), bc
	ld	a, (#(_g_y0 + 8) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00152$
	ld	bc, #0x0000
00152$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+4
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 8) + 0)
	ld	de, (#(_g_y2 + 8) + 0)
	ld	hl, #_g_x2+4
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+4
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 4) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00153$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00154$
00153$:
	ld	bc, #_g_dx+4
	ld	a, (bc)
	neg
	ld	(bc), a
00154$:
	ld	bc, #_g_x2+3
	ld	a, (#(_g_lx + 3) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 3) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 6)), bc
	ld	a, (#(_g_y0 + 6) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00157$
	ld	bc, #0x0000
00157$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+3
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 6) + 0)
	ld	de, (#(_g_y2 + 6) + 0)
	ld	hl, #_g_x2+3
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+3
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 3) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00158$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00159$
00158$:
	ld	bc, #_g_dx+3
	ld	a, (bc)
	neg
	ld	(bc), a
00159$:
	ld	bc, #_g_x2+2
	ld	a, (#(_g_lx + 2) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 2) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 4)), bc
	ld	a, (#(_g_y0 + 4) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00162$
	ld	bc, #0x0000
00162$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+2
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 4) + 0)
	ld	de, (#(_g_y2 + 4) + 0)
	ld	hl, #_g_x2+2
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+2
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 2) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00163$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00164$
00163$:
	ld	bc, #_g_dx+2
	ld	a, (bc)
	neg
	ld	(bc), a
00164$:
	ld	bc, #_g_x2+1
	ld	a, (#(_g_lx + 1) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 1) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	((_g_y2 + 2)), bc
	ld	a, (#(_g_y0 + 2) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00167$
	ld	bc, #0x0000
00167$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+1
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 2) + 0)
	ld	de, (#(_g_y2 + 2) + 0)
	ld	hl, #_g_x2+1
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+1
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 1) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00168$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00169$
00168$:
	ld	bc, #_g_dx+1
	ld	a, (bc)
	neg
	ld	(bc), a
00169$:
	ld	bc, #_g_x2+0
	ld	a, (#_g_lx + 0)
	ld	(bc), a
	ld	a, (#_g_ly + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	set	1, b
	ld	(_g_y2), bc
	ld	a, (#_g_y0 + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00172$
	ld	bc, #0x0000
00172$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	ld	hl, #_g_x0+0
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#_g_frame + 0)
	ld	de, (#_g_y2 + 0)
	ld	hl, #_g_x2+0
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+0
	ld	a, (de)
	ld	c, a
	ld	a, (#_g_dx + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00173$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00176$
00173$:
	ld	bc, #_g_dx+0
	ld	a, (bc)
	neg
	ld	(bc), a
00176$:
;./soccerlg.c:343: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:345: void UpdatePhase3(u8 r23_w, u8 r23_e, u16 scroll_e)
;	---------------------------------
; Function UpdatePhase3
; ---------------------------------
_UpdatePhase3::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	-2 (ix), l
;./soccerlg.c:347: UNROLL_PHASE(0, 1, 0u, 256u, r23_w, r23_e, scroll_e);
	ld	bc, #_g_x0+14
	ld	a, (#(_g_lx + 14) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 14) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 28)), bc
	ld	a, (#(_g_y1 + 28) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00102$
	ld	bc, #0x0000
00102$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+14
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 28) + 0)
	ld	de, (#(_g_y0 + 28) + 0)
	ld	hl, #_g_x0+14
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+14
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 14) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00103$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00104$
00103$:
	ld	bc, #_g_dx+14
	ld	a, (bc)
	neg
	ld	(bc), a
00104$:
	ld	bc, #_g_x0+13
	ld	a, (#(_g_lx + 13) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 13) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 26)), bc
	ld	a, (#(_g_y1 + 26) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00107$
	ld	bc, #0x0000
00107$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+13
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 26) + 0)
	ld	de, (#(_g_y0 + 26) + 0)
	ld	hl, #_g_x0+13
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+13
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 13) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00108$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00109$
00108$:
	ld	bc, #_g_dx+13
	ld	a, (bc)
	neg
	ld	(bc), a
00109$:
	ld	bc, #_g_x0+12
	ld	a, (#(_g_lx + 12) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 12) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 24)), bc
	ld	a, (#(_g_y1 + 24) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00112$
	ld	bc, #0x0000
00112$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+12
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 24) + 0)
	ld	de, (#(_g_y0 + 24) + 0)
	ld	hl, #_g_x0+12
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+12
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 12) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00113$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00114$
00113$:
	ld	bc, #_g_dx+12
	ld	a, (bc)
	neg
	ld	(bc), a
00114$:
	ld	bc, #_g_x0+11
	ld	a, (#(_g_lx + 11) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 11) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 22)), bc
	ld	a, (#(_g_y1 + 22) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00117$
	ld	bc, #0x0000
00117$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+11
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 22) + 0)
	ld	de, (#(_g_y0 + 22) + 0)
	ld	hl, #_g_x0+11
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+11
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 11) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00118$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00119$
00118$:
	ld	bc, #_g_dx+11
	ld	a, (bc)
	neg
	ld	(bc), a
00119$:
	ld	bc, #_g_x0+10
	ld	a, (#(_g_lx + 10) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 10) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 20)), bc
	ld	a, (#(_g_y1 + 20) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00122$
	ld	bc, #0x0000
00122$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+10
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 20) + 0)
	ld	de, (#(_g_y0 + 20) + 0)
	ld	hl, #_g_x0+10
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+10
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 10) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00123$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00124$
00123$:
	ld	bc, #_g_dx+10
	ld	a, (bc)
	neg
	ld	(bc), a
00124$:
	ld	bc, #_g_x0+9
	ld	a, (#(_g_lx + 9) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 9) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 18)), bc
	ld	a, (#(_g_y1 + 18) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00127$
	ld	bc, #0x0000
00127$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+9
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 18) + 0)
	ld	de, (#(_g_y0 + 18) + 0)
	ld	hl, #_g_x0+9
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+9
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 9) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00128$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00129$
00128$:
	ld	bc, #_g_dx+9
	ld	a, (bc)
	neg
	ld	(bc), a
00129$:
	ld	bc, #_g_x0+8
	ld	a, (#(_g_lx + 8) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 8) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 16)), bc
	ld	a, (#(_g_y1 + 16) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00132$
	ld	bc, #0x0000
00132$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+8
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 16) + 0)
	ld	de, (#(_g_y0 + 16) + 0)
	ld	hl, #_g_x0+8
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+8
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 8) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00133$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00134$
00133$:
	ld	bc, #_g_dx+8
	ld	a, (bc)
	neg
	ld	(bc), a
00134$:
	ld	bc, #_g_x0+7
	ld	a, (#(_g_lx + 7) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 7) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 14)), bc
	ld	a, (#(_g_y1 + 14) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00137$
	ld	bc, #0x0000
00137$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+7
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 14) + 0)
	ld	de, (#(_g_y0 + 14) + 0)
	ld	hl, #_g_x0+7
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+7
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 7) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00138$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00139$
00138$:
	ld	bc, #_g_dx+7
	ld	a, (bc)
	neg
	ld	(bc), a
00139$:
	ld	bc, #_g_x0+6
	ld	a, (#(_g_lx + 6) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 6) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 12)), bc
	ld	a, (#(_g_y1 + 12) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00142$
	ld	bc, #0x0000
00142$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+6
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 12) + 0)
	ld	de, (#(_g_y0 + 12) + 0)
	ld	hl, #_g_x0+6
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+6
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 6) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00143$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00144$
00143$:
	ld	bc, #_g_dx+6
	ld	a, (bc)
	neg
	ld	(bc), a
00144$:
	ld	bc, #_g_x0+5
	ld	a, (#(_g_lx + 5) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 5) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 10)), bc
	ld	a, (#(_g_y1 + 10) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00147$
	ld	bc, #0x0000
00147$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+5
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 10) + 0)
	ld	de, (#(_g_y0 + 10) + 0)
	ld	hl, #_g_x0+5
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+5
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 5) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00148$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00149$
00148$:
	ld	bc, #_g_dx+5
	ld	a, (bc)
	neg
	ld	(bc), a
00149$:
	ld	bc, #_g_x0+4
	ld	a, (#(_g_lx + 4) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 4) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 8)), bc
	ld	a, (#(_g_y1 + 8) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00152$
	ld	bc, #0x0000
00152$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+4
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 8) + 0)
	ld	de, (#(_g_y0 + 8) + 0)
	ld	hl, #_g_x0+4
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+4
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 4) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00153$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00154$
00153$:
	ld	bc, #_g_dx+4
	ld	a, (bc)
	neg
	ld	(bc), a
00154$:
	ld	bc, #_g_x0+3
	ld	a, (#(_g_lx + 3) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 3) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 6)), bc
	ld	a, (#(_g_y1 + 6) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00157$
	ld	bc, #0x0000
00157$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+3
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 6) + 0)
	ld	de, (#(_g_y0 + 6) + 0)
	ld	hl, #_g_x0+3
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+3
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 3) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00158$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00159$
00158$:
	ld	bc, #_g_dx+3
	ld	a, (bc)
	neg
	ld	(bc), a
00159$:
	ld	bc, #_g_x0+2
	ld	a, (#(_g_lx + 2) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 2) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 4)), bc
	ld	a, (#(_g_y1 + 4) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00162$
	ld	bc, #0x0000
00162$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+2
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 4) + 0)
	ld	de, (#(_g_y0 + 4) + 0)
	ld	hl, #_g_x0+2
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+2
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 2) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00163$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00164$
00163$:
	ld	bc, #_g_dx+2
	ld	a, (bc)
	neg
	ld	(bc), a
00164$:
	ld	bc, #_g_x0+1
	ld	a, (#(_g_lx + 1) + 0)
	ld	(bc), a
	ld	a, (#(_g_ly + 1) + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	((_g_y0 + 2)), bc
	ld	a, (#(_g_y1 + 2) + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00167$
	ld	bc, #0x0000
00167$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+1
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#(_g_frame + 2) + 0)
	ld	de, (#(_g_y0 + 2) + 0)
	ld	hl, #_g_x0+1
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+1
	ld	a, (de)
	ld	c, a
	ld	a, (#(_g_dx + 1) + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00168$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00169$
00168$:
	ld	bc, #_g_dx+1
	ld	a, (bc)
	neg
	ld	(bc), a
00169$:
	ld	bc, #_g_x0+0
	ld	a, (#_g_lx + 0)
	ld	(bc), a
	ld	a, (#_g_ly + 0)
	add	a, -1 (ix)
	add	a, #0x08
	ld	c, a
	ld	b, #0x00
	ld	(_g_y0), bc
	ld	a, (#_g_y1 + 0)
	ld	e, a
	res	0, e
	ld	a, e
	sub	a, -2 (ix)
	add	a, #0xf8
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00172$
	ld	bc, #0x0000
00172$:
	ld	a, 4 (ix)
	add	a, c
	ld	c, a
	ld	a, 5 (ix)
	adc	a, b
	ld	b, a
	ld	d, #0x00
	set	0, d
	ld	hl, #_g_x1+0
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_EraseSprite16
	ld	bc, (#_g_frame + 0)
	ld	de, (#_g_y0 + 0)
	ld	hl, #_g_x0+0
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	ld	a, l
	call	_CallSpriteFrame
	ld	de, #_g_lx+0
	ld	a, (de)
	ld	c, a
	ld	a, (#_g_dx + 0)
	add	a, c
	ld	c, a
	ld	(de), a
	ld	a, #0xee
	sub	a, c
	jr	C, 00173$
	ld	a, c
	sub	a, #0x04
	jr	NC, 00176$
00173$:
	ld	bc, #_g_dx+0
	ld	a, (bc)
	neg
	ld	(bc), a
00176$:
;./soccerlg.c:348: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:354: static void UpdateHUDMaster(void)
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
;./soccerlg.c:356: u8 s  = g_hudSec % 60;
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
;./soccerlg.c:357: u8 m  = g_hudSec / 60;
	ld	de, #0x003c
	call	__divsint
	ld	c, e
;./soccerlg.c:359: buf[0] = '0' + m / 10;
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
;./soccerlg.c:360: buf[1] = '0' + m % 10;
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
;./soccerlg.c:361: buf[2] = ':';
	ld	-5 (ix), #0x3a
;./soccerlg.c:362: buf[3] = '0' + s / 10;
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
;./soccerlg.c:363: buf[4] = '0' + s % 10;
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
;./soccerlg.c:364: buf[5] = '\0';
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
;./soccerlg.c:368: Print_DrawText(buf);
	ld	hl, #0
	add	hl, sp
	call	_Print_DrawText
;./soccerlg.c:369: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:374: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:193: inline u8 Sys_GetMSXVersion() { return g_MSXVER; } 
	ld	a, (_g_MSXVER+0)
;./soccerlg.c:377: if (Sys_GetMSXVersion() == MSXVER_1)
	ld	-1 (ix), a
	or	a, a
	jr	NZ, 00102$
;./soccerlg.c:379: Bios_ClearScreen();
	call	_Bios_ClearScreen
;./soccerlg.c:380: Bios_TextPrintSting("This game need MSX2 or above");
	ld	bc, #___str_0+0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:343: inline void Bios_TextPrintString(const c8* str) { while (*str) Bios_TextPrintChar(*str++); }
00125$:
	ld	a, (bc)
	or	a, a
	jr	Z, 00129$
	inc	bc
	ld	e, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:339: inline void Bios_TextPrintChar(c8 chr) { ((void(*)(u8))R_CHPUT)(chr); }
	push	bc
	ld	a, e
	call	0x00a2
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:343: inline void Bios_TextPrintString(const c8* str) { while (*str) Bios_TextPrintChar(*str++); }
	jp	00125$
;./soccerlg.c:380: Bios_TextPrintSting("This game need MSX2 or above");
00129$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:331: inline c8 Bios_GetCharacter() { return ((u8(*)(void))R_CHGET)(); }
	call	0x009f
;./soccerlg.c:382: return;
	jp	00177$
00102$:
;./soccerlg.c:385: DEBUG_INIT();
	call	_DEBUG_INIT
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:64: inline void Bios_SetKeyClick(bool enable) { g_CLIKSW = enable; }
	ld	hl, #_g_CLIKSW
	ld	(hl), #0x00
;./soccerlg.c:388: VDP_SetMode(VDP_MODE_SCREEN5);
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
;./soccerlg.c:390: VDP_SetLayoutTable(VDP_G4_ADDR_NT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;./soccerlg.c:393: VDP_SetPalette(g_Palette);
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
;./soccerlg.c:406: DrawField(3);           // carica il campo compresso in pagina 3 (sorgente per HMMM)
	ld	a, #0x03
	call	_DrawField
;./soccerlg.c:407: RebuildPage(0, 0);     // inizializza pag0 sfruttando l'ottimizzazione YMMM
	ld	de, #0x0000
	xor	a, a
	call	_RebuildPage
;./soccerlg.c:408: RebuildPage(1, 0);     // idem pag1
	ld	de, #0x0000
	ld	a, #0x01
	call	_RebuildPage
;./soccerlg.c:409: RebuildPage(2, 0);     // idem pag2
	ld	de, #0x0000
	ld	a, #0x02
	call	_RebuildPage
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
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:304: g_VDP_Command.CMD = VDP_CMD_LMMV + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x80
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:305: VPD_CommandSetupR36();
	call	_VPD_CommandSetupR36
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
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:304: g_VDP_Command.CMD = VDP_CMD_LMMV + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x80
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:305: VPD_CommandSetupR36();
	call	_VPD_CommandSetupR36
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
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:304: g_VDP_Command.CMD = VDP_CMD_LMMV + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x80
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:305: VPD_CommandSetupR36();
	call	_VPD_CommandSetupR36
;./soccerlg.c:419: for (i=0; i<NOBJ; i++) {
	ld	de, #_g_frame+0
	ld	c, #0x00
00171$:
;./soccerlg.c:420: g_lx[i]    = (u8)(i*16+4);
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
;./soccerlg.c:421: g_ly[i]    = (u8)(i*12);
	ld	a, #<(_g_ly)
	add	a, c
	ld	-2 (ix), a
	ld	a, #>(_g_ly)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, c
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), a
;./soccerlg.c:422: g_frame[i] = 38;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, de
	ld	(hl), #0x26
	inc	hl
	ld	(hl), #0x00
;./soccerlg.c:423: g_dx[i]    = 2;
	ld	hl, #_g_dx
	ld	b, #0x00
	add	hl, bc
	ld	(hl), #0x02
;./soccerlg.c:419: for (i=0; i<NOBJ; i++) {
	inc	c
	ld	a, c
	sub	a, #0x0f
	jr	C, 00171$
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
;./soccerlg.c:426: Print_SetMode(PRINT_MODE_BITMAP);
	xor	a, a
	call	_Print_SetMode
;./soccerlg.c:427: Print_Initialize();
	call	_Print_Initialize
;./soccerlg.c:428: Print_SetBitmapFont(g_Fonts);
	ld	hl, #_g_Fonts
	call	_Print_SetBitmapFont
;./soccerlg.c:429: Print_SetColor(4,1);
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	call	_Print_SetColor
;./soccerlg.c:432: UpdateHUDMaster();
	call	_UpdateHUDMaster
;./soccerlg.c:454: for (i=0; i<NOBJ; i++)
	ld	-1 (ix), #0x00
00173$:
;./soccerlg.c:456: g_x0[i] = g_lx[i];
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
;./soccerlg.c:457: g_y0[i] = g_ly[i] + HUD_LINES;                   // page 0: offset 0, r23=0
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, #<(_g_y0)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, #>(_g_y0)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, #<(_g_ly)
	add	a, -1 (ix)
	ld	c, a
	ld	a, #>(_g_ly)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	d, #0x00
	add	a, #0x08
	ld	e, a
	jr	NC, 00264$
	inc	d
00264$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;./soccerlg.c:458: g_x1[i] = g_lx[i];
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
;./soccerlg.c:459: g_y1[i] = (u16)256u | (u8)(g_ly[i] + HUD_LINES);       // page 1: offset 256
	ld	a, #<(_g_y1)
	add	a, -5 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_y1)
	adc	a, -4 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (bc)
	add	a, #0x08
	ld	d, #0x00
	ld	e, a
	set	0, d
	ld	(hl), e
	inc	hl
	ld	(hl), d
;./soccerlg.c:460: g_x2[i] = g_lx[i];
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
;./soccerlg.c:461: g_y2[i] = (u16)512u | (u8)(g_ly[i] + HUD_LINES);                        // page 2: inizializzato correttamente per primo erase
	ld	a, -5 (ix)
	add	a, #<(_g_y2)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -4 (ix)
	adc	a, #>(_g_y2)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (bc)
	add	a, #0x08
	ld	b, #0x00
	ld	c, a
	set	1, b
	ld	(hl), c
	inc	hl
	ld	(hl), b
;./soccerlg.c:454: for (i=0; i<NOBJ; i++)
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x0f
	jp	C, 00173$
00175$:
;./soccerlg.c:480: if (g_scrollDir > 0) { ScrollInsertRowDown(1); ScrollInsertRowDown(1); }
	xor	a, a
	ld	hl, #_g_scrollDir
	sub	a, (hl)
	jp	PO, 00265$
	xor	a, #0x80
00265$:
	jp	P, 00106$
	ld	a, #0x01
	call	_ScrollInsertRowDown
	ld	a, #0x01
	call	_ScrollInsertRowDown
	jp	00107$
00106$:
;./soccerlg.c:481: else                 { ScrollInsertRowUp(1);   ScrollInsertRowUp(1);   }
	ld	a, #0x01
	call	_ScrollInsertRowUp
	ld	a, #0x01
	call	_ScrollInsertRowUp
00107$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./soccerlg.c:483: VDP_SetPage(0);
	xor	a, a
	call	_VDP_SetPage
;./soccerlg.c:484: VDP_SetVerticalOffset(g_R23[0]);
	ld	hl, #_g_R23
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;./soccerlg.c:487: VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 256u + g_R23[1], 256, HUD_LINES);
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
;./soccerlg.c:489: UpdatePhase1(g_R23[1], g_R23[2], g_PageScrollY[2]);
	ld	de, (#_g_PageScrollY + 4)
	ld	hl, #(_g_R23 + 2)
	ld	b, (hl)
	ld	hl, #(_g_R23 + 1)
	ld	c, (hl)
	push	de
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	call	_UpdatePhase1
;./soccerlg.c:492: if (g_scrollDir > 0) { ScrollInsertRowDown(2); ScrollInsertRowDown(2); }
	xor	a, a
	ld	hl, #_g_scrollDir
	sub	a, (hl)
	jp	PO, 00266$
	xor	a, #0x80
00266$:
	jp	P, 00109$
	ld	a, #0x02
	call	_ScrollInsertRowDown
	ld	a, #0x02
	call	_ScrollInsertRowDown
	jp	00110$
00109$:
;./soccerlg.c:493: else                 { ScrollInsertRowUp(2);   ScrollInsertRowUp(2);   }
	ld	a, #0x02
	call	_ScrollInsertRowUp
	ld	a, #0x02
	call	_ScrollInsertRowUp
00110$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./soccerlg.c:495: VDP_SetPage(1);
	ld	a, #0x01
	call	_VDP_SetPage
;./soccerlg.c:496: VDP_SetVerticalOffset(g_R23[1]);
	ld	hl, #(_g_R23 + 1)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;./soccerlg.c:499: VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, 512u + g_R23[2], 256, HUD_LINES);
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
;./soccerlg.c:501: UpdatePhase2(g_R23[2], g_R23[0], g_PageScrollY[0]);
	ld	de, (#_g_PageScrollY + 0)
	ld	hl, #_g_R23
	ld	b, (hl)
	ld	hl, #(_g_R23 + 2)
	ld	c, (hl)
	push	de
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	call	_UpdatePhase2
;./soccerlg.c:504: if (g_scrollDir > 0) { ScrollInsertRowDown(0); ScrollInsertRowDown(0); }
	xor	a, a
	ld	hl, #_g_scrollDir
	sub	a, (hl)
	jp	PO, 00267$
	xor	a, #0x80
00267$:
	jp	P, 00112$
	xor	a, a
	call	_ScrollInsertRowDown
	xor	a, a
	call	_ScrollInsertRowDown
	jp	00113$
00112$:
;./soccerlg.c:505: else                 { ScrollInsertRowUp(0);   ScrollInsertRowUp(0);   }
	xor	a, a
	call	_ScrollInsertRowUp
	xor	a, a
	call	_ScrollInsertRowUp
00113$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./soccerlg.c:507: VDP_SetPage(2);
	ld	a, #0x02
	call	_VDP_SetPage
;./soccerlg.c:508: VDP_SetVerticalOffset(g_R23[2]);
	ld	hl, #(_g_R23 + 2)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;./soccerlg.c:511: VDP_CommandHMMM(0, HUD_SOURCE_Y, 0, g_R23[0], 256, HUD_LINES);
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
;./soccerlg.c:513: UpdatePhase3(g_R23[0], g_R23[1], g_PageScrollY[1]);
	ld	de, (#_g_PageScrollY + 2)
	ld	hl, #(_g_R23 + 1)
	ld	b, (hl)
	ld	hl, #_g_R23
	ld	c, (hl)
	push	de
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	call	_UpdatePhase3
;./soccerlg.c:516: if (++g_hudTimer >= HUD_ITERS_PER_SEC)
	ld	iy, #_g_hudTimer
	inc	0 (iy)
	ld	a, (_g_hudTimer+0)
	sub	a, #0x11
	jr	C, 00115$
;./soccerlg.c:518: g_hudTimer = 0;
	ld	0 (iy), #0x00
;./soccerlg.c:519: g_hudSec++;
	ld	hl, #_g_hudSec
	inc	(hl)
;./soccerlg.c:520: UpdateHUDMaster();
	call	_UpdateHUDMaster
00115$:
;./soccerlg.c:524: if (g_scrollDir > 0 && g_PageScrollY[0] + (SCREEN_LINES - HUD_LINES) >= FIELD_ROWS)
	xor	a, a
	ld	hl, #_g_scrollDir
	sub	a, (hl)
	jp	PO, 00268$
	xor	a, #0x80
00268$:
	jp	P, 00120$
	ld	hl, (#_g_PageScrollY + 0)
	ld	bc, #0x00b8
	add	hl, bc
	ld	de, #0x01f8
	cp	a, a
	sbc	hl, de
	jr	C, 00120$
;./soccerlg.c:525: g_scrollDir = -1;
	ld	hl, #_g_scrollDir
	ld	(hl), #0xff
	jp	00175$
00120$:
;./soccerlg.c:526: else if (g_scrollDir < 0 && g_PageScrollY[0] == 0)
	ld	a, (_g_scrollDir+0)
	bit	7, a
	jp	Z, 00175$
	ld	hl, (#_g_PageScrollY + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00175$
;./soccerlg.c:527: g_scrollDir = 1;
	ld	hl, #_g_scrollDir
	ld	(hl), #0x01
	jp	00175$
00177$:
;./soccerlg.c:531: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "This game need MSX2 or above"
	.db 0x00
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
