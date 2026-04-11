;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s4_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UpdateGameState
	.globl _GetPlayerAnimFrame
	.globl _PrintScoreBoardRight
	.globl _RemoveScoreBoardRight
	.globl _PrintScoreBoardLeft
	.globl _RemoveScoreBoardLeft
	.globl _RemoveSwSprite
	.globl _SetTeamColors
	.globl _AddLines
	.globl _CallFnc_VOID_U8U16U16
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:989: u16 GetPlayerAnimFrame(u8 i, i8 dx, i8 dy, u8 step) 
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:991: bool is_gk = (i == 0 || i == 7);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:992: u8 team = (i < 7) ? 1 : 2;
	ld	a, b
	sub	a, #0x07
	jr	NC, 00184$
	ld	hl, #0x0001
	jp	00185$
00184$:
	ld	hl, #0x0002
00185$:
	ld	-2 (ix), l
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:995: if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
	ld	a, 4 (ix)
	rlca
	and	a,#0x01
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:994: if (is_gk) {
	ld	a, c
	or	a, a
	jp	Z, 00177$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:995: if (dy < 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_DIRECTION_2 : SPR_GK_PLAYER_NORTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:996: if (dy > 0 && dx == 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:997: if (dy == 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_EAST_DIRECTION_2 : SPR_GK_PLAYER_EAST_DIRECTION_3;
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
	ld	de, #0x00e8
	jp	00179$
00194$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00196$
	ld	de, #0x00e9
	jp	00179$
00196$:
	ld	de, #0x00ea
	jp	00179$
00108$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:998: if (dy == 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_WEST_DIRECTION_2 : SPR_GK_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00111$
	bit	7, e
	jr	Z, 00111$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00198$
	ld	de, #0x00ed
	jp	00179$
00198$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00200$
	ld	de, #0x00ec
	jp	00179$
00200$:
	ld	de, #0x00eb
	jp	00179$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:999: if (dy < 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_EAST_DIRECTION_3;
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
	ld	de, #0x00e0
	jp	00179$
00202$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00204$
	ld	de, #0x00e1
	jp	00179$
00204$:
	ld	de, #0x00e2
	jp	00179$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1000: if (dy < 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00117$
	bit	7, e
	jr	Z, 00117$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00206$
	ld	de, #0x00df
	jp	00179$
00206$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00208$
	ld	de, #0x00de
	jp	00179$
00208$:
	ld	de, #0x00dd
	jp	00179$
00117$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1001: if (dy > 0 && dx > 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_EAST_DIRECTION_3;
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
	ld	de, #0x00d7
	jp	00179$
00210$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00212$
	ld	de, #0x00d8
	jp	00179$
00212$:
	ld	de, #0x00d9
	jp	00179$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1002: if (dy > 0 && dx < 0) return (step==0) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_GK_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00123$
	bit	7, e
	jr	Z, 00123$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00214$
	ld	de, #0x00dc
	jp	00179$
00214$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00216$
	ld	de, #0x00db
	jp	00179$
00216$:
	ld	de, #0x00da
	jp	00179$
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1003: return SPR_GK_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x00d5
	jp	00179$
00177$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1005: else if (team == 1) {
	ld	a, -2 (ix)
	dec	a
	jp	NZ,00174$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1006: if (dy < 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_DIRECTION_2 : SPR_T1_PLAYER_NORTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1007: if (dy > 0 && dx == 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1008: if (dy == 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_EAST_DIRECTION_2 : SPR_T1_PLAYER_EAST_DIRECTION_3;
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
	ld	de, #0x0018
	jp	00179$
00226$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00228$
	ld	de, #0x0019
	jp	00179$
00228$:
	ld	de, #0x001a
	jp	00179$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1009: if (dy == 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_WEST_DIRECTION_2 : SPR_T1_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00135$
	bit	7, e
	jr	Z, 00135$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00230$
	ld	de, #0x001d
	jp	00179$
00230$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00232$
	ld	de, #0x001c
	jp	00179$
00232$:
	ld	de, #0x001b
	jp	00179$
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1010: if (dy < 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_EAST_DIRECTION_3;
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
	ld	de, #0x0010
	jp	00179$
00234$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00236$
	ld	de, #0x0011
	jp	00179$
00236$:
	ld	de, #0x0012
	jp	00179$
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1011: if (dy < 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00141$
	bit	7, e
	jr	Z, 00141$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00238$
	ld	de, #0x000f
	jp	00179$
00238$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00240$
	ld	de, #0x000e
	jp	00179$
00240$:
	ld	de, #0x000d
	jp	00179$
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1012: if (dy > 0 && dx > 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_EAST_DIRECTION_3;
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
	ld	de, #0x0007
	jp	00179$
00242$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00244$
	ld	de, #0x0008
	jp	00179$
00244$:
	ld	de, #0x0009
	jp	00179$
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1013: if (dy > 0 && dx < 0) return (step==0) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T1_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00147$
	bit	7, e
	jr	Z, 00147$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00246$
	ld	de, #0x000c
	jp	00179$
00246$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00248$
	ld	de, #0x000b
	jp	00179$
00248$:
	ld	de, #0x000a
	jp	00179$
00147$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1014: return SPR_T1_PLAYER_FACE_TO_SOUTH;
	ld	de, #0x0005
	jp	00179$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1017: if (dy < 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_NORTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_DIRECTION_2 : SPR_T2_PLAYER_NORTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1018: if (dy > 0 && dx == 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_DIRECTION_3;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1019: if (dy == 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_EAST_DIRECTION_2 : SPR_T2_PLAYER_EAST_DIRECTION_3;
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
	ld	de, #0x0088
	jp	00179$
00258$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00260$
	ld	de, #0x0089
	jp	00179$
00260$:
	ld	de, #0x008a
	jp	00179$
00156$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1020: if (dy == 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_WEST_DIRECTION_2 : SPR_T2_PLAYER_WEST_DIRECTION_3;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00159$
	bit	7, e
	jr	Z, 00159$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00262$
	ld	de, #0x008d
	jp	00179$
00262$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00264$
	ld	de, #0x008c
	jp	00179$
00264$:
	ld	de, #0x008b
	jp	00179$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1021: if (dy < 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_EAST_DIRECTION_3;
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
	ld	de, #0x0080
	jp	00179$
00266$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00268$
	ld	de, #0x0081
	jp	00179$
00268$:
	ld	de, #0x0082
	jp	00179$
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1022: if (dy < 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_NORTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_NORTH_WEST_DIRECTION_3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00165$
	bit	7, e
	jr	Z, 00165$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00270$
	ld	de, #0x007f
	jp	00179$
00270$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00272$
	ld	de, #0x007e
	jp	00179$
00272$:
	ld	de, #0x007d
	jp	00179$
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1023: if (dy > 0 && dx > 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_EAST_DIRECTION_3;
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
	ld	de, #0x0077
	jp	00179$
00274$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00276$
	ld	de, #0x0078
	jp	00179$
00276$:
	ld	de, #0x0079
	jp	00179$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1024: if (dy > 0 && dx < 0) return (step==0) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_1 : (step==1) ? SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_2 : SPR_T2_PLAYER_SOUTH_WEST_DIRECTION_3;
	ld	a, c
	or	a, a
	jr	Z, 00171$
	bit	7, e
	jr	Z, 00171$
	ld	a, 5 (ix)
	or	a, a
	jr	NZ, 00278$
	ld	de, #0x007c
	jp	00179$
00278$:
	ld	a, 5 (ix)
	dec	a
	jr	NZ, 00280$
	ld	de, #0x007b
	jp	00179$
00280$:
	ld	de, #0x007a
	jp	00179$
00171$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1025: return SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	de, #0x0076
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1027: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1029: void UpdateGameState(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly) 
;	---------------------------------
; Function UpdateGameState
; ---------------------------------
_UpdateGameState::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-24
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	c, e
	ld	b, d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1031: if (*game_state == 0) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	e, (hl)
	ld	a, e
	or	a, a
	jr	NZ, 00134$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1032: if (Field.ly >= target_ly) {
	ld	hl, (#(_Field + 4) + 0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1033: Field.dy = 0; // Ferma lo scorrimento
	ld	de, #_Field + 18
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1032: if (Field.ly >= target_ly) {
	ld	a, l
	sub	a, 6 (ix)
	ld	a, h
	sbc	a, 7 (ix)
	jr	C, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1033: Field.dy = 0; // Ferma lo scorrimento
	xor	a, a
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1034: *game_state = 1;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1035: *wait_secs = 2; 
	ld	a, #0x02
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1036: *start_sec = Secs;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Secs+0)
	ld	(bc), a
	jp	00139$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1038: Field.ly += Field.dy;
	ld	a, (de)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	add	hl, bc
	ex	de, hl
	ld	((_Field + 4)), de
	jp	00139$
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1042: } else if (*game_state == 1) {
	ld	a, e
	dec	a
	jp	NZ,00131$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1043: if (Secs != *start_sec) {
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	-1 (ix), a
	ld	a, (_Secs+0)
	sub	a, -1 (ix)
	jr	Z, 00105$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1044: *start_sec = Secs;
	ld	a, (_Secs+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1045: (*wait_secs)--;
	ld	a, (bc)
	dec	a
	ld	(bc), a
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1047: if (*wait_secs == 0) {
	ld	a, (bc)
	or	a, a
	jp	NZ, 00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1048: *game_state = 2; // Passa al posizionamento
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1051: SwSprite[0].tx = 120; SwSprite[0].ty = 32;   
	ld	hl, #(_SwSprite + 12)
	ld	(hl), #0x78
	ld	hl, #0x0020
	ld	((_SwSprite + 13)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1052: SwSprite[1].tx = 64;  SwSprite[1].ty = 96;   
	ld	hl, #(_SwSprite + 35)
	ld	(hl), #0x40
	ld	hl, #0x0060
	ld	((_SwSprite + 36)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1053: SwSprite[2].tx = 176; SwSprite[2].ty = 96;   
	ld	hl, #(_SwSprite + 58)
	ld	(hl), #0xb0
	ld	hl, #0x0060
	ld	((_SwSprite + 59)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1054: SwSprite[3].tx = 104; SwSprite[3].ty = 240;  
	ld	hl, #(_SwSprite + 81)
	ld	(hl), #0x68
	ld	hl, #0x00f0
	ld	((_SwSprite + 82)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1055: SwSprite[4].tx = 136; SwSprite[4].ty = 240;  
	ld	hl, #(_SwSprite + 104)
	ld	(hl), #0x88
	ld	hl, #0x00f0
	ld	((_SwSprite + 105)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1056: SwSprite[5].tx = 40;  SwSprite[5].ty = 180;  
	ld	hl, #(_SwSprite + 127)
	ld	(hl), #0x28
	ld	hl, #0x00b4
	ld	((_SwSprite + 128)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1057: SwSprite[6].tx = 200; SwSprite[6].ty = 180;  
	ld	hl, #(_SwSprite + 150)
	ld	(hl), #0xc8
	ld	hl, #0x00b4
	ld	((_SwSprite + 151)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1059: SwSprite[7].tx = 120; SwSprite[7].ty = 480;  
	ld	hl, #(_SwSprite + 173)
	ld	(hl), #0x78
	ld	hl, #0x01e0
	ld	((_SwSprite + 174)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1060: SwSprite[8].tx = 64;  SwSprite[8].ty = 416;  
	ld	hl, #(_SwSprite + 196)
	ld	(hl), #0x40
	ld	hl, #0x01a0
	ld	((_SwSprite + 197)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1061: SwSprite[9].tx = 176; SwSprite[9].ty = 416;  
	ld	hl, #(_SwSprite + 219)
	ld	(hl), #0xb0
	ld	hl, #0x01a0
	ld	((_SwSprite + 220)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1062: SwSprite[10].tx= 104; SwSprite[10].ty= 272;  
	ld	hl, #(_SwSprite + 242)
	ld	(hl), #0x68
	ld	hl, #0x0110
	ld	((_SwSprite + 243)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1063: SwSprite[11].tx= 136; SwSprite[11].ty= 272;  
	ld	hl, #(_SwSprite + 265)
	ld	(hl), #0x88
	ld	hl, #0x0110
	ld	((_SwSprite + 266)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1064: SwSprite[12].tx= 40;  SwSprite[12].ty= 332;  
	ld	hl, #(_SwSprite + 288)
	ld	(hl), #0x28
	ld	hl, #0x014c
	ld	((_SwSprite + 289)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1065: SwSprite[13].tx= 200; SwSprite[13].ty= 332;  
	ld	hl, #(_SwSprite + 311)
	ld	(hl), #0xc8
	ld	hl, #0x014c
	ld	((_SwSprite + 312)), hl
	jp	00139$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1067: } else if (*game_state == 2) {
	ld	a, e
	sub	a, #0x02
	jp	NZ,00139$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1068: bool all_in_position = TRUE;
	ld	-24 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1069: for (u8 i = 0; i < 14; i++) {
	ld	-1 (ix), #0x00
00137$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jp	NC, 00124$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1070: struct ObjectInfo* p = &SwSprite[i];
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
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, -7 (ix)
	add	a, #<(_SwSprite)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	adc	a, #>(_SwSprite)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-23 (ix), a
	ld	a, -4 (ix)
	ld	-22 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1071: if (p->lx != p->tx || p->ly != p->ty) {
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	ld	-21 (ix), a
	ld	a, -23 (ix)
	ld	-5 (ix), a
	ld	a, -22 (ix)
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	ld	-20 (ix), a
	ld	a, -23 (ix)
	add	a, #0x04
	ld	-19 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
	ld	a, -23 (ix)
	add	a, #0x0d
	ld	-17 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1074: if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1078: if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1085: p->frame = GetPlayerAnimFrame(i, p->dx, p->dy, (p->anim / 3) % 3); 
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-11 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1071: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -21 (ix)
	sub	a, -20 (ix)
	jr	NZ, 00120$
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	l, e
	cp	a, a
	sbc	hl, bc
	jp	Z,00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1072: all_in_position = FALSE;
	ld	-24 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1074: if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
	ld	a, -21 (ix)
	sub	a, -20 (ix)
	jr	NC, 00112$
	ld	a, -20 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -21 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	a, -9 (ix)
	sub	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	sbc	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	sub	a, #0x02
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00141$
	ld	bc, #0x0002
	jp	00142$
00141$:
	ld	a, -20 (ix)
	sub	a, -21 (ix)
	ld	c, a
00142$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), c
	jp	00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1075: else if (p->tx < p->lx) p->dx = (p->lx - p->tx >= 2) ? -2 : -(p->lx - p->tx);
	ld	a, -20 (ix)
	sub	a, -21 (ix)
	jr	NC, 00109$
	ld	l, -21 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	c, -20 (ix)
	ld	b, #0x00
	cp	a, a
	sbc	hl, bc
	ld	de, #0x8002
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jr	C, 00143$
	ld	a, #0xfe
	jp	00144$
00143$:
	ld	a, -21 (ix)
	sub	a, -20 (ix)
	neg
00144$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00113$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1076: else p->dx = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1078: if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00118$
	ld	a, c
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, #0x02
	ld	a, h
	sbc	a, #0x00
	jr	C, 00145$
	ld	a, #0x02
	jp	00146$
00145$:
	ld	a, c
	sub	a, e
00146$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), a
	jp	00119$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1079: else if (p->ty < p->ly) p->dy = (p->ly - p->ty >= 2) ? -2 : -(p->ly - p->ty);
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00115$
	ld	a, e
	sub	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, b
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, #0x02
	ld	a, h
	sbc	a, #0x00
	jr	C, 00147$
	ld	a, #0xfe
	jp	00148$
00147$:
	ld	a, e
	sub	a, c
	neg
00148$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), a
	jp	00119$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1080: else p->dy = 0;
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x00
00119$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1082: p->lx += p->dx;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	a, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	c, (hl)
	add	a, c
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1083: p->ly += p->dy;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
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
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1084: p->anim++;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1085: p->frame = GetPlayerAnimFrame(i, p->dx, p->dy, (p->anim / 3) % 3); 
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ex	de, hl
	ld	de, #0x0003
	call	__moduint
	ld	b, e
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	inc	sp
	push	af
	inc	sp
	ld	a, -1 (ix)
	call	_GetPlayerAnimFrame
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00138$
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1087: p->dx = 0; p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1088: p->frame = (i < 7) ? ((i == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_T1_PLAYER_FACE_TO_SOUTH) : ((i == 7) ? SPR_GK_PLAYER_FACE_TO_NORTH : SPR_T2_PLAYER_FACE_TO_NORTH);
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00149$
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00151$
	ld	bc, #0x00d5
	jp	00150$
00151$:
	ld	bc, #0x0005
	jp	00150$
00149$:
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00153$
	ld	bc, #0x00d6
	jp	00154$
00153$:
	ld	bc, #0x0076
00154$:
00150$:
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00138$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1069: for (u8 i = 0; i < 14; i++) {
	inc	-1 (ix)
	jp	00137$
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1091: if (all_in_position) *game_state = 3;
	ld	a, -24 (ix)
	or	a, a
	jr	Z, 00139$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1092: } else if (*game_state == 3) {
00139$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1095: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1097: void MainLoop(){
;	---------------------------------
; Function MainLoop
; ---------------------------------
_MainLoop::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1099: SetTeamColors(TEAM_1, &g_TeamColorsArray[Team1Code]);
	ld	bc, #_g_TeamColorsArray+0
	ld	de, (_Team1Code)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	push	bc
	ex	de, hl
	xor	a, a
	call	_SetTeamColors
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1100: SetTeamColors(TEAM_2, &g_TeamColorsArray[Team2Code]);
	ld	de, (_Team2Code)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	a, #0x01
	call	_SetTeamColors
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1103: u8 game_state = 0; // 0: Scorrimento, 1: Pausa, 2: Posizionamento, 3: Partita
	ld	-11 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1104: u8 wait_secs = 0;
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1105: u8 start_sec = 0;
	ld	-9 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1108: Field.ly = 0; // Parte da estremo Nord
	ld	hl, #0x0000
	ld	((_Field + 4)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1109: Field.dy = 1; // Avanzamento scorrimento per fase (3 px a frame)
	ld	hl, #(_Field + 18)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1113: for (u8 i = 0; i < 7; i++) {
	ld	-1 (ix), #0x00
00133$:
	ld	a, -1 (ix)
	sub	a, #0x07
	jp	NC, 00101$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1115: SwSprite[i].lx = 36 + i * 28;
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
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, -3 (ix)
	add	a, #<(_SwSprite)
	ld	-8 (ix), a
	ld	a, -2 (ix)
	adc	a, #>(_SwSprite)
	ld	-7 (ix), a
	ld	a, -1 (ix)
	ld	c, a
	add	a, a
	add	a, a
	add	a, a
	sub	a, c
	add	a, a
	add	a, a
	add	a, #0x24
	ld	-6 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1116: SwSprite[i].ly = 252 - 24; // Schierata sopra la riga di centrocampo
	ld	a, -8 (ix)
	add	a, #0x04
	ld	-3 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0xe4
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1117: SwSprite[i].frame = (i == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_T1_PLAYER_FACE_TO_SOUTH;
	ld	a, -8 (ix)
	add	a, #0x0f
	ld	-5 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00163$
	ld	-3 (ix), #0xd5
	ld	-2 (ix), #0
	jp	00164$
00163$:
	ld	-3 (ix), #0x05
	ld	-2 (ix), #0
00164$:
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1118: SwSprite[i].dx = 0;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1119: SwSprite[i].dy = 0;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1122: SwSprite[i+7].lx = 36 + i * 28;
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	add	a, #0x07
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -4 (ix)
	ld	-2 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1123: SwSprite[i+7].ly = 252 + 24; // Schierata sotto la riga di centrocampo
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	(hl), #0x14
	inc	hl
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1124: SwSprite[i+7].frame = (i == 0) ? SPR_GK_PLAYER_FACE_TO_NORTH : SPR_T2_PLAYER_FACE_TO_NORTH;
	ld	a, -3 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00165$
	ld	-5 (ix), #0xd6
	ld	-4 (ix), #0
	jp	00166$
00165$:
	ld	-5 (ix), #0x76
	ld	-4 (ix), #0
00166$:
	ld	c, -5 (ix)
	ld	b, -4 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1125: SwSprite[i+7].dx = 0;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0011
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1126: SwSprite[i+7].dy = 0;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	de, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1113: for (u8 i = 0; i < 7; i++) {
	inc	-1 (ix)
	jp	00133$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1130: SwSprite[14].lx = BALL_START_X;
	ld	hl, #(_SwSprite + 322)
	ld	(hl), #0x78
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1131: SwSprite[14].ly = BALL_START_Y;
	ld	hl, #0x0100
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1132: SwSprite[14].frame = SPR_BALL_SIZE_1; // Sprite base della palla
	ld	hl, #0x0060
	ld	((_SwSprite + 337)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1133: SwSprite[14].dx = 0;
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1134: SwSprite[14].dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1137: for (u8 i = 15; i < NumSprite; i++) {
	ld	c, #0x0f
00136$:
	ld	a, c
	sub	a, #0x18
	jr	NC, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1138: SwSprite[i].lx = 0;
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
	xor	a, a
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1139: SwSprite[i].ly = 1000; // Valore Y alto, fuori dal limite del campo (504)
	ld	hl, #0x0004
	add	hl, de
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1140: SwSprite[i].frame = 0;
	ld	hl, #0x000f
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1141: SwSprite[i].dx = 0;
	ld	hl, #0x0011
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1142: SwSprite[i].dy = 0;
	ld	hl, #0x0012
	add	hl, de
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1137: for (u8 i = 15; i < NumSprite; i++) {
	inc	c
	jp	00136$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1146: for (u8 i=0; i<NumSprite;i++) 
	ld	c, #0x00
00139$:
	ld	a, c
	sub	a, #0x18
	jp	NC, 00103$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1148: SwSprite[i].x0 = SwSprite[i].lx;
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
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	a, (de)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1149: SwSprite[i].y0 = SwSprite[i].ly;
	ld	hl, #0x0006
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	iy, #0x0004
	add	iy, de
	ld	a, 0 (iy)
	ld	-2 (ix), a
	ld	a, 1 (iy)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1150: SwSprite[i].x1 = SwSprite[i].lx;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (de)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1151: SwSprite[i].y1 = SwSprite[i].ly;
	ld	hl, #0x0008
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, 0 (iy)
	ld	-2 (ix), a
	ld	a, 1 (iy)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1152: SwSprite[i].x2 = 0;
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1153: SwSprite[i].y2 = 0;
	ld	hl, #0x000a
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1146: for (u8 i=0; i<NumSprite;i++) 
	inc	c
	jp	00139$
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1157: ScoreBoardLeft.y0 = ScoreBoardRight.y0 = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardRight + 6)), bc
	ld	((_ScoreBoardLeft + 6)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1158: ScoreBoardLeft.y1 = ScoreBoardRight.y1 = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardRight + 8)), bc
	ld	((_ScoreBoardLeft + 8)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1159: ScoreBoardLeft.y2 = ScoreBoardRight.y2 = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardRight + 10)), bc
	ld	((_ScoreBoardLeft + 10)), bc
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1164: VDP_SetPage(0);		
	xor	a, a
	call	_VDP_SetPage
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1165: VDP_SetVerticalOffset(Field.ly & 255);
	ld	hl, #(_Field + 4)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1166: AddLines(&Field);
	ld	hl, #_Field
	call	_AddLines
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1168: for (u8 i=0; i<NumSprite;i++) 
	ld	c, #0x00
00142$:
	ld	a, c
	sub	a, #0x18
	jp	NC, 00106$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1171: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x2, SwSprite[i].y2, 512);
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	de, #10
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	push	bc
	ld	hl, #0x0200
	push	hl
	push	de
	push	af
	inc	sp
	ld	de, #_RemoveSwSprite
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
	pop	bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1173: if OnScreen(SwSprite[i].y1) 
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #8
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), b
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0x02
	ld	d, a
	ld	hl, (#(_Field + 4) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
	ld	b, a
	ld	a, e
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00143$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1174: CallSpriteFrame(SwSprite[i].x1,(SwSprite[i].y1&255)+256,SwSprite[i].frame);
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #15
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	inc	a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
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
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1168: for (u8 i=0; i<NumSprite;i++) 
	inc	c
	jp	00142$
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1177: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x2, ScoreBoardLeft.y2, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1178: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x1, ScoreBoardLeft.y1, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1179: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x2, ScoreBoardRight.y2, 512);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1180: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x1, ScoreBoardRight.y1, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1183: UpdateGameState(&game_state, &wait_secs, &start_sec, target_ly);
	ld	hl, #0x009c
	push	hl
	ld	hl, #4
	add	hl, sp
	push	hl
	ld	hl, #5
	add	hl, sp
	ex	de, hl
	ld	hl, #4
	add	hl, sp
	call	_UpdateGameState
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1185: for (u8 i=0; i<NumSprite;i++) 
	ld	c, #0x00
00145$:
	ld	a, c
	sub	a, #0x18
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1187: SwSprite[i].x2 = SwSprite[i].lx;
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
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (de)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1188: SwSprite[i].y2 = SwSprite[i].ly;
	ld	hl, #0x000a
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	hl, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1185: for (u8 i=0; i<NumSprite;i++) 
	inc	c
	jp	00145$
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1191: ScoreBoardLeft.y2 = Field.ly;	
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardLeft + 10)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1192: ScoreBoardRight.y2 = Field.ly;	
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardRight + 10)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1195: VDP_SetPage(1);		
	ld	a, #0x01
	call	_VDP_SetPage
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1196: VDP_SetVerticalOffset(Field.ly & 255);
	ld	hl, #(_Field + 4)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1197: AddLines(&Field);
	ld	hl, #_Field
	call	_AddLines
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1199: for (u8 i=0; i<NumSprite;i++) 
	ld	c, #0x00
00148$:
	ld	a, c
	sub	a, #0x18
	jp	NC, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1202: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x0, SwSprite[i].y0, 0);
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	de, #6
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1204: if OnScreen(SwSprite[i].y2) 
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #10
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), b
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0x02
	ld	d, a
	ld	hl, (#(_Field + 4) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
	ld	b, a
	ld	a, e
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00149$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1205: CallSpriteFrame(SwSprite[i].x2,(SwSprite[i].y2&255)+512,SwSprite[i].frame);
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #15
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x02
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
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
00149$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1199: for (u8 i=0; i<NumSprite;i++) 
	inc	c
	jp	00148$
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1208: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x0, ScoreBoardLeft.y0, 0);
	ld	bc, (#(_ScoreBoardLeft + 6) + 0)
	ld	a, (#(_ScoreBoardLeft + 1) + 0)
	ld	hl, #0x0000
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1209: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x2, ScoreBoardLeft.y2, 512);
	ld	bc, (#(_ScoreBoardLeft + 10) + 0)
	ld	a, (#(_ScoreBoardLeft + 3) + 0)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1210: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x0, ScoreBoardRight.y0, 0);
	ld	bc, (#(_ScoreBoardRight + 6) + 0)
	ld	a, (#(_ScoreBoardRight + 1) + 0)
	ld	hl, #0x0000
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1211: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x2, ScoreBoardRight.y2, 512);
	ld	bc, (#(_ScoreBoardRight + 10) + 0)
	ld	a, (#(_ScoreBoardRight + 3) + 0)
	ld	hl, #0x0200
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardRight
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1214: UpdateGameState(&game_state, &wait_secs, &start_sec, target_ly);
	ld	hl, #0x009c
	push	hl
	ld	hl, #4
	add	hl, sp
	push	hl
	ld	hl, #5
	add	hl, sp
	ex	de, hl
	ld	hl, #4
	add	hl, sp
	call	_UpdateGameState
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1216: for (u8 i=0; i<NumSprite;i++) 
	ld	c, #0x00
00151$:
	ld	a, c
	sub	a, #0x18
	jr	NC, 00111$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1218: SwSprite[i].x0 = SwSprite[i].lx;
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
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	a, (de)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1219: SwSprite[i].y0 = SwSprite[i].ly;
	ld	hl, #0x0006
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	hl, #4
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1216: for (u8 i=0; i<NumSprite;i++) 
	inc	c
	jp	00151$
00111$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1222: ScoreBoardLeft.y0 = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardLeft + 6)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1223: ScoreBoardRight.y0 = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardRight + 6)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1227: VDP_SetPage(2);		
	ld	a, #0x02
	call	_VDP_SetPage
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1228: VDP_SetVerticalOffset(Field.ly & 255);
	ld	hl, #(_Field + 4)
	ld	l, (hl)
;	spillPairReg hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:777: inline void VDP_SetVerticalOffset(u8 offset) { VDP_RegWrite(23, offset); }
	ld	a, #0x17
	call	_VDP_RegWrite
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1229: AddLines(&Field);
	ld	hl, #_Field
	call	_AddLines
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1231: for (u8 i=0; i<NumSprite;i++) 
	ld	c, #0x00
00154$:
	ld	a, c
	sub	a, #0x18
	jp	NC, 00114$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1234: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveSwSprite, SwSprite[i].x1, SwSprite[i].y1, 256);
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
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	de, #8
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1236: if OnScreen(SwSprite[i].y0) 
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #6
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), b
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, #0x0f
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0x02
	ld	d, a
	ld	hl, (#(_Field + 4) + 0)
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	and	a, #0x01
	ld	b, a
	ld	a, e
	sub	a, #0xcf
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1237: CallSpriteFrame(SwSprite[i].x0,(SwSprite[i].y0&255),SwSprite[i].frame);	
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #15
	add	hl, de
	ld	b, (hl)
	inc	hl
	ld	a, (hl)
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	hl
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ex	(sp), hl
	ld	a, l
	call	_CallSpriteFrame
	pop	bc
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1231: for (u8 i=0; i<NumSprite;i++) 
	inc	c
	jp	00154$
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1240: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardLeft, ScoreBoardLeft.x1, ScoreBoardLeft.y1, 256);
	ld	bc, (#(_ScoreBoardLeft + 8) + 0)
	ld	a, (#(_ScoreBoardLeft + 2) + 0)
	ld	hl, #0x0100
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_RemoveScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1241: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardLeft, ScoreBoardLeft.x0, ScoreBoardLeft.y0, 0);
	ld	bc, (#(_ScoreBoardLeft + 6) + 0)
	ld	a, (#(_ScoreBoardLeft + 1) + 0)
	ld	hl, #0x0000
	push	hl
	push	bc
	push	af
	inc	sp
	ld	de, #_PrintScoreBoardLeft
	ld	a, #0x05
	call	_CallFnc_VOID_U8U16U16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1242: CallFnc_VOID_U8U16U16(SEG_DRAW, RemoveScoreBoardRight, ScoreBoardRight.x1, ScoreBoardRight.y1, 256);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1243: CallFnc_VOID_U8U16U16(SEG_DRAW, PrintScoreBoardRight, ScoreBoardRight.x0, ScoreBoardRight.y0, 0);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1246: UpdateGameState(&game_state, &wait_secs, &start_sec, target_ly);
	ld	hl, #0x009c
	push	hl
	ld	hl, #4
	add	hl, sp
	push	hl
	ld	hl, #5
	add	hl, sp
	ex	de, hl
	ld	hl, #4
	add	hl, sp
	call	_UpdateGameState
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1248: for (u8 i=0; i<NumSprite;i++) 
	ld	c, #0x00
00157$:
	ld	a, c
	sub	a, #0x18
	jr	NC, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1250: SwSprite[i].x1 = SwSprite[i].lx;
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1251: SwSprite[i].y1 = SwSprite[i].ly;
	ld	hl, #0x0008
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	hl, #4
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1248: for (u8 i=0; i<NumSprite;i++) 
	inc	c
	jp	00157$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1254: ScoreBoardLeft.y1 = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardLeft + 8)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1255: ScoreBoardRight.y1 = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardRight + 8)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	bc, #_g_PrintData + 5
	ld	a, #0x01
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0318
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1261: if(LastSecs!=Secs){
	ld	a, (_LastSecs+0)
	ld	iy, #_Secs
	sub	a, 0 (iy)
	jp	Z,00159$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1262: LastSecs=Secs;
	ld	a, (_Secs+0)
	ld	(_LastSecs+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1264: if(Secs==60){
	ld	a, (_Secs+0)
	sub	a, #0x3c
	jr	NZ, 00117$
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	l, #0x30
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1265: Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins+1);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1266: Print_SetPosition(248,  60+768);Print_DrawFormat("0");	
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1267: Print_SetPosition(248,  68+768);Print_DrawFormat("0");
	ld	hl, #___str_1
	push	hl
	call	_Print_DrawFormat
	pop	af
	jp	00159$
00117$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0330
	ld	((_g_PrintData + 6)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1270: Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1271: Print_SetPosition(248,  60+768);Print_DrawFormat("%i",Secs/10);	
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1272: Print_SetPosition(248,  68+768);Print_DrawFormat("%i",Secs-Secs/10*10);
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s4_b3.c:1277: }
	jp	00159$
___str_0:
	.ascii "%i"
	.db 0x00
___str_1:
	.ascii "0"
	.db 0x00
	.area _SEG4
	.area _INITIALIZER
	.area _CABS (ABS)
