;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s11_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EventBallKicked
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
	.globl _AssignKickOffTargets
	.globl _AssignThrowInTargets
	.globl _AssignGoalKickTargets
	.globl _AssignCornerKickTargets
	.globl _ExecuteThrowIn
	.globl _ExecuteCornerKick
	.globl _GetPlayerAnimFrame
	.globl _GetPlayerIdleFrame
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
	.area _SEG11
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:10: void AssignKickOffTargets() {
;	---------------------------------
; Function AssignKickOffTargets
; ---------------------------------
_AssignKickOffTargets::
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:11: SwSprite[0].tx = 120; SwSprite[0].ty = 32;   
	ld	hl, #(_SwSprite + 12)
	ld	(hl), #0x78
	ld	hl, #0x0020
	ld	((_SwSprite + 13)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:12: SwSprite[1].tx = 64;  SwSprite[1].ty = 96;   
	ld	hl, #(_SwSprite + 35)
	ld	(hl), #0x40
	ld	hl, #0x0060
	ld	((_SwSprite + 36)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:13: SwSprite[2].tx = 176; SwSprite[2].ty = 96;   
	ld	hl, #(_SwSprite + 58)
	ld	(hl), #0xb0
	ld	hl, #0x0060
	ld	((_SwSprite + 59)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:14: SwSprite[5].tx = 40;  SwSprite[5].ty = 160;  
	ld	hl, #(_SwSprite + 127)
	ld	(hl), #0x28
	ld	hl, #0x00a0
	ld	((_SwSprite + 128)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:15: SwSprite[6].tx = 200; SwSprite[6].ty = 160;  
	ld	hl, #(_SwSprite + 150)
	ld	(hl), #0xc8
	ld	hl, #0x00a0
	ld	((_SwSprite + 151)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:17: SwSprite[7].tx = 120; SwSprite[7].ty = 444;  
	ld	hl, #(_SwSprite + 173)
	ld	(hl), #0x78
	ld	hl, #0x01bc
	ld	((_SwSprite + 174)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:18: SwSprite[8].tx = 64;  SwSprite[8].ty = 416;  
	ld	hl, #(_SwSprite + 196)
	ld	(hl), #0x40
	ld	hl, #0x01a0
	ld	((_SwSprite + 197)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:19: SwSprite[9].tx = 176; SwSprite[9].ty = 416;  
	ld	hl, #(_SwSprite + 219)
	ld	(hl), #0xb0
	ld	hl, #0x01a0
	ld	((_SwSprite + 220)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:20: SwSprite[12].tx= 40;  SwSprite[12].ty= 312;  
	ld	hl, #(_SwSprite + 288)
	ld	(hl), #0x28
	ld	hl, #0x0138
	ld	((_SwSprite + 289)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:21: SwSprite[13].tx= 200; SwSprite[13].ty= 312;  
	ld	hl, #(_SwSprite + 311)
	ld	(hl), #0xc8
	ld	hl, #0x0138
	ld	((_SwSprite + 312)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:24: SwSprite[3].tx = 112; SwSprite[3].ty = 236;
	ld	bc, #_SwSprite + 81
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:25: SwSprite[4].tx = 128; SwSprite[4].ty = 236;
	ld	de, #_SwSprite + 104
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:26: SwSprite[10].tx= 100; SwSprite[10].ty= 296;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:27: SwSprite[11].tx= 140; SwSprite[11].ty= 296;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:23: if (KickOffTeam == TEAM_1) {
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:24: SwSprite[3].tx = 112; SwSprite[3].ty = 236;
	ld	a, #0x70
	ld	(bc), a
	ld	hl, #0x00ec
	ld	((_SwSprite + 82)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:25: SwSprite[4].tx = 128; SwSprite[4].ty = 236;
	ld	a, #0x80
	ld	(de), a
	ld	((_SwSprite + 105)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:26: SwSprite[10].tx= 100; SwSprite[10].ty= 296;
	ld	hl, #(_SwSprite + 242)
	ld	(hl), #0x64
	ld	hl, #0x0128
	ld	((_SwSprite + 243)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:27: SwSprite[11].tx= 140; SwSprite[11].ty= 296;
	ld	hl, #(_SwSprite + 265)
	ld	(hl), #0x8c
	ld	hl, #0x0128
	ld	((_SwSprite + 266)), hl
	ret
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:30: SwSprite[3].tx = 100; SwSprite[3].ty = 200;
	ld	a, #0x64
	ld	(bc), a
	ld	hl, #0x00c8
	ld	((_SwSprite + 82)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:31: SwSprite[4].tx = 140; SwSprite[4].ty = 200;
	ld	a, #0x8c
	ld	(de), a
	ld	((_SwSprite + 105)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:32: SwSprite[10].tx= 112; SwSprite[10].ty= 254;
	ld	hl, #(_SwSprite + 242)
	ld	(hl), #0x70
	ld	hl, #0x00fe
	ld	((_SwSprite + 243)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:33: SwSprite[11].tx= 128; SwSprite[11].ty= 254;
	ld	hl, #(_SwSprite + 265)
	ld	(hl), #0x80
	ld	hl, #0x00fe
	ld	((_SwSprite + 266)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:35: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:37: void AssignThrowInTargets() {
;	---------------------------------
; Function AssignThrowInTargets
; ---------------------------------
_AssignThrowInTargets::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-21
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:38: u8 team_to_throw = (LastTouchTeam == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	NZ, 00183$
	ld	bc, #0x0001
	jp	00184$
00183$:
	ld	bc, #0x0000
00184$:
	ld	-13 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:39: if (LastTouchTeam == 0xFF) team_to_throw = TEAM_1;
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00102$
	ld	-13 (ix), #0x00
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:42: if (RestartSideY < 48) RestartSideY = 48;
	ld	hl, (_RestartSideY)
	ld	de, #0x0030
	cp	a, a
	sbc	hl, de
	jr	NC, 00104$
	ld	hl, #0x0030
	ld	(_RestartSideY), hl
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:43: if (RestartSideY > 464) RestartSideY = 464;
	ld	hl, (_RestartSideY)
	ld	a, #0xd0
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jr	NC, 00106$
	ld	hl, #0x01d0
	ld	(_RestartSideY), hl
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:46: u8 start_t = (team_to_throw == TEAM_1) ? 1 : 8;
	ld	a, -13 (ix)
	or	a, a
	jr	NZ, 00185$
	ld	bc, #0x0001
	jp	00186$
00185$:
	ld	bc, #0x0008
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:47: u8 end_t = start_t + 6;
	ld	-1 (ix), c
	ld	a, c
	ld	-3 (ix), a
	add	a, #0x06
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:48: u8 thrower = start_t;
	ld	a, -1 (ix)
	ld	-17 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:49: u16 min_dist = 0xFFFF;
	ld	-11 (ix), #0xff
	ld	-10 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:51: for (u8 i = start_t; i < end_t; i++) {
	ld	a, -1 (ix)
	ld	-2 (ix), a
00169$:
	ld	a, -2 (ix)
	sub	a, -12 (ix)
	jp	NC, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:52: u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
	ld	c, -2 (ix)
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
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, (hl)
	ld	-6 (ix), a
	ld	c, a
	ld	b, #0x00
	ld	a, (_RestartSideX+0)
	ld	e, a
	ld	d, #0x00
	ld	a, (#_RestartSideX)
	sub	a, -6 (ix)
	jr	NC, 00187$
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	jp	00188$
00187$:
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
00188$:
	ld	-9 (ix), c
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:53: u16 dy = (SwSprite[i].ly > RestartSideY) ? (SwSprite[i].ly - RestartSideY) : (RestartSideY - SwSprite[i].ly);
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	hl, #_RestartSideY
	ld	a, (hl)
	sub	a, -7 (ix)
	inc	hl
	ld	a, (hl)
	sbc	a, -6 (ix)
	jr	NC, 00189$
	ld	hl, #_RestartSideY
	ld	a, -7 (ix)
	sub	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-4 (ix), a
	jp	00190$
00189$:
	ld	a, (_RestartSideY+0)
	sub	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, (_RestartSideY+1)
	sbc	a, -6 (ix)
	ld	-4 (ix), a
00190$:
	ld	a, -5 (ix)
	ld	b, -4 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:54: if (dx + dy < min_dist) {
	add	a, -9 (ix)
	ld	c, a
	ld	a, b
	adc	a, -8 (ix)
	ld	b, a
	ld	a, c
	sub	a, -11 (ix)
	ld	a, b
	sbc	a, -10 (ix)
	jr	NC, 00170$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:55: min_dist = dx + dy;
	ld	-11 (ix), c
	ld	-10 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:56: thrower = i;
	ld	a, -2 (ix)
	ld	-17 (ix), a
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:51: for (u8 i = start_t; i < end_t; i++) {
	inc	-2 (ix)
	jp	00169$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:61: u8 rec1 = (thrower == start_t) ? start_t + 1 : start_t;
	ld	a, -17 (ix)
	sub	a, -1 (ix)
	ld	a, #0x01
	jr	Z, 00539$
	xor	a, a
00539$:
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00191$
	ld	a, -3 (ix)
	inc	a
	jp	00192$
00191$:
	ld	a, -1 (ix)
00192$:
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:62: u8 rec2 = (thrower == start_t) ? start_t + 2 : ((thrower == start_t + 1) ? start_t + 2 : start_t + 1);
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00193$
	ld	a, -3 (ix)
	inc	a
	inc	a
	jp	00194$
00193$:
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	add	a, #0x01
	ld	-7 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -17 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -7 (ix)
	sub	a, -5 (ix)
	jr	NZ, 00195$
	ld	a, -6 (ix)
	sub	a, -4 (ix)
	jr	NZ, 00195$
	ld	a, -3 (ix)
	inc	a
	inc	a
	jp	00196$
00195$:
	ld	a, -3 (ix)
	inc	a
00196$:
00194$:
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:63: u16 min1 = 0xFFFF, min2 = 0xFFFF;
	ld	-11 (ix), #0xff
	ld	-10 (ix), #0xff
	ld	-9 (ix), #0xff
	ld	-8 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:65: for (u8 i = start_t; i < end_t; i++) {
00172$:
	ld	a, -1 (ix)
	sub	a, -12 (ix)
	jp	NC, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:66: if (i == thrower) continue;
	ld	a, -17 (ix)
	sub	a, -1 (ix)
	jp	Z,00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:67: u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, (hl)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:52: u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
	ld	a, (_RestartSideX+0)
	ld	c, a
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:67: u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
	ld	e, -4 (ix)
	ld	d, #0x00
	ld	a, (#_RestartSideX)
	sub	a, -4 (ix)
	jr	NC, 00197$
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
	jp	00198$
00197$:
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
00198$:
	ld	-7 (ix), c
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:68: u16 dy = (SwSprite[i].ly > RestartSideY) ? (SwSprite[i].ly - RestartSideY) : (RestartSideY - SwSprite[i].ly);
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	hl, #_RestartSideY
	ld	a, (hl)
	sub	a, -5 (ix)
	inc	hl
	ld	a, (hl)
	sbc	a, -4 (ix)
	jr	NC, 00199$
	ld	hl, #_RestartSideY
	ld	a, -5 (ix)
	sub	a, (hl)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	inc	hl
	sbc	a, (hl)
	ld	-2 (ix), a
	jp	00200$
00199$:
	ld	a, (_RestartSideY+0)
	sub	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, (_RestartSideY+1)
	sbc	a, -4 (ix)
	ld	-2 (ix), a
00200$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:69: if (dx + dy < min1) {
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, bc
	ld	a, l
	sub	a, -11 (ix)
	ld	a, h
	sbc	a, -10 (ix)
	jr	NC, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:70: min2 = min1; rec2 = rec1;
	ld	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -16 (ix)
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:71: min1 = dx + dy; rec1 = i;
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -1 (ix)
	ld	-16 (ix), a
	jp	00117$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:72: } else if (dx + dy < min2) {
	ld	a, l
	sub	a, -9 (ix)
	ld	a, h
	sbc	a, -8 (ix)
	jr	NC, 00117$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:73: min2 = dx + dy; rec2 = i;
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -1 (ix)
	ld	-15 (ix), a
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:65: for (u8 i = start_t; i < end_t; i++) {
	inc	-1 (ix)
	jp	00172$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:78: u8 def_t = (team_to_throw == TEAM_1) ? 8 : 1;
	ld	a, -13 (ix)
	or	a, a
	jr	NZ, 00201$
	ld	bc, #0x0008
	jp	00202$
00201$:
	ld	bc, #0x0001
00202$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:79: u8 def_end = def_t + 6;
	ld	-1 (ix), c
	ld	a, c
	ld	-2 (ix), a
	add	a, #0x06
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:80: u8 def1 = def_t, def2 = def_t + 1;
	ld	a, -1 (ix)
	ld	-14 (ix), a
	ld	a, -2 (ix)
	inc	a
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:81: min1 = 0xFFFF; min2 = 0xFFFF;
	ld	-8 (ix), #0xff
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0xff
	ld	-5 (ix), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:83: for (u8 i = def_t; i < def_end; i++) {
	ld	a, -1 (ix)
	ld	-3 (ix), a
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:52: u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
	ld	a, (_RestartSideX+0)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:83: for (u8 i = def_t; i < def_end; i++) {
	ld	a, -3 (ix)
	sub	a, -9 (ix)
	jp	NC, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:84: u16 dx = (SwSprite[i].lx > RestartSideX) ? (SwSprite[i].lx - RestartSideX) : (RestartSideX - SwSprite[i].lx);
	ld	c, -3 (ix)
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
	ld	a, (de)
	ld	-4 (ix), a
	ld	c, a
	ld	b, #0x00
	ld	a, (#_RestartSideX)
	sub	a, -4 (ix)
	jr	NC, 00203$
	ld	a, c
	sub	a, -2 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -1 (ix)
	jp	00204$
00203$:
	ld	a, -2 (ix)
	sub	a, c
	ld	c, a
	ld	a, -1 (ix)
	sbc	a, b
00204$:
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:85: u16 dy = (SwSprite[i].ly > RestartSideY) ? (SwSprite[i].ly - RestartSideY) : (RestartSideY - SwSprite[i].ly);
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #_RestartSideY
	ld	a, (hl)
	inc	hl
	sub	a, e
	ld	a, (hl)
	sbc	a, d
	jr	NC, 00205$
	ld	hl, #_RestartSideY
	ld	a, e
	sub	a, (hl)
	inc	hl
	ld	e, a
	ld	a, d
	sbc	a, (hl)
	ld	d, a
	jp	00206$
00205$:
	ld	hl, (_RestartSideY)
	cp	a, a
	sbc	hl, de
	ex	de, hl
00206$:
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:86: if (dx + dy < min1) {
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -2 (ix)
	sub	a, -8 (ix)
	ld	a, -1 (ix)
	sbc	a, -7 (ix)
	jr	NC, 00122$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:87: min2 = min1; def2 = def1;
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -14 (ix)
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:88: min1 = dx + dy; def1 = i;
	ld	a, -2 (ix)
	ld	c, -1 (ix)
	ld	-8 (ix), a
	ld	-7 (ix), c
	ld	a, -3 (ix)
	ld	-14 (ix), a
	jp	00175$
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:89: } else if (dx + dy < min2) {
	ld	a, -2 (ix)
	sub	a, -6 (ix)
	ld	a, -1 (ix)
	sbc	a, -5 (ix)
	jr	NC, 00175$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:90: min2 = dx + dy; def2 = i;
	ld	a, -2 (ix)
	ld	c, -1 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), c
	ld	a, -3 (ix)
	ld	-13 (ix), a
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:83: for (u8 i = def_t; i < def_end; i++) {
	inc	-3 (ix)
	jp	00174$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:95: u16 thrower_y = RestartSideY - 8;
	ld	hl, (_RestartSideY)
	ld	a, l
	add	a, #0xf8
	ld	c, a
	ld	a, h
	adc	a, #0xff
	ld	-12 (ix), c
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:96: i8 dir_x = (RestartSideX < 128) ? 1 : -1;
	ld	a, (_RestartSideX+0)
	sub	a, #0x80
	jr	NC, 00207$
	ld	bc, #0x0001
	jp	00208$
00207$:
	ld	bc, #0xffff
00208$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:97: u16 thrower_x = RestartSideX - (dir_x * 8); // Arretra di 8 pixel fuori dal campo
	ld	-10 (ix), c
	ld	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, -2 (ix)
	sub	a, l
	ld	c, a
	ld	a, -1 (ix)
	sbc	a, h
	ld	-9 (ix), c
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:99: SwSprite[14].lx = thrower_x;
	ld	a, -9 (ix)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:100: SwSprite[14].ly = thrower_y - 6; // Palla sopra la testa del battitore
	ld	a, -12 (ix)
	ld	c, -11 (ix)
	add	a, #0xfa
	ld	e, a
	ld	a, c
	adc	a, #0xff
	ld	d, a
	ld	((_SwSprite + 326)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:101: SwSprite[14].frame = SPR_BALL_SIZE_2; 
	ld	hl, #0x0061
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:102: SwSprite[14].dx = SwSprite[14].dy = SwSprite[14].anim = SwSprite[14].count = 0;
	ld	l, h
	ld	((_SwSprite + 343)), hl
	ld	((_SwSprite + 341)), hl
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:103: g_thrower_id = thrower;
	ld	a, -17 (ix)
	ld	(_g_thrower_id+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:105: g_throw_rec_1 = rec1;
	ld	a, -16 (ix)
	ld	(_g_throw_rec_1+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:106: g_throw_rec_2 = rec2;
	ld	a, -15 (ix)
	ld	(_g_throw_rec_2+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:107: g_selected_rec = 0;
	ld	hl, #_g_selected_rec
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:110: SwSprite[0].tx = 128; SwSprite[0].ty = 32;
	ld	hl, #(_SwSprite + 12)
	ld	(hl), #0x80
	ld	hl, #0x0020
	ld	((_SwSprite + 13)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:111: SwSprite[7].tx = 128; SwSprite[7].ty = 444;
	ld	hl, #(_SwSprite + 173)
	ld	(hl), #0x80
	ld	hl, #0x01bc
	ld	((_SwSprite + 174)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:114: for(u8 i=1; i<14; i++) {
	ld	-1 (ix), #0x01
00177$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:115: if (i == 7 || i == thrower || i == rec1 || i == rec2 || i == def1 || i == def2) continue;
	ld	a, -1 (ix)
	sub	a, #0x07
	jp	Z,00157$
	ld	a, -17 (ix)
	sub	a, -1 (ix)
	jp	Z,00157$
	ld	a, -16 (ix)
	sub	a, -1 (ix)
	jp	Z,00157$
	ld	a, -15 (ix)
	sub	a, -1 (ix)
	jp	Z,00157$
	ld	a, -14 (ix)
	sub	a, -1 (ix)
	jp	Z,00157$
	ld	a, -13 (ix)
	sub	a, -1 (ix)
	jp	Z,00157$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:117: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00209$
	ld	de, #0x0000
	jp	00210$
00209$:
	ld	de, #0x0001
00210$:
	ld	c, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:118: u8 role = (team == TEAM_1) ? i : (i - 7);
	ld	a, c
	or	a, a
	jr	NZ, 00211$
	ld	a, -1 (ix)
	jp	00212$
00211$:
	ld	a, -1 (ix)
	add	a, #0xf9
00212$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:119: u16 base_x = 128;
	ld	-7 (ix), #0x80
	ld	-6 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:120: u16 base_y = 256;
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:122: if (role == 1) { base_x = 64;  base_y = (team == TEAM_1) ? 120 : 392; }
	cp	a, #0x01
	jr	NZ, 00147$
	ld	-7 (ix), #0x40
	ld	-6 (ix), #0
	ld	a, c
	or	a, a
	jr	NZ, 00213$
	ld	de, #0x0078
	jp	00214$
00213$:
	ld	de, #0x0188
00214$:
	ld	-5 (ix), e
	ld	-4 (ix), d
	jp	00148$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:123: else if (role == 2) { base_x = 192; base_y = (team == TEAM_1) ? 120 : 392; }
	cp	a, #0x02
	jr	NZ, 00144$
	ld	-7 (ix), #0xc0
	ld	-6 (ix), #0
	ld	a, c
	or	a, a
	jr	NZ, 00215$
	ld	-3 (ix), #0x78
	ld	-2 (ix), #0
	jp	00216$
00215$:
	ld	-3 (ix), #0x88
	ld	-2 (ix), #0x01
00216$:
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	jp	00148$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:124: else if (role == 3) { base_x = 64;  base_y = (team == TEAM_1) ? 200 : 312; }
	cp	a, #0x03
	jr	NZ, 00141$
	ld	-7 (ix), #0x40
	ld	-6 (ix), #0
	ld	a, c
	or	a, a
	jr	NZ, 00217$
	ld	bc, #0x00c8
	jp	00218$
00217$:
	ld	bc, #0x0138
00218$:
	ld	-5 (ix), c
	ld	-4 (ix), b
	jp	00148$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:125: else if (role == 4) { base_x = 192; base_y = (team == TEAM_1) ? 200 : 312; }
	cp	a, #0x04
	jr	NZ, 00138$
	ld	-7 (ix), #0xc0
	ld	-6 (ix), #0
	ld	a, c
	or	a, a
	jr	NZ, 00219$
	ld	bc, #0x00c8
	jp	00220$
00219$:
	ld	bc, #0x0138
00220$:
	ld	-5 (ix), c
	ld	-4 (ix), b
	jp	00148$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:126: else if (role == 5) { base_x = 80;  base_y = (team == TEAM_1) ? 280 : 232; }
	cp	a, #0x05
	jr	NZ, 00135$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
	ld	a, c
	or	a, a
	jr	NZ, 00221$
	ld	bc, #0x0118
	jp	00222$
00221$:
	ld	bc, #0x00e8
00222$:
	ld	-5 (ix), c
	ld	-4 (ix), b
	jp	00148$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:127: else if (role == 6) { base_x = 176; base_y = (team == TEAM_1) ? 280 : 232; }
	sub	a, #0x06
	jr	NZ, 00148$
	ld	-7 (ix), #0xb0
	ld	-6 (ix), #0
	ld	a, c
	or	a, a
	jr	NZ, 00223$
	ld	bc, #0x0118
	jp	00224$
00223$:
	ld	bc, #0x00e8
00224$:
	ld	-5 (ix), c
	ld	-4 (ix), b
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:130: i16 ball_offset_y = (i16)RestartSideY - 256;
	ld	hl, (_RestartSideY)
	ld	c, l
	ld	a,h
	dec	a
	ld	b, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:131: SwSprite[i].tx = base_x;
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
	ex	de, hl
	ld	hl, #_SwSprite
	add	hl, de
	ex	de, hl
	ld	hl, #0x000c
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, -7 (ix)
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:132: SwSprite[i].ty = base_y + (ball_offset_y / 2);
	ld	hl, #0x000d
	add	hl, de
	ex	de, hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00225$
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
00225$:
	sra	h
	rr	l
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	l, e
	ld	h, d
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:134: if (SwSprite[i].tx < 16) SwSprite[i].tx = 16;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	sub	a, #0x10
	jr	NC, 00150$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x10
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:135: if (SwSprite[i].tx > 240) SwSprite[i].tx = 240;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	ld	a, #0xf0
	sub	a, c
	jr	NC, 00152$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xf0
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:136: if (SwSprite[i].ty < 48) SwSprite[i].ty = 48;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x30
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00154$
	ld	l, e
	ld	h, d
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:137: if (SwSprite[i].ty > 464) SwSprite[i].ty = 464;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xd0
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00157$
	ld	a, #0xd0
	ld	(de), a
	inc	de
	ld	a, #0x01
	ld	(de), a
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:114: for(u8 i=1; i<14; i++) {
	inc	-1 (ix)
	jp	00177$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:140: SwSprite[thrower].tx = thrower_x;
	ld	c, -17 (ix)
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
	ld	a, -9 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:141: SwSprite[thrower].ty = thrower_y;
	ld	hl, #0x000d
	add	hl, de
	ld	a, -12 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -11 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:144: SwSprite[rec1].tx = RestartSideX + dir_x * 50; SwSprite[rec1].ty = RestartSideY - 48;
	ld	c, -16 (ix)
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
	ld	c, l
	ld	b, h
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	push	de
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	ld	a, (_RestartSideX+0)
	add	a, l
	ld	(de), a
	ld	hl, #0x000d
	add	hl, bc
	ld	bc, (_RestartSideY)
	ld	a, c
	add	a, #0xd0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:145: SwSprite[rec2].tx = RestartSideX + dir_x * 70; SwSprite[rec2].ty = RestartSideY + 32;
	ld	c, -15 (ix)
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
	ld	c, l
	ld	b, h
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	push	de
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	ld	a, (_RestartSideX+0)
	add	a, l
	ld	(de), a
	ld	hl, #0x000d
	add	hl, bc
	ld	bc, (_RestartSideY)
	ld	a, c
	add	a, #0x20
	ld	c, a
	jr	NC, 00561$
	inc	b
00561$:
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:146: SwSprite[def1].tx = RestartSideX + dir_x * 40; SwSprite[def1].ty = RestartSideY - 24;
	ld	c, -14 (ix)
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
	ld	c, l
	ld	b, h
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	push	de
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	de
	ld	a, (_RestartSideX+0)
	add	a, l
	ld	(de), a
	ld	hl, #0x000d
	add	hl, bc
	ld	bc, (_RestartSideY)
	ld	a, c
	add	a, #0xe8
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:147: SwSprite[def2].tx = RestartSideX + dir_x * 60; SwSprite[def2].ty = RestartSideY + 48;
	ld	c, -13 (ix)
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
	ld	c, l
	ld	b, h
	ld	hl, #0x000c
	add	hl, bc
	ex	de, hl
	push	de
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	ld	a, (_RestartSideX+0)
	add	a, l
	ld	(de), a
	ld	hl, #0x000d
	add	hl, bc
	ld	bc, (_RestartSideY)
	ld	a, c
	add	a, #0x30
	ld	c, a
	jr	NC, 00562$
	inc	b
00562$:
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:149: u8 players_to_check[4] = {rec1, rec2, def1, def2};
	ld	a, -16 (ix)
	ld	-21 (ix), a
	ld	a, -15 (ix)
	ld	-20 (ix), a
	ld	a, -14 (ix)
	ld	-19 (ix), a
	ld	a, -13 (ix)
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:150: for(u8 p=0; p<4; p++) {
	ld	-1 (ix), #0x00
00179$:
	ld	a, -1 (ix)
	sub	a, #0x04
	jr	NC, 00181$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:151: u8 idx = players_to_check[p];
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:152: if (SwSprite[idx].tx < 16) SwSprite[idx].tx = 16;
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, (hl)
	sub	a, #0x10
	jr	NC, 00160$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x10
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:153: if (SwSprite[idx].tx > 240) SwSprite[idx].tx = 240;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	c, (hl)
	ld	a, #0xf0
	sub	a, c
	jr	NC, 00162$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xf0
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:154: if (SwSprite[idx].ty < 24) SwSprite[idx].ty = 24;
	ld	hl, #0x000d
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00164$
	ld	(hl), #0x18
	inc	hl
	ld	(hl), #0x00
	dec	hl
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:155: if (SwSprite[idx].ty > 488) SwSprite[idx].ty = 488;
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, #0xe8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00180$
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x01
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:150: for(u8 p=0; p<4; p++) {
	inc	-1 (ix)
	jp	00179$
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:157: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:159: void AssignGoalKickTargets() {
;	---------------------------------
; Function AssignGoalKickTargets
; ---------------------------------
_AssignGoalKickTargets::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-14
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:160: u8 team_to_kick = (RestartSideY < 256) ? TEAM_1 : TEAM_2;
	ld	hl, (_RestartSideY)
	ld	a, h
	sub	a, #0x01
	jr	NC, 00160$
	ld	bc, #0x0000
	jp	00161$
00160$:
	ld	bc, #0x0001
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:161: u8 gk = (team_to_kick == TEAM_1) ? 0 : 7;
	ld	-12 (ix), c
	ld	a, c
	or	a, a
	jr	NZ, 00162$
	ld	bc, #0x0000
	jp	00163$
00162$:
	ld	bc, #0x0007
00163$:
	ld	-8 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:162: i8 dir_y = (team_to_kick == TEAM_1) ? 1 : -1;
	ld	a, -12 (ix)
	or	a, a
	jr	NZ, 00164$
	ld	bc, #0x0001
	jp	00165$
00164$:
	ld	bc, #0xffff
00165$:
	ld	-7 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:164: u16 kick_y = (team_to_kick == TEAM_1) ? 48 : 464;
	ld	a, -12 (ix)
	or	a, a
	jr	NZ, 00166$
	ld	bc, #0x0030
	jp	00167$
00166$:
	ld	bc, #0x01d0
00167$:
	ld	-6 (ix), c
	ld	-5 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:165: u16 gk_start_x = (RestartSideX < 128) ? 75 : 181; // Partenza del portiere
	ld	a, (_RestartSideX+0)
	sub	a, #0x80
	ld	a, #0x00
	rla
	or	a, a
	jr	Z, 00168$
	ld	de, #0x004b
	jp	00169$
00168$:
	ld	de, #0x00b5
00169$:
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:166: u16 ball_x = (RestartSideX < 128) ? 95 : 161; // Palla spostata di 20 pixel verso lo specchio della porta
	or	a, a
	jr	Z, 00170$
	ld	de, #0x005f
	jp	00171$
00170$:
	ld	de, #0x00a1
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:168: if (RestartType == RESTART_GKSAVE) {
	ld	a, (_RestartType+0)
	sub	a, #0x04
	jr	NZ, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:169: gk_start_x = RestartSideX;
	ld	a, (_RestartSideX+0)
	ld	d, #0x00
	ld	-4 (ix), a
	ld	-3 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:170: kick_y = RestartSideY;
	ld	hl, (_RestartSideY)
	ld	-6 (ix), l
	ld	-5 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:171: ball_x = RestartSideX;
	ld	e, a
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:174: SwSprite[14].lx = ball_x;
	ld	hl, #_SwSprite + 322
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:175: SwSprite[14].ly = kick_y;
	ld	de, #_SwSprite + 326
	ld	l, e
	ld	h, d
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:179: SwSprite[14].frame = SPR_BALL_SIZE_1; // Dimensione 1 per proporzione realistica
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:180: SwSprite[gk].frame = (team_to_kick == TEAM_1) ? SPR_GK_PLAYER_SOUTH_WITH_BALL : SPR_GK_PLAYER_NORTH_WITH_BALL;
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
	ld	bc,#_SwSprite
	add	hl,bc
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:177: if (RestartType == RESTART_GKSAVE) {
	ld	a, (_RestartType+0)
	sub	a, #0x04
	jr	NZ, 00104$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:178: SwSprite[14].ly = RestartSideY + (dir_y * 4); // Palla visibile in mano
	ld	a, -7 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
	add	hl, hl
	add	hl, hl
	ld	iy, (_RestartSideY)
	push	iy
	ld	a, -16 (ix)
	pop	iy
	add	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	iy
	ld	a, -15 (ix)
	pop	iy
	adc	a, h
	ld	-2 (ix), l
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	(de), a
	inc	de
	ld	a, -1 (ix)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:179: SwSprite[14].frame = SPR_BALL_SIZE_1; // Dimensione 1 per proporzione realistica
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:180: SwSprite[gk].frame = (team_to_kick == TEAM_1) ? SPR_GK_PLAYER_SOUTH_WITH_BALL : SPR_GK_PLAYER_NORTH_WITH_BALL;
	ld	l, #0x0f
	add	hl, bc
	ld	a, -12 (ix)
	or	a, a
	jr	NZ, 00172$
	ld	de, #0x00f0
	jp	00173$
00172$:
	ld	de, #0x00f1
00173$:
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00105$
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:182: SwSprite[14].frame = SPR_BALL_SIZE_1; 
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:184: SwSprite[14].dx = SwSprite[14].dy = SwSprite[14].anim = SwSprite[14].count = 0;
	ld	hl, #0x0000
	ld	((_SwSprite + 343)), hl
	ld	((_SwSprite + 341)), hl
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:187: SwSprite[gk].tx = gk_start_x; 
	ld	hl, #0x000c
	add	hl, bc
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:188: SwSprite[gk].ty = kick_y - ((RestartType == RESTART_GKSAVE) ? 0 : (dir_y * 20));
	ld	hl, #0x000d
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (_RestartType+0)
	sub	a, #0x04
	jr	NZ, 00174$
	ld	de, #0x0000
	jp	00175$
00174$:
	ld	a, -7 (ix)
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ex	de, hl
00175$:
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:190: u8 other_gk = (gk == 0) ? 7 : 0;
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00176$
	ld	bc, #0x0007
	jp	00177$
00176$:
	ld	bc, #0x0000
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:191: SwSprite[other_gk].tx = 128;
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
	ld	(hl), #0x80
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:192: SwSprite[other_gk].ty = (other_gk == 0) ? 32 : 444;
	ld	hl, #0x000d
	add	hl, de
	ld	a, c
	or	a, a
	jr	NZ, 00178$
	ld	de, #0x0020
	jp	00179$
00178$:
	ld	de, #0x01bc
00179$:
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:195: u8 start_t = (team_to_kick == TEAM_1) ? 1 : 8;
	ld	a, -12 (ix)
	or	a, a
	jr	NZ, 00180$
	ld	bc, #0x0001
	jp	00181$
00180$:
	ld	bc, #0x0008
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:196: g_throw_rec_1 = start_t + 4; // Attaccante Sx (ruolo 5)
	ld	a, c
	add	a, #0x04
	ld	(_g_throw_rec_1+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:197: g_throw_rec_2 = start_t + 5; // Attaccante Dx (ruolo 6)
	ld	a, c
	add	a, #0x05
	ld	(_g_throw_rec_2+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:198: g_selected_rec = 0;
	ld	hl, #_g_selected_rec
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:201: for(u8 i=1; i<14; i++) {
	ld	a, -12 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00364$
	xor	a, a
00364$:
	ld	-11 (ix), a
	ld	-3 (ix), #0x01
00157$:
	ld	a, -3 (ix)
	sub	a, #0x0e
	jp	NC, 00158$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:202: if (i == 7) continue;
	ld	a, -3 (ix)
	sub	a, #0x07
	jp	Z,00154$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:204: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -3 (ix)
	sub	a, #0x07
	jr	NC, 00182$
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
	jp	00183$
00182$:
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
00183$:
	ld	a, -2 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:205: u8 role = (team == TEAM_1) ? i : (i - 7);
	ld	-4 (ix), a
	or	a, a
	jr	NZ, 00184$
	ld	a, -3 (ix)
	ld	-1 (ix), a
	jp	00185$
00184$:
	ld	a, -3 (ix)
	ld	-1 (ix), a
	add	a, #0xf9
	ld	-1 (ix), a
00185$:
	ld	a, -1 (ix)
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:206: u16 base_x = 128;
	ld	-7 (ix), #0x80
	ld	-6 (ix), #0
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:208: if (role == 1) { base_x = 64; }
	ld	a, -2 (ix)
	dec	a
	ld	a, #0x01
	jr	Z, 00367$
	xor	a, a
00367$:
	ld	-1 (ix), a
	or	a, a
	jr	Z, 00123$
	ld	-7 (ix), #0x40
	ld	-6 (ix), #0
	jp	00124$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:209: else if (role == 2) { base_x = 192; }
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	NZ, 00120$
	ld	-7 (ix), #0xc0
	ld	-6 (ix), #0
	jp	00124$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:210: else if (role == 3) { base_x = 64; }
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	NZ, 00117$
	ld	-7 (ix), #0x40
	ld	-6 (ix), #0
	jp	00124$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:211: else if (role == 4) { base_x = 192; }
	ld	a, -2 (ix)
	sub	a, #0x04
	jr	NZ, 00114$
	ld	-7 (ix), #0xc0
	ld	-6 (ix), #0
	jp	00124$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:212: else if (role == 5) { base_x = 80; }
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	NZ, 00111$
	ld	-7 (ix), #0x50
	ld	-6 (ix), #0
	jp	00124$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:213: else if (role == 6) { base_x = 176; }
	ld	a, -2 (ix)
	sub	a, #0x06
	jr	NZ, 00124$
	ld	-7 (ix), #0xb0
	ld	-6 (ix), #0
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:216: if (team == team_to_kick) {
	ld	a, -4 (ix)
	sub	a, -12 (ix)
	jr	NZ, 00142$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:217: if (role == 1 || role == 2) base_y = 60;
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00129$
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	NZ, 00130$
00129$:
	ld	-2 (ix), #0x3c
	ld	-1 (ix), #0
	jp	00143$
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:218: else if (role == 3 || role == 4) base_y = 110;
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	Z, 00125$
	ld	a, -2 (ix)
	sub	a, #0x04
	jr	NZ, 00126$
00125$:
	ld	-2 (ix), #0x6e
	ld	-1 (ix), #0
	jp	00143$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:219: else base_y = 160; // Attaccanti visibili nello schermo per la selezione
	ld	-2 (ix), #0xa0
	ld	-1 (ix), #0
	jp	00143$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:221: if (role == 1 || role == 2) base_y = 240; 
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00137$
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	NZ, 00138$
00137$:
	ld	-2 (ix), #0xf0
	ld	-1 (ix), #0
	jp	00143$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:222: else if (role == 3 || role == 4) base_y = 180; 
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	Z, 00133$
	ld	a, -2 (ix)
	sub	a, #0x04
	jr	NZ, 00134$
00133$:
	ld	-2 (ix), #0xb4
	ld	-1 (ix), #0
	jp	00143$
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:223: else base_y = 120; 
	ld	-2 (ix), #0x78
	ld	-1 (ix), #0
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:227: if (team_to_kick == TEAM_2) {
	ld	a, -11 (ix)
	or	a, a
	jr	Z, 00145$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:228: base_y = 512 - base_y;
	xor	a, a
	sub	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, #0x02
	sbc	a, -1 (ix)
	ld	-1 (ix), a
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:232: i8 rand_x = ((Frms + i * 11) % 40) - 20;
	ld	a, (_Frms+0)
	ld	-14 (ix), a
	ld	-13 (ix), #0x00
	ld	a, -3 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, -14 (ix)
	add	a, -5 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -13 (ix)
	adc	a, -4 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	de, #0x0028
	call	__modsint
	ld	a, e
	add	a, #0xec
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:233: i8 rand_y = ((Frms + i * 17) % 40) - 20;
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	pop	de
	push	de
	add	hl, de
	ld	de, #0x0028
	call	__modsint
	ld	a, e
	add	a, #0xec
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:235: i16 final_x = base_x + rand_x;
	ld	a, -4 (ix)
	ld	-5 (ix), a
	rlca
	sbc	a, a
	ld	-4 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, -9 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, -8 (ix)
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:236: i16 final_y = base_y + rand_y;
	ld	a, -10 (ix)
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	a, -2 (ix)
	add	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -1 (ix)
	adc	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-2 (ix), a
	ld	a, -8 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:238: if (final_x < 16) final_x = 16;
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x10
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00147$
	ld	-5 (ix), #0x10
	ld	-4 (ix), #0
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:239: if (final_x > 240) final_x = 240;
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	a, #0xf0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00390$
	xor	a, #0x80
00390$:
	jp	P, 00149$
	ld	-5 (ix), #0xf0
	ld	-4 (ix), #0
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:240: if (final_y < 24) final_y = 24;
	ld	a, -2 (ix)
	ld	b, -1 (ix)
	sub	a, #0x18
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00151$
	ld	-2 (ix), #0x18
	ld	-1 (ix), #0
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:241: if (final_y > 488) final_y = 488;
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	a, #0xe8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jp	PO, 00391$
	xor	a, #0x80
00391$:
	jp	P, 00153$
	ld	-2 (ix), #0xe8
	ld	-1 (ix), #0x01
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:243: SwSprite[i].tx = (u8)final_x;
	ld	c, -3 (ix)
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
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:244: SwSprite[i].ty = (u16)final_y;
	ld	hl, #0x000d
	add	hl, de
	ld	a, -2 (ix)
	ld	c, -1 (ix)
	ld	(hl), a
	inc	hl
	ld	(hl), c
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:201: for(u8 i=1; i<14; i++) {
	inc	-3 (ix)
	jp	00157$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:246: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:248: void AssignCornerKickTargets() {
;	---------------------------------
; Function AssignCornerKickTargets
; ---------------------------------
_AssignCornerKickTargets::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:249: u8 team_to_kick = (LastTouchTeam == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, (_LastTouchTeam+0)
	or	a, a
	jr	NZ, 00129$
	ld	bc, #0x0001
	jp	00130$
00129$:
	ld	bc, #0x0000
00130$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:250: if (LastTouchTeam == 0xFF) team_to_kick = TEAM_1;
	ld	a, (_LastTouchTeam+0)
	inc	a
	jr	NZ, 00102$
	ld	c,a
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:252: u8 thrower = (team_to_kick == TEAM_1) ? 5 : 12; // Attaccante sx/dx
	ld	a, c
	or	a, a
	jr	NZ, 00131$
	ld	de, #0x0005
	jp	00132$
00131$:
	ld	de, #0x000c
00132$:
	ld	-16 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:254: u16 corner_x = (RestartSideX < 128) ? 20 : 216; // Allontanato dal bordo laterale
	ld	a, (_RestartSideX+0)
	sub	a, #0x80
	jr	NC, 00133$
	ld	de, #0x0014
	jp	00134$
00133$:
	ld	de, #0x00d8
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:255: u16 corner_y = (RestartSideY < 256) ? 40 : 472; // Più all'interno del campo di 4px
	ld	hl, (_RestartSideY)
	ld	a, h
	sub	a, #0x01
	jr	NC, 00135$
	ld	hl, #0x0028
	jp	00136$
00135$:
	ld	hl, #0x01d8
00136$:
	ld	-6 (ix), l
	ld	-5 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:257: SwSprite[14].lx = corner_x;
	ld	-4 (ix), e
	ld	hl, #(_SwSprite + 322)
	ld	a, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:258: SwSprite[14].ly = corner_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:259: SwSprite[14].frame = SPR_BALL_SIZE_1;
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:260: SwSprite[14].dx = SwSprite[14].dy = SwSprite[14].anim = SwSprite[14].count = 0;
	ld	l, h
	ld	((_SwSprite + 343)), hl
	ld	((_SwSprite + 341)), hl
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:261: g_thrower_id = thrower;
	ld	a, -16 (ix)
	ld	(_g_thrower_id+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:263: i8 dir_x = (corner_x < 128) ? 1 : -1;
	ld	a, e
	sub	a, #0x80
	ld	a, d
	sbc	a, #0x00
	jr	NC, 00137$
	ld	de, #0x0001
	jp	00138$
00137$:
	ld	de, #0xffff
00138$:
	ld	b, e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:264: i8 dir_y = (corner_y < 256) ? 1 : -1;
	ld	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, -5 (ix)
	ld	-2 (ix), a
	sub	a, #0x01
	ld	a, #0x00
	rla
	ld	-15 (ix), a
	or	a, a
	jr	Z, 00139$
	ld	de, #0x0001
	jp	00140$
00139$:
	ld	de, #0xffff
00140$:
	ld	-1 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:265: SwSprite[thrower].tx = corner_x - (dir_x * 8);
	ld	e, -16 (ix)
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
	ld	a, b
	add	a, a
	add	a, a
	add	a, a
	ld	b, a
	ld	a, -4 (ix)
	sub	a, b
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:266: SwSprite[thrower].ty = corner_y - (dir_y * 8);
	ld	hl, #0x000d
	add	hl, de
	ld	a, -1 (ix)
	ld	-14 (ix), a
	rlca
	sbc	a, a
	ld	-13 (ix), a
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	a, -3 (ix)
	sub	a, e
	ld	e, a
	ld	a, -2 (ix)
	sbc	a, d
	ld	(hl), e
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:268: u8 start_t = (team_to_kick == TEAM_1) ? 1 : 8;
	ld	a, c
	or	a, a
	jr	NZ, 00141$
	ld	bc, #0x0001
	jp	00142$
00141$:
	ld	bc, #0x0008
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:269: g_throw_rec_1 = start_t + 2; // Centro sx/dx
	ld	a, c
	add	a, #0x02
	ld	(_g_throw_rec_1+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:270: g_throw_rec_2 = start_t + 3; // Centro dx/sx
	ld	a, c
	add	a, #0x03
	ld	(_g_throw_rec_2+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:271: g_selected_rec = 0;
	ld	hl, #_g_selected_rec
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:273: u16 area_y = (corner_y < 256) ? 96 : 416; // Piazzi i ricevitori al limite dell'area
	ld	a, -15 (ix)
	or	a, a
	jr	Z, 00143$
	ld	bc, #0x0060
	jp	00144$
00143$:
	ld	bc, #0x01a0
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:274: SwSprite[g_throw_rec_1].tx = 108; SwSprite[g_throw_rec_1].ty = area_y;
	ld	de, (_g_throw_rec_1)
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
	ld	de, #0x000c
	add	hl, de
	ld	(hl), #0x6c
	ld	de, (_g_throw_rec_1)
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
	ld	de, #0x000d
	add	hl, de
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:275: SwSprite[g_throw_rec_2].tx = 148; SwSprite[g_throw_rec_2].ty = area_y + (dir_y * 16);
	ld	de, (_g_throw_rec_2)
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
	ld	de, #0x000c
	add	hl, de
	ld	(hl), #0x94
	ld	de, (_g_throw_rec_2)
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
	ld	de, #0x000d
	add	hl, de
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	-12 (ix), c
	ld	-11 (ix), b
	ld	a, e
	add	a, -12 (ix)
	ld	c, a
	ld	a, d
	adc	a, -11 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:277: SwSprite[0].tx = 128; SwSprite[0].ty = 32;
	ld	hl, #(_SwSprite + 12)
	ld	(hl), #0x80
	ld	hl, #0x0020
	ld	((_SwSprite + 13)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:278: SwSprite[7].tx = 128; SwSprite[7].ty = 444;
	ld	hl, #(_SwSprite + 173)
	ld	(hl), #0x80
	ld	hl, #0x01bc
	ld	((_SwSprite + 174)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:280: for(u8 i=1; i<14; i++) {
	ld	a, -14 (ix)
	ld	-10 (ix), a
	ld	a, -13 (ix)
	ld	-9 (ix), a
	ld	b, #0x05
00272$:
	sla	-10 (ix)
	rl	-9 (ix)
	djnz	00272$
	ld	-1 (ix), #0x01
00126$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00127$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:281: if (i == 7 || i == thrower || i == g_throw_rec_1 || i == g_throw_rec_2) continue;
	ld	a, -1 (ix)
	sub	a, #0x07
	jp	Z,00123$
	ld	a, -16 (ix)
	sub	a, -1 (ix)
	jp	Z,00123$
	ld	a, (_g_throw_rec_1+0)
	sub	a, -1 (ix)
	jp	Z,00123$
	ld	a, (_g_throw_rec_2+0)
	sub	a, -1 (ix)
	jp	Z,00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:282: u8 team = (i < 7) ? TEAM_1 : TEAM_2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00145$
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
	jp	00146$
00145$:
	ld	-3 (ix), #0x01
	ld	-2 (ix), #0
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:283: u8 role = (team == TEAM_1) ? i : (i - 7);
	ld	a, -3 (ix)
	or	a, a
	jr	NZ, 00147$
	ld	c, -1 (ix)
	jp	00148$
00147$:
	ld	a, -1 (ix)
	add	a, #0xf9
	ld	c, a
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:285: u16 base_x = 48 + (role * 24); // Distribuisce a ventaglio
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #0x0030
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:286: u16 base_y = area_y + (dir_y * 32) + (dir_y * (role * 8)); // Li tiene fuori dall'area
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	add	hl, de
	ld	e, c
	ld	d, b
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	push	hl
	ld	l, -14 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	pop	hl
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:287: i8 rand_x = ((Frms + i * 11) % 40) - 20;
	ld	a, (_Frms+0)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	add	hl, de
	push	bc
	ld	de, #0x0028
	call	__modsint
	pop	bc
	ld	a, e
	add	a, #0xec
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:288: i8 rand_y = ((Frms + i * 17) % 40) - 20;
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	add	hl, de
	ld	de, #0x0028
	call	__modsint
	ld	a, e
	add	a, #0xec
	ld	e, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:290: i16 final_x = base_x + rand_x;
	ld	a, -2 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, -8 (ix)
	ld	b, -7 (ix)
	add	hl, bc
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:291: i16 final_y = base_y + rand_y;
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:292: if (final_x < 16) final_x = 16; if (final_x > 240) final_x = 240;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, #0x10
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00109$
	ld	bc, #0x0010
00109$:
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00277$
	xor	a, #0x80
00277$:
	jp	P, 00111$
	ld	bc, #0x00f0
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:295: if (final_y < 80) final_y = 80; // Barriera invisibile per non farli entrare
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:294: if (corner_y < 256) {
	ld	a, -15 (ix)
	or	a, a
	jr	Z, 00121$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:295: if (final_y < 80) final_y = 80; // Barriera invisibile per non farli entrare
	ld	a, l
	sub	a, #0x50
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00113$
	ld	de, #0x0050
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:296: if (final_y > 256) final_y = 256;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jp	PO, 00278$
	xor	a, #0x80
00278$:
	jp	P, 00122$
	ld	de, #0x0100
	jp	00122$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:298: if (final_y > 432) final_y = 432; // Barriera invisibile
	ld	a, #0xb0
	cp	a, l
	ld	a, #0x01
	sbc	a, h
	jp	PO, 00279$
	xor	a, #0x80
00279$:
	jp	P, 00117$
	ld	de, #0x01b0
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:299: if (final_y < 256) final_y = 256;
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
	jr	NC, 00122$
	ld	de, #0x0100
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:301: SwSprite[i].tx = (u8)final_x; SwSprite[i].ty = (u16)final_y;
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
	ld	a, l
	add	a, #<(_SwSprite)
	ld	-3 (ix), a
	ld	a, h
	adc	a, #>(_SwSprite)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	add	a, #0x0c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), c
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	bc, #0x000d
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:280: for(u8 i=1; i<14; i++) {
	inc	-1 (ix)
	jp	00126$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:303: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:305: void ExecuteThrowIn(u8 thrower, u8 receiver) {
;	---------------------------------
; Function ExecuteThrowIn
; ---------------------------------
_ExecuteThrowIn::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	c, a
	ld	b, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:306: g_pass_receiver = receiver;
	ld	hl, #_g_pass_receiver
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:307: g_pass_start_x = SwSprite[thrower].lx;
	ld	e, c
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
	ld	a, (de)
	ld	(_g_pass_start_x+0), a
	xor	a, a
	ld	(_g_pass_start_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:308: g_pass_start_y = SwSprite[thrower].ly - 6; 
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	add	a, #0xfa
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	(_g_pass_start_y), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:309: g_pass_target_x = SwSprite[receiver].lx;
	ld	e, b
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
	ld	a, (de)
	ld	(_g_pass_target_x+0), a
	xor	a, a
	ld	(_g_pass_target_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:310: g_pass_target_y = SwSprite[receiver].ly;
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:312: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00107$
	ld	de, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, de
	jp	00108$
00107$:
	ld	de, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, de
00108$:
	ex	(sp), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:313: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00109$
	ld	hl, #_g_pass_start_y
	ld	a, (_g_pass_target_y+0)
	sub	a, (hl)
	inc	hl
	ld	b, a
	ld	a, (_g_pass_target_y+1)
	sbc	a, (hl)
	ld	d, a
	jp	00110$
00109$:
	ld	hl, #_g_pass_target_y
	ld	a, (_g_pass_start_y+0)
	sub	a, (hl)
	inc	hl
	ld	b, a
	ld	a, (_g_pass_start_y+1)
	sbc	a, (hl)
	ld	d, a
00110$:
	ld	e, b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:315: g_pass_max_frames = (r_dx + r_dy) / 4; 
	pop	hl
	push	hl
	add	hl, de
	srl	h
	rr	l
	srl	h
	rr	l
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:316: if (g_pass_max_frames < 10) g_pass_max_frames = 10;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x0a
	jr	NC, 00102$
	ld	0 (iy), #0x0a
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:317: if (g_pass_max_frames > 40) g_pass_max_frames = 40;
	ld	a, #0x28
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00104$
	ld	0 (iy), #0x28
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:318: g_pass_max_height = 3; // Altezza ridotta per il fallo laterale
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:320: SwSprite[14].lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:321: SwSprite[14].ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:322: SwSprite[14].anim = 5; 
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:323: SwSprite[14].count = 0; 
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:324: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	push	bc
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:325: LastTouchTeam = (thrower < 7) ? TEAM_1 : TEAM_2;
	ld	a, c
	sub	a, #0x07
	jr	NC, 00111$
	xor	a, a
	jp	00112$
00111$:
	ld	a, #0x01
00112$:
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:326: LastTouchPlayer = thrower;
	ld	hl, #_LastTouchPlayer
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:327: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:329: void ExecuteCornerKick(u8 thrower, u8 receiver) {
;	---------------------------------
; Function ExecuteCornerKick
; ---------------------------------
_ExecuteCornerKick::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	c, a
	ld	b, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:330: g_pass_receiver = receiver;
	ld	hl, #_g_pass_receiver
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:331: g_pass_start_x = SwSprite[thrower].lx;
	ld	e, c
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
	ld	a, (de)
	ld	(_g_pass_start_x+0), a
	xor	a, a
	ld	(_g_pass_start_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:332: g_pass_start_y = SwSprite[thrower].ly; 
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_start_y+0), a
	ld	a, (hl)
	ld	(_g_pass_start_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:333: g_pass_target_x = SwSprite[receiver].lx;
	ld	e, b
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
	ld	a, (de)
	ld	(_g_pass_target_x+0), a
	xor	a, a
	ld	(_g_pass_target_x+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:334: g_pass_target_y = SwSprite[receiver].ly;
	ld	hl, #4
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:336: u16 r_dx = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	ld	iy, #_g_pass_target_x
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00107$
	ld	de, (_g_pass_start_x)
	ld	hl, (_g_pass_target_x)
	cp	a, a
	sbc	hl, de
	jp	00108$
00107$:
	ld	de, (_g_pass_target_x)
	ld	hl, (_g_pass_start_x)
	cp	a, a
	sbc	hl, de
00108$:
	ex	(sp), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:337: u16 r_dy = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00109$
	ld	hl, #_g_pass_start_y
	ld	a, (_g_pass_target_y+0)
	sub	a, (hl)
	inc	hl
	ld	b, a
	ld	a, (_g_pass_target_y+1)
	sbc	a, (hl)
	ld	d, a
	jp	00110$
00109$:
	ld	hl, #_g_pass_target_y
	ld	a, (_g_pass_start_y+0)
	sub	a, (hl)
	inc	hl
	ld	b, a
	ld	a, (_g_pass_start_y+1)
	sbc	a, (hl)
	ld	d, a
00110$:
	ld	e, b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:339: g_pass_max_frames = (r_dx + r_dy) / 3; 
	pop	hl
	push	hl
	add	hl, de
	push	bc
	ld	de, #0x0003
	call	__divuint
	pop	bc
	ld	iy, #_g_pass_max_frames
	ld	0 (iy), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:340: if (g_pass_max_frames < 20) g_pass_max_frames = 20;
	ld	a, (_g_pass_max_frames+0)
	sub	a, #0x14
	jr	NC, 00102$
	ld	0 (iy), #0x14
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:341: if (g_pass_max_frames > 60) g_pass_max_frames = 60;
	ld	a, #0x3c
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00104$
	ld	0 (iy), #0x3c
00104$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:342: g_pass_max_height = 7; // Cross alto e a spiovere
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:344: SwSprite[14].lx = g_pass_start_x; SwSprite[14].ly = g_pass_start_y;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:345: SwSprite[14].anim = 5; SwSprite[14].count = 0; 
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:346: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	push	bc
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:347: LastTouchTeam = (thrower < 7) ? TEAM_1 : TEAM_2;
	ld	a, c
	sub	a, #0x07
	jr	NC, 00111$
	xor	a, a
	jp	00112$
00111$:
	ld	a, #0x01
00112$:
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:348: LastTouchPlayer = thrower;
	ld	hl, #_LastTouchPlayer
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:349: }
	ld	sp, ix
	pop	ix
	ret
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:351: u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step) 
;	---------------------------------
; Function GetPlayerAnimFrame
; ---------------------------------
_GetPlayerAnimFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	-1 (ix), a
	ld	c, l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:353: bool is_gk = (i == 0 || i == 7);
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00224$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	Z, 00224$
	xor	a, a
	jp	00225$
00224$:
	ld	a, #0x01
00225$:
	ld	-4 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:354: if (i == 26) { // Arbitro
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	NZ,00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:355: if (dy < 0 && dx == 0) return (step==0) ? SPR_REFEREE_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_REFEREE_PLAYER_NORTH_DIRECTION_2 : SPR_REFEREE_PLAYER_NORTH_DIRECTION_3;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00102$
	ld	a, c
	or	a, a
	jr	NZ, 00102$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00226$
	ld	de, #0x0113
	jp	00221$
00226$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00228$
	ld	de, #0x0114
	jp	00221$
00228$:
	ld	de, #0x0115
	jp	00221$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:356: if (dy > 0 && dx == 0) return (step==0) ? SPR_REFEREE_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_REFEREE_PLAYER_SOUTH_DIRECTION_2 : SPR_REFEREE_PLAYER_SOUTH_DIRECTION_3;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 01174$
	xor	a, #0x80
01174$:
	rlca
	and	a,#0x01
	ld	e, a
	or	a, a
	jr	Z, 00105$
	ld	a, c
	or	a, a
	jr	NZ, 00105$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00230$
	ld	de, #0x0100
	jp	00221$
00230$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00232$
	ld	de, #0x0101
	jp	00221$
00232$:
	ld	de, #0x0102
	jp	00221$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:357: if (dy == 0 && dx > 0) return (step==0) ? SPR_REFEREE_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_PLAYER_EAST_DIRECTION_2 : SPR_REFEREE_PLAYER_EAST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00108$
	sub	a, c
	jp	PO, 01177$
	xor	a, #0x80
01177$:
	jp	P, 00108$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00234$
	ld	de, #0x011d
	jp	00221$
00234$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00236$
	ld	de, #0x011c
	jp	00221$
00236$:
	ld	de, #0x011b
	jp	00221$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:358: if (dy == 0 && dx < 0) return (step==0) ? SPR_REFEREE_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_PLAYER_WEST_DIRECTION_2 : SPR_REFEREE_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00111$
	bit	7, c
	jr	Z, 00111$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00238$
	ld	de, #0x0118
	jp	00221$
00238$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00240$
	ld	de, #0x0119
	jp	00221$
00240$:
	ld	de, #0x011a
	jp	00221$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:359: if (dy < 0 && dx > 0) return (step==0) ? SPR_REFEREE_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_REFEREE_PLAYER_NORTH_EAST_DIRECTION_3;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00114$
	xor	a, a
	sub	a, c
	jp	PO, 01182$
	xor	a, #0x80
01182$:
	jp	P, 00114$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00242$
	ld	de, #0x010f
	jp	00221$
00242$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00244$
	ld	de, #0x010e
	jp	00221$
00244$:
	ld	de, #0x010d
	jp	00221$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:360: if (dy < 0 && dx < 0) return (step==0) ? SPR_REFEREE_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_REFEREE_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00117$
	bit	7, c
	jr	Z, 00117$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00246$
	ld	de, #0x0110
	jp	00221$
00246$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00248$
	ld	de, #0x0111
	jp	00221$
00248$:
	ld	de, #0x0112
	jp	00221$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:361: if (dy > 0 && dx > 0) return (step==0) ? SPR_REFEREE_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_REFEREE_PLAYER_SOUTH_EAST_DIRECTION_3;
	ld	a, e
	or	a, a
	jr	Z, 00120$
	xor	a, a
	sub	a, c
	jp	PO, 01187$
	xor	a, #0x80
01187$:
	jp	P, 00120$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00250$
	ld	de, #0x010c
	jp	00221$
00250$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00252$
	ld	de, #0x010b
	jp	00221$
00252$:
	ld	de, #0x010a
	jp	00221$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:362: if (dy > 0 && dx < 0) return (step==0) ? SPR_REFEREE_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_REFEREE_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, e
	or	a, a
	jr	Z, 00123$
	bit	7, c
	jr	Z, 00123$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00254$
	ld	de, #0x0107
	jp	00221$
00254$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00256$
	ld	de, #0x0108
	jp	00221$
00256$:
	ld	de, #0x0109
	jp	00221$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:363: return SPR_REFEREE_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0106
	jp	00221$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:365: u8 team = (i < 7) ? 1 : 2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00258$
	ld	de, #0x0001
	jp	00259$
00258$:
	ld	de, #0x0002
00259$:
	ld	-3 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:366: bool is_celebrating = (RestartType == RESTART_GOAL && ((team == 1 && KickOffTeam == TEAM_2) || (team == 2 && KickOffTeam == TEAM_1)));
	ld	a, (_RestartType+0)
	sub	a, #0x05
	jr	NZ, 00260$
	ld	a, -3 (ix)
	dec	a
	jr	NZ, 00268$
	ld	a, (_KickOffTeam+0)
	dec	a
	jr	Z, 00261$
00268$:
	ld	a, -3 (ix)
	sub	a, #0x02
	jr	NZ, 00260$
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	Z, 00261$
00260$:
	xor	a, a
	jp	00262$
00261$:
	ld	a, #0x01
00262$:
	ld	-2 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:368: if (is_gk) {
	ld	a, -4 (ix)
	or	a, a
	jp	Z, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:369: if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	-2 (ix), a
	or	a, a
	jr	Z, 00128$
	ld	a, c
	or	a, a
	jr	NZ, 00128$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00272$
	ld	de, #0x00e3
	jp	00221$
00272$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00274$
	ld	de, #0x00e4
	jp	00221$
00274$:
	ld	de, #0x00e5
	jp	00221$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:370: if (dy > 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_DIRECTION_3;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 01201$
	xor	a, #0x80
01201$:
	rlca
	and	a,#0x01
	ld	b, a
	or	a, a
	jr	Z, 00131$
	ld	a, c
	or	a, a
	jr	NZ, 00131$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00276$
	ld	de, #0x00d0
	jp	00221$
00276$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00278$
	ld	de, #0x00d1
	jp	00221$
00278$:
	ld	de, #0x00d2
	jp	00221$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:371: if (dy == 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_EAST_DIRECTION_2 : SPR_GK_PLAYER_EAST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00134$
	sub	a, c
	jp	PO, 01204$
	xor	a, #0x80
01204$:
	jp	P, 00134$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00280$
	ld	de, #0x00ed
	jp	00221$
00280$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00282$
	ld	de, #0x00ec
	jp	00221$
00282$:
	ld	de, #0x00eb
	jp	00221$
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:372: if (dy == 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_WEST_DIRECTION_2 : SPR_GK_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00137$
	bit	7, c
	jr	Z, 00137$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00284$
	ld	de, #0x00e8
	jp	00221$
00284$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00286$
	ld	de, #0x00e9
	jp	00221$
00286$:
	ld	de, #0x00ea
	jp	00221$
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:373: if (dy < 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00140$
	xor	a, a
	sub	a, c
	jp	PO, 01209$
	xor	a, #0x80
01209$:
	jp	P, 00140$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00288$
	ld	de, #0x00df
	jp	00221$
00288$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00290$
	ld	de, #0x00de
	jp	00221$
00290$:
	ld	de, #0x00dd
	jp	00221$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:374: if (dy < 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00143$
	bit	7, c
	jr	Z, 00143$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00292$
	ld	de, #0x00e0
	jp	00221$
00292$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00294$
	ld	de, #0x00e1
	jp	00221$
00294$:
	ld	de, #0x00e2
	jp	00221$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:375: if (dy > 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3;
	ld	a, b
	or	a, a
	jr	Z, 00146$
	xor	a, a
	sub	a, c
	jp	PO, 01214$
	xor	a, #0x80
01214$:
	jp	P, 00146$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00296$
	ld	de, #0x00dc
	jp	00221$
00296$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00298$
	ld	de, #0x00db
	jp	00221$
00298$:
	ld	de, #0x00da
	jp	00221$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:376: if (dy > 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, b
	or	a, a
	jr	Z, 00149$
	bit	7, c
	jr	Z, 00149$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00300$
	ld	de, #0x00d7
	jp	00221$
00300$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00302$
	ld	de, #0x00d8
	jp	00221$
00302$:
	ld	de, #0x00d9
	jp	00221$
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:377: return SPR_GK_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x00d5
	jp	00221$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:379: else if (team == 1) {
	ld	a, -3 (ix)
	dec	a
	jp	NZ,00216$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:380: if (is_celebrating && dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : (step==1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00152$
	bit	7, 4 (ix)
	jr	Z, 00152$
	ld	a, c
	or	a, a
	jr	NZ, 00152$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00304$
	ld	de, #0x005c
	jp	00221$
00304$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00306$
	ld	de, #0x005d
	jp	00221$
00306$:
	ld	de, #0x005e
	jp	00221$
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:381: if (is_celebrating && dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : (step==1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00156$
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 01223$
	xor	a, #0x80
01223$:
	jp	P, 00156$
	ld	a, c
	or	a, a
	jr	NZ, 00156$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00308$
	ld	de, #0x003c
	jp	00221$
00308$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00310$
	ld	de, #0x003d
	jp	00221$
00310$:
	ld	de, #0x003e
	jp	00221$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:383: if (dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_DIRECTION_2 : SPR_T1_PLAYER_NORTH_DIRECTION_3;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	b, a
	or	a, a
	jr	Z, 00160$
	ld	a, c
	or	a, a
	jr	NZ, 00160$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00312$
	ld	de, #0x0013
	jp	00221$
00312$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00314$
	ld	de, #0x0014
	jp	00221$
00314$:
	ld	de, #0x0015
	jp	00221$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:384: if (dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_DIRECTION_3;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 01228$
	xor	a, #0x80
01228$:
	rlca
	and	a,#0x01
	ld	e, a
	or	a, a
	jr	Z, 00163$
	ld	a, c
	or	a, a
	jr	NZ, 00163$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00316$
	ld	de, #0x0000
	jp	00221$
00316$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00318$
	ld	de, #0x0001
	jp	00221$
00318$:
	ld	de, #0x0002
	jp	00221$
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:385: if (dy == 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_EAST_DIRECTION_2 : SPR_T1_PLAYER_EAST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00166$
	sub	a, c
	jp	PO, 01231$
	xor	a, #0x80
01231$:
	jp	P, 00166$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00320$
	ld	de, #0x001d
	jp	00221$
00320$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00322$
	ld	de, #0x001c
	jp	00221$
00322$:
	ld	de, #0x001b
	jp	00221$
00166$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:386: if (dy == 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_WEST_DIRECTION_2 : SPR_T1_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00169$
	bit	7, c
	jr	Z, 00169$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00324$
	ld	de, #0x0018
	jp	00221$
00324$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00326$
	ld	de, #0x0019
	jp	00221$
00326$:
	ld	de, #0x001a
	jp	00221$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:387: if (dy < 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3;
	ld	a, b
	or	a, a
	jr	Z, 00172$
	xor	a, a
	sub	a, c
	jp	PO, 01236$
	xor	a, #0x80
01236$:
	jp	P, 00172$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00328$
	ld	de, #0x000f
	jp	00221$
00328$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00330$
	ld	de, #0x000e
	jp	00221$
00330$:
	ld	de, #0x000d
	jp	00221$
00172$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:388: if (dy < 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, b
	or	a, a
	jr	Z, 00175$
	bit	7, c
	jr	Z, 00175$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00332$
	ld	de, #0x0010
	jp	00221$
00332$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00334$
	ld	de, #0x0011
	jp	00221$
00334$:
	ld	de, #0x0012
	jp	00221$
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:389: if (dy > 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3;
	ld	a, e
	or	a, a
	jr	Z, 00178$
	xor	a, a
	sub	a, c
	jp	PO, 01241$
	xor	a, #0x80
01241$:
	jp	P, 00178$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00336$
	ld	de, #0x000a
	jp	00221$
00336$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00338$
	ld	de, #0x000b
	jp	00221$
00338$:
	ld	de, #0x000c
	jp	00221$
00178$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:390: if (dy > 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, e
	or	a, a
	jr	Z, 00181$
	bit	7, c
	jr	Z, 00181$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00340$
	ld	de, #0x0009
	jp	00221$
00340$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00342$
	ld	de, #0x0008
	jp	00221$
00342$:
	ld	de, #0x0007
	jp	00221$
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:391: return SPR_T1_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0001
	jp	00221$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:394: if (is_celebrating && dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : (step==1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00184$
	bit	7, 4 (ix)
	jr	Z, 00184$
	ld	a, c
	or	a, a
	jr	NZ, 00184$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00344$
	ld	de, #0x00cc
	jp	00221$
00344$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00346$
	ld	de, #0x00cd
	jp	00221$
00346$:
	ld	de, #0x00ce
	jp	00221$
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:395: if (is_celebrating && dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : (step==1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3;
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00188$
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 01248$
	xor	a, #0x80
01248$:
	jp	P, 00188$
	ld	a, c
	or	a, a
	jr	NZ, 00188$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00348$
	ld	de, #0x009c
	jp	00221$
00348$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00350$
	ld	de, #0x009d
	jp	00221$
00350$:
	ld	de, #0x009e
	jp	00221$
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:397: if (dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_DIRECTION_2 : SPR_T2_PLAYER_NORTH_DIRECTION_3;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	b, a
	or	a, a
	jr	Z, 00192$
	ld	a, c
	or	a, a
	jr	NZ, 00192$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00352$
	ld	de, #0x0083
	jp	00221$
00352$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00354$
	ld	de, #0x0084
	jp	00221$
00354$:
	ld	de, #0x0085
	jp	00221$
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:398: if (dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_DIRECTION_3;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 01253$
	xor	a, #0x80
01253$:
	rlca
	and	a,#0x01
	ld	e, a
	or	a, a
	jr	Z, 00195$
	ld	a, c
	or	a, a
	jr	NZ, 00195$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00356$
	ld	de, #0x0070
	jp	00221$
00356$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00358$
	ld	de, #0x0071
	jp	00221$
00358$:
	ld	de, #0x0072
	jp	00221$
00195$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:399: if (dy == 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_EAST_DIRECTION_2 : SPR_T2_PLAYER_EAST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00198$
	sub	a, c
	jp	PO, 01256$
	xor	a, #0x80
01256$:
	jp	P, 00198$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00360$
	ld	de, #0x008d
	jp	00221$
00360$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00362$
	ld	de, #0x008c
	jp	00221$
00362$:
	ld	de, #0x008b
	jp	00221$
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:400: if (dy == 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_WEST_DIRECTION_2 : SPR_T2_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00201$
	bit	7, c
	jr	Z, 00201$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00364$
	ld	de, #0x0088
	jp	00221$
00364$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00366$
	ld	de, #0x0089
	jp	00221$
00366$:
	ld	de, #0x008a
	jp	00221$
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:401: if (dy < 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3;
	ld	a, b
	or	a, a
	jr	Z, 00204$
	xor	a, a
	sub	a, c
	jp	PO, 01261$
	xor	a, #0x80
01261$:
	jp	P, 00204$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00368$
	ld	de, #0x007f
	jp	00221$
00368$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00370$
	ld	de, #0x007e
	jp	00221$
00370$:
	ld	de, #0x007d
	jp	00221$
00204$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:402: if (dy < 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, b
	or	a, a
	jr	Z, 00207$
	bit	7, c
	jr	Z, 00207$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00372$
	ld	de, #0x0080
	jp	00221$
00372$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00374$
	ld	de, #0x0081
	jp	00221$
00374$:
	ld	de, #0x0082
	jp	00221$
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:403: if (dy > 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3;
	ld	a, e
	or	a, a
	jr	Z, 00210$
	xor	a, a
	sub	a, c
	jp	PO, 01266$
	xor	a, #0x80
01266$:
	jp	P, 00210$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00376$
	ld	bc, #0x007c
	jp	00377$
00376$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00378$
	ld	bc, #0x007b
	jp	00379$
00378$:
	ld	bc, #0x007a
00379$:
00377$:
	ld	e, c
	ld	d, b
	jp	00221$
00210$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:404: if (dy > 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, e
	or	a, a
	jr	Z, 00213$
	bit	7, c
	jr	Z, 00213$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00380$
	ld	bc, #0x0077
	jp	00381$
00380$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00382$
	ld	bc, #0x0078
	jp	00383$
00382$:
	ld	bc, #0x0079
00383$:
00381$:
	ld	e, c
	ld	d, b
	jp	00221$
00213$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:405: return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	de, #0x0083
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:407: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:409: u16 GetPlayerIdleFrame(u8 i, i8 dx, i8 dy) 
;	---------------------------------
; Function GetPlayerIdleFrame
; ---------------------------------
_GetPlayerIdleFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:411: bool is_gk = (i == 0 || i == 7);
	ld	c,a
	or	a,a
	jr	Z, 00208$
	sub	a, #0x07
	ld	e, #0x00
	jr	NZ, 00209$
00208$:
	ld	e, #0x01
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:413: if (dy < 0 && dx == 0) return SPR_REFEREE_PLAYER_FACE_TO_NORTH;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:412: if (i == 26) { // Arbitro
	ld	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:413: if (dy < 0 && dx == 0) return SPR_REFEREE_PLAYER_FACE_TO_NORTH;
	sub	a,#0x1a
	jp	NZ,00126$
	or	a,d
	jr	Z, 00102$
	ld	a, l
	or	a, a
	jr	NZ, 00102$
	ld	de, #0x0105
	jp	00205$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:414: if (dy > 0 && dx == 0) return SPR_REFEREE_PLAYER_FACE_TO_SOUTH;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00565$
	xor	a, #0x80
00565$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00105$
	ld	a, l
	or	a, a
	jr	NZ, 00105$
	ld	de, #0x0106
	jp	00205$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:415: if (dy == 0 && dx > 0) return SPR_REFEREE_PLAYER_FACE_TO_EAST;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00108$
	sub	a, l
	jp	PO, 00566$
	xor	a, #0x80
00566$:
	jp	P, 00108$
	ld	de, #0x011a
	jp	00205$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:416: if (dy == 0 && dx < 0) return SPR_REFEREE_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00111$
	bit	7, l
	jr	Z, 00111$
	ld	de, #0x011b
	jp	00205$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:417: if (dy < 0 && dx > 0) return SPR_REFEREE_PLAYER_FACE_TO_NORTH_EAST;
	ld	a, d
	or	a, a
	jr	Z, 00114$
	xor	a, a
	sub	a, l
	jp	PO, 00567$
	xor	a, #0x80
00567$:
	jp	P, 00114$
	ld	de, #0x0110
	jp	00205$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:418: if (dy < 0 && dx < 0) return SPR_REFEREE_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, d
	or	a, a
	jr	Z, 00117$
	bit	7, l
	jr	Z, 00117$
	ld	de, #0x010f
	jp	00205$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:419: if (dy > 0 && dx > 0) return SPR_REFEREE_PLAYER_FACE_TO_SOUTH_EAST;
	ld	a, c
	or	a, a
	jr	Z, 00120$
	xor	a, a
	sub	a, l
	jp	PO, 00568$
	xor	a, #0x80
00568$:
	jp	P, 00120$
	ld	de, #0x0109
	jp	00205$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:420: if (dy > 0 && dx < 0) return SPR_REFEREE_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00123$
	bit	7, l
	jr	Z, 00123$
	ld	de, #0x0108
	jp	00205$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:421: return SPR_REFEREE_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0106
	jp	00205$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:423: u8 team = (i < 7) ? 1 : 2;
	ld	a, c
	sub	a, #0x07
	jr	NC, 00210$
	ld	bc, #0x0001
	jp	00211$
00210$:
	ld	bc, #0x0002
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:425: if (is_gk) {
	ld	a, e
	or	a, a
	jp	Z, 00203$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:426: if (dy < 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, d
	or	a, a
	jr	Z, 00128$
	ld	a, l
	or	a, a
	jr	NZ, 00128$
	ld	de, #0x00d6
	jp	00205$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:427: if (dy > 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_SOUTH;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00569$
	xor	a, #0x80
00569$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00131$
	ld	a, l
	or	a, a
	jr	NZ, 00131$
	ld	de, #0x00d5
	jp	00205$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:428: if (dy == 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_EAST;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00134$
	sub	a, l
	jp	PO, 00570$
	xor	a, #0x80
00570$:
	jp	P, 00134$
	ld	de, #0x00ea
	jp	00205$
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:429: if (dy == 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00137$
	bit	7, l
	jr	Z, 00137$
	ld	de, #0x00eb
	jp	00205$
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:430: if (dy < 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_NORTH_EAST;
	ld	a, d
	or	a, a
	jr	Z, 00140$
	xor	a, a
	sub	a, l
	jp	PO, 00571$
	xor	a, #0x80
00571$:
	jp	P, 00140$
	ld	de, #0x00df
	jp	00205$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:431: if (dy < 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, d
	or	a, a
	jr	Z, 00143$
	bit	7, l
	jr	Z, 00143$
	ld	de, #0x00e0
	jp	00205$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:432: if (dy > 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_EAST;
	ld	a, c
	or	a, a
	jr	Z, 00146$
	xor	a, a
	sub	a, l
	jp	PO, 00572$
	xor	a, #0x80
00572$:
	jp	P, 00146$
	ld	de, #0x00eb
	jp	00205$
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:433: if (dy > 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00149$
	bit	7, l
	jr	Z, 00149$
	ld	de, #0x00ea
	jp	00205$
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:434: return SPR_GK_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x00d5
	jp	00205$
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:436: else if (team == 1) {
	dec	c
	jp	NZ,00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:437: if (dy < 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_NORTH;
	ld	a, d
	or	a, a
	jr	Z, 00152$
	ld	a, l
	or	a, a
	jr	NZ, 00152$
	ld	de, #0x0014
	jp	00205$
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:438: if (dy > 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_SOUTH;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00575$
	xor	a, #0x80
00575$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00155$
	ld	a, l
	or	a, a
	jr	NZ, 00155$
	ld	de, #0x0001
	jp	00205$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:439: if (dy == 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_EAST;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00158$
	sub	a, l
	jp	PO, 00576$
	xor	a, #0x80
00576$:
	jp	P, 00158$
	ld	de, #0x001a
	jp	00205$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:440: if (dy == 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00161$
	bit	7, l
	jr	Z, 00161$
	ld	de, #0x001b
	jp	00205$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:441: if (dy < 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_NORTH_EAST;
	ld	a, d
	or	a, a
	jr	Z, 00164$
	xor	a, a
	sub	a, l
	jp	PO, 00577$
	xor	a, #0x80
00577$:
	jp	P, 00164$
	ld	de, #0x000f
	jp	00205$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:442: if (dy < 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, d
	or	a, a
	jr	Z, 00167$
	bit	7, l
	jr	Z, 00167$
	ld	de, #0x0010
	jp	00205$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:443: if (dy > 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_EAST;
	ld	a, c
	or	a, a
	jr	Z, 00170$
	xor	a, a
	sub	a, l
	jp	PO, 00578$
	xor	a, #0x80
00578$:
	jp	P, 00170$
	ld	de, #0x001b
	jp	00205$
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:444: if (dy > 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00173$
	bit	7, l
	jr	Z, 00173$
	ld	de, #0x001a
	jp	00205$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:445: return SPR_T1_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0001
	jp	00205$
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:448: if (dy < 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	a, d
	or	a, a
	jr	Z, 00176$
	ld	a, l
	or	a, a
	jr	NZ, 00176$
	ld	de, #0x0083
	jp	00205$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:449: if (dy > 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_SOUTH;
	xor	a, a
	sub	a, 4 (ix)
	jp	PO, 00579$
	xor	a, #0x80
00579$:
	rlca
	and	a,#0x01
	ld	c, a
	or	a, a
	jr	Z, 00179$
	ld	a, l
	or	a, a
	jr	NZ, 00179$
	ld	de, #0x0070
	jp	00205$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:450: if (dy == 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_EAST;
	ld	a, 4 (ix)
	or	a,a
	jr	NZ, 00182$
	sub	a, l
	jp	PO, 00580$
	xor	a, #0x80
00580$:
	jp	P, 00182$
	ld	de, #0x008b
	jp	00205$
00182$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:451: if (dy == 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00185$
	bit	7, l
	jr	Z, 00185$
	ld	de, #0x008a
	jp	00205$
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:452: if (dy < 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_NORTH_EAST;
	ld	a, d
	or	a, a
	jr	Z, 00188$
	xor	a, a
	sub	a, l
	jp	PO, 00581$
	xor	a, #0x80
00581$:
	jp	P, 00188$
	ld	de, #0x007f
	jp	00205$
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:453: if (dy < 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, d
	or	a, a
	jr	Z, 00191$
	bit	7, l
	jr	Z, 00191$
	ld	de, #0x0080
	jp	00205$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:454: if (dy > 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_EAST;
	ld	a, c
	or	a, a
	jr	Z, 00194$
	xor	a, a
	sub	a, l
	jp	PO, 00582$
	xor	a, #0x80
00582$:
	jp	P, 00194$
	ld	de, #0x008b
	jp	00205$
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:455: if (dy > 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00197$
	bit	7, l
	jr	Z, 00197$
	ld	de, #0x008a
	jp	00205$
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:456: return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	de, #0x0083
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s11_b3.c:458: }
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
	.area _SEG11
	.area _INITIALIZER
	.area _CABS (ABS)
