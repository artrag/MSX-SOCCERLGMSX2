;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module yscc_player
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_currentSCCPlayingSegment
	.globl _g_YSCC_CurrentOFFR
	.globl _g_YSCC_Period
	.globl _g_YSCC_NumBlocksToPlay
	.globl _g_YSCC_SamplePage
	.globl _g_YSCC_SamplePos
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
	.globl _YSCC_SetOFFRForAudio
	.globl _YSCC_RestoreOFFR
	.globl _YSCC_Init
	.globl _YSCC_GetFirstSegmentOfCurrentPlaying
	.globl _YSCC_Stop
	.globl _YSCC_Pause
	.globl _YSCC_Resume
	.globl _YSCC_IsPlaying
	.globl _YSCC_IsPaused
	.globl _YSCC_Play
	.globl _YSCC_PlayLoop
	.globl _YSCC_Decode
	.globl __YSCC_CopyPCMBlock
	.globl _YSCC_SaveState
	.globl _YSCC_LoadState
	.globl __YSCC_GetVdpFrequency
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
_g_YSCC_SamplePos::
	.ds 2
_g_YSCC_SamplePage::
	.ds 2
_g_YSCC_NumBlocksToPlay::
	.ds 2
_g_YSCC_Period::
	.ds 2
_s_YSCC_SavedSeg3:
	.ds 2
_s_YSCC_SavedOFFR:
	.ds 1
_s_YSCC_StartSeg:
	.ds 2
_s_YSCC_TotalBlocks:
	.ds 2
_s_YSCC_Loop:
	.ds 1
_s_YSCC_Paused:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_YSCC_CurrentOFFR::
	.ds 1
_s_YSCC_OFFRSet:
	.ds 1
_g_currentSCCPlayingSegment::
	.ds 2
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
;./libs/yscc/yscc_player.c:23: static void _YSCC_Silence() {
;	---------------------------------
; Function _YSCC_Silence
; ---------------------------------
__YSCC_Silence:
;./libs/yscc/yscc_player.c:33: __endasm;
	xor	a
	ld	(0x988F), a ; CH_ENABLE = 0 (tutti i canali off)
	ld	b, #0x80 ; 128 bytes (0x9800-0x987F)
	ld	hl, #0x9800
	    _YSCC_Silence_fill:
	ld	(hl), a ; write 0 from register A (no SCC read)
	inc	hl
	djnz	_YSCC_Silence_fill
;./libs/yscc/yscc_player.c:34: }
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
;./libs/yscc/yscc_player.c:40: void YSCC_SetOFFRForAudio() {
;	---------------------------------
; Function YSCC_SetOFFRForAudio
; ---------------------------------
_YSCC_SetOFFRForAudio::
;./libs/yscc/yscc_player.c:62: __endasm;
	ld	a, (_g_YSCC_SamplePage + 1) ; high byte of SamplePage
	or	a
	jr	z, _YSCC_SetOFFR_skip ; < 256: no write needed
	rrca
	rrca
	and	#0xC0 ; audio OFFR
	push	af ; save OFFR value
	ld	a, #1
	ld	(#0x7FFF), a ; ENAR: REGEN=1 (enable register writes)
	pop	af
	ld	(#0x7FFE), a ; set OFFR
	xor	a
	ld	(#0x7FFF), a ; ENAR: REGEN=0 (restore ROM reads at 7FFE)
	ld	a, #1
	ld	(_s_YSCC_OFFRSet), a ; mark changed
	jr	_YSCC_SetOFFR_done
	    _YSCC_SetOFFR_skip:
	xor	a
	ld	(_s_YSCC_OFFRSet), a ; mark not changed
	    _YSCC_SetOFFR_done:
;./libs/yscc/yscc_player.c:63: }
	ret
;./libs/yscc/yscc_player.c:68: void YSCC_RestoreOFFR() {
;	---------------------------------
; Function YSCC_RestoreOFFR
; ---------------------------------
_YSCC_RestoreOFFR::
;./libs/yscc/yscc_player.c:80: __endasm;
	ld	a, (_s_YSCC_OFFRSet)
	or	a
	jr	z, _YSCC_RestoreOFFR_skip ; was not changed, skip write-0
	ld	a, #1
	ld	(#0x7FFF), a ; ENAR: REGEN=1
	xor	a
	ld	(#0x7FFE), a ; restore OFFR = 0
	ld	(#0x7FFF), a ; ENAR: REGEN=0
	ld	(_s_YSCC_OFFRSet), a ; clear flag (A=0)
	    _YSCC_RestoreOFFR_skip:
;./libs/yscc/yscc_player.c:81: }
	ret
;./libs/yscc/yscc_player.c:84: void YSCC_Init() {
;	---------------------------------
; Function YSCC_Init
; ---------------------------------
_YSCC_Init::
;./libs/yscc/yscc_player.c:85: if (_YSCC_GetVdpFrequency() == 0) {
	call	__YSCC_GetVdpFrequency
	or	a, a
	jr	NZ, 00102$
;./libs/yscc/yscc_player.c:86: g_YSCC_Period = 0x0749;  // 60Hz (NTSC): 3,580,000 / (32 × 1866) ≈ 60 Hz
	ld	hl, #0x0749
	ld	(_g_YSCC_Period), hl
	jp	00103$
00102$:
;./libs/yscc/yscc_player.c:88: g_YSCC_Period = 0x08BD;  // 50Hz (PAL):  3,580,000 / (32 × 2238) ≈ 50 Hz
	ld	hl, #0x08bd
	ld	(_g_YSCC_Period), hl
00103$:
;./libs/yscc/yscc_player.c:90: s_YSCC_Loop    = FALSE;
	ld	hl, #_s_YSCC_Loop
	ld	(hl), #0x00
;./libs/yscc/yscc_player.c:91: s_YSCC_Paused  = FALSE;
	ld	iy, #_s_YSCC_Paused
	ld	0 (iy), #0x00
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:192: g_Bank0Segment[b] = s;
	ld	hl, #0x003f
	ld	((_g_Bank0Segment + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:193: YAMANOOTO_SET_OFFR((s >> 2) & 0xC0);
	ld	a, #0x0f
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:196: else if (b == 2)	Poke(ADDR_BANK_2, s & 0xFF);
	ld	a, #0x3f
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	hl, #0x9000
	ld	(hl), a
;./libs/yscc/yscc_player.c:120: __endasm;
	ld	hl, #0x9000
	ld	(hl), #0x3F ; attiva SCC
	push	af
	push	hl
	ld	a, #0x20
	ld	(0x98E0), a ; deformation register
	ld	(0x98C0), a ; SCC+ compat
	xor	a
	ld	(0x988E), a ; vol ch5 = 0
	ld	(0x988F), a ; CH_ENABLE = 0
	ld	a, #0x0F
	ld	(0x988A), a ; vol ch1 = max
	ld	(0x988B), a ; vol ch2 = max
	ld	(0x988C), a ; vol ch3 = max
	ld	(0x988D), a ; vol ch4 = max
	ld	hl, (_g_YSCC_Period)
	ld	(0x9880), hl ; periodo ch1
	ld	(0x9882), hl ; periodo ch2
	ld	(0x9884), hl ; periodo ch3
	ld	(0x9886), hl ; periodo ch4
	ld	hl, #0
	ld	(0x9888), hl ; periodo ch5 = 0
	pop	hl
	pop	af
;./libs/yscc/yscc_player.c:121: }
	ret
;./libs/yscc/yscc_player.c:124: u16 YSCC_GetFirstSegmentOfCurrentPlaying(){
;	---------------------------------
; Function YSCC_GetFirstSegmentOfCurrentPlaying
; ---------------------------------
_YSCC_GetFirstSegmentOfCurrentPlaying::
;./libs/yscc/yscc_player.c:125: return g_currentSCCPlayingSegment; 
	ld	de, (_g_currentSCCPlayingSegment)
;./libs/yscc/yscc_player.c:126: }
	ret
;./libs/yscc/yscc_player.c:127: void YSCC_Stop() {
;	---------------------------------
; Function YSCC_Stop
; ---------------------------------
_YSCC_Stop::
;./libs/yscc/yscc_player.c:128: g_currentSCCPlayingSegment=0xFFFF;
	ld	hl, #0xffff
	ld	(_g_currentSCCPlayingSegment), hl
;./libs/yscc/yscc_player.c:129: g_YSCC_NumBlocksToPlay = 0;
	ld	hl, #0x0000
	ld	(_g_YSCC_NumBlocksToPlay), hl
;./libs/yscc/yscc_player.c:130: s_YSCC_Paused = FALSE;
	ld	iy, #_s_YSCC_Paused
	ld	0 (iy), #0x00
;./libs/yscc/yscc_player.c:131: _YSCC_Silence();
;./libs/yscc/yscc_player.c:132: }
	jp	__YSCC_Silence
;./libs/yscc/yscc_player.c:135: void YSCC_Pause() {
;	---------------------------------
; Function YSCC_Pause
; ---------------------------------
_YSCC_Pause::
;./libs/yscc/yscc_player.c:136: if (!s_YSCC_Paused && g_YSCC_NumBlocksToPlay > 0) {
	ld	a, (_s_YSCC_Paused+0)
	or	a, a
	ret	NZ
	ld	a, (_g_YSCC_NumBlocksToPlay+1)
	ld	iy, #_g_YSCC_NumBlocksToPlay
	or	a, 0 (iy)
	ret	Z
;./libs/yscc/yscc_player.c:137: s_YSCC_Paused = TRUE;
	ld	iy, #_s_YSCC_Paused
	ld	0 (iy), #0x01
;./libs/yscc/yscc_player.c:141: __endasm;
	xor	a
	ld	(0x988F), a ; CH_ENABLE = 0
;./libs/yscc/yscc_player.c:143: }
	ret
;./libs/yscc/yscc_player.c:146: void YSCC_Resume() {
;	---------------------------------
; Function YSCC_Resume
; ---------------------------------
_YSCC_Resume::
;./libs/yscc/yscc_player.c:147: s_YSCC_Paused = FALSE;
	ld	hl, #_s_YSCC_Paused
	ld	(hl), #0x00
;./libs/yscc/yscc_player.c:148: }
	ret
;./libs/yscc/yscc_player.c:151: bool YSCC_IsPlaying() {
;	---------------------------------
; Function YSCC_IsPlaying
; ---------------------------------
_YSCC_IsPlaying::
;./libs/yscc/yscc_player.c:152: return (g_YSCC_NumBlocksToPlay > 0) && !s_YSCC_Paused;
	ld	a, (_g_YSCC_NumBlocksToPlay+1)
	ld	hl, #_g_YSCC_NumBlocksToPlay
	or	a, (hl)
	jr	Z, 00103$
	ld	a, (_s_YSCC_Paused+0)
	or	a, a
	jr	Z, 00104$
00103$:
	xor	a, a
	ret
00104$:
	ld	a, #0x01
;./libs/yscc/yscc_player.c:153: }
	ret
;./libs/yscc/yscc_player.c:156: bool YSCC_IsPaused() {
;	---------------------------------
; Function YSCC_IsPaused
; ---------------------------------
_YSCC_IsPaused::
;./libs/yscc/yscc_player.c:157: return s_YSCC_Paused;
	ld	a, (_s_YSCC_Paused+0)
;./libs/yscc/yscc_player.c:158: }
	ret
;./libs/yscc/yscc_player.c:161: void YSCC_Play(u16 start_seg, u32 byte_size) {
;	---------------------------------
; Function YSCC_Play
; ---------------------------------
_YSCC_Play::
	push	ix
	ld	ix,#0
	add	ix,sp
;./libs/yscc/yscc_player.c:162: YSCC_Stop();
	push	hl
	call	_YSCC_Stop
	pop	hl
;./libs/yscc/yscc_player.c:163: g_currentSCCPlayingSegment=start_seg;
	ld	(_g_currentSCCPlayingSegment), hl
;./libs/yscc/yscc_player.c:164: s_YSCC_StartSeg    = start_seg;
	ld	(_s_YSCC_StartSeg), hl
;./libs/yscc/yscc_player.c:165: s_YSCC_TotalBlocks = (u16)((byte_size + 127) / 128);
	ld	a, 4 (ix)
	add	a, #0x7f
	ld	c, a
	ld	a, 5 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, 6 (ix)
	adc	a, #0x00
	ld	e, a
	ld	a, 7 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, #0x07
00103$:
	srl	d
	rr	e
	rr	b
	rr	c
	dec	a
	jr	NZ, 00103$
	ld	(_s_YSCC_TotalBlocks), bc
;./libs/yscc/yscc_player.c:166: s_YSCC_Loop        = FALSE;
	ld	iy, #_s_YSCC_Loop
	ld	0 (iy), #0x00
;./libs/yscc/yscc_player.c:167: g_YSCC_SamplePage  = start_seg;
	ld	(_g_YSCC_SamplePage), hl
;./libs/yscc/yscc_player.c:168: g_YSCC_SamplePos   = 0;
	ld	hl, #0x0000
	ld	(_g_YSCC_SamplePos), hl
;./libs/yscc/yscc_player.c:169: g_YSCC_NumBlocksToPlay = s_YSCC_TotalBlocks;
	ld	hl, (_s_YSCC_TotalBlocks)
	ld	(_g_YSCC_NumBlocksToPlay), hl
;./libs/yscc/yscc_player.c:170: }
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;./libs/yscc/yscc_player.c:173: void YSCC_PlayLoop(u16 start_seg, u32 byte_size) {
;	---------------------------------
; Function YSCC_PlayLoop
; ---------------------------------
_YSCC_PlayLoop::
	ex	de, hl
;./libs/yscc/yscc_player.c:174: YSCC_Play(start_seg, byte_size);
	ld	iy, #2
	add	iy, sp
;	spillPairReg hl
;	spillPairReg hl
	ld	l, 2 (iy)
	ld	h, 3 (iy)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
;	spillPairReg hl
;	spillPairReg hl
	ld	l, 0 (iy)
	ld	h, 1 (iy)
;	spillPairReg hl
;	spillPairReg hl
	ex	de, hl
	push	de
	call	_YSCC_Play
;./libs/yscc/yscc_player.c:175: s_YSCC_Loop = TRUE;
	ld	iy, #_s_YSCC_Loop
	ld	0 (iy), #0x01
;./libs/yscc/yscc_player.c:176: }
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;./libs/yscc/yscc_player.c:180: bool YSCC_Decode() {
;	---------------------------------
; Function YSCC_Decode
; ---------------------------------
_YSCC_Decode::
;./libs/yscc/yscc_player.c:181: if (s_YSCC_Paused || g_YSCC_NumBlocksToPlay == 0)
	ld	a, (_s_YSCC_Paused+0)
	or	a, a
	jr	NZ, 00101$
	ld	a, (_g_YSCC_NumBlocksToPlay+1)
	ld	hl, #_g_YSCC_NumBlocksToPlay
	or	a, (hl)
	jr	NZ, 00102$
00101$:
;./libs/yscc/yscc_player.c:182: return FALSE;
	xor	a, a
	ret
00102$:
;./libs/yscc/yscc_player.c:184: _YSCC_CopyPCMBlock();
	call	__YSCC_CopyPCMBlock
;./libs/yscc/yscc_player.c:189: __endasm;
	ld	a, #0x0F
	ld	(0x988F), a ; abilita canali 1-4
;./libs/yscc/yscc_player.c:191: g_YSCC_NumBlocksToPlay--;
	ld	bc, (_g_YSCC_NumBlocksToPlay)
	ld	hl, #_g_YSCC_NumBlocksToPlay
	ld	a, c
	add	a, #0xff
	ld	(hl), a
	inc	hl
	ld	a, b
	adc	a, #0xff
	ld	(hl), a
;./libs/yscc/yscc_player.c:193: if (g_YSCC_NumBlocksToPlay == 0) {
	ld	a, (_g_YSCC_NumBlocksToPlay+1)
	ld	iy, #_g_YSCC_NumBlocksToPlay
	or	a, 0 (iy)
	jp	NZ, 00110$
;./libs/yscc/yscc_player.c:194: if (s_YSCC_Loop) {
	ld	a, (_s_YSCC_Loop+0)
	or	a, a
	jr	Z, 00107$
;./libs/yscc/yscc_player.c:196: g_YSCC_SamplePage      = s_YSCC_StartSeg;
	ld	hl, (_s_YSCC_StartSeg)
	ld	(_g_YSCC_SamplePage), hl
;./libs/yscc/yscc_player.c:197: g_YSCC_SamplePos       = 0;
	ld	hl, #0x0000
	ld	(_g_YSCC_SamplePos), hl
;./libs/yscc/yscc_player.c:198: g_YSCC_NumBlocksToPlay = s_YSCC_TotalBlocks;
	ld	hl, (_s_YSCC_TotalBlocks)
	ld	(_g_YSCC_NumBlocksToPlay), hl
	jp	00108$
00107$:
;./libs/yscc/yscc_player.c:200: if(!s_YSCC_Loop){
	ld	a, (_s_YSCC_Loop+0)
	or	a, a
	jr	NZ, 00105$
;./libs/yscc/yscc_player.c:201: g_currentSCCPlayingSegment=0xFFFF;
	ld	hl, #0xffff
	ld	(_g_currentSCCPlayingSegment), hl
00105$:
;./libs/yscc/yscc_player.c:210: __endasm;
	xor	a
	ld	(0x988F), a ; CH_ENABLE = 0 (tutti i canali off)
00108$:
;./libs/yscc/yscc_player.c:212: return TRUE;            // segnala fine ciclo al chiamante
	ld	a, #0x01
	ret
00110$:
;./libs/yscc/yscc_player.c:214: return FALSE;
	xor	a, a
;./libs/yscc/yscc_player.c:215: }
	ret
;./libs/yscc/yscc_player.c:218: void _YSCC_CopyPCMBlock() {
;	---------------------------------
; Function _YSCC_CopyPCMBlock
; ---------------------------------
__YSCC_CopyPCMBlock::
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:214: inline u16 GET_BANK_SEGMENT(u8 b) { return g_Bank0Segment[b]; }
	ld	hl, #(_g_Bank0Segment + 6)
	ld	a, (hl)
	inc	hl
	ld	(_s_YSCC_SavedSeg3+0), a
	ld	a, (hl)
	ld	(_s_YSCC_SavedSeg3+1), a
;./libs/yscc/yscc_player.c:262: __endasm;
;	Save current OFFR (set to 0xC0 by CallSpriteFrame when sprites draw)
	ld	a, (_g_YSCC_CurrentOFFR)
	ld	(_s_YSCC_SavedOFFR), a ; will be restored at end if changed
;	Compute audio OFFR from SamplePage (0 for segs < 256)
	ld	a, (_g_YSCC_SamplePage + 1) ; HIGH byte of SamplePage
	rrca
	rrca
	and	#0xC0 ; A = audio OFFR (0 for segs < 256)
	ld	b, a ; B = audio OFFR
;	Write OFFR hardware only if audio OFFR differs from saved OFFR
	ld	a, (_s_YSCC_SavedOFFR)
	cp	b ; saved OFFR == audio OFFR?
	jr	z, _CopyPCM_no_offr_write ; same — no write needed
	ld	a, #1
	ld	(#0x7FFF), a ; ENAR: REGEN=1
	ld	a, b
	ld	(#0x7FFE), a ; write audio OFFR
	xor	a
	ld	(#0x7FFF), a ; ENAR: REGEN=0
	ld	a, #1
	ld	(_s_YSCC_OFFRSet), a ; mark changed (restored at end)
	jr	_CopyPCM_setbank
	    _CopyPCM_no_offr_write:
	xor	a
	ld	(_s_YSCC_OFFRSet), a ; no change
	    _CopyPCM_setbank:
	ld	a, (_g_YSCC_SamplePage)
	ld	((_g_Bank0Segment + 6)), a ; cache LOW = audio seg
	xor	a
	ld	((_g_Bank0Segment + 7)), a ; cache HIGH = 0
	ld	a, (_g_YSCC_SamplePage)
	ld	(#0xB000), a ; hardware bank3
;./libs/yscc/yscc_player.c:334: __endasm;
;	HL = 0xA000 + g_YSCC_SamplePos (sorgente diretta in Bank3)
	ld	hl, (_g_YSCC_SamplePos)
	ld	bc, #0xA000
	add	hl, bc
;	--- CH1 PASS1: 21 byte HL → 0x9800 ---
	ld	de, #0x9800
	ld	bc, #0x0015
	ldir	; HL = base+21
	push	hl ; salva per CH1 PASS2
	ld	a, (_g_YSCC_Period + 1)
	ld	(0x9881), a ; phase reset CH1
;	salta 11 byte a CH2 (base+32)
	ld	bc, #0x000B
	add	hl, bc
;	--- CH2 PASS1: 21 byte HL → 0x9820 ---
	ld	de, #0x9820
	ld	bc, #0x0015
	ldir	; HL = base+53
	push	hl ; salva per CH2 PASS2
	ld	(0x9883), a ; phase reset CH2 (A ancora valido)
;	salta 11 byte a CH3 (base+64)
	ld	bc, #0x000B
	add	hl, bc
;	--- CH3 PASS1: 21 byte HL → 0x9840 ---
	ld	de, #0x9840
	ld	bc, #0x0015
	ldir	; HL = base+85
	push	hl ; salva per CH3 PASS2
	ld	(0x9885), a ; phase reset CH3
;	salta 11 byte a CH4 (base+96)
	ld	bc, #0x000B
	add	hl, bc
;	--- CH4 PASS1: 21 byte HL → 0x9860 ---
	ld	de, #0x9860
	ld	bc, #0x0015
	ldir	; HL = base+117
	ld	(0x9887), a ; phase reset CH4
;	--- PASS2: ultimi 11 byte per canale (stack in ordine inverso) ---
;	CH4 PASS2 (HL = base+117)
	ld	de, #0x9875
	ld	bc, #0x000B
	ldir
;	CH3 PASS2
	pop	hl ; HL = base+85
	ld	de, #0x9855
	ld	bc, #0x000B
	ldir
;	CH2 PASS2
	pop	hl ; HL = base+53
	ld	de, #0x9835
	ld	bc, #0x000B
	ldir
;	CH1 PASS2
	pop	hl ; HL = base+21
	ld	de, #0x9815
	ld	bc, #0x000B
	ldir
;./libs/yscc/yscc_player.c:355: __endasm;
	ld	de, (_s_YSCC_SavedSeg3)
	ld	((_g_Bank0Segment + 6)), de ; restore full u16 cache
;	Restore OFFR BEFORE bank3 hardware: bank3's effective segment depends on
;	the current OFFR value (e.g. 0xC0 → adds 768 to the segment LOW byte).
	ld	a, (_s_YSCC_OFFRSet)
	or	a
	jr	z, _CopyPCM_done ; no OFFR change was made, skip restore
	ld	a, #1
	ld	(#0x7FFF), a ; ENAR: REGEN=1
	ld	a, (_s_YSCC_SavedOFFR) ; original OFFR before this call (0 or 0xC0)
	ld	(#0x7FFE), a ; restore it
	xor	a
	ld	(#0x7FFF), a ; ENAR: REGEN=0
	ld	(_s_YSCC_OFFRSet), a ; clear flag (A=0)
	    _CopyPCM_done:
	ld	a, e ; low byte of saved segment
	ld	(#0xB000), a ; restore hardware bank3 (OFFR already correct)
;./libs/yscc/yscc_player.c:357: g_YSCC_SamplePos += 128;
	ld	hl, (_g_YSCC_SamplePos)
	ld	bc, #0x0080
	add	hl, bc
	ld	(_g_YSCC_SamplePos), hl
;./libs/yscc/yscc_player.c:358: if (g_YSCC_SamplePos >= (u16)0x2000) {
	ld	a, (_g_YSCC_SamplePos+1)
	sub	a, #0x20
	ret	C
;./libs/yscc/yscc_player.c:359: g_YSCC_SamplePage++;
	ld	hl, (_g_YSCC_SamplePage)
	inc	hl
	ld	(_g_YSCC_SamplePage), hl
;./libs/yscc/yscc_player.c:360: g_YSCC_SamplePos = 0;
	ld	hl, #0x0000
	ld	(_g_YSCC_SamplePos), hl
;./libs/yscc/yscc_player.c:362: }
	ret
;./libs/yscc/yscc_player.c:365: void YSCC_SaveState(YSCC_State* out) {
;	---------------------------------
; Function YSCC_SaveState
; ---------------------------------
_YSCC_SaveState::
;./libs/yscc/yscc_player.c:366: out->SamplePos       = g_YSCC_SamplePos;
	ld	e, l
	ld	d, h
	ld	a, (_g_YSCC_SamplePos+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_YSCC_SamplePos+1)
	ld	(hl), a
;./libs/yscc/yscc_player.c:367: out->SamplePage      = g_YSCC_SamplePage;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (_g_YSCC_SamplePage+0)
	ld	(bc), a
	inc	bc
	ld	a, (_g_YSCC_SamplePage+1)
	ld	(bc), a
;./libs/yscc/yscc_player.c:368: out->NumBlocksToPlay = g_YSCC_NumBlocksToPlay;
	ld	hl, #0x0004
	add	hl, de
	ld	a, (_g_YSCC_NumBlocksToPlay+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_YSCC_NumBlocksToPlay+1)
	ld	(hl), a
;./libs/yscc/yscc_player.c:369: out->CurrentSegment  = g_currentSCCPlayingSegment;
	ld	hl, #0x0006
	add	hl, de
	ld	a, (_g_currentSCCPlayingSegment+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_currentSCCPlayingSegment+1)
	ld	(hl), a
;./libs/yscc/yscc_player.c:370: out->StartSeg        = s_YSCC_StartSeg;
	ld	hl, #0x0008
	add	hl, de
	ld	a, (_s_YSCC_StartSeg+0)
	ld	(hl), a
	inc	hl
	ld	a, (_s_YSCC_StartSeg+1)
	ld	(hl), a
;./libs/yscc/yscc_player.c:371: out->TotalBlocks     = s_YSCC_TotalBlocks;
	ld	hl, #0x000a
	add	hl, de
	ld	a, (_s_YSCC_TotalBlocks+0)
	ld	(hl), a
	inc	hl
	ld	a, (_s_YSCC_TotalBlocks+1)
	ld	(hl), a
;./libs/yscc/yscc_player.c:372: out->Loop            = s_YSCC_Loop;
	ld	hl, #0x000c
	add	hl, de
	ld	a, (_s_YSCC_Loop+0)
	ld	(hl), a
;./libs/yscc/yscc_player.c:373: }
	ret
;./libs/yscc/yscc_player.c:378: void YSCC_LoadState(const YSCC_State* in) {
;	---------------------------------
; Function YSCC_LoadState
; ---------------------------------
_YSCC_LoadState::
	ex	de, hl
;./libs/yscc/yscc_player.c:382: __endasm;
	xor	a
	ld	(0x988F), a ; CH_ENABLE = 0 (silence during state switch)
;./libs/yscc/yscc_player.c:383: g_YSCC_SamplePos           = in->SamplePos;
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	(_g_YSCC_SamplePos+0), a
	ld	a, (hl)
	ld	(_g_YSCC_SamplePos+1), a
;./libs/yscc/yscc_player.c:384: g_YSCC_SamplePage          = in->SamplePage;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	(_g_YSCC_SamplePage+0), a
	ld	a, (hl)
	ld	(_g_YSCC_SamplePage+1), a
;./libs/yscc/yscc_player.c:385: g_YSCC_NumBlocksToPlay     = in->NumBlocksToPlay;
	ld	c, e
	ld	b, d
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	(_g_YSCC_NumBlocksToPlay+0), a
	ld	a, (hl)
	ld	(_g_YSCC_NumBlocksToPlay+1), a
;./libs/yscc/yscc_player.c:386: g_currentSCCPlayingSegment = in->CurrentSegment;
	ld	c, e
	ld	b, d
	ld	hl, #6
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	(_g_currentSCCPlayingSegment+0), a
	ld	a, (hl)
	ld	(_g_currentSCCPlayingSegment+1), a
;./libs/yscc/yscc_player.c:387: s_YSCC_StartSeg            = in->StartSeg;
	ld	c, e
	ld	b, d
	ld	hl, #8
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	(_s_YSCC_StartSeg+0), a
	ld	a, (hl)
	ld	(_s_YSCC_StartSeg+1), a
;./libs/yscc/yscc_player.c:388: s_YSCC_TotalBlocks         = in->TotalBlocks;
	ld	c, e
	ld	b, d
	ld	hl, #10
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	(_s_YSCC_TotalBlocks+0), a
	ld	a, (hl)
	ld	(_s_YSCC_TotalBlocks+1), a
;./libs/yscc/yscc_player.c:389: s_YSCC_Loop                = in->Loop;
	ld	hl, #12
	add	hl, de
	ld	a, (hl)
	ld	(_s_YSCC_Loop+0), a
;./libs/yscc/yscc_player.c:390: s_YSCC_Paused              = FALSE;
	ld	hl, #_s_YSCC_Paused
	ld	(hl), #0x00
;./libs/yscc/yscc_player.c:391: }
	ret
;./libs/yscc/yscc_player.c:392: u8 _YSCC_GetVdpFrequency() {
;	---------------------------------
; Function _YSCC_GetVdpFrequency
; ---------------------------------
__YSCC_GetVdpFrequency::
;./libs/yscc/yscc_player.c:404: __endasm;
	ld	a, (#0xFFE8) ; Legge lo specchio del Registro 9 del VDP
	bit	1, a ; Controlla il bit NT (0=50Hz, 1=60Hz)
	jr	z, is_pal
	ld	l, #1 ; SDCC restituisce i valori a 8 bit nel registro L
	jr	end_asm
	    is_pal:
	ld	l, #0
	    end_asm:
;./libs/yscc/yscc_player.c:408: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__g_YSCC_CurrentOFFR:
	.db #0x00	; 0
__xinit__s_YSCC_OFFRSet:
	.db #0x00	; 0
__xinit__g_currentSCCPlayingSegment:
	.dw #0xffff
	.area _CABS (ABS)
