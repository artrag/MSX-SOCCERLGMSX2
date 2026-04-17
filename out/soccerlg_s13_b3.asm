;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s13_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetPlayerAnimFrame
	.globl _AssignKickOffTargets
	.globl _EventKickOffReady
	.globl _EventPlayerFirstPresentationStarted
	.globl _FindReceiver
	.globl _CallFnc_U16_P4B
	.globl _CallFnc_U16_P4
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
	.globl _UpdateGameState_Init
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
	.area _SEG13
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:11: void UpdateGameState_Init(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
;	---------------------------------
; Function UpdateGameState_Init
; ---------------------------------
_UpdateGameState_Init::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-24
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:13: if (*game_state == 0) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jp	NZ, 00196$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:14: if (Field.ly >= target_ly) {
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:15: Field.dy = 0; // Ferma lo scorrimento
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:14: if (Field.ly >= target_ly) {
	ld	a, -9 (ix)
	sub	a, 6 (ix)
	ld	a, -8 (ix)
	sbc	a, 7 (ix)
	jr	C, 00102$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:15: Field.dy = 0; // Ferma lo scorrimento
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:16: *game_state = 1;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:17: *wait_secs = 2; 
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:18: *start_sec = Frms;
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00200$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:20: Field.ly += Field.dy;
	ld	a, (#(_Field + 18) + 0)
	ld	-1 (ix), a
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	hl, #(_Field + 4)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00200$
00196$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:24: } else if (*game_state == 1) {
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00193$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:25: if (*start_sec < Frms) { // Frms wrapped from 1 to 60
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	ld	hl, #_Frms
	ld	a, c
	sub	a, (hl)
	jr	NC, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:26: (*wait_secs)--;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:27: if (*wait_secs == 0) {
	or	a, a
	jr	NZ, 00107$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:28: *game_state = 2; // Passa al posizionamento
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:29: CallFnc_VOID(SEG_EVENTS, EventPlayerFirstPresentationStarted);
	ld	de, #_EventPlayerFirstPresentationStarted
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:30: CallFnc_VOID(SEG_GAMESTATE_2, AssignKickOffTargets);
	ld	de, #_AssignKickOffTargets
	ld	a, #0x0b
	call	_CallFnc_VOID
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:33: *start_sec = Frms;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
	jp	00200$
00193$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:34: } else if (*game_state == 2) {
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	NZ,00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:35: bool all_in_position = TRUE;
	ld	-20 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:38: if (RestartType == RESTART_KICKOFF_SCROLL) {
	ld	a, (_RestartType+0)
	sub	a, #0x06
	jp	NZ,00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:39: if (Field.ly > target_ly + 3) {
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, 6 (ix)
	ld	-11 (ix), a
	ld	a, 7 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	add	a, #0x03
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:40: Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:39: if (Field.ly > target_ly + 3) {
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00115$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:40: Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE;
	ld	hl, #(_Field + 18)
	ld	(hl), #0xfc
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, (#(_Field + 18) + 0)
	ld	-1 (ix), a
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	hl, #(_Field + 4)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	ld	-20 (ix), #0x00
	jp	00118$
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:41: } else if (Field.ly + 3 < target_ly) {
	ld	a, -11 (ix)
	add	a, #0x03
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, 6 (ix)
	ld	a, -6 (ix)
	sbc	a, 7 (ix)
	jr	NC, 00112$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:42: Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x04
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, (#(_Field + 18) + 0)
	ld	-1 (ix), a
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	hl, #(_Field + 4)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	ld	-20 (ix), #0x00
	jp	00118$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:43: } else if (Field.ly != target_ly) {
	ld	a, 6 (ix)
	sub	a, -9 (ix)
	jr	NZ, 00596$
	ld	a, 7 (ix)
	sub	a, -8 (ix)
	jr	Z, 00109$
00596$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:44: Field.dy = (i8)(target_ly - Field.ly); Field.ly = target_ly; all_in_position = FALSE;
	ld	a, 6 (ix)
	ld	c, -9 (ix)
	sub	a, c
	ld	(#(_Field + 18)),a
	ld	hl, #(_Field + 4)
	ld	a, 6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 7 (ix)
	ld	(hl), a
	ld	-20 (ix), #0x00
	jp	00118$
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:46: Field.dy = 0;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:51: u16 ball_ref_x = (RestartType == RESTART_GKSAVE) ? RestartSideX : SwSprite[14].lx;
	ld	a, (_RestartType+0)
	sub	a, #0x04
	ld	a, #0x01
	jr	Z, 00598$
	xor	a, a
00598$:
	ld	-6 (ix), a
	or	a, a
	jr	Z, 00202$
	ld	a, (_RestartSideX+0)
	ld	-1 (ix), a
	jp	00203$
00202$:
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-1 (ix), a
00203$:
	ld	a, -1 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:52: u16 ball_ref_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : SwSprite[14].ly;
	ld	a, -6 (ix)
	or	a, a
	jr	Z, 00204$
	ld	hl, (_RestartSideY)
	ld	-7 (ix), l
	ld	-6 (ix), h
	jp	00205$
00204$:
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:53: u16 ref_tx = (ball_ref_x < 128) ? (ball_ref_x + 40) : (ball_ref_x - 40);
	ld	a, -9 (ix)
	ld	-11 (ix), a
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, #0x80
	ld	a, -10 (ix)
	sbc	a, #0x00
	jr	NC, 00206$
	ld	a, -11 (ix)
	add	a, #0x28
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	jp	00207$
00206$:
	ld	a, -11 (ix)
	add	a, #0xd8
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0xff
	ld	-8 (ix), a
00207$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:54: u16 ref_ty = (ball_ref_y < 256) ? (ball_ref_y + 48) : (ball_ref_y - 48);
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	sub	a, #0x01
	jr	NC, 00208$
	ld	a, -11 (ix)
	add	a, #0x30
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	jp	00209$
00208$:
	ld	a, -11 (ix)
	add	a, #0xd0
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #0xff
	ld	-6 (ix), a
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:55: if (ref_tx < 16) ref_tx = 16;
	ld	a, -9 (ix)
	ld	b, -8 (ix)
	sub	a, #0x10
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00120$
	ld	-9 (ix), #0x10
	ld	-8 (ix), #0
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:56: if (ref_tx > 240) ref_tx = 240;
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	a, #0xf0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jr	NC, 00122$
	ld	-9 (ix), #0xf0
	ld	-8 (ix), #0
00122$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:57: if (ref_ty < 24) ref_ty = 24;
	ld	a, -7 (ix)
	ld	b, -6 (ix)
	sub	a, #0x18
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00124$
	ld	-7 (ix), #0x18
	ld	-6 (ix), #0
00124$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:58: if (ref_ty > 488) ref_ty = 488;
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	a, #0xe8
	cp	a, c
	ld	a, #0x01
	sbc	a, b
	jr	NC, 00126$
	ld	-7 (ix), #0xe8
	ld	-6 (ix), #0x01
00126$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:59: SwSprite[26].tx = ref_tx;
	ld	bc, #_SwSprite + 610
	ld	a, -9 (ix)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:60: SwSprite[26].ty = ref_ty;
	ld	hl, #(_SwSprite + 611)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:62: for (u8 i = 0; i <= 26; i++) {
	ld	-1 (ix), #0x00
00199$:
	ld	a, #0x1a
	sub	a, -1 (ix)
	jp	C, 00163$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:63: if (i >= 14 && i < 26) continue;
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	C, 00128$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	C, 00162$
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:64: struct ObjectInfo* p = &SwSprite[i];
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
	ld	c, l
	ld	b, h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:65: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, (bc)
	ld	-19 (ix), a
	push	bc
	pop	iy
	ld	e, 12 (iy)
	ld	hl, #0x0004
	add	hl, bc
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	hl, #0x000d
	add	hl, bc
	ld	-7 (ix), l
	ld	-6 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:68: if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
	ld	hl, #0x0011
	add	hl, bc
	ld	-18 (ix), l
	ld	-17 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:72: if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
	ld	hl, #0x0012
	add	hl, bc
	ld	-16 (ix), l
	ld	-15 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:81: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	hl, #0x000f
	add	hl, bc
	ld	-14 (ix), l
	ld	-13 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:65: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -19 (ix)
	sub	a, e
	jr	NZ, 00158$
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	d, (hl)
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	a, -12 (ix)
	sub	a, d
	jr	NZ, 00601$
	ld	a, -11 (ix)
	sub	a, l
	jp	Z,00159$
00601$:
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:66: all_in_position = FALSE;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:68: if (p->tx > p->lx) p->dx = (p->tx - p->lx >= 2) ? 2 : (p->tx - p->lx);
	ld	a, -19 (ix)
	sub	a, e
	jr	NC, 00134$
	ld	a, e
	ld	d, #0x00
	ld	l, -19 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	a, l
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00210$
	ld	a, #0x02
	jp	00211$
00210$:
	ld	a, e
	sub	a, -19 (ix)
00211$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), a
	jp	00135$
00134$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:69: else if (p->tx < p->lx) p->dx = (p->lx - p->tx >= 2) ? -2 : -(p->lx - p->tx);
	ld	a, e
	sub	a, -19 (ix)
	jr	NC, 00131$
	ld	a, -19 (ix)
	ld	d, #0x00
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	sub	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	a, l
	sub	a, #0x02
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00212$
	ld	a, #0xfe
	jp	00213$
00212$:
	ld	a, -19 (ix)
	sub	a, e
	neg
00213$:
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), a
	jp	00135$
00131$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:70: else p->dx = 0;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0x00
00135$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:72: if (p->ty > p->ly) p->dy = (p->ty - p->ly >= 2) ? 2 : (p->ty - p->ly);
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jr	NC, 00140$
	ld	a, e
	sub	a, -7 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	sbc	a, -6 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, #0x02
	ld	a, h
	sbc	a, #0x00
	jr	C, 00214$
	ld	a, #0x02
	jp	00215$
00214$:
	ld	a, e
	ld	e, -7 (ix)
	sub	a, e
00215$:
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), a
	jp	00141$
00140$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:73: else if (p->ty < p->ly) p->dy = (p->ly - p->ty >= 2) ? -2 : -(p->ly - p->ty);
	ld	a, e
	sub	a, -7 (ix)
	ld	a, d
	sbc	a, -6 (ix)
	jr	NC, 00137$
	ld	a, -7 (ix)
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -6 (ix)
	sbc	a, d
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, l
	sub	a, #0x02
	ld	a, h
	sbc	a, #0x00
	jr	C, 00216$
	ld	a, #0xfe
	jp	00217$
00216$:
	ld	a, -7 (ix)
	sub	a, e
	neg
00217$:
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), a
	jp	00141$
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:74: else p->dy = 0;
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), #0x00
00141$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:76: p->lx += p->dx;
	ld	a, (bc)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	e, (hl)
	add	a, e
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:77: p->ly += p->dy;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, (hl)
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
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:78: p->anim++;
	ld	hl, #0x0013
	add	hl, bc
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	dec	hl
	inc	de
	ld	(hl), e
	inc	hl
	ld	(hl), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:80: const u8 walk_seq[4] = {0, 1, 2, 1}; // 1->2->3->2->1...
	ld	-24 (ix), #0x00
	ld	-23 (ix), #0x01
	ld	-22 (ix), #0x02
	ld	-21 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:81: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
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
	ld	a, (hl)
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	b, (hl)
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	d, (hl)
	push	af
	inc	sp
	ld	c, d
	push	bc
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00162$
00159$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:83: i8 dir_x = (SwSprite[14].lx > p->lx) ? 1 : ((SwSprite[14].lx < p->lx) ? -1 : 0);
	ld	a, (#_SwSprite + 322)
	ld	-10 (ix), a
	ld	a, -19 (ix)
	sub	a, -10 (ix)
	jr	NC, 00218$
	ld	bc, #0x0001
	jp	00219$
00218$:
	ld	a, -10 (ix)
	sub	a, -19 (ix)
	jr	NC, 00220$
	ld	bc, #0xffff
	jp	00221$
00220$:
	ld	bc, #0x0000
00221$:
00219$:
	ld	-8 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:84: i8 dir_y = (i < 7) ? 1 : -1; // Team 1 guarda sempre a Sud, Team 2 sempre a Nord
	ld	a, -1 (ix)
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	-9 (ix), a
	or	a, a
	jr	Z, 00222$
	ld	bc, #0x0001
	jp	00223$
00222$:
	ld	bc, #0xffff
00223$:
	ld	-6 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:85: if (i == 26) {
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	NZ,00146$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:86: u16 face_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : SwSprite[14].ly;
	ld	a, (_RestartType+0)
	sub	a, #0x04
	ld	a, #0x01
	jr	Z, 00605$
	xor	a, a
00605$:
	ld	-8 (ix), a
	or	a, a
	jr	Z, 00224$
	ld	hl, (_RestartSideY)
	ld	-7 (ix), l
	ld	-6 (ix), h
	jp	00225$
00224$:
	ld	hl, #_SwSprite + 326
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
00225$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:87: u16 face_x = (RestartType == RESTART_GKSAVE) ? RestartSideX : SwSprite[14].lx;
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00226$
	ld	a, (_RestartSideX+0)
	ld	-8 (ix), a
	jp	00227$
00226$:
	ld	a, -10 (ix)
	ld	-8 (ix), a
00227$:
	ld	c, -8 (ix)
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:88: dir_x = (face_x > p->lx) ? 1 : ((face_x < p->lx) ? -1 : 0);
	ld	e, -19 (ix)
	ld	d, #0x00
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC, 00228$
	ld	bc, #0x0001
	jp	00229$
00228$:
	ld	a, c
	sub	a, e
	ld	a, b
	sbc	a, d
	jr	NC, 00230$
	ld	bc, #0xffff
	jp	00231$
00230$:
	ld	bc, #0x0000
00231$:
00229$:
	ld	-8 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:89: dir_y = (face_y > p->ly) ? 1 : ((face_y < p->ly) ? -1 : 0);
	ld	a, -12 (ix)
	sub	a, -7 (ix)
	ld	a, -11 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00232$
	ld	bc, #0x0001
	jp	00233$
00232$:
	ld	a, -7 (ix)
	sub	a, -12 (ix)
	ld	a, -6 (ix)
	sbc	a, -11 (ix)
	jr	NC, 00234$
	ld	bc, #0xffff
	jp	00235$
00234$:
	ld	bc, #0x0000
00235$:
00233$:
	ld	-6 (ix), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:90: if (dir_x == 0 && dir_y == 0) dir_y = 1;
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00146$
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00146$
	ld	-6 (ix), #0x01
00146$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:92: p->dx = 0; p->dy = 0;
	ld	l, -18 (ix)
	ld	h, -17 (ix)
	ld	(hl), #0x00
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:94: if (RestartType == RESTART_THROWIN && i == g_thrower_id) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00155$
	ld	a, -1 (ix)
	ld	iy, #_g_thrower_id
	sub	a, 0 (iy)
	jr	NZ, 00155$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:96: p->frame = (RestartSideX < 128) ? SPR_T1_PLAYER_THROWIN_FROM_WEST_1 : SPR_T1_PLAYER_THROWIN_FROM_EAST_1;
	ld	a, (_RestartSideX+0)
	sub	a, #0x80
	ld	a, #0x00
	rla
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:95: if (i < 7) {
	ld	a, -9 (ix)
	or	a, a
	jr	Z, 00148$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:96: p->frame = (RestartSideX < 128) ? SPR_T1_PLAYER_THROWIN_FROM_WEST_1 : SPR_T1_PLAYER_THROWIN_FROM_EAST_1;
	ld	a, c
	or	a, a
	jr	Z, 00236$
	ld	bc, #0x0025
	jp	00237$
00236$:
	ld	bc, #0x0022
00237$:
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00162$
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:98: p->frame = (RestartSideX < 128) ? SPR_T2_PLAYER_THROWIN_FROM_WEST_1 : SPR_T2_PLAYER_THROWIN_FROM_EAST_1;
	ld	a, c
	or	a, a
	jr	Z, 00238$
	ld	bc, #0x0095
	jp	00239$
00238$:
	ld	bc, #0x0092
00239$:
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00162$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:100: } else if (RestartType == RESTART_GKSAVE && i == ((RestartSideY < 256) ? 0 : 7)) {
	ld	a, (_RestartType+0)
	sub	a, #0x04
	jr	NZ, 00151$
	ld	hl, (_RestartSideY)
	ld	a, h
	sub	a, #0x01
	jr	NC, 00240$
	ld	bc, #0x0000
	jp	00241$
00240$:
	ld	bc, #0x0007
00241$:
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, bc
	jr	NZ, 00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:101: p->frame = (i == 0) ? SPR_GK_PLAYER_SOUTH_WITH_BALL : SPR_GK_PLAYER_NORTH_WITH_BALL;
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00242$
	ld	-7 (ix), #0xf1
	ld	-6 (ix), #0
	jp	00243$
00242$:
	ld	-7 (ix), #0xf2
	ld	-6 (ix), #0
00243$:
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00162$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:103: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_2, GetPlayerAnimFrame, i, dir_x, dir_y, 0); // Posa ferma (0) verso la palla
	xor	a, a
	push	af
	inc	sp
	ld	h, -6 (ix)
	ld	l, -8 (ix)
	push	hl
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x0b
	call	_CallFnc_U16_P4
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00162$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:62: for (u8 i = 0; i <= 26; i++) {
	inc	-1 (ix)
	jp	00199$
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:107: if (all_in_position) {
	ld	a, -20 (ix)
	or	a, a
	jp	Z, 00200$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:18: *start_sec = Frms;
	ld	a, 4 (ix)
	ld	-8 (ix), a
	ld	a, 5 (ix)
	ld	-7 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:108: if (RestartType == RESTART_THROWIN || RestartType == RESTART_CORNERKICK) {
	ld	a, (_RestartType+0)
	dec	a
	jr	Z, 00179$
	ld	a, (_RestartType+0)
	sub	a, #0x03
	jr	NZ, 00180$
00179$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:109: *game_state = 7;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:110: u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00244$
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
	jp	00245$
00244$:
	ld	-10 (ix), #0x01
	ld	-9 (ix), #0
00245$:
	ld	a, -10 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:111: bool is_human = FALSE;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:112: if (throw_team == TEAM_2) is_human = TRUE;
	ld	a, -6 (ix)
	dec	a
	jr	NZ, 00168$
	ld	-1 (ix), #0x01
	jp	00169$
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:113: else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human = TRUE;
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00169$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00169$
	ld	-1 (ix), #0x01
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:115: *wait_secs = is_human ? 5 : 1; // 5 secondi per il giocatore, 1 per la CPU
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00246$
	ld	bc, #0x0005
	jp	00247$
00246$:
	ld	bc, #0x0001
00247$:
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:116: *start_sec = Frms;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:117: g_last_input_dir = DIRECTION_NONE; // Resetta l'input per la selezione
	ld	iy, #_g_last_input_dir
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:119: return;
	jp	00200$
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:120: } else if (RestartType == RESTART_GOALKICK || RestartType == RESTART_GKSAVE) {
	ld	a,(_RestartType+0)
	cp	a,#0x02
	jr	Z, 00176$
	sub	a, #0x04
	jr	NZ, 00181$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:121: *game_state = 8; // Stato di attesa e rincorsa rinvio
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x08
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:123: u8 gk = (RestartSideY < 256) ? 0 : 7;
	ld	hl, (_RestartSideY)
	ld	a, h
	sub	a, #0x01
	jr	NC, 00248$
	xor	a, a
	ld	c, a
	jp	00249$
00248$:
	ld	a, #0x07
	ld	c, #0x00
00249$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:124: u8 team_to_kick = (gk == 0) ? TEAM_1 : TEAM_2;
	or	a,a
	jr	NZ, 00250$
	ld	b, a
	jp	00251$
00250$:
	ld	a, #0x01
	ld	b, #0x00
00251$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:125: bool is_human = FALSE;
	ld	-1 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:126: if (team_to_kick == TEAM_2) is_human = TRUE;
	cp	a, #0x01
	jr	NZ, 00174$
	ld	-1 (ix), #0x01
	jp	00175$
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:127: else if (team_to_kick == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) is_human = TRUE;
	or	a, a
	jr	NZ, 00175$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00175$
	ld	-1 (ix), #0x01
00175$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:129: *wait_secs = is_human ? 5 : 1; // 5s per l'umano, 1s per la CPU
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00252$
	ld	-10 (ix), #0x05
	ld	-9 (ix), #0
	jp	00253$
00252$:
	ld	-10 (ix), #0x01
	ld	-9 (ix), #0
00253$:
	ld	a, -10 (ix)
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:130: *start_sec = Frms;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:131: g_last_input_dir = DIRECTION_NONE; // Resetta l'input per la selezione
	ld	iy, #_g_last_input_dir
	ld	0 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:133: return;
	jp	00200$
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:135: if (RestartType == RESTART_KICKOFF_SCROLL) RestartType = 0;
	ld	a, (_RestartType+0)
	sub	a, #0x06
	jr	NZ, 00184$
	ld	hl, #_RestartType
	ld	(hl), #0x00
00184$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:136: *game_state = 3;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:139: if (KickOffTeam == TEAM_1) {
	ld	a, (_KickOffTeam+0)
	or	a, a
	jr	NZ, 00186$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:140: T1_Carrier = 3; // Giocatore a sinistra della palla
	ld	hl, #_T1_Carrier
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:141: T1_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T1_Carrier, 4, 0, 1); // Ignora il compagno (4)
	ld	a, #0x01
	push	af
	inc	sp
	xor	a, a
	ld	h, a
	ld	l, #0x04
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U16_P4B
	ld	a, e
	ld	(#_T1_Receiver), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:142: T2_Carrier = T2_Receiver = 0xFF; // Difesa senza palla
	ld	a,#0xff
	ld	(#_T2_Receiver),a
	ld	(#_T2_Carrier), a
	jp	00187$
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:144: T2_Carrier = 11; // Giocatore a destra della palla
	ld	hl, #_T2_Carrier
	ld	(hl), #0x0b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:145: T2_Receiver = (u8)CallFnc_U16_P4B(SEG_LOGIC, FindReceiver, T2_Carrier, 10, 0, -1); // Ignora il compagno (10)
	ld	a, #0xff
	push	af
	inc	sp
	xor	a, a
	ld	h, a
	ld	l, #0x0a
	push	hl
	ld	a, #0x0b
	push	af
	inc	sp
	ld	de, #_FindReceiver
	ld	a, #0x06
	call	_CallFnc_U16_P4B
	ld	a, e
	ld	(#_T2_Receiver), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:146: T1_Carrier = T1_Receiver = 0xFF; // Difesa senza palla
	ld	a,#0xff
	ld	(#_T1_Receiver),a
	ld	(#_T1_Carrier), a
00187$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:149: LastTouchTeam = KickOffTeam; // Assegna possesso fittizio al team che batte per far allargare i compagni
	ld	a, (_KickOffTeam+0)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:151: *wait_secs = 2;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:152: *start_sec = Frms;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:153: CallFnc_VOID(SEG_EVENTS, EventKickOffReady);
	ld	de, #_EventKickOffReady
	ld	a, #0x08
	call	_CallFnc_VOID
00200$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s13_b3.c:156: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
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
	.area _SEG13
	.area _INITIALIZER
	.area _CABS (ABS)
