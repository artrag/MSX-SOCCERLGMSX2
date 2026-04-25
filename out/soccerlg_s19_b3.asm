;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s19_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.area _SEG19
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:10: u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step) 
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:12: bool is_gk = (i == 0 || i == 7);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:13: if (i == 26) { // Arbitro
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	NZ,00126$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:14: if (dy < 0 && dx == 0) return (step==0) ? SPR_REFEREE_NORTH_DIRECTION_1 : (step==1) ? SPR_REFEREE_NORTH_DIRECTION_2 : SPR_REFEREE_NORTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:15: if (dy > 0 && dx == 0) return (step==0) ? SPR_REFEREE_SOUTH_DIRECTION_1 : (step==1) ? SPR_REFEREE_SOUTH_DIRECTION_2 : SPR_REFEREE_SOUTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:16: if (dy == 0 && dx > 0) return (step==0) ? SPR_REFEREE_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_EAST_DIRECTION_2 : SPR_REFEREE_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:17: if (dy == 0 && dx < 0) return (step==0) ? SPR_REFEREE_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_WEST_DIRECTION_2 : SPR_REFEREE_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:18: if (dy < 0 && dx > 0) return (step==0) ? SPR_REFEREE_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_NORTH_EAST_DIRECTION_2 : SPR_REFEREE_NORTH_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:19: if (dy < 0 && dx < 0) return (step==0) ? SPR_REFEREE_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_NORTH_WEST_DIRECTION_2 : SPR_REFEREE_NORTH_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:20: if (dy > 0 && dx > 0) return (step==0) ? SPR_REFEREE_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_REFEREE_SOUTH_EAST_DIRECTION_2 : SPR_REFEREE_SOUTH_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:21: if (dy > 0 && dx < 0) return (step==0) ? SPR_REFEREE_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_REFEREE_SOUTH_WEST_DIRECTION_2 : SPR_REFEREE_SOUTH_WEST_DIRECTION_3;
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
	ld	de, #0x0109
	jp	00221$
00256$:
	ld	de, #0x0108
	jp	00221$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:22: return SPR_REFEREE_FACE_TO_SOUTH;
	ld	de, #0x0106
	jp	00221$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:24: u8 team = (i < 7) ? 1 : 2;
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00258$
	ld	de, #0x0001
	jp	00259$
00258$:
	ld	de, #0x0002
00259$:
	ld	-3 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:25: bool is_celebrating = (RestartType == RESTART_GOAL && ((team == 1 && KickOffTeam == TEAM_2) || (team == 2 && KickOffTeam == TEAM_1)));
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:27: if (is_gk) {
	ld	a, -4 (ix)
	or	a, a
	jp	Z, 00219$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:28: if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:29: if (dy > 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:30: if (dy == 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_EAST_DIRECTION_2 : SPR_GK_PLAYER_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:31: if (dy == 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_WEST_DIRECTION_2 : SPR_GK_PLAYER_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:32: if (dy < 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:33: if (dy < 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:34: if (dy > 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:35: if (dy > 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:36: return SPR_GK_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x00d5
	jp	00221$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:38: else if (team == 1) {
	ld	a, -3 (ix)
	dec	a
	jp	NZ,00216$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:39: if (is_celebrating && dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : (step==1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:40: if (is_celebrating && dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : (step==1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:42: if (dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_DIRECTION_2 : SPR_T1_PLAYER_NORTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:43: if (dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:44: if (dy == 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_EAST_DIRECTION_2 : SPR_T1_PLAYER_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:45: if (dy == 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_WEST_DIRECTION_2 : SPR_T1_PLAYER_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:46: if (dy < 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:47: if (dy < 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:48: if (dy > 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:49: if (dy > 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:50: return SPR_T1_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0001
	jp	00221$
00216$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:53: if (is_celebrating && dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : (step==1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:54: if (is_celebrating && dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : (step==1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:56: if (dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_DIRECTION_2 : SPR_T2_PLAYER_NORTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:57: if (dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:58: if (dy == 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_EAST_DIRECTION_2 : SPR_T2_PLAYER_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:59: if (dy == 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_WEST_DIRECTION_2 : SPR_T2_PLAYER_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:60: if (dy < 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:61: if (dy < 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:62: if (dy > 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:63: if (dy > 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:64: return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	de, #0x0083
00221$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:66: }
	ld	sp, ix
	pop	ix
	pop	hl
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:68: u16 GetPlayerIdleFrame(u8 i, i8 dx, i8 dy) 
;	---------------------------------
; Function GetPlayerIdleFrame
; ---------------------------------
_GetPlayerIdleFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:70: bool is_gk = (i == 0 || i == 7);
	ld	c,a
	or	a,a
	jr	Z, 00208$
	sub	a, #0x07
	ld	e, #0x00
	jr	NZ, 00209$
00208$:
	ld	e, #0x01
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:72: if (dy < 0 && dx == 0) return SPR_REFEREE_FACE_TO_NORTH;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	d, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:71: if (i == 26) { // Arbitro
	ld	a, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:72: if (dy < 0 && dx == 0) return SPR_REFEREE_FACE_TO_NORTH;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:73: if (dy > 0 && dx == 0) return SPR_REFEREE_FACE_TO_SOUTH;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:74: if (dy == 0 && dx > 0) return SPR_REFEREE_FACE_TO_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:75: if (dy == 0 && dx < 0) return SPR_REFEREE_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00111$
	bit	7, l
	jr	Z, 00111$
	ld	de, #0x011b
	jp	00205$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:76: if (dy < 0 && dx > 0) return SPR_REFEREE_FACE_TO_NORTH_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:77: if (dy < 0 && dx < 0) return SPR_REFEREE_FACE_TO_NORTH_WEST;
	ld	a, d
	or	a, a
	jr	Z, 00117$
	bit	7, l
	jr	Z, 00117$
	ld	de, #0x010f
	jp	00205$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:78: if (dy > 0 && dx > 0) return SPR_REFEREE_FACE_TO_SOUTH_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:79: if (dy > 0 && dx < 0) return SPR_REFEREE_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00123$
	bit	7, l
	jr	Z, 00123$
	ld	de, #0x0108
	jp	00205$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:80: return SPR_REFEREE_FACE_TO_SOUTH;
	ld	de, #0x0106
	jp	00205$
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:82: u8 team = (i < 7) ? 1 : 2;
	ld	a, c
	sub	a, #0x07
	jr	NC, 00210$
	ld	bc, #0x0001
	jp	00211$
00210$:
	ld	bc, #0x0002
00211$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:84: if (is_gk) {
	ld	a, e
	or	a, a
	jp	Z, 00203$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:85: if (dy < 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, d
	or	a, a
	jr	Z, 00128$
	ld	a, l
	or	a, a
	jr	NZ, 00128$
	ld	de, #0x00d6
	jp	00205$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:86: if (dy > 0 && dx == 0) return SPR_GK_PLAYER_FACE_TO_SOUTH;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:87: if (dy == 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:88: if (dy == 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00137$
	bit	7, l
	jr	Z, 00137$
	ld	de, #0x00eb
	jp	00205$
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:89: if (dy < 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_NORTH_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:90: if (dy < 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, d
	or	a, a
	jr	Z, 00143$
	bit	7, l
	jr	Z, 00143$
	ld	de, #0x00e0
	jp	00205$
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:91: if (dy > 0 && dx > 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:92: if (dy > 0 && dx < 0) return SPR_GK_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00149$
	bit	7, l
	jr	Z, 00149$
	ld	de, #0x00ea
	jp	00205$
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:93: return SPR_GK_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x00d5
	jp	00205$
00203$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:95: else if (team == 1) {
	dec	c
	jp	NZ,00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:96: if (dy < 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_NORTH;
	ld	a, d
	or	a, a
	jr	Z, 00152$
	ld	a, l
	or	a, a
	jr	NZ, 00152$
	ld	de, #0x0014
	jp	00205$
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:97: if (dy > 0 && dx == 0) return SPR_T1_PLAYER_FACE_TO_SOUTH;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:98: if (dy == 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:99: if (dy == 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00161$
	bit	7, l
	jr	Z, 00161$
	ld	de, #0x001b
	jp	00205$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:100: if (dy < 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_NORTH_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:101: if (dy < 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, d
	or	a, a
	jr	Z, 00167$
	bit	7, l
	jr	Z, 00167$
	ld	de, #0x0010
	jp	00205$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:102: if (dy > 0 && dx > 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:103: if (dy > 0 && dx < 0) return SPR_T1_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00173$
	bit	7, l
	jr	Z, 00173$
	ld	de, #0x001a
	jp	00205$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:104: return SPR_T1_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0001
	jp	00205$
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:107: if (dy < 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	a, d
	or	a, a
	jr	Z, 00176$
	ld	a, l
	or	a, a
	jr	NZ, 00176$
	ld	de, #0x0083
	jp	00205$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:108: if (dy > 0 && dx == 0) return SPR_T2_PLAYER_FACE_TO_SOUTH;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:109: if (dy == 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:110: if (dy == 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_WEST;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00185$
	bit	7, l
	jr	Z, 00185$
	ld	de, #0x008a
	jp	00205$
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:111: if (dy < 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_NORTH_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:112: if (dy < 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_NORTH_WEST;
	ld	a, d
	or	a, a
	jr	Z, 00191$
	bit	7, l
	jr	Z, 00191$
	ld	de, #0x0080
	jp	00205$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:113: if (dy > 0 && dx > 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_EAST;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:114: if (dy > 0 && dx < 0) return SPR_T2_PLAYER_FACE_TO_SOUTH_WEST;
	ld	a, c
	or	a, a
	jr	Z, 00197$
	bit	7, l
	jr	Z, 00197$
	ld	de, #0x008a
	jp	00205$
00197$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:115: return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	de, #0x0083
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s19_b3.c:117: }
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
	.area _SEG19
	.area _INITIALIZER
	.area _CABS (ABS)
