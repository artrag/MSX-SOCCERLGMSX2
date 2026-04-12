;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s9_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _AssignKickOffTargets
	.globl _EventTimeUp
	.globl _EventHalfTime
	.globl _EventBallKicked
	.globl _EventKickOffReady
	.globl _EventPlayerFirstPresentationStarted
	.globl _GetJoystickDirection
	.globl _FindReceiver
	.globl _HideSpriteMessage
	.globl _ShowSpriteMessage
	.globl _CallFnc_U8_P1
	.globl _CallFnc_U8_P2
	.globl _CallFnc_VOID_16_P1
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
	.globl _UpdateGameState
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
_g_last_dx:
	.ds 2
_g_last_dy:
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
	.area _SEG9
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:11: void AssignKickOffTargets() {
;	---------------------------------
; Function AssignKickOffTargets
; ---------------------------------
_AssignKickOffTargets::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:12: SwSprite[0].tx = 120; SwSprite[0].ty = 32;   
	ld	hl, #(_SwSprite + 12)
	ld	(hl), #0x78
	ld	hl, #0x0020
	ld	((_SwSprite + 13)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:13: SwSprite[1].tx = 64;  SwSprite[1].ty = 96;   
	ld	hl, #(_SwSprite + 35)
	ld	(hl), #0x40
	ld	hl, #0x0060
	ld	((_SwSprite + 36)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:14: SwSprite[2].tx = 176; SwSprite[2].ty = 96;   
	ld	hl, #(_SwSprite + 58)
	ld	(hl), #0xb0
	ld	hl, #0x0060
	ld	((_SwSprite + 59)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:15: SwSprite[5].tx = 40;  SwSprite[5].ty = 160;  
	ld	hl, #(_SwSprite + 127)
	ld	(hl), #0x28
	ld	hl, #0x00a0
	ld	((_SwSprite + 128)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:16: SwSprite[6].tx = 200; SwSprite[6].ty = 160;  
	ld	hl, #(_SwSprite + 150)
	ld	(hl), #0xc8
	ld	hl, #0x00a0
	ld	((_SwSprite + 151)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:18: SwSprite[7].tx = 120; SwSprite[7].ty = 480;  
	ld	hl, #(_SwSprite + 173)
	ld	(hl), #0x78
	ld	hl, #0x01e0
	ld	((_SwSprite + 174)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:19: SwSprite[8].tx = 64;  SwSprite[8].ty = 416;  
	ld	hl, #(_SwSprite + 196)
	ld	(hl), #0x40
	ld	hl, #0x01a0
	ld	((_SwSprite + 197)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:20: SwSprite[9].tx = 176; SwSprite[9].ty = 416;  
	ld	hl, #(_SwSprite + 219)
	ld	(hl), #0xb0
	ld	hl, #0x01a0
	ld	((_SwSprite + 220)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:21: SwSprite[12].tx= 40;  SwSprite[12].ty= 312;  
	ld	hl, #(_SwSprite + 288)
	ld	(hl), #0x28
	ld	hl, #0x0138
	ld	((_SwSprite + 289)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:22: SwSprite[13].tx= 200; SwSprite[13].ty= 312;  
	ld	hl, #(_SwSprite + 311)
	ld	(hl), #0xc8
	ld	hl, #0x0138
	ld	((_SwSprite + 312)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:25: SwSprite[3].tx = 112; SwSprite[3].ty = 236;
	ld	bc, #_SwSprite + 81
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:26: SwSprite[4].tx = 128; SwSprite[4].ty = 236;
	ld	de, #_SwSprite + 104
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:27: SwSprite[10].tx= 100; SwSprite[10].ty= 296;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:28: SwSprite[11].tx= 140; SwSprite[11].ty= 296;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:24: if (KickOffTeam == TEAM_1) {
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:25: SwSprite[3].tx = 112; SwSprite[3].ty = 236;
	ld	a, #0x70
	ld	(bc), a
	ld	hl, #0x00ec
	ld	((_SwSprite + 82)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:26: SwSprite[4].tx = 128; SwSprite[4].ty = 236;
	ld	a, #0x80
	ld	(de), a
	ld	((_SwSprite + 105)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:27: SwSprite[10].tx= 100; SwSprite[10].ty= 296;
	ld	hl, #(_SwSprite + 242)
	ld	(hl), #0x64
	ld	hl, #0x0128
	ld	((_SwSprite + 243)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:28: SwSprite[11].tx= 140; SwSprite[11].ty= 296;
	ld	hl, #(_SwSprite + 265)
	ld	(hl), #0x8c
	ld	hl, #0x0128
	ld	((_SwSprite + 266)), hl
	ret
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:30: SwSprite[3].tx = 100; SwSprite[3].ty = 200;
	ld	a, #0x64
	ld	(bc), a
	ld	hl, #0x00c8
	ld	((_SwSprite + 82)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:31: SwSprite[4].tx = 140; SwSprite[4].ty = 200;
	ld	a, #0x8c
	ld	(de), a
	ld	((_SwSprite + 105)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:32: SwSprite[10].tx= 112; SwSprite[10].ty= 254;
	ld	hl, #(_SwSprite + 242)
	ld	(hl), #0x70
	ld	hl, #0x00fe
	ld	((_SwSprite + 243)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:33: SwSprite[11].tx= 128; SwSprite[11].ty= 254;
	ld	hl, #(_SwSprite + 265)
	ld	(hl), #0x80
	ld	hl, #0x00fe
	ld	((_SwSprite + 266)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:35: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:37: u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step) 
;	---------------------------------
; Function GetPlayerAnimFrame
; ---------------------------------
_GetPlayerAnimFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	b, a
	ld	e, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:39: bool is_gk = (i == 0 || i == 7);
	ld	a, b
	or	a, a
	jr	Z, 00182$
	ld	a, b
	sub	a, #0x07
	ld	c, #0x00
	jr	NZ, 00183$
00182$:
	ld	c, #0x01
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:40: u8 team = (i < 7) ? 1 : 2;
	ld	a, b
	sub	a, #0x07
	jr	NC, 00184$
	ld	hl, #0x0001
	jp	00185$
00184$:
	ld	hl, #0x0002
00185$:
	ld	-2 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:43: if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:42: if (is_gk) {
	ld	a, c
	or	a, a
	jp	Z, 00177$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:43: if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00102$
	ld	a, e
	or	a, a
	jr	NZ, 00102$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00186$
	ld	de, #0x00e3
	jp	00179$
00186$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00188$
	ld	de, #0x00e4
	jp	00179$
00188$:
	ld	de, #0x00e5
	jp	00179$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:44: if (dy > 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_DIRECTION_3;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00790$
	xor	a, #0x80
00790$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00105$
	ld	a, e
	or	a, a
	jr	NZ, 00105$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00190$
	ld	de, #0x00d0
	jp	00179$
00190$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00192$
	ld	de, #0x00d1
	jp	00179$
00192$:
	ld	de, #0x00d2
	jp	00179$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:45: if (dy == 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_EAST_DIRECTION_2 : SPR_GK_PLAYER_EAST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00108$
	sub	a, e
	jp	PO, 00793$
	xor	a, #0x80
00793$:
	jp	P, 00108$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00194$
	ld	de, #0x00ed
	jp	00179$
00194$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00196$
	ld	de, #0x00ec
	jp	00179$
00196$:
	ld	de, #0x00eb
	jp	00179$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:46: if (dy == 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_WEST_DIRECTION_2 : SPR_GK_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00111$
	bit	7, e
	jr	Z, 00111$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00198$
	ld	de, #0x00e8
	jp	00179$
00198$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00200$
	ld	de, #0x00e9
	jp	00179$
00200$:
	ld	de, #0x00ea
	jp	00179$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:47: if (dy < 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00114$
	xor	a, a
	sub	a, e
	jp	PO, 00798$
	xor	a, #0x80
00798$:
	jp	P, 00114$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00202$
	ld	de, #0x00df
	jp	00179$
00202$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00204$
	ld	de, #0x00de
	jp	00179$
00204$:
	ld	de, #0x00dd
	jp	00179$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:48: if (dy < 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00117$
	bit	7, e
	jr	Z, 00117$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00206$
	ld	de, #0x00e0
	jp	00179$
00206$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00208$
	ld	de, #0x00e1
	jp	00179$
00208$:
	ld	de, #0x00e2
	jp	00179$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:49: if (dy > 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00120$
	xor	a, a
	sub	a, e
	jp	PO, 00803$
	xor	a, #0x80
00803$:
	jp	P, 00120$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00210$
	ld	de, #0x00dc
	jp	00179$
00210$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00212$
	ld	de, #0x00db
	jp	00179$
00212$:
	ld	de, #0x00da
	jp	00179$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:50: if (dy > 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00123$
	bit	7, e
	jr	Z, 00123$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00214$
	ld	de, #0x00d7
	jp	00179$
00214$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00216$
	ld	de, #0x00d8
	jp	00179$
00216$:
	ld	de, #0x00d9
	jp	00179$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:51: return SPR_GK_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x00d5
	jp	00179$
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:53: else if (team == 1) {
	ld	a, -2 (ix)
	dec	a
	jp	NZ,00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:54: if (dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_DIRECTION_2 : SPR_T1_PLAYER_NORTH_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00126$
	ld	a, e
	or	a, a
	jr	NZ, 00126$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00218$
	ld	de, #0x0013
	jp	00179$
00218$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00220$
	ld	de, #0x0014
	jp	00179$
00220$:
	ld	de, #0x0015
	jp	00179$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:55: if (dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_DIRECTION_3;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00812$
	xor	a, #0x80
00812$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00129$
	ld	a, e
	or	a, a
	jr	NZ, 00129$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00222$
	ld	de, #0x0000
	jp	00179$
00222$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00224$
	ld	de, #0x0001
	jp	00179$
00224$:
	ld	de, #0x0002
	jp	00179$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:56: if (dy == 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_EAST_DIRECTION_2 : SPR_T1_PLAYER_EAST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00132$
	sub	a, e
	jp	PO, 00815$
	xor	a, #0x80
00815$:
	jp	P, 00132$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00226$
	ld	de, #0x001d
	jp	00179$
00226$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00228$
	ld	de, #0x001c
	jp	00179$
00228$:
	ld	de, #0x001b
	jp	00179$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:57: if (dy == 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_WEST_DIRECTION_2 : SPR_T1_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00135$
	bit	7, e
	jr	Z, 00135$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00230$
	ld	de, #0x0018
	jp	00179$
00230$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00232$
	ld	de, #0x0019
	jp	00179$
00232$:
	ld	de, #0x001a
	jp	00179$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:58: if (dy < 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00138$
	xor	a, a
	sub	a, e
	jp	PO, 00820$
	xor	a, #0x80
00820$:
	jp	P, 00138$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00234$
	ld	de, #0x000f
	jp	00179$
00234$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00236$
	ld	de, #0x000e
	jp	00179$
00236$:
	ld	de, #0x000d
	jp	00179$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:59: if (dy < 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00141$
	bit	7, e
	jr	Z, 00141$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00238$
	ld	de, #0x0010
	jp	00179$
00238$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00240$
	ld	de, #0x0011
	jp	00179$
00240$:
	ld	de, #0x0012
	jp	00179$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:60: if (dy > 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00144$
	xor	a, a
	sub	a, e
	jp	PO, 00825$
	xor	a, #0x80
00825$:
	jp	P, 00144$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00242$
	ld	de, #0x000a
	jp	00179$
00242$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00244$
	ld	de, #0x000b
	jp	00179$
00244$:
	ld	de, #0x000c
	jp	00179$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:61: if (dy > 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00147$
	bit	7, e
	jr	Z, 00147$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00246$
	ld	de, #0x0009
	jp	00179$
00246$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00248$
	ld	de, #0x0008
	jp	00179$
00248$:
	ld	de, #0x0007
	jp	00179$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:62: return SPR_T1_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0001
	jp	00179$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:65: if (dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_DIRECTION_2 : SPR_T2_PLAYER_NORTH_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00150$
	ld	a, e
	or	a, a
	jr	NZ, 00150$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00250$
	ld	de, #0x0083
	jp	00179$
00250$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00252$
	ld	de, #0x0084
	jp	00179$
00252$:
	ld	de, #0x0085
	jp	00179$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:66: if (dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_DIRECTION_3;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00832$
	xor	a, #0x80
00832$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00153$
	ld	a, e
	or	a, a
	jr	NZ, 00153$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00254$
	ld	de, #0x0070
	jp	00179$
00254$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00256$
	ld	de, #0x0071
	jp	00179$
00256$:
	ld	de, #0x0072
	jp	00179$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:67: if (dy == 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_EAST_DIRECTION_2 : SPR_T2_PLAYER_EAST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00156$
	sub	a, e
	jp	PO, 00835$
	xor	a, #0x80
00835$:
	jp	P, 00156$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00258$
	ld	de, #0x008d
	jp	00179$
00258$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00260$
	ld	de, #0x008c
	jp	00179$
00260$:
	ld	de, #0x008b
	jp	00179$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:68: if (dy == 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_WEST_DIRECTION_2 : SPR_T2_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00159$
	bit	7, e
	jr	Z, 00159$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00262$
	ld	de, #0x0088
	jp	00179$
00262$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00264$
	ld	de, #0x0089
	jp	00179$
00264$:
	ld	de, #0x008a
	jp	00179$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:69: if (dy < 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00162$
	xor	a, a
	sub	a, e
	jp	PO, 00840$
	xor	a, #0x80
00840$:
	jp	P, 00162$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00266$
	ld	de, #0x007f
	jp	00179$
00266$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00268$
	ld	de, #0x007e
	jp	00179$
00268$:
	ld	de, #0x007d
	jp	00179$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:70: if (dy < 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00165$
	bit	7, e
	jr	Z, 00165$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00270$
	ld	de, #0x0080
	jp	00179$
00270$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00272$
	ld	de, #0x0081
	jp	00179$
00272$:
	ld	de, #0x0082
	jp	00179$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:71: if (dy > 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00168$
	xor	a, a
	sub	a, e
	jp	PO, 00845$
	xor	a, #0x80
00845$:
	jp	P, 00168$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00274$
	ld	de, #0x007c
	jp	00179$
00274$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00276$
	ld	de, #0x007b
	jp	00179$
00276$:
	ld	de, #0x007a
	jp	00179$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:72: if (dy > 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00171$
	bit	7, e
	jr	Z, 00171$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00278$
	ld	de, #0x0077
	jp	00179$
00278$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00280$
	ld	de, #0x0078
	jp	00179$
00280$:
	ld	de, #0x0079
	jp	00179$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:73: return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	de, #0x0083
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:75: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:77: u16 GetPlayerIdleFrame(u8 i, i8 dx, i8 dy) 
;	---------------------------------
; Function GetPlayerIdleFrame
; ---------------------------------
_GetPlayerIdleFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:79: bool is_gk = (i == 0 || i == 7);
	ld	b,a
	or	a,a
	jr	Z, 00182$
	sub	a, #0x07
	ld	c, #0x00
	jr	NZ, 00183$
00182$:
	ld	c, #0x01
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:80: u8 team = (i < 7) ? 1 : 2;
	ld	a, b
	sub	a, #0x07
	jr	NC, 00184$
	ld	de, #0x0001
	jp	00185$
00184$:
	ld	de, #0x0002
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:83: if (dy < 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:82: if (is_gk) {
	ld	a, c
	or	a, a
	jp	Z, 00177$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:83: if (dy < 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, b
	or	a, a
	jr	Z, 00102$
	ld	a, l
	or	a, a
	jr	NZ, 00102$
	ld	de, #0x00d6
	jp	00179$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:84: if (dy > 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_SOUTH;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00452$
	xor	a, #0x80
00452$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00105$
	ld	a, l
	or	a, a
	jr	NZ, 00105$
	ld	de, #0x00d5
	jp	00179$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:85: if (dy == 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_EAST;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00108$
	sub	a, l
	jp	PO, 00453$
	xor	a, #0x80
00453$:
	jp	P, 00108$
	ld	de, #0x00ea
	jp	00179$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:86: if (dy == 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00111$
	bit	7, l
	jr	Z, 00111$
	ld	de, #0x00eb
	jp	00179$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:87: if (dy < 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_NORTH_EAST;
	ld	a, b
	or	a, a
	jr	Z, 00114$
	xor	a, a
	sub	a, l
	jp	PO, 00454$
	xor	a, #0x80
00454$:
	jp	P, 00114$
	ld	de, #0x00df
	jp	00179$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:88: if (dy < 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, b
	or	a, a
	jr	Z, 00117$
	bit	7, l
	jr	Z, 00117$
	ld	de, #0x00e0
	jp	00179$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:89: if (dy > 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_EAST;
	ld	a, c
	or	a, a
	jr	Z, 00120$
	xor	a, a
	sub	a, l
	jp	PO, 00455$
	xor	a, #0x80
00455$:
	jp	P, 00120$
	ld	de, #0x00eb
	jp	00179$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:90: if (dy > 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00123$
	bit	7, l
	jr	Z, 00123$
	ld	de, #0x00ea
	jp	00179$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:91: return SPR_GK_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x00d5
	jp	00179$
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:93: else if (team == 1) {
	dec	e
	jp	NZ,00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:94: if (dy < 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_NORTH;
	ld	a, b
	or	a, a
	jr	Z, 00126$
	ld	a, l
	or	a, a
	jr	NZ, 00126$
	ld	de, #0x0014
	jp	00179$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:95: if (dy > 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_SOUTH;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00458$
	xor	a, #0x80
00458$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00129$
	ld	a, l
	or	a, a
	jr	NZ, 00129$
	ld	de, #0x0001
	jp	00179$
00129$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:96: if (dy == 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_EAST;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00132$
	sub	a, l
	jp	PO, 00459$
	xor	a, #0x80
00459$:
	jp	P, 00132$
	ld	de, #0x001a
	jp	00179$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:97: if (dy == 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00135$
	bit	7, l
	jr	Z, 00135$
	ld	de, #0x001b
	jp	00179$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:98: if (dy < 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_NORTH_EAST;
	ld	a, b
	or	a, a
	jr	Z, 00138$
	xor	a, a
	sub	a, l
	jp	PO, 00460$
	xor	a, #0x80
00460$:
	jp	P, 00138$
	ld	de, #0x000f
	jp	00179$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:99: if (dy < 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, b
	or	a, a
	jr	Z, 00141$
	bit	7, l
	jr	Z, 00141$
	ld	de, #0x0010
	jp	00179$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:100: if (dy > 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_EAST;
	ld	a, c
	or	a, a
	jr	Z, 00144$
	xor	a, a
	sub	a, l
	jp	PO, 00461$
	xor	a, #0x80
00461$:
	jp	P, 00144$
	ld	de, #0x001b
	jp	00179$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:101: if (dy > 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00147$
	bit	7, l
	jr	Z, 00147$
	ld	de, #0x001a
	jp	00179$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:102: return SPR_T1_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0001
	jp	00179$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:105: if (dy < 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	a, b
	or	a, a
	jr	Z, 00150$
	ld	a, l
	or	a, a
	jr	NZ, 00150$
	ld	de, #0x0083
	jp	00179$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:106: if (dy > 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_SOUTH;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00462$
	xor	a, #0x80
00462$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00153$
	ld	a, l
	or	a, a
	jr	NZ, 00153$
	ld	de, #0x0070
	jp	00179$
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:107: if (dy == 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_EAST;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00156$
	sub	a, l
	jp	PO, 00463$
	xor	a, #0x80
00463$:
	jp	P, 00156$
	ld	de, #0x008a
	jp	00179$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:108: if (dy == 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00159$
	bit	7, l
	jr	Z, 00159$
	ld	de, #0x008b
	jp	00179$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:109: if (dy < 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_NORTH_EAST;
	ld	a, b
	or	a, a
	jr	Z, 00162$
	xor	a, a
	sub	a, l
	jp	PO, 00464$
	xor	a, #0x80
00464$:
	jp	P, 00162$
	ld	de, #0x007f
	jp	00179$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:110: if (dy < 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, b
	or	a, a
	jr	Z, 00165$
	bit	7, l
	jr	Z, 00165$
	ld	de, #0x0080
	jp	00179$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:111: if (dy > 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_EAST;
	ld	a, c
	or	a, a
	jr	Z, 00168$
	xor	a, a
	sub	a, l
	jp	PO, 00465$
	xor	a, #0x80
00465$:
	jp	P, 00168$
	ld	de, #0x008b
	jp	00179$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:112: if (dy > 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00171$
	bit	7, l
	jr	Z, 00171$
	ld	de, #0x008a
	jp	00179$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:113: return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	de, #0x0083
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:115: }
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:120: void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
;	---------------------------------
; Function UpdateGameState
; ---------------------------------
_UpdateGameState::
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:122: if (*game_state == 0) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	NZ, 00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:123: if (Field.ly >= target_ly) {
	ld	hl, (#(_Field + 4) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:124: Field.dy = 0; // Ferma lo scorrimento
	ld	bc, #_Field + 18
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:123: if (Field.ly >= target_ly) {
	ld	a, l
	sub	a, 6 (ix)
	ld	a, h
	sbc	a, 7 (ix)
	jr	C, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:124: Field.dy = 0; // Ferma lo scorrimento
	xor	a, a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:125: *game_state = 1;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:126: *wait_secs = 2; 
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:127: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00247$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:129: Field.ly += Field.dy;
	ld	a, (bc)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	add	hl, bc
	ex	de, hl
	ld	((_Field + 4)), de
	jp	00247$
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:133: } else if (*game_state == 1) {
	ld	a, c
	dec	a
	jr	NZ, 00234$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:134: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	e, a
	ld	hl, #_Frms
	ld	a, e
	sub	a, (hl)
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:135: (*wait_secs)--;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:136: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:137: *game_state = 2; // Passa al posizionamento
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:138: CallFnc_VOID(SEG_EVENTS, EventPlayerFirstPresentationStarted);
	push	bc
	ld	de, #_EventPlayerFirstPresentationStarted
	ld	a, #0x08
	call	_CallFnc_VOID
	call	_AssignKickOffTargets
	pop	bc
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:142: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00247$
00234$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:143: } else if (*game_state == 2) {
	ld	a, c
	sub	a, #0x02
	jp	NZ,00231$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:144: bool all_in_position = TRUE;
	ld	-26 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:145: for (u8 i = 0; i < 14; i++) {
	ld	-1 (ix), #0x00
00240$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:146: struct ObjectInfo* p = &SwSprite[i];
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:147: if (p->lx != p->tx || p->ly != p->ty) {
	ld	-25 (ix), l
	ld	-24 (ix), h
	ld	a, (hl)
	ld	-23 (ix), a
	ld	c, -25 (ix)
	ld	b, -24 (ix)
	ld	hl, #12
	add	hl, bc
	ld	a, (hl)
	ld	-22 (ix), a
	ld	a, -25 (ix)
	add	a, #0x04
	ld	-21 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-20 (ix), a
	ld	a, -25 (ix)
	add	a, #0x0d
	ld	-19 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:150: if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
	ld	a, -25 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:154: if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
	ld	a, -25 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:163: p->frame = GetPlayerAnimFrame(i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	a, -25 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -24 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:147: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -23 (ix)
	sub	a, -22 (ix)
	jr	NZ, 00120$
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
	jp	Z,00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:148: all_in_position = FALSE;
	ld	-26 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:150: if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
	ld	a, -23 (ix)
	sub	a, -22 (ix)
	jr	NC, 00112$
	ld	a, -22 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -23 (ix)
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
	jr	C, 00249$
	ld	-7 (ix), #0x02
	ld	-6 (ix), #0
	jp	00250$
00249$:
	ld	a, -22 (ix)
	sub	a, -23 (ix)
	ld	-6 (ix), a
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
00250$:
	ld	a, -7 (ix)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:151: else if (p->tx < p->lx) p->dx = (p->lx - p->tx >= 2) ? -2 : -(p->lx - p->tx);
	ld	a, -22 (ix)
	sub	a, -23 (ix)
	jr	NC, 00109$
	ld	a, -23 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -22 (ix)
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
	jr	C, 00251$
	ld	c, #0xfe
	jp	00252$
00251$:
	ld	a, -23 (ix)
	sub	a, -22 (ix)
	neg
	ld	c, a
00252$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), c
	jp	00113$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:152: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:154: if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
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
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00118$
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	c, a
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x02
	ld	a, b
	sbc	a, #0x00
	jr	C, 00253$
	ld	a, #0x02
	jp	00254$
00253$:
	ld	a, -7 (ix)
	ld	c, -9 (ix)
	sub	a, c
00254$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:155: else if (p->ty < p->ly) p->dy = (p->ly - p->ty >= 2) ? -2 : -(p->ly - p->ty);
	ld	a, -7 (ix)
	sub	a, -9 (ix)
	ld	a, -6 (ix)
	sbc	a, -8 (ix)
	jr	NC, 00115$
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x02
	ld	a, b
	sbc	a, #0x00
	jr	C, 00255$
	ld	a, #0xfe
	jp	00256$
00255$:
	ld	a, -9 (ix)
	ld	c, -7 (ix)
	sub	a, c
	neg
00256$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00119$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:156: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:158: p->lx += p->dx;
	ld	l, -25 (ix)
	ld	h, -24 (ix)
	ld	c, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -25 (ix)
	ld	h, -24 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:159: p->ly += p->dy;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:160: p->anim++;
	ld	l, -25 (ix)
	ld	h, -24 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:162: const u8 walk_seq[4] = {0, 1, 2, 1}; // 1->2->3->2->1...
	ld	-30 (ix), #0x00
	ld	-29 (ix), #0x01
	ld	-28 (ix), #0x02
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:163: p->frame = GetPlayerAnimFrame(i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
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
	ld	b, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	a, -1 (ix)
	call	_GetPlayerAnimFrame
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00241$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:165: i8 dir_x = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
	ld	hl, #_SwSprite + 322
	ld	c, (hl)
	ld	a, -23 (ix)
	sub	a, c
	jr	NC, 00257$
	ld	de, #0x0001
	jp	00258$
00257$:
	ld	a, c
	sub	a, -23 (ix)
	jr	NC, 00259$
	ld	de, #0xffff
	jp	00260$
00259$:
	ld	de, #0x0000
00260$:
00258$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:166: i8 dir_y = (i < 7) ? 1 : -1; // Team 1 guarda sempre a Sud, Team 2 sempre a Nord
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00261$
	ld	bc, #0x0001
	jp	00262$
00261$:
	ld	bc, #0xffff
00262$:
	ld	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:167: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:168: p->frame = GetPlayerAnimFrame(i, dir_x, dir_y, 0); // Posa ferma (0) verso la palla
	ld	(hl), #0x00
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -1 (ix)
	call	_GetPlayerAnimFrame
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00241$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:145: for (u8 i = 0; i < 14; i++) {
	inc	-1 (ix)
	jp	00240$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:171: if (all_in_position) {
	ld	a, -26 (ix)
	or	a, a
	jp	Z, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:172: *game_state = 3;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:175: if (KickOffTeam == TEAM_1) {
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	NZ, 00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:176: T1_Carrier = 3; // Giocatore a sinistra della palla
	ld	hl, #_T1_Carrier
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:177: T1_Receiver = CallFnc_U8_P2(SEG_LOGIC, FindReceiver, T1_Carrier, 4); // Ignora il compagno (4)
	ld	hl, #0x403
	push	hl
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U8_P2
	ld	(_T1_Receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:178: T2_Carrier = T2_Receiver = 0xFF; // Difesa senza palla
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	jp	00127$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:180: T2_Carrier = 11; // Giocatore a destra della palla
	ld	hl, #_T2_Carrier
	ld	(hl), #0x0b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:181: T2_Receiver = CallFnc_U8_P2(SEG_LOGIC, FindReceiver, T2_Carrier, 10); // Ignora il compagno (10)
	ld	hl, #0xa0b
	push	hl
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U8_P2
	ld	(_T2_Receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:182: T1_Carrier = T1_Receiver = 0xFF; // Difesa senza palla
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Carrier
	ld	(hl), #0xff
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:185: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:186: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:187: CallFnc_VOID(SEG_EVENTS, EventKickOffReady);
	ld	de, #_EventKickOffReady
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00247$
00231$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:189: } else if (*game_state == 3) {
	ld	a, c
	sub	a, #0x03
	jp	NZ,00228$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:191: if (Mins == 0 && Secs == 0) {
	ld	a, (_Mins+0)
	or	a, a
	jr	NZ, 00136$
	ld	a, (_Secs+0)
	or	a, a
	jr	NZ, 00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:192: if (Half == 1) {
	ld	a, (_Half+0)
	dec	a
	jr	NZ, 00133$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:193: *game_state = 4;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:194: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:195: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:196: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_HALFTIME);
	ld	hl, #0x0144
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:197: CallFnc_VOID(SEG_EVENTS, EventHalfTime);
	ld	de, #_EventHalfTime
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00247$
00133$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:198: } else if (Half == 2) {
	ld	a, (_Half+0)
	sub	a, #0x02
	jp	NZ,00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:199: *game_state = 5;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x05
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:200: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:201: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:202: CallFnc_VOID_16_P1(SEG_DRAW, ShowSpriteMessage, SPR_MSG_TIMEUP);
	ld	hl, #0x0140
	push	hl
	ld	de, #_ShowSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID_16_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:204: return;
	jp	00247$
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:208: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00143$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:209: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:210: (*wait_secs)--;
	ld	a, c
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:211: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00141$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:212: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	de
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	pop	de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:213: TimerEnabled = TRUE; // Avvia il cronometro alla sparizione della scritta
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:216: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:220: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:223: if (Ball->anim > 0) {
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:229: if (Ball->dy > 0) Ball->ly += speed;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:223: if (Ball->anim > 0) {
	ld	-6 (ix), a
	or	a, -7 (ix)
	jp	Z, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:225: u8 speed = Ball->anim + 1;
	ld	a, -7 (ix)
	ld	-1 (ix), a
	inc	-1 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:226: if (Ball->dx > 0) Ball->lx += speed;
	ld	hl, #(_SwSprite + 322) + 17
	ld	c, (hl)
	xor	a, a
	sub	a, c
	jp	PO, 00658$
	xor	a, #0x80
00658$:
	jp	P, 00147$
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-6 (ix), a
	add	a, -1 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00148$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:227: else if (Ball->dx < 0) Ball->lx -= speed;
	bit	7, c
	jr	Z, 00148$
	ld	a, (#(_SwSprite + 322) + 0)
	sub	a, -1 (ix)
	ld	(#(_SwSprite + 322)),a
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:229: if (Ball->dy > 0) Ball->ly += speed;
	ld	a, (#(_SwSprite + 340) + 0)
	ld	-6 (ix), a
	xor	a, a
	sub	a, -6 (ix)
	jp	PO, 00659$
	xor	a, #0x80
00659$:
	jp	P, 00152$
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -9 (ix)
	add	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	adc	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00153$
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:230: else if (Ball->dy < 0) Ball->ly -= speed;
	bit	7, -6 (ix)
	jr	Z, 00153$
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:232: Ball->anim--;
	ld	bc, (#(_SwSprite + 341) + 0)
	dec	bc
	ld	((_SwSprite + 341)), bc
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:236: u8 carriers[2] = {T1_Carrier, T2_Carrier};
	ld	a, (_T1_Carrier+0)
	ld	-30 (ix), a
	ld	a, (_T2_Carrier+0)
	ld	-29 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:237: u8 dirs[2] = { DIRECTION_NONE, DIRECTION_NONE };
	ld	-28 (ix), #0x00
	ld	-27 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:239: if (T2_Carrier != 0xFF) dirs[1] = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, 0); // P1 controlla Team 2
	ld	a, (_T2_Carrier+0)
	inc	a
	jr	Z, 00157$
	xor	a, a
	push	af
	inc	sp
	ld	de, #_GetJoystickDirection
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	-27 (ix), a
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:240: if (T1_Carrier != 0xFF && GameMode == GAMEMODE_P1_VS_P2) dirs[0] = CallFnc_U8_P1(SEG_INPUT, GetJoystickDirection, 1); // P2 controlla Team 1
	ld	a, (_T1_Carrier+0)
	inc	a
	jr	Z, 00339$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00339$
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #_GetJoystickDirection
	ld	a, #0x07
	call	_CallFnc_U8_P1
	ld	-28 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:242: for (u8 i = 0; i < 2; i++) {
00339$:
	ld	-1 (ix), #0x00
00243$:
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NC, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:243: u8 carrier = carriers[i];
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:244: if (carrier == 0xFF) continue;
	ld	-8 (ix), a
	inc	a
	jp	Z,00207$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:246: struct ObjectInfo* Carrier = &SwSprite[carrier];
	ld	c, -8 (ix)
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
	ld	-14 (ix), l
	ld	-13 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:248: Carrier->dx = 0; Carrier->dy = 0;
	ld	a, -14 (ix)
	add	a, #0x11
	ld	-10 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x00
	ld	a, -14 (ix)
	add	a, #0x12
	ld	c, a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:249: switch(dirs[i]) {
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	ld	e, (hl)
	ld	a, #0x08
	sub	a, e
	jr	C, 00171$
	ld	d, #0x00
	ld	hl, #00665$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00665$:
	jp	00171$
	jp	00163$
	jp	00164$
	jp	00165$
	jp	00166$
	jp	00167$
	jp	00168$
	jp	00169$
	jp	00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:250: case DIRECTION_UP: Carrier->dy = -2; break;
00163$:
	ld	a, #0xfe
	ld	(bc), a
	jp	00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:251: case DIRECTION_UP_RIGHT: Carrier->dy = -2; Carrier->dx = 2; break;
00164$:
	ld	a, #0xfe
	ld	(bc), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x02
	jp	00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:252: case DIRECTION_RIGHT: Carrier->dx = 2; break;
00165$:
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x02
	jp	00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:253: case DIRECTION_DOWN_RIGHT: Carrier->dy = 2; Carrier->dx = 2; break;
00166$:
	ld	a, #0x02
	ld	(bc), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x02
	jp	00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:254: case DIRECTION_DOWN: Carrier->dy = 2; break;
00167$:
	ld	a, #0x02
	ld	(bc), a
	jp	00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:255: case DIRECTION_DOWN_LEFT: Carrier->dy = 2; Carrier->dx = -2; break;
00168$:
	ld	a, #0x02
	ld	(bc), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0xfe
	jp	00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:256: case DIRECTION_LEFT: Carrier->dx = -2; break;
00169$:
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0xfe
	jp	00171$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:257: case DIRECTION_UP_LEFT: Carrier->dy = -2; Carrier->dx = -2; break;
00170$:
	ld	a, #0xfe
	ld	(bc), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0xfe
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:258: }
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:261: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:270: Carrier->frame = GetPlayerAnimFrame(carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
	ld	a, -14 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:261: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, e
	or	a, a
	jr	NZ, 00203$
	ld	a, (bc)
	or	a, a
	jp	Z, 00204$
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:262: g_last_dx[i] = Carrier->dx;
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	h, a
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:263: g_last_dy[i] = Carrier->dy;
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	d, a
	ld	a, (bc)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: Carrier->lx += Carrier->dx;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	e, (hl)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	add	a, e
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:266: Carrier->ly += Carrier->dy;
	ld	a, -14 (ix)
	add	a, #0x04
	ld	-12 (ix), a
	ld	a, -13 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, (bc)
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
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:268: Carrier->anim++;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:269: const u8 walk_seq[4] = {0, 1, 2, 1}; 
	ld	-30 (ix), #0x00
	ld	-29 (ix), #0x01
	ld	-28 (ix), #0x02
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:270: Carrier->frame = GetPlayerAnimFrame(carrier, Carrier->dx, Carrier->dy, walk_seq[(Carrier->anim / 3) % 4]);
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
	ld	a, (bc)
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	ld	a, -8 (ix)
	call	_GetPlayerAnimFrame
	pop	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:265: Carrier->lx += Carrier->dx;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:273: u8 dx_diff = (u8)(Carrier->lx - Ball->lx);
	ld	hl, #(_SwSprite + 322)
	ld	a,-8 (ix)
	sub	a,(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:274: u16 dist_x = (dx_diff < 128) ? dx_diff : (256 - dx_diff);
	ld	e, a
	ld	d, #0x00
	sub	a, #0x80
	jr	NC, 00263$
	ld	a, d
	jp	00264$
00263$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x01
	sbc	a, d
00264$:
	ld	-16 (ix), e
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:275: u16 dy_diff = (u16)(Carrier->ly - Ball->ly) & 511;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, (#(_SwSprite + 326) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:276: u16 dist_y = (dy_diff < 256) ? dy_diff : (512 - dy_diff);
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	d, a
	sub	a, #0x01
	jr	NC, 00265$
	ld	a, d
	jp	00266$
00265$:
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x02
	sbc	a, d
00266$:
	ld	-7 (ix), e
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:279: if (dist_x <= 24 && dist_y <= 24) {
	ld	e, -16 (ix)
	ld	d, -15 (ix)
	ld	a, #0x18
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	C, 00207$
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	a, #0x18
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	C, 00207$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:261: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	e, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:280: i8 c_dx = (Carrier->dx > 0) ? 1 : ((Carrier->dx < 0) ? -1 : 0);
	xor	a, a
	sub	a, e
	jp	PO, 00666$
	xor	a, #0x80
00666$:
	jp	P, 00267$
	ld	de, #0x0001
	jp	00268$
00267$:
	bit	7, e
	jr	Z, 00269$
	ld	de, #0xffff
	jp	00270$
00269$:
	ld	de, #0x0000
00270$:
00268$:
	ld	-10 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:261: if (Carrier->dx != 0 || Carrier->dy != 0) {
	ld	a, (bc)
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:281: i8 c_dy = (Carrier->dy > 0) ? 1 : ((Carrier->dy < 0) ? -1 : 0);
	xor	a, a
	sub	a, c
	jp	PO, 00667$
	xor	a, #0x80
00667$:
	jp	P, 00271$
	ld	bc, #0x0001
	jp	00272$
00271$:
	bit	7, c
	jr	Z, 00273$
	ld	de, #0xffff
	jp	00274$
00273$:
	ld	de, #0x0000
00274$:
	ld	c, e
	ld	b, d
00272$:
	ld	-9 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:283: if (Ball->dx != c_dx || Ball->dy != c_dy) {
	ld	hl, #(_SwSprite + 339)
	ld	c, (hl)
	ld	a, -10 (ix)
	sub	a, c
	jr	NZ, 00196$
	ld	hl, #(_SwSprite + 340)
	ld	c, (hl)
	ld	a, -9 (ix)
	sub	a, c
	jp	Z,00197$
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:285: u8 cur_dist = (u8)((dist_x > dist_y) ? dist_x : dist_y);
	ld	a, -7 (ix)
	sub	a, -16 (ix)
	ld	a, -6 (ix)
	sbc	a, -15 (ix)
	jr	NC, 00275$
	ld	a, -16 (ix)
	ld	-7 (ix), a
	ld	a, -15 (ix)
	ld	-6 (ix), a
00275$:
	ld	a, -7 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:286: if (cur_dist > 12) cur_dist = 12; // Evita di "spararla" troppo lontano
	ld	a, #0x0c
	sub	a, -8 (ix)
	jr	NC, 00173$
	ld	-8 (ix), #0x0c
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:288: i8 off_x = 0; i8 off_y = 4;
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:289: if (c_dx > 0) off_x = 6 + cur_dist; else if (c_dx < 0) off_x = -6 - cur_dist;
	xor	a, a
	sub	a, -10 (ix)
	jp	PO, 00671$
	xor	a, #0x80
00671$:
	jp	P, 00177$
	ld	a, -8 (ix)
	add	a, #0x06
	ld	-7 (ix), a
	jp	00178$
00177$:
	bit	7, -10 (ix)
	jr	Z, 00178$
	ld	c, -8 (ix)
	ld	a, #0xfa
	sub	a, c
	ld	-7 (ix), a
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:290: if (c_dy > 0) off_y = 6 + cur_dist; else if (c_dy < 0) off_y = 2 - cur_dist;
	xor	a, a
	sub	a, -9 (ix)
	jp	PO, 00672$
	xor	a, #0x80
00672$:
	jp	P, 00182$
	ld	a, -8 (ix)
	ld	-6 (ix), a
	add	a, #0x06
	ld	-6 (ix), a
	jp	00183$
00182$:
	bit	7, -9 (ix)
	jr	Z, 00183$
	ld	c, -8 (ix)
	ld	a, #0x02
	sub	a, c
	ld	-6 (ix), a
00183$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:292: Ball->dx = c_dx;
	ld	hl, #(_SwSprite + 339)
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:293: Ball->dy = c_dy;
	ld	hl, #(_SwSprite + 340)
	ld	a, -9 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:294: Ball->lx = (u8)(Carrier->lx + off_x);
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	add	a, -8 (ix)
	ld	-7 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:295: Ball->ly = (Carrier->ly + off_y) & 511;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	rlca
	sbc	a, a
	ld	-9 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	ld	-6 (ix), a
	ld	a, -12 (ix)
	add	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -11 (ix)
	adc	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	and	a, #0x01
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00207$
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:298: if (Ball->anim == 0) {
	ld	hl, (#(_SwSprite + 341) + 0)
	ld	a, h
	or	a, l
	jp	NZ, 00207$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:299: i8 off_x = 0; i8 off_y = 4;
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x04
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:300: if (c_dx > 0) off_x = 6; else if (c_dx < 0) off_x = -6;
	xor	a, a
	sub	a, -10 (ix)
	jp	PO, 00673$
	xor	a, #0x80
00673$:
	jp	P, 00187$
	ld	-7 (ix), #0x06
	jp	00188$
00187$:
	bit	7, -10 (ix)
	jr	Z, 00188$
	ld	-7 (ix), #0xfa
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:301: if (c_dy > 0) off_y = 6; else if (c_dy < 0) off_y = 2;
	xor	a, a
	sub	a, -9 (ix)
	jp	PO, 00674$
	xor	a, #0x80
00674$:
	jp	P, 00192$
	ld	-6 (ix), #0x06
	jp	00193$
00192$:
	bit	7, -9 (ix)
	jr	Z, 00193$
	ld	-6 (ix), #0x02
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:303: Ball->lx = (u8)(Carrier->lx + off_x);
	ld	a, -7 (ix)
	add	a, -8 (ix)
	ld	-7 (ix), a
	ld	hl, #(_SwSprite + 322)
	ld	a, -7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:304: Ball->ly = (Carrier->ly + off_y) & 511;
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	rlca
	sbc	a, a
	ld	-9 (ix), a
	ld	a, -8 (ix)
	ld	-12 (ix), a
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, -9 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, -12 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	adc	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	and	a, #0x01
	ld	-6 (ix), a
	ld	hl, #(_SwSprite + 326)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:305: Ball->anim = 4; 
	ld	hl, #0x0004
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:306: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	jp	00207$
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:312: Carrier->frame = GetPlayerIdleFrame(carrier, g_last_dx[i], g_last_dy[i]);
	ld	a, #<(_g_last_dy)
	add	a, -1 (ix)
	ld	-10 (ix), a
	ld	a, #>(_g_last_dy)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, #<(_g_last_dx)
	add	a, -1 (ix)
	ld	-10 (ix), a
	ld	a, #>(_g_last_dx)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	ld	a, -11 (ix)
	push	af
	inc	sp
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -8 (ix)
	call	_GetPlayerIdleFrame
	ld	-9 (ix), e
	ld	-8 (ix), d
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:242: for (u8 i = 0; i < 2; i++) {
	inc	-1 (ix)
	jp	00243$
00228$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:315: } else if (*game_state == 4) {
	ld	a, c
	sub	a, #0x04
	jp	NZ,00225$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:317: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jp	Z, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:318: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	a, 4 (ix)
	ld	-11 (ix), a
	ld	a, 5 (ix)
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	c, (hl)
	ld	hl, #_Frms
	ld	a, c
	sub	a, (hl)
	jp	NC, 00213$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:319: (*wait_secs)--;
	ld	a, -1 (ix)
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:320: if (*wait_secs == 0) {
	or	a, a
	jp	NZ, 00213$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:321: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:324: Half = 2;
	ld	hl, #_Half
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:325: Mins = HALF_TIME_DURATION; Secs = 0;
	ld	hl, #_Mins
	ld	(hl), #0x01
	ld	hl, #_Secs
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:326: KickOffTeam = TEAM_1; // Secondo tempo batte il Team 1
	ld	hl, #_KickOffTeam
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:327: TimerEnabled = FALSE; // Congela il timer fino al prossimo tocco
	ld	hl, #_TimerEnabled
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:330: SwSprite[14].lx = BALL_START_X;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:331: SwSprite[14].ly = BALL_START_Y;
	ld	hl, #0x0100
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:332: SwSprite[14].dx = 0; SwSprite[14].dy = 0; SwSprite[14].anim = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:334: Field.ly = target_ly; // Centra campo immediatamente per 2T
	ld	hl, #(_Field + 4)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:336: AssignKickOffTargets();
	call	_AssignKickOffTargets
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:337: for (u8 i = 0; i < 14; i++) {
	ld	-1 (ix), #0x00
00245$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC, 00209$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:338: SwSprite[i].lx = SwSprite[i].tx;
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
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	hl, #12
	add	hl, bc
	ld	a, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:339: SwSprite[i].ly = SwSprite[i].ty;
	ld	a, -7 (ix)
	add	a, #0x04
	ld	c, a
	ld	a, -6 (ix)
	adc	a, #0x00
	ld	b, a
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	hl, #13
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:340: SwSprite[i].dx = 0; SwSprite[i].dy = 0;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:337: for (u8 i = 0; i < 14; i++) {
	inc	-1 (ix)
	jp	00245$
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:343: *game_state = 2;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:346: *start_sec = Frms;
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00247$
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:348: } else if (*game_state == 5) {
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:350: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00247$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:351: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:352: (*wait_secs)--;
	ld	a, c
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:353: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:354: CallFnc_VOID(SEG_DRAW, HideSpriteMessage);
	push	de
	ld	de, #_HideSpriteMessage
	ld	a, #0x05
	call	_CallFnc_VOID
	ld	de, #_EventTimeUp
	ld	a, #0x08
	call	_CallFnc_VOID
	pop	de
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:358: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
00247$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s9_b3.c:361: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
	.area _SEG9
	.area _INITIALIZER
__xinit__g_last_dx:
	.db #0x00	;  0
	.db #0x00	;  0
__xinit__g_last_dy:
	.db #0x01	;  1
	.db #0xff	; -1
	.area _CABS (ABS)
