;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg_s15_b3
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetPlayerIdleFrame
	.globl _GetPlayerAnimFrame
	.globl _ShowMenu
	.globl _ExecuteCornerKick
	.globl _ExecuteThrowIn
	.globl _EventBallKicked
	.globl _SetBallSprite
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P3
	.globl _CallFnc_VOID_U8U8
	.globl _CallFnc_VOID_P1
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
	.globl _UpdateGameState_SetPieces
	.globl _UpdateGameState_Penalties_End
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
	.area _SEG15
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:11: void UpdateGameState_SetPieces(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
;	---------------------------------
; Function UpdateGameState_SetPieces
; ---------------------------------
_UpdateGameState_SetPieces::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-27
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	-4 (ix), e
	ld	-3 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:15: if (*game_state == 7) {
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	sub	a, #0x07
	jp	NZ,00190$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:17: u8 throw_team = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00194$
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	jp	00195$
00194$:
	ld	-6 (ix), #0x01
	ld	-5 (ix), #0
00195$:
	ld	a, -6 (ix)
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:18: bool is_human = FALSE;
	ld	-8 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:21: if (throw_team == TEAM_2) { is_human = TRUE; joy_port = 0; }
	ld	a, -9 (ix)
	dec	a
	jr	NZ, 00105$
	ld	-8 (ix), #0x01
	jp	00106$
00105$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:22: else if (throw_team == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }
	ld	a, -9 (ix)
	or	a, a
	jr	NZ, 00106$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00106$
	ld	-8 (ix), #0x01
00106$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:24: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:26: if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
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
	jr	NC, 00110$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:27: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	or	a, a
	jr	Z, 00110$
	ld	a, -5 (ix)
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
00110$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:29: *start_sec = Frms;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (_Frms+0)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:31: if (is_human) {
	ld	a, -8 (ix)
	or	a, a
	jp	Z, 00132$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:33: if (throw_team == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -9 (ix)
	or	a, a
	jr	NZ, 00112$
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00196$
	ld	a, (_g_throw_rec_1+0)
	jp	00197$
00196$:
	ld	a, (_g_throw_rec_2+0)
00197$:
	ld	(_T1_Receiver+0), a
	jp	00113$
00112$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:34: else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00198$
	ld	a, (_g_throw_rec_1+0)
	jp	00199$
00198$:
	ld	a, (_g_throw_rec_2+0)
00199$:
	ld	(_T2_Receiver+0), a
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:37: u8 dir = g_player_input[throw_team].direction;
	ld	c, -9 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, #<(_g_player_input)
	add	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_player_input)
	adc	a, -5 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:38: if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
	or	a, a
	jr	Z, 00115$
	ld	a, (_g_last_input_dir+0)
	or	a, a
	jr	NZ, 00115$
	ld	a, (_g_selected_rec+0)
	ld	c, a
	ld	hl, #_g_selected_rec
	ld	a, #0x01
	sub	a, c
	ld	(hl), a
00115$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:39: g_last_input_dir = dir;
	ld	a, -5 (ix)
	ld	(_g_last_input_dir+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:41: bool do_throw = g_player_input[throw_team].trigger_pressed;
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:43: if (*wait_secs == 0) do_throw = TRUE; // Lancio automatico scaduto il tempo
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	or	a, a
	jr	NZ, 00118$
	ld	-5 (ix), #0x01
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:45: if (do_throw) {
	ld	a, -5 (ix)
	or	a, a
	jp	Z, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:46: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00120$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:47: CallFnc_VOID_U8U8(SEG_GAMESTATE_7, ExecuteThrowIn, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00200$
	ld	a, (_g_throw_rec_1+0)
	jp	00201$
00200$:
	ld	a, (_g_throw_rec_2+0)
00201$:
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteThrowIn
	ld	a, #0x11
	call	_CallFnc_VOID_U8U8
	jp	00121$
00120$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:49: CallFnc_VOID_U8U8(SEG_GAMESTATE_7, ExecuteCornerKick, g_thrower_id, (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2);
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00202$
	ld	a, (_g_throw_rec_1+0)
	jp	00203$
00202$:
	ld	a, (_g_throw_rec_2+0)
00203$:
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteCornerKick
	ld	a, #0x11
	call	_CallFnc_VOID_U8U8
00121$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:51: g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
	ld	a, (_g_pass_max_frames+0)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	de, #0x0064
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	hl, #_g_pass_max_frames
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:52: *game_state = 3; TimerEnabled = TRUE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
	jp	00192$
00132$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:55: if (*wait_secs == 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:56: u8 target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	hl, #_Frms
	bit	0, (hl)
	jr	NZ, 00204$
	ld	a, (_g_throw_rec_1+0)
	ld	-5 (ix), a
	jp	00205$
00204$:
	ld	a, (_g_throw_rec_2+0)
	ld	-5 (ix), a
00205$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:57: if (RestartType == RESTART_THROWIN) {
	ld	a, (_RestartType+0)
	dec	a
	jr	NZ, 00127$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:58: CallFnc_VOID_U8U8(SEG_GAMESTATE_7, ExecuteThrowIn, g_thrower_id, target);
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteThrowIn
	ld	a, #0x11
	call	_CallFnc_VOID_U8U8
	jp	00128$
00127$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:61: u8 team_to_kick = (g_thrower_id < 7) ? TEAM_1 : TEAM_2;
	ld	a, (_g_thrower_id+0)
	sub	a, #0x07
	jr	NC, 00206$
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	jp	00207$
00206$:
	ld	-6 (ix), #0x01
	ld	-5 (ix), #0
00207$:
	ld	a, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:62: u8 start_t = (team_to_kick == TEAM_1) ? 1 : 8;
	ld	-5 (ix), a
	or	a, a
	jr	NZ, 00208$
	ld	-6 (ix), #0x01
	ld	-5 (ix), #0
	jp	00209$
00208$:
	ld	-6 (ix), #0x08
	ld	-5 (ix), #0
00209$:
	ld	a, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:64: out_targets[0] = start_t;
	ld	-5 (ix), a
	ld	-27 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:65: out_targets[1] = start_t + 1;
	ld	a, -5 (ix)
	inc	a
	ld	-6 (ix), a
	ld	-26 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:66: out_targets[2] = start_t + 4;
	ld	a, -5 (ix)
	add	a, #0x04
	ld	-6 (ix), a
	ld	-25 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:67: out_targets[3] = start_t + 5;
	ld	a, -5 (ix)
	add	a, #0x05
	ld	-5 (ix), a
	ld	-24 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:68: target = out_targets[Frms % 4];
	ld	a, (_Frms+0)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, -8 (ix)
	and	a, #0x03
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, (hl)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:69: if (target == g_thrower_id) target = out_targets[(Frms + 1) % 4];
	ld	a, (_g_thrower_id+0)
	sub	a, -5 (ix)
	jr	NZ, 00125$
	ld	a, -8 (ix)
	add	a, #0x01
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	de, #0x0004
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-8 (ix), e
	ld	-7 (ix), d
	ld	hl, #0
	add	hl, sp
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, (hl)
	ld	-5 (ix), a
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:71: CallFnc_VOID_U8U8(SEG_GAMESTATE_7, ExecuteCornerKick, g_thrower_id, target);
	ld	a, -5 (ix)
	push	af
	inc	sp
	ld	a, (_g_thrower_id+0)
	push	af
	inc	sp
	ld	de, #_ExecuteCornerKick
	ld	a, #0x11
	call	_CallFnc_VOID_U8U8
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:73: g_pass_max_frames = (g_pass_max_frames * 85) / 100; // Aumenta la velocità del 15%
	ld	a, (_g_pass_max_frames+0)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	de, #0x0064
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	ld	hl, #_g_pass_max_frames
	ld	(hl), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:74: *game_state = 3; TimerEnabled = TRUE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
	jp	00192$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:77: } else if (*game_state == 8) {
	ld	a, -5 (ix)
	sub	a, #0x08
	jp	NZ,00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:79: T1_Carrier = T2_Carrier = T1_Receiver = T2_Receiver = 0xFF; // Forza pulizia focus
	ld	hl, #_T2_Receiver
	ld	(hl), #0xff
	ld	hl, #_T1_Receiver
	ld	(hl), #0xff
	ld	hl, #_T2_Carrier
	ld	(hl), #0xff
	ld	iy, #_T1_Carrier
	ld	0 (iy), #0xff
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:81: if (*start_sec < Frms) { // Se Frms scala ciclicamente o wrap down
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	hl, #_Frms
	sub	a, (hl)
	jr	NC, 00137$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:82: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00137$
	dec	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
00137$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:84: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:86: u8 gk = (RestartSideY < 256) ? 0 : 7;
	ld	hl, (_RestartSideY)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, h
	sub	a, #0x01
	jr	NC, 00210$
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	jp	00211$
00210$:
	ld	-6 (ix), #0x07
	ld	-5 (ix), #0
00211$:
	ld	a, -6 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:87: struct ObjectInfo* GK = &SwSprite[gk];
	ld	-23 (ix), a
	ld	c, a
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
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -11 (ix)
	ld	-6 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -10 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-22 (ix), a
	ld	a, -5 (ix)
	ld	-21 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:88: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:90: i8 dir_y = (gk == 0) ? 1 : -1;
	ld	a, -23 (ix)
	or	a, a
	jr	NZ, 00212$
	ld	-6 (ix), #0x01
	ld	-5 (ix), #0
	jp	00213$
00212$:
	ld	-6 (ix), #0xff
	ld	-5 (ix), #0xff
00213$:
	ld	a, -6 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:91: i8 dir_x = (RestartSideX < 128) ? 1 : -1;
	ld	a, (_RestartSideX+0)
	sub	a, #0x80
	jr	NC, 00214$
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
	jp	00215$
00214$:
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0xff
00215$:
	ld	a, -7 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:93: u16 target_gk_x = (RestartType == RESTART_GKSAVE) ? RestartSideX : (Ball->lx - (dir_x * 6));
	ld	a, (_RestartType+0)
	sub	a, #0x04
	ld	a, #0x01
	jr	Z, 00622$
	xor	a, a
00622$:
	ld	-20 (ix), a
	or	a, a
	jr	Z, 00216$
	ld	a, (_RestartSideX+0)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	jp	00217$
00216$:
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-7 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -6 (ix)
	ld	-7 (ix), a
	rlca
	sbc	a, a
	ld	-6 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -13 (ix)
	sub	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	sbc	a, -10 (ix)
	ld	-6 (ix), a
00217$:
	ld	a, -7 (ix)
	ld	-19 (ix), a
	ld	a, -6 (ix)
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:94: u16 target_gk_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : (Ball->ly - (dir_y * 8));
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00218$
	ld	a, -9 (ix)
	ld	-6 (ix), a
	ld	a, -8 (ix)
	ld	-5 (ix), a
	jp	00219$
00218$:
	ld	hl, #(_SwSprite + 322) + 4
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -5 (ix)
	ld	-6 (ix), a
	rlca
	sbc	a, a
	ld	-5 (ix), a
	ld	b, #0x03
00623$:
	sla	-6 (ix)
	rl	-5 (ix)
	djnz	00623$
	ld	a, -8 (ix)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sub	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	sbc	a, -7 (ix)
	ld	-5 (ix), a
00219$:
	ld	a, -6 (ix)
	ld	-17 (ix), a
	ld	a, -5 (ix)
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:96: u8 team_to_kick = (gk == 0) ? TEAM_1 : TEAM_2;
	ld	a, -23 (ix)
	or	a,a
	jr	NZ, 00220$
	ld	-6 (ix), a
	ld	-5 (ix), a
	jp	00221$
00220$:
	ld	-6 (ix), #0x01
	ld	-5 (ix), #0
00221$:
	ld	a, -6 (ix)
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:97: bool is_human = FALSE;
	ld	-15 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:100: if (team_to_kick == TEAM_2) { is_human = TRUE; joy_port = 0; }
	ld	a, -5 (ix)
	dec	a
	jr	NZ, 00142$
	ld	-15 (ix), #0x01
	jp	00143$
00142$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:101: else if (team_to_kick == TEAM_1 && GameMode == GAMEMODE_P1_VS_P2) { is_human = TRUE; joy_port = 1; }
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00143$
	ld	a, (_GameMode+0)
	dec	a
	jr	NZ, 00143$
	ld	-15 (ix), #0x01
00143$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:103: if (*wait_secs == 0) {
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ, 00185$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:105: if (GK->ly != target_gk_y || GK->lx != target_gk_x) {
	ld	a, -22 (ix)
	add	a, #0x04
	ld	-14 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-13 (ix), a
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	a, -17 (ix)
	sub	a, -12 (ix)
	jr	NZ, 00628$
	ld	a, -16 (ix)
	sub	a, -11 (ix)
	ld	a, #0x01
	jr	Z, 00629$
00628$:
	xor	a, a
00629$:
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:125: GK->frame = (gk == 0) ? (((GK->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2) :
	ld	a, -22 (ix)
	add	a, #0x0f
	ld	-9 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:105: if (GK->ly != target_gk_y || GK->lx != target_gk_x) {
	bit	0, -10 (ix)
	jr	Z, 00168$
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -19 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00630$
	ld	a, -18 (ix)
	sub	a, -5 (ix)
	jp	Z,00169$
00630$:
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:107: GK->dy = (Ball->ly > GK->ly) ? 2 : -2;
	ld	a, -22 (ix)
	add	a, #0x12
	ld	-6 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:106: if (GK->ly != target_gk_y) {
	bit	0, -10 (ix)
	jp	NZ, 00151$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:107: GK->dy = (Ball->ly > GK->ly) ? 2 : -2;
	ld	hl, (#(_SwSprite + 322) + 4)
	ld	a, -12 (ix)
	sub	a, l
	ld	a, -11 (ix)
	sbc	a, h
	jr	NC, 00222$
	ld	bc, #0x0002
	jp	00223$
00222$:
	ld	bc, #0xfffe
00223$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:108: if (target_gk_y > GK->ly && GK->ly + GK->dy > target_gk_y) GK->dy = target_gk_y - GK->ly;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -17 (ix)
	ld	a, -10 (ix)
	sbc	a, -16 (ix)
	jr	NC, 00145$
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	add	hl, bc
	ld	a, -17 (ix)
	sub	a, l
	ld	a, -16 (ix)
	sbc	a, h
	jr	NC, 00145$
	ld	a, -17 (ix)
	ld	c, -11 (ix)
	sub	a, c
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
00145$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:109: if (target_gk_y < GK->ly && GK->ly + GK->dy < target_gk_y) GK->dy = target_gk_y - GK->ly;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -17 (ix)
	sub	a, -11 (ix)
	ld	a, -16 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00148$
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	rlca
	sbc	a, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	add	hl, bc
	ld	a, l
	sub	a, -17 (ix)
	ld	a, h
	sbc	a, -16 (ix)
	jr	NC, 00148$
	ld	a, -17 (ix)
	ld	c, -11 (ix)
	sub	a, c
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
00148$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:110: GK->ly += GK->dy;
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
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
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00152$
00151$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:112: GK->dy = 0;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), #0x00
00152$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:115: if (GK->lx != target_gk_x) {
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	c, a
	ld	b, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:116: GK->dx = (Ball->lx > GK->lx) ? 2 : -2;
	ld	a, -22 (ix)
	add	a, #0x11
	ld	-6 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:115: if (GK->lx != target_gk_x) {
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	cp	a, a
	sbc	hl, bc
	jp	Z,00160$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:116: GK->dx = (Ball->lx > GK->lx) ? 2 : -2;
	ld	hl, #(_SwSprite + 322)
	ld	a,-7 (ix)
	sub	a,(hl)
	jr	NC, 00224$
	ld	bc, #0x0002
	jp	00225$
00224$:
	ld	bc, #0xfffe
00225$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:117: if (target_gk_x > GK->lx && GK->lx + GK->dx > target_gk_x) GK->dx = target_gk_x - GK->lx;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	c, (hl)
	ld	a, c
	ld	e, #0x00
	sub	a, -19 (ix)
	ld	a, e
	sbc	a, -18 (ix)
	jr	NC, 00154$
	ld	e, c
	ld	d, #0x00
	ld	l, -6 (ix)
	ld	h, -5 (ix)
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
	ld	a, -19 (ix)
	sub	a, l
	ld	a, -18 (ix)
	sbc	a, h
	jr	NC, 00154$
	ld	a, -19 (ix)
	sub	a, c
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
00154$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:118: if (target_gk_x < GK->lx && GK->lx + GK->dx < target_gk_x) GK->dx = target_gk_x - GK->lx;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	c, (hl)
	ld	b, c
	ld	e, #0x00
	ld	a, -19 (ix)
	sub	a, b
	ld	a, -18 (ix)
	sbc	a, e
	jr	NC, 00157$
	ld	e, c
	ld	d, #0x00
	ld	l, -6 (ix)
	ld	h, -5 (ix)
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
	ld	a, l
	sub	a, -19 (ix)
	ld	a, h
	sbc	a, -18 (ix)
	jr	NC, 00157$
	ld	a, -19 (ix)
	sub	a, c
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
00157$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:119: GK->lx += GK->dx;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	c, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	(hl), a
	jp	00161$
00160$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:121: GK->dx = 0;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), #0x00
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:124: GK->anim++;
	ld	a, -22 (ix)
	add	a, #0x13
	ld	-6 (ix), a
	ld	a, -21 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-13 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	add	a, #0x01
	ld	-11 (ix), a
	ld	a, -12 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:125: GK->frame = (gk == 0) ? (((GK->anim / 6) % 2 == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_SOUTH_2) :
	ld	a, -11 (ix)
	ld	-6 (ix), a
	ld	a, -10 (ix)
	ld	-5 (ix), a
	ld	de, #0x0006
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-6 (ix), e
	ld	-5 (ix), d
	bit	0, -6 (ix)
	jr	NZ, 00226$
	ld	bc, #0x00f2
	jp	00227$
00226$:
	ld	bc, #0x00f5
00227$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00192$
00169$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:129: u8 target = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00228$
	ld	a, (_g_throw_rec_1+0)
	ld	b, a
	jp	00229$
00228$:
	ld	a, (_g_throw_rec_2+0)
	ld	b, a
00229$:
	ld	-5 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:130: if (!is_human) target = ((Frms % 2) == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -15 (ix)
	or	a, a
	jr	NZ, 00163$
	ld	hl, #_Frms
	bit	0, (hl)
	jr	NZ, 00230$
	ld	a, (_g_throw_rec_1+0)
	jp	00231$
00230$:
	ld	a, (_g_throw_rec_2+0)
00231$:
	ld	-5 (ix), a
00163$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:132: g_pass_start_x = (RestartType == RESTART_GKSAVE) ? GK->lx : Ball->lx;
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00232$
	ld	a, -7 (ix)
	ld	-6 (ix), a
	jp	00233$
00232$:
	ld	a, (#(_SwSprite + 322) + 0)
	ld	-6 (ix), a
00233$:
	ld	a, -6 (ix)
	ld	(_g_pass_start_x+0), a
	ld	hl, #_g_pass_start_x + 1
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:94: u16 target_gk_y = (RestartType == RESTART_GKSAVE) ? RestartSideY : (Ball->ly - (dir_y * 8));
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:133: g_pass_start_y = (RestartType == RESTART_GKSAVE) ? GK->ly : Ball->ly;
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00234$
	ld	l, -14 (ix)
	ld	h, -13 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	jp	00235$
00234$:
	ld	bc, (#(_SwSprite + 326) + 0)
00235$:
	ld	(_g_pass_start_y), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:134: g_pass_target_x = SwSprite[target].lx;
	ld	c, -5 (ix)
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
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	a, -11 (ix)
	add	a, #<(_SwSprite)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #>(_SwSprite)
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	ld	(_g_pass_target_x+0), a
	ld	iy, #_g_pass_target_x
	ld	1 (iy), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:135: g_pass_target_y = SwSprite[target].ly;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	(_g_pass_target_y+0), a
	ld	a, (hl)
	ld	(_g_pass_target_y+1), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:137: u16 dist_x = (g_pass_target_x > g_pass_start_x) ? (g_pass_target_x - g_pass_start_x) : (g_pass_start_x - g_pass_target_x);
	ld	hl, #_g_pass_start_x
	ld	a, (hl)
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00236$
	ld	hl, #_g_pass_start_x
	ld	a, (_g_pass_target_x+0)
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, (_g_pass_target_x+1)
	sbc	a, (hl)
	ld	b, a
	jp	00237$
00236$:
	ld	hl, #_g_pass_target_x
	ld	a, (_g_pass_start_x+0)
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, (_g_pass_start_x+1)
	sbc	a, (hl)
	ld	b, a
00237$:
	ld	-16 (ix), c
	ld	-15 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:138: u16 dist_y = (g_pass_target_y > g_pass_start_y) ? (g_pass_target_y - g_pass_start_y) : (g_pass_start_y - g_pass_target_y);
	ld	hl, #_g_pass_start_y
	ld	a, (hl)
	ld	iy, #_g_pass_target_y
	sub	a, 0 (iy)
	inc	hl
	ld	a, (hl)
	sbc	a, 1 (iy)
	jr	NC, 00238$
	ld	hl, #_g_pass_start_y
	ld	a, (_g_pass_target_y+0)
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	sbc	a, (hl)
	ld	-6 (ix), a
	jp	00239$
00238$:
	ld	hl, #_g_pass_target_y
	ld	a, (_g_pass_start_y+0)
	sub	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	sbc	a, (hl)
	ld	-6 (ix), a
00239$:
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:140: g_pass_max_frames = (dist_x + dist_y) / 4; 
	ld	a, -11 (ix)
	add	a, -16 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, -15 (ix)
	ld	-6 (ix), a
	srl	-6 (ix)
	rr	-7 (ix)
	srl	-6 (ix)
	rr	-7 (ix)
	ld	a, -7 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:141: if (g_pass_max_frames < 20) g_pass_max_frames = 20;
	ld	(_g_pass_max_frames+0), a
	sub	a, #0x14
	jr	NC, 00165$
	ld	hl, #_g_pass_max_frames
	ld	(hl), #0x14
00165$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:142: if (g_pass_max_frames > 60) g_pass_max_frames = 60;
	ld	a, #0x3c
	ld	iy, #_g_pass_max_frames
	sub	a, 0 (iy)
	jr	NC, 00167$
	ld	0 (iy), #0x3c
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:143: g_pass_max_height = 7;
	ld	hl, #_g_pass_max_height
	ld	(hl), #0x07
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:145: Ball->lx = g_pass_start_x;
	ld	a, (_g_pass_start_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:146: Ball->ly = g_pass_start_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_start_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_start_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:147: Ball->anim = 5; 
	ld	hl, #0x0005
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:148: Ball->count = 0; 
	ld	l, h
	ld	((_SwSprite + 343)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:149: Ball->dx = Ball->dy = 0;
	ld	hl, #(_SwSprite + 340)
	ld	(hl), #0x00
	ld	hl, #(_SwSprite + 339)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:151: CallFnc_VOID(SEG_EVENTS, EventBallKicked);
	ld	de, #_EventBallKicked
	ld	a, #0x08
	call	_CallFnc_VOID
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:152: LastTouchTeam = (gk == 0) ? TEAM_1 : TEAM_2;
	ld	a, -23 (ix)
	or	a,a
	jr	NZ, 00240$
	ld	-7 (ix), a
	ld	-6 (ix), a
	jp	00241$
00240$:
	ld	-7 (ix), #0x01
	ld	-6 (ix), #0
00241$:
	ld	a, -7 (ix)
	ld	(_LastTouchTeam+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:153: LastTouchPlayer = gk;
	ld	a, -23 (ix)
	ld	(_LastTouchPlayer+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:154: g_pass_receiver = target;
	ld	a, -5 (ix)
	ld	(_g_pass_receiver+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:156: GK->ly = (gk == 0) ? 32 : 444; // Scatta sulla sua riga, ma conserva la X esterna
	ld	a, -14 (ix)
	ld	-6 (ix), a
	ld	a, -13 (ix)
	ld	-5 (ix), a
	ld	a, -23 (ix)
	or	a, a
	jr	NZ, 00242$
	ld	-11 (ix), #0x20
	ld	-10 (ix), #0
	jp	00243$
00242$:
	ld	-11 (ix), #0xbc
	ld	-10 (ix), #0x01
00243$:
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -11 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:157: GK->frame = (gk == 0) ? SPR_GK_PLAYER_FACE_TO_SOUTH : SPR_GK_PLAYER_FACE_TO_NORTH;
	ld	a, -23 (ix)
	or	a, a
	jr	NZ, 00244$
	ld	-6 (ix), #0xd5
	ld	-5 (ix), #0
	jp	00245$
00244$:
	ld	-6 (ix), #0xd6
	ld	-5 (ix), #0
00245$:
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:159: *game_state = 3; // Riparte il gioco istantaneamente
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x03
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:160: TimerEnabled = TRUE;
	ld	iy, #_TimerEnabled
	ld	0 (iy), #0x01
	jp	00192$
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:164: if (is_human) {
	ld	a, -15 (ix)
	or	a, a
	jp	Z, 00181$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:165: if (team_to_kick == TEAM_1) T1_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, -5 (ix)
	or	a, a
	jr	NZ, 00173$
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00246$
	ld	a, (_g_throw_rec_1+0)
	jp	00247$
00246$:
	ld	a, (_g_throw_rec_2+0)
00247$:
	ld	(_T1_Receiver+0), a
	jp	00174$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:166: else T2_Receiver = (g_selected_rec == 0) ? g_throw_rec_1 : g_throw_rec_2;
	ld	a, (_g_selected_rec+0)
	or	a, a
	jr	NZ, 00248$
	ld	a, (_g_throw_rec_1+0)
	jp	00249$
00248$:
	ld	a, (_g_throw_rec_2+0)
00249$:
	ld	(_T2_Receiver+0), a
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:168: u8 dir = g_player_input[team_to_kick].direction;
	ld	c, -5 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, #<(_g_player_input)
	add	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, #>(_g_player_input)
	adc	a, -5 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	c, (hl)
	ld	b, c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:169: if (dir != DIRECTION_NONE && g_last_input_dir == DIRECTION_NONE) g_selected_rec = 1 - g_selected_rec;
	ld	a, c
	or	a, a
	jr	Z, 00176$
	ld	a, (_g_last_input_dir+0)
	or	a, a
	jr	NZ, 00176$
	ld	a, (_g_selected_rec+0)
	ld	c, a
	ld	hl, #_g_selected_rec
	ld	a, #0x01
	sub	a, c
	ld	(hl), a
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:170: g_last_input_dir = dir;
	ld	iy, #_g_last_input_dir
	ld	0 (iy), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:172: bool do_kick = g_player_input[team_to_kick].trigger_pressed;
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	inc	hl
	ld	a, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:174: if (do_kick) *wait_secs = 0; // Trigger premuto: inizia subito la rincorsa!
	or	a, a
	jr	Z, 00181$
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0x00
00181$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:178: if (RestartType != RESTART_GKSAVE) {
	ld	a, (_RestartType+0)
	sub	a, #0x04
	jr	Z, 00192$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:179: GK->frame = (gk == 0) ? SPR_GK_PLAYER_SOUTH_1 : SPR_GK_PLAYER_NORTH_1;
	ld	l, -22 (ix)
	ld	h, -21 (ix)
	ld	de, #0x000f
	add	hl, de
	ld	(hl), #0xf2
	inc	hl
	ld	(hl), #0x00
00192$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:183: }
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:185: void UpdateGameState_Penalties_End(u8* game_state, u8* wait_secs, u8* start_sec, u16 target_ly)
;	---------------------------------
; Function UpdateGameState_Penalties_End
; ---------------------------------
_UpdateGameState_Penalties_End::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-34
	add	iy, sp
	ld	sp, iy
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	-5 (ix), e
	ld	-4 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:189: if (*game_state >= 15 && *game_state <= 17) {
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	sub	a, #0x0f
	jp	C, 00263$
	ld	a, #0x11
	sub	a, -8 (ix)
	jp	C, 00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:190: struct ObjectInfo* Ball = &SwSprite[14];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:193: if (*game_state == 16 || *game_state == 17) {
	ld	a, -8 (ix)
	sub	a, #0x10
	ld	a, #0x01
	jr	Z, 00889$
	xor	a, a
00889$:
	ld	-1 (ix), a
	or	a, a
	jr	NZ, 00101$
	ld	a, -8 (ix)
	sub	a, #0x11
	jr	NZ, 00102$
00101$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:194: keeper_idx = (g_penalty_shooter_idx < 7) ? 7 : 0; // Il portiere che ha appena finito
	ld	a, (_g_penalty_shooter_idx+0)
	sub	a, #0x07
	jr	NC, 00265$
	ld	-7 (ix), #0x07
	ld	-6 (ix), #0
	jp	00266$
00265$:
	xor	a, a
	ld	-7 (ix), a
	ld	-6 (ix), a
00266$:
	ld	a, -7 (ix)
	ld	-26 (ix), a
	jp	00103$
00102$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:196: keeper_idx = (g_penalty_team == TEAM_1) ? 7 : 0; // Il portiere che deve parare
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00267$
	ld	de, #0x0007
	jp	00268$
00267$:
	ld	de, #0x0000
00268$:
	ld	-26 (ix), e
00103$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:199: if(*game_state == 15) { // STATO 15: Attesa esito rigore
	ld	a, -8 (ix)
	sub	a, #0x0f
	jp	NZ,00253$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:200: if (Ball->anim == 5) {
	ld	hl, #(_SwSprite + 341)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	a, c
	sub	a, #0x05
	or	a, b
	jp	NZ,00150$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:201: u8 progress = Ball->count;
	ld	a, (#(_SwSprite + 343) + 0)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:202: i16 dx_total = (i16)g_pass_target_x - (i16)g_pass_start_x;
	ld	hl, (_g_pass_target_x)
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	hl, (_g_pass_start_x)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-13 (ix), a
	ld	a, -6 (ix)
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:203: i16 dy_total = (i16)g_pass_target_y - (i16)g_pass_start_y;
	ld	hl, (_g_pass_target_y)
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	hl, (_g_pass_start_y)
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -11 (ix)
	sub	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	sbc	a, -8 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:207: Ball->ly = g_pass_target_y;
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:205: if (progress >= g_pass_max_frames) {
	ld	hl, #_g_pass_max_frames
	ld	a, -1 (ix)
	sub	a, (hl)
	jr	C, 00118$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:206: Ball->lx = g_pass_target_x;
	ld	a, (_g_pass_target_x+0)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:207: Ball->ly = g_pass_target_y;
	ld	hl, #(_SwSprite + 326)
	ld	a, (_g_pass_target_y+0)
	ld	(hl), a
	inc	hl
	ld	a, (_g_pass_target_y+1)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:208: Ball->anim = 0; // Tiro terminato
	ld	hl, #0x0000
	ld	((_SwSprite + 341)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:209: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, 0); // Ripristina grandezza a terra
	xor	a, a
	push	af
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:211: if (Ball->ly <= 24 && Ball->lx >= 82 && Ball->lx <= 156) {
	ld	hl, #(_SwSprite + 326)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, #0x18
	cp	a, -7 (ix)
	ld	a, #0x00
	sbc	a, -6 (ix)
	jr	C, 00109$
	ld	hl, #(_SwSprite + 322)
	ld	c, (hl)
	ld	a, c
	sub	a, #0x52
	jr	C, 00109$
	ld	a, #0x9c
	sub	a, c
	jr	C, 00109$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:212: if (g_penalty_team == TEAM_2) ScoreTeam2++; else ScoreTeam1++;
	ld	a, (_g_penalty_team+0)
	dec	a
	jr	NZ, 00106$
	ld	hl, #_ScoreTeam2
	inc	(hl)
	jp	00107$
00106$:
	ld	hl, #_ScoreTeam1
	inc	(hl)
00107$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:213: RestartType = RESTART_GOAL; // Segnala il goal per poter attivare l'esultanza
	ld	iy, #_RestartType
	ld	0 (iy), #0x05
00109$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:215: *wait_secs = 2; // Inizializza attesa post-tiro prima di cambiare giocatore
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x02
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:216: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
	jp	00263$
00118$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:218: Ball->lx = (u16)((i16)g_pass_start_x + (dx_total * progress) / g_pass_max_frames);
	ld	a, (_g_pass_start_x+0)
	ld	-8 (ix), a
	ld	c, -1 (ix)
	ld	b, #0x00
	push	bc
	ld	e, c
	ld	d, b
	ld	l, -13 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ex	de, hl
	pop	bc
	ld	a, (_g_pass_max_frames+0)
	ld	e, a
	ld	d, #0x00
	push	bc
	call	__divsint
	pop	bc
	ld	a, e
	add	a, -8 (ix)
	ld	(#(_SwSprite + 322)),a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:219: Ball->ly = (u16)((i16)g_pass_start_y + (dy_total * progress) / g_pass_max_frames);
	ld	hl, (_g_pass_start_y)
	push	hl
	ld	e, c
	ld	d, b
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	c, e
	ld	b, d
	pop	hl
	ld	a, (_g_pass_max_frames+0)
	ld	e, a
	ld	d, #0x00
	push	hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divsint
	pop	hl
	add	hl, de
	ex	de, hl
	ld	((_SwSprite + 326)), de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:220: Ball->count++;
	ld	bc, (#(_SwSprite + 343) + 0)
	inc	bc
	ld	((_SwSprite + 343)), bc
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:224: u8 half_frame = g_pass_max_frames >> 1;
	ld	a, (#_g_pass_max_frames + 0)
	ld	c, a
	srl	c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:226: scale = (progress * g_pass_max_height) / half_frame;
	ld	b, c
	ld	e, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:225: if (progress <= half_frame) {
	ld	a, c
	sub	a, -1 (ix)
	jr	C, 00113$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:226: scale = (progress * g_pass_max_height) / half_frame;
	push	de
	push	bc
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00898$:
	add	hl, hl
	jr	NC, 00899$
	add	hl, de
00899$:
	djnz	00898$
	pop	bc
	pop	de
	ld	d, e
	ld	e, b
	call	__divsint
	ld	b, e
	jp	00114$
00113$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:228: u8 progress_down = progress - half_frame;
	ld	a, -1 (ix)
	sub	a, c
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:229: scale = g_pass_max_height - (progress_down * g_pass_max_height) / (g_pass_max_frames - half_frame);
	push	de
	push	bc
	ld	a, (#_g_pass_max_height + 0)
	ld	e, a
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00900$:
	add	hl, hl
	jr	NC, 00901$
	add	hl, de
00901$:
	djnz	00900$
	pop	bc
	pop	de
	ld	a, (_g_pass_max_frames+0)
	ld	d, #0x00
	sub	a, b
	ld	c, a
	ld	a, d
	sbc	a, e
	ld	d, a
	ld	e, c
	call	__divsint
	ld	a, (_g_pass_max_height+0)
	sub	a, e
	ld	b, a
00114$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:231: if (scale > 7) scale = 7;
	ld	a, #0x07
	sub	a, b
	jr	NC, 00116$
	ld	b, #0x07
00116$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:232: CallFnc_VOID_P1(SEG_DRAW, SetBallSprite, scale);
	push	bc
	inc	sp
	ld	de, #_SetBallSprite
	ld	a, #0x05
	call	_CallFnc_VOID_P1
	jp	00263$
00150$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:234: } else if(Ball->anim == 0) { // Attesa post-tiro
	ld	a, -6 (ix)
	or	a, -7 (ix)
	jp	NZ, 00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:235: if (*start_sec < Frms) { 
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	e, a
	ld	hl, #_Frms
	ld	a, e
	sub	a, (hl)
	jr	NC, 00123$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:236: if (*wait_secs > 0) (*wait_secs)--; 
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z, 00123$
	dec	a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), a
00123$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:238: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:240: if (*wait_secs == 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	or	a, a
	jp	NZ, 00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:242: u8 shot_idx = g_penalty_shot_count[g_penalty_team];
	ld	a, (_g_penalty_team+0)
	add	a, #<(_g_penalty_shot_count)
	ld	c, a
	ld	a, #0x00
	adc	a, #>(_g_penalty_shot_count)
	ld	b, a
	ld	a, (bc)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:243: if (shot_idx < 5) {
	ld	-1 (ix), a
	sub	a, #0x05
	jp	NC, 00128$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:244: u8 spr_idx = (g_penalty_team == TEAM_1) ? (27 + shot_idx) : (32 + shot_idx);
	ld	a, -1 (ix)
	ld	-6 (ix), a
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00269$
	ld	a, -6 (ix)
	add	a, #0x1b
	ld	-6 (ix), a
	jp	00270$
00269$:
	ld	a, -6 (ix)
	add	a, #0x20
	ld	-6 (ix), a
00270$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:245: bool scored = (RestartType == RESTART_GOAL);
	ld	a, (_RestartType+0)
	sub	a, #0x05
	ld	a, #0x01
	jr	Z, 00903$
	xor	a, a
00903$:
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:247: SwSprite[spr_idx].lx = 32 + shot_idx * 12;
	ld	c, -6 (ix)
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
	ld	a, #<(_SwSprite)
	add	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -1 (ix)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:248: SwSprite[spr_idx].ly = 16; // Dietro la porta a Y=16
	ld	a, -11 (ix)
	add	a, #0x04
	ld	-9 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:249: SwSprite[spr_idx].frame = scored ? SPR_T1_O : SPR_T1_X;
	ld	a, -11 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -10 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:246: if (g_penalty_team == TEAM_1) {
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00125$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:247: SwSprite[spr_idx].lx = 32 + shot_idx * 12;
	ld	a, -1 (ix)
	add	a, #0x20
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:248: SwSprite[spr_idx].ly = 16; // Dietro la porta a Y=16
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:249: SwSprite[spr_idx].frame = scored ? SPR_T1_O : SPR_T1_X;
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00271$
	ld	-9 (ix), #0x2f
	ld	-8 (ix), #0
	jp	00272$
00271$:
	ld	-9 (ix), #0x16
	ld	-8 (ix), #0
00272$:
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00128$
00125$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:251: SwSprite[spr_idx].lx = 168 + shot_idx * 12;
	ld	a, -1 (ix)
	add	a, #0xa8
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:252: SwSprite[spr_idx].ly = 16; // Dietro la porta a Y=16
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:253: SwSprite[spr_idx].frame = scored ? SPR_T2_O : SPR_T2_X;
	ld	a, -12 (ix)
	or	a, a
	jr	Z, 00273$
	ld	-9 (ix), #0x9f
	ld	-8 (ix), #0
	jp	00274$
00273$:
	ld	-9 (ix), #0x86
	ld	-8 (ix), #0
00274$:
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00128$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:257: g_penalty_shot_count[g_penalty_team]++;
	ld	a, #<(_g_penalty_shot_count)
	ld	hl, #_g_penalty_team
	add	a, (hl)
	ld	c, a
	ld	a, #>(_g_penalty_shot_count)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	inc	a
	ld	(bc), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:258: g_penalty_team = (g_penalty_team == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	a, (_g_penalty_team+0)
	or	a, a
	jr	NZ, 00275$
	ld	a, #0x01
	ld	c, #0x00
	jp	00276$
00275$:
	xor	a, a
	ld	c, a
00276$:
	ld	(_g_penalty_team+0), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:261: Ball->ly = 1000;
	ld	hl, #0x03e8
	ld	((_SwSprite + 326)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:264: u8 p_idx = g_penalty_shooter_idx;
	ld	a, (_g_penalty_shooter_idx+0)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:265: u8 role = (p_idx < 7) ? p_idx : p_idx - 7;
	ld	-6 (ix), a
	sub	a, #0x07
	ld	a, #0x00
	rla
	ld	b, a
	or	a, a
	jr	Z, 00277$
	ld	d, -6 (ix)
	jp	00278$
00277$:
	ld	a, -6 (ix)
	add	a, #0xf9
	ld	d, a
00278$:
	ld	-7 (ix), d
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:266: u8 t_cx = (p_idx < 7) ? 64 : 192;
	ld	a, b
	or	a, a
	jr	Z, 00279$
	ld	-9 (ix), #0x40
	ld	-8 (ix), #0
	jp	00280$
00279$:
	ld	-9 (ix), #0xc0
	ld	-8 (ix), #0
00280$:
	ld	a, -9 (ix)
	ld	-1 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:267: i8 off_x = 0; i8 off_y = 0;
	ld	-11 (ix), #0x00
	ld	-10 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:268: switch(role) {
	ld	a, #0x06
	sub	a, -7 (ix)
	jr	C, 00136$
	ld	c, -7 (ix)
	ld	b, #0x00
	ld	hl, #00904$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00904$:
	jp	00129$
	jp	00130$
	jp	00131$
	jp	00132$
	jp	00133$
	jp	00134$
	jp	00135$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:269: case 0: off_x = -18; off_y = -18; break; case 1: off_x =   2; off_y = -18; break;
00129$:
	ld	-11 (ix), #0xee
	ld	-10 (ix), #0xee
	jp	00136$
00130$:
	ld	-11 (ix), #0x02
	ld	-10 (ix), #0xee
	jp	00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:270: case 2: off_x =  22; off_y = -18; break; case 3: off_x = -22; off_y =   2; break;
00131$:
	ld	-11 (ix), #0x16
	ld	-10 (ix), #0xee
	jp	00136$
00132$:
	ld	-11 (ix), #0xea
	ld	-10 (ix), #0x02
	jp	00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:271: case 4: off_x =  -2; off_y =   2; break; case 5: off_x =  18; off_y =   2; break;
00133$:
	ld	-11 (ix), #0xfe
	ld	-10 (ix), #0x02
	jp	00136$
00134$:
	ld	-11 (ix), #0x12
	ld	-10 (ix), #0x02
	jp	00136$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:272: case 6: off_x = -10; off_y =  22; break;
00135$:
	ld	-11 (ix), #0xf6
	ld	-10 (ix), #0x16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:273: }
00136$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:274: SwSprite[p_idx].tx = (u8)(t_cx + off_x); SwSprite[p_idx].ty = (u16)(256 + off_y);
	ld	c, -6 (ix)
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
	ld	a, #<(_SwSprite)
	add	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x0c
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -1 (ix)
	add	a, -11 (ix)
	ld	-1 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
	ld	a, -9 (ix)
	add	a, #0x0d
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -10 (ix)
	ld	-13 (ix), a
	rlca
	sbc	a, a
	ld	-12 (ix), a
	ld	a, -13 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	inc	a
	ld	-8 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -9 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -8 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:276: p_idx = keeper_idx;
	ld	a, -26 (ix)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:277: role = (p_idx < 7) ? p_idx : p_idx - 7;
	ld	a, -26 (ix)
	sub	a, #0x07
	jr	NC, 00281$
	ld	a, -26 (ix)
	ld	-1 (ix), a
	jp	00282$
00281$:
	ld	a, -26 (ix)
	ld	-1 (ix), a
	add	a, #0xf9
	ld	-1 (ix), a
00282$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:278: t_cx = (p_idx < 7) ? 64 : 192;
	ld	a, -6 (ix)
	sub	a, #0x07
	jr	NC, 00283$
	ld	-8 (ix), #0x40
	ld	-7 (ix), #0
	jp	00284$
00283$:
	ld	-8 (ix), #0xc0
	ld	-7 (ix), #0
00284$:
	ld	c, -8 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:279: switch(role) {
	ld	a, #0x06
	sub	a, -1 (ix)
	jr	C, 00144$
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #00905$
	add	hl, de
	add	hl, de
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:280: case 0: off_x = -18; off_y = -18; break; case 1: off_x =   2; off_y = -18; break;
	jp	(hl)
00905$:
	jr	00137$
	jr	00138$
	jr	00139$
	jr	00140$
	jr	00141$
	jr	00142$
	jr	00143$
00137$:
	ld	-11 (ix), #0xee
	ld	-10 (ix), #0xee
	jp	00144$
00138$:
	ld	-11 (ix), #0x02
	ld	-10 (ix), #0xee
	jp	00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:281: case 2: off_x =  22; off_y = -18; break; case 3: off_x = -22; off_y =   2; break;
00139$:
	ld	-11 (ix), #0x16
	ld	-10 (ix), #0xee
	jp	00144$
00140$:
	ld	-11 (ix), #0xea
	ld	-10 (ix), #0x02
	jp	00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:282: case 4: off_x =  -2; off_y =   2; break; case 5: off_x =  18; off_y =   2; break;
00141$:
	ld	-11 (ix), #0xfe
	ld	-10 (ix), #0x02
	jp	00144$
00142$:
	ld	-11 (ix), #0x12
	ld	-10 (ix), #0x02
	jp	00144$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:283: case 6: off_x = -10; off_y =  22; break;
00143$:
	ld	-11 (ix), #0xf6
	ld	-10 (ix), #0x16
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:284: }
00144$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:285: SwSprite[p_idx].tx = (u8)(t_cx + off_x); SwSprite[p_idx].ty = (u16)(256 + off_y);
	ld	e, -6 (ix)
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
	ld	a, c
	add	a, -11 (ix)
	ld	(hl), a
	ld	hl, #0x000d
	add	hl, de
	ld	a, -10 (ix)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	inc	a
	ld	(hl), c
	inc	hl
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:288: SwSprite[26].tx = (u8)(128 + 24); SwSprite[26].ty = (u16)(256 - 24);
	ld	hl, #(_SwSprite + 610)
	ld	(hl), #0x98
	ld	hl, #0x00e8
	ld	((_SwSprite + 611)), hl
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:290: *game_state = 16; // Prepara ritorno a centrocampo
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x10
	jp	00263$
00253$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:294: else if(*game_state == 16) { // STATO 16: Ritorno a centrocampo
	ld	a, -1 (ix)
	or	a, a
	jp	Z, 00250$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:295: bool all_in_position = TRUE;
	ld	-25 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:298: u16 cam_target = (SwSprite[keeper_idx].ly < 96) ? 0 : SwSprite[keeper_idx].ly - 96;
	ld	c, -26 (ix)
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
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0x60
	ld	a, b
	sbc	a, #0x00
	jr	NC, 00285$
	ld	bc, #0x0000
	jp	00286$
00285$:
	ld	a, c
	add	a, #0xa0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
00286$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:299: if (cam_target > 512 - 192) cam_target = 512 - 192; // clamp visivo
	ld	e, c
	ld	d, b
	ld	a, #0x40
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jr	NC, 00153$
	ld	bc, #0x0140
00153$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:300: if (Field.ly > cam_target + 3) { Field.dy = -4; Field.ly += Field.dy; all_in_position = FALSE; }
	ld	de, (#(_Field + 4) + 0)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, l
	sub	a, -7 (ix)
	ld	a, h
	sbc	a, -6 (ix)
	jr	NC, 00161$
	ld	hl, #(_Field + 18)
	ld	(hl), #0xfc
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 18) + 0)
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
	ld	-25 (ix), #0x00
	jp	00422$
00161$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:301: else if (Field.ly + 3 < cam_target) { Field.dy = 4; Field.ly += Field.dy; all_in_position = FALSE; }
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	xor	a, a
	sbc	hl, bc
	jr	NC, 00158$
	ld	hl, #(_Field + 18)
	ld	(hl), #0x04
	ld	bc, (#(_Field + 4) + 0)
	ld	a, (#(_Field + 18) + 0)
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
	ld	-25 (ix), #0x00
	jp	00422$
00158$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:302: else if (Field.ly != cam_target) { Field.dy = (i8)(cam_target - Field.ly); Field.ly = cam_target; all_in_position = FALSE; }
	ld	l, c
	ld	h, b
	cp	a, a
	sbc	hl, de
	jr	Z, 00155$
	ld	a, c
	sub	a, e
	ld	hl, #(_Field + 18)
	ld	(hl), a
	ld	((_Field + 4)), bc
	ld	-25 (ix), #0x00
	jp	00422$
00155$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:303: else { Field.dy = 0; }
	ld	hl, #(_Field + 18)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:305: for(u8 i=0; i<3; i++) {
00422$:
	ld	-1 (ix), #0x00
00259$:
	ld	a, -1 (ix)
	sub	a, #0x03
	jp	NC, 00194$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:306: u8 actor_idx = (i == 0) ? g_penalty_shooter_idx : ((i == 1) ? keeper_idx : 26);
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00287$
	ld	a, (_g_penalty_shooter_idx+0)
	jp	00288$
00287$:
	ld	a, -1 (ix)
	dec	a
	jr	NZ, 00289$
	ld	a, -26 (ix)
	jp	00290$
00289$:
	ld	a, #0x1a
00290$:
00288$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:307: struct ObjectInfo* p = &SwSprite[actor_idx];
	ld	-24 (ix), a
	ld	c, a
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:308: if (p->lx != p->tx || p->ly != p->ty) {
	ld	-23 (ix), l
	ld	-22 (ix), h
	ld	a, (hl)
	ld	-7 (ix), a
	ld	c, -23 (ix)
	ld	b, -22 (ix)
	ld	hl, #12
	add	hl, bc
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -23 (ix)
	add	a, #0x04
	ld	-21 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-20 (ix), a
	ld	a, -23 (ix)
	add	a, #0x0d
	ld	-19 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:311: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x11
	ld	-17 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:315: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
	ld	a, -23 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:325: p->frame = (actor_idx < 7) ? 
	ld	a, -23 (ix)
	add	a, #0x0f
	ld	-13 (ix), a
	ld	a, -22 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:308: if (p->lx != p->tx || p->ly != p->ty) {
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NZ, 00190$
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
	jp	Z,00191$
00190$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:309: all_in_position = FALSE;
	ld	-25 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:311: if (p->tx > p->lx) p->dx = (i8)((p->tx - p->lx >= 2) ? 2 : 1); 
	ld	a, -7 (ix)
	sub	a, -6 (ix)
	jr	NC, 00167$
	ld	a, -6 (ix)
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00291$
	ld	de, #0x0002
	jp	00292$
00291$:
	ld	de, #0x0001
00292$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), e
	jp	00168$
00167$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:312: else if (p->tx < p->lx) p->dx = (i8)((p->lx - p->tx >= 2) ? -2 : -1); 
	ld	a, -6 (ix)
	sub	a, -7 (ix)
	jr	NC, 00164$
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	a, -6 (ix)
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
	jr	C, 00293$
	ld	a, #0xfe
	jp	00294$
00293$:
	ld	a, #0xff
00294$:
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), a
	jp	00168$
00164$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:313: else p->dx = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
00168$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:315: if (p->ty > p->ly) p->dy = (i8)((p->ty - p->ly >= 2) ? 2 : 1); 
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
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	jr	NC, 00173$
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sub	a, #0x02
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	C, 00295$
	ld	bc, #0x0002
	jp	00296$
00295$:
	ld	bc, #0x0001
00296$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), c
	jp	00174$
00173$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:316: else if (p->ty < p->ly) p->dy = (i8)((p->ly - p->ty >= 2) ? -2 : -1); 
	ld	a, -7 (ix)
	sub	a, -11 (ix)
	ld	a, -6 (ix)
	sbc	a, -10 (ix)
	jr	NC, 00170$
	ld	a, -11 (ix)
	sub	a, -7 (ix)
	ld	c, a
	ld	a, -10 (ix)
	sbc	a, -6 (ix)
	ld	b, a
	ld	a, c
	sub	a, #0x02
	ld	a, b
	sbc	a, #0x00
	jr	C, 00297$
	ld	a, #0xfe
	jp	00298$
00297$:
	ld	a, #0xff
00298$:
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), a
	jp	00174$
00170$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:317: else p->dy = 0;
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x00
00174$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:319: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	c, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	add	a, c
	ld	l, -23 (ix)
	ld	h, -22 (ix)
	ld	(hl), a
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:320: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-34 (ix), #0x00
	ld	-33 (ix), #0x01
	ld	-32 (ix), #0x02
	ld	-31 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:245: bool scored = (RestartType == RESTART_GOAL);
	ld	a, (_RestartType+0)
	sub	a, #0x05
	ld	a, #0x01
	jr	Z, 00913$
	xor	a, a
00913$:
	ld	c, a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:324: u8 step = walk_seq[(p->anim / 3) % 4];
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
	ld	b, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:323: if (RestartType == RESTART_GOAL && actor_idx == g_penalty_shooter_idx && p->dy > 0) {
	ld	a, c
	or	a, a
	jp	Z, 00180$
	ld	a, -24 (ix)
	ld	iy, #_g_penalty_shooter_idx
	sub	a, 0 (iy)
	jp	NZ,00180$
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	e, (hl)
	xor	a, a
	sub	a, e
	jp	PO, 00916$
	xor	a, #0x80
00916$:
	jp	P, 00180$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:324: u8 step = walk_seq[(p->anim / 3) % 4];
	ld	-6 (ix), b
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:325: p->frame = (actor_idx < 7) ? 
	ld	a, -24 (ix)
	sub	a, #0x07
	jr	NC, 00299$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:326: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00301$
	ld	-7 (ix), #0x3c
	ld	-6 (ix), #0
	jp	00300$
00301$:
	ld	a, -6 (ix)
	dec	a
	jr	NZ, 00303$
	ld	-7 (ix), #0x3d
	ld	-6 (ix), #0
	jp	00300$
00303$:
	ld	-7 (ix), #0x3e
	ld	-6 (ix), #0
	jp	00300$
00299$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:327: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -6 (ix)
	or	a, a
	jr	NZ, 00305$
	ld	-7 (ix), #0x9c
	ld	-6 (ix), #0
	jp	00306$
00305$:
	ld	a, -6 (ix)
	dec	a
	jr	NZ, 00307$
	ld	-7 (ix), #0x9d
	ld	-6 (ix), #0
	jp	00308$
00307$:
	ld	-7 (ix), #0x9e
	ld	-6 (ix), #0
00308$:
00306$:
00300$:
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00260$
00180$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:328: } else if (RestartType != RESTART_GOAL && actor_idx == keeper_idx) {
	bit	0, c
	jr	NZ, 00176$
	ld	a, -24 (ix)
	sub	a, -26 (ix)
	jr	NZ, 00176$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:329: u8 step = walk_seq[(p->anim / 3) % 4];
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:330: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, b
	or	a, a
	jr	NZ, 00309$
	ld	bc, #0x00fd
	jp	00310$
00309$:
	djnz	00311$
	ld	bc, #0x00fe
	jp	00312$
00311$:
	ld	bc, #0x00ff
00312$:
00310$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jp	00260$
00176$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:333: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, actor_idx, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]); 
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	d, (hl)
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	c, d
	push	bc
	push	af
	inc	sp
	ld	a, -24 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00260$
00191$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:336: p->dx = 0; p->dy = 0;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0x00
	ld	l, -15 (ix)
	ld	h, -14 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:337: i8 look_dx = 0, look_dy = 1;
	ld	(hl), #0x00
	ld	c, (hl)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:338: if (actor_idx == 26) { look_dy = 1; }
	ld	a, -24 (ix)
	sub	a, #0x1a
	jr	NZ, 00185$
	ld	b, #0x01
	jp	00186$
00185$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:340: look_dx = (i8)((actor_idx % 3) - 1);
	ld	l, -24 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x0003
	call	__modsint
	ld	c, e
	pop	hl
	dec	c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:341: look_dy = (i8)(((actor_idx / 3) % 3) - 1);
	push	bc
	ld	de, #0x0003
	call	__divsint
	ex	de, hl
	ld	de, #0x0003
	call	__modsint
	pop	bc
	ld	b, e
	dec	b
00186$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:343: if (look_dx == 0 && look_dy == 0) look_dy = 1;
	ld	a, c
	or	a,a
	jr	NZ, 00188$
	or	a,b
	jr	NZ, 00188$
	ld	b, #0x01
00188$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:345: p->frame = CallFnc_U16_P3(SEG_GAMESTATE_9, GetPlayerIdleFrame, actor_idx, look_dx, look_dy);
	push	bc
	ld	a, -24 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerIdleFrame
	ld	a, #0x13
	call	_CallFnc_U16_P3
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00260$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:305: for(u8 i=0; i<3; i++) {
	inc	-1 (ix)
	jp	00259$
00194$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:349: if (all_in_position) {
	ld	a, -25 (ix)
	or	a, a
	jp	Z, 00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:350: *game_state = 12; // Inizia il prossimo rigore
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	(hl), #0x0c
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:351: RestartType = 0;  // Azzera il flag di esito per il prossimo
	ld	iy, #_RestartType
	ld	0 (iy), #0x00
	jp	00263$
00250$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:354: else if (*game_state == 17) { // STATO 17: Vittoria Rigori e Uscita Sconfitti
	ld	a, -8 (ix)
	sub	a, #0x11
	jp	NZ,00263$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:355: u8 winning_team = (ScoreTeam1 > ScoreTeam2) ? TEAM_1 : TEAM_2;
	ld	a, (#_ScoreTeam2)
	ld	iy, #_ScoreTeam1
	sub	a, 0 (iy)
	jr	NC, 00313$
	ld	bc, #0x0000
	jp	00314$
00313$:
	ld	bc, #0x0001
00314$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:356: u8 losing_team = (winning_team == TEAM_1) ? TEAM_2 : TEAM_1;
	ld	-22 (ix), c
	ld	a, c
	or	a, a
	jr	NZ, 00315$
	ld	de, #0x0001
	jp	00316$
00315$:
	ld	de, #0x0000
00316$:
	ld	-21 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:357: bool losers_offscreen = TRUE;
	ld	-20 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:359: for (u8 i = 0; i <= 26; i++) {
	ld	-1 (ix), #0x00
00262$:
	ld	a, #0x1a
	sub	a, -1 (ix)
	jp	C, 00238$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:360: if (i >= 14 && i < 26) continue; // Salta Palla e UI
	ld	a, -1 (ix)
	sub	a, #0x0e
	ld	a, #0x00
	rla
	ld	-8 (ix), a
	bit	0, -8 (ix)
	jr	NZ, 00198$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	C, 00237$
00198$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:362: struct ObjectInfo* p = &SwSprite[i];
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
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	a, #<(_SwSprite)
	add	a, -10 (ix)
	ld	-7 (ix), a
	ld	a, #>(_SwSprite)
	adc	a, -9 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-19 (ix), a
	ld	a, -6 (ix)
	ld	-18 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:363: u8 team = (i < 7) ? TEAM_1 : ((i < 14) ? TEAM_2 : 0xFF);
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NC, 00317$
	ld	de, #0x0000
	jp	00318$
00317$:
	ld	a, -8 (ix)
	or	a, a
	jr	Z, 00319$
	ld	de, #0x0001
	jp	00320$
00319$:
	ld	de, #0x00ff
00320$:
00318$:
	ld	-17 (ix), e
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:365: if (team == losing_team || i == 26) {
	ld	a, -21 (ix)
	sub	a, -17 (ix)
	jr	Z, 00233$
	ld	a, -1 (ix)
	sub	a, #0x1a
	jp	NZ,00234$
00233$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:367: if (OnScreen(p->ly)) {
	ld	a, -19 (ix)
	add	a, #0x04
	ld	-17 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	sub	a, #0x02
	jp	NC, 00201$
	ld	a, -9 (ix)
	add	a, #0x0f
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x02
	ld	-6 (ix), a
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-11 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-10 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	sbc	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	and	a, #0x01
	ld	-8 (ix), a
	ld	a, -9 (ix)
	sub	a, #0xcf
	ld	a, -8 (ix)
	sbc	a, #0x00
	jp	NC, 00201$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:368: losers_offscreen = FALSE;
	ld	-20 (ix), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:369: p->dy = 3; p->dx = 0;
	ld	a, -19 (ix)
	add	a, #0x12
	ld	-15 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	(hl), #0x03
	ld	a, -19 (ix)
	add	a, #0x11
	ld	-13 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:370: p->ly = (p->ly + p->dy) & 511; // Evita l'underflow matematico
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
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
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	and	a, #0x01
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:371: p->anim++;
	ld	a, -19 (ix)
	add	a, #0x13
	ld	-11 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, (hl)
	ld	-9 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x01
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:372: const u8 walk_seq[4] = {0, 1, 2, 1};
	ld	-30 (ix), #0x00
	ld	-29 (ix), #0x01
	ld	-28 (ix), #0x02
	ld	-27 (ix), #0x01
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:373: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
	ld	a, -19 (ix)
	add	a, #0x0f
	ld	-9 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-8 (ix), a
	ld	de, #0x0003
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	a, -7 (ix)
	and	a, #0x03
	ld	-11 (ix), a
	ld	-10 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	hl, #4
	add	hl, sp
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
	ld	-6 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	b, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, b
	push	hl
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00237$
00201$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:375: p->ly = 1000;
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	(hl), #0xe8
	inc	hl
	ld	(hl), #0x03
	jp	00237$
00234$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:377: } else if (team == winning_team) {
	ld	a, -17 (ix)
	sub	a, -22 (ix)
	jp	NZ,00237$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:380: u16 center_y = Field.ly + 96;
	ld	hl, #(_Field + 4)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	add	a, #0x60
	ld	-7 (ix), a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-9 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:383: u16 t_x = center_x - 80 + ((i * 31 + Frms) % 160);
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	-6 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, (_Frms+0)
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	a, -15 (ix)
	add	a, -13 (ix)
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, -12 (ix)
	ld	-10 (ix), a
	ld	de, #0x00a0
	ld	l, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	ld	-14 (ix), a
	ld	a, -15 (ix)
	add	a, #0x30
	ld	-11 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-10 (ix), a
	ld	a, -11 (ix)
	ld	-16 (ix), a
	ld	a, -10 (ix)
	ld	-15 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:384: u16 t_y = center_y - 60 + ((i * 47 + Frms) % 120);
	ld	a, -9 (ix)
	add	a, #0xc4
	ld	-11 (ix), a
	ld	a, -8 (ix)
	adc	a, #0xff
	ld	-10 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -13 (ix)
	add	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -12 (ix)
	adc	a, -8 (ix)
	ld	-6 (ix), a
	ld	de, #0x0078
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modsint
	ld	-7 (ix), e
	ld	-6 (ix), d
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:386: u16 dist_x = (p->lx > t_x) ? (p->lx - t_x) : (t_x - p->lx);
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	-10 (ix), a
	ld	-14 (ix), a
	ld	-13 (ix), #0x00
	ld	a, -10 (ix)
	ld	-12 (ix), a
	ld	-11 (ix), #0x00
	ld	a, -16 (ix)
	ld	-9 (ix), a
	ld	a, -15 (ix)
	ld	-8 (ix), a
	ld	a, -16 (ix)
	sub	a, -14 (ix)
	ld	a, -15 (ix)
	sbc	a, -13 (ix)
	jr	NC, 00321$
	ld	a, -12 (ix)
	ld	-14 (ix), a
	ld	a, -11 (ix)
	ld	-13 (ix), a
	ld	a, -14 (ix)
	sub	a, -16 (ix)
	ld	-12 (ix), a
	ld	a, -13 (ix)
	sbc	a, -15 (ix)
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-15 (ix), a
	ld	a, -11 (ix)
	ld	-14 (ix), a
	jp	00322$
00321$:
	ld	a, -9 (ix)
	sub	a, -12 (ix)
	ld	-15 (ix), a
	ld	a, -8 (ix)
	sbc	a, -11 (ix)
	ld	-14 (ix), a
00322$:
	ld	a, -15 (ix)
	ld	-12 (ix), a
	ld	a, -14 (ix)
	ld	-11 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:387: u16 dist_y = (p->ly > t_y) ? (p->ly - t_y) : (t_y - p->ly);
	ld	a, -19 (ix)
	add	a, #0x04
	ld	c, a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	b, a
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -7 (ix)
	sub	a, e
	ld	a, -6 (ix)
	sbc	a, d
	jr	NC, 00323$
	ld	a, e
	sub	a, -7 (ix)
	ld	e, a
	ld	a, d
	sbc	a, -6 (ix)
	jp	00324$
00323$:
	ld	a, -7 (ix)
	sub	a, e
	ld	e, a
	ld	a, -6 (ix)
	sbc	a, d
00324$:
	ld	-14 (ix), e
	ld	-13 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:388: u8 speed = (dist_x > 100 || dist_y > 100) ? 6 : ((dist_x > 50 || dist_y > 50) ? 4 : 2);
	ld	l, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x64
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	C, 00328$
	ld	e, -14 (ix)
	ld	d, -13 (ix)
	ld	a, #0x64
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00325$
00328$:
	ld	-12 (ix), #0x06
	ld	-11 (ix), #0
	jp	00326$
00325$:
	ld	a, #0x32
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	C, 00333$
	ld	a, #0x32
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jr	NC, 00330$
00333$:
	ld	de, #0x0004
	jp	00331$
00330$:
	ld	de, #0x0002
00331$:
	ld	-12 (ix), e
	ld	-11 (ix), d
00326$:
	ld	a, -12 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:390: if (p->lx < t_x - speed) p->dx = speed; else if (p->lx > t_x + speed) p->dx = -speed; else p->dx = 0;
	ld	-16 (ix), a
	ld	e, #0x00
	ld	-15 (ix), a
	ld	-14 (ix), e
	ld	a, -9 (ix)
	sub	a, -15 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -8 (ix)
	sbc	a, -14 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, -10 (ix)
	ld	d, #0x00
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:369: p->dy = 3; p->dx = 0;
	ld	a, -19 (ix)
	add	a, #0x11
	ld	-13 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-12 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:390: if (p->lx < t_x - speed) p->dx = speed; else if (p->lx > t_x + speed) p->dx = -speed; else p->dx = 0;
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00208$
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, -16 (ix)
	ld	(hl), a
	jp	00209$
00208$:
	ld	a, -9 (ix)
	add	a, -15 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -8 (ix)
	adc	a, -14 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	sbc	hl, de
	jr	NC, 00205$
	xor	a, a
	sub	a, -16 (ix)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), a
	jp	00209$
00205$:
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	(hl), #0x00
00209$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:391: if (p->ly < t_y - speed) p->dy = speed; else if (p->ly > t_y + speed) p->dy = -speed; else p->dy = 0;
	ld	l, c
	ld	h, b
	ld	d, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
	ld	a, -7 (ix)
	ld	-11 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -11 (ix)
	sub	a, -15 (ix)
	ld	e, a
	ld	a, -10 (ix)
	sbc	a, -14 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	-9 (ix), d
	ld	-8 (ix), h
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:369: p->dy = 3; p->dx = 0;
	ld	a, -19 (ix)
	add	a, #0x12
	ld	-7 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:391: if (p->ly < t_y - speed) p->dy = speed; else if (p->ly > t_y + speed) p->dy = -speed; else p->dy = 0;
	ld	a, -9 (ix)
	sub	a, e
	ld	a, -8 (ix)
	sbc	a, l
	jr	NC, 00214$
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -16 (ix)
	ld	(hl), a
	jp	00215$
00214$:
	ld	a, -11 (ix)
	add	a, -15 (ix)
	ld	e, a
	ld	a, -10 (ix)
	adc	a, -14 (ix)
	ld	d, a
	ld	a, e
	sub	a, -9 (ix)
	ld	a, d
	sbc	a, -8 (ix)
	jr	NC, 00211$
	xor	a, a
	sub	a, -16 (ix)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), a
	jp	00215$
00211$:
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), #0x00
00215$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:393: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	a, (hl)
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	e, (hl)
	add	a, e
	ld	l, -19 (ix)
	ld	h, -18 (ix)
	ld	(hl), a
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -7 (ix)
	ld	h, -6 (ix)
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
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	ld	l, -19 (ix)
	ld	h, -18 (ix)
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
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:395: u8 step = (p->anim / 3) % 4;
	ex	de, hl
	ld	de, #0x0003
	call	__divuint
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	a, -11 (ix)
	and	a, #0x03
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	a, -9 (ix)
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:396: if (step == 3) step = 1;
	ld	-8 (ix), a
	sub	a, #0x03
	jr	NZ, 00217$
	ld	-8 (ix), #0x01
00217$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:393: p->lx += p->dx; p->ly += p->dy; p->anim++;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:373: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, walk_seq[(p->anim / 3) % 4]);
	ld	a, -19 (ix)
	add	a, #0x0f
	ld	-10 (ix), a
	ld	a, -18 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:398: if (p->dy < 0 || (p->dy == 0 && (Frms % 64) < 32)) { 
	bit	7, -6 (ix)
	jr	NZ, 00226$
	ld	a, -6 (ix)
	or	a, a
	jp	NZ, 00227$
	ld	a, (_Frms+0)
	and	a, #0x3f
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x20
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00227$
00226$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:399: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00218$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00219$
00218$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:400: p->frame = (step == 0) ? SPR_GK_PLAYER_HAPPY_1 : ((step == 1) ? SPR_GK_PLAYER_HAPPY_2 : SPR_GK_PLAYER_HAPPY_3);
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00335$
	ld	-7 (ix), #0xfd
	ld	-6 (ix), #0
	jp	00336$
00335$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00337$
	ld	-7 (ix), #0xfe
	ld	-6 (ix), #0
	jp	00338$
00337$:
	ld	-7 (ix), #0xff
	ld	-6 (ix), #0
00338$:
00336$:
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00237$
00219$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:402: p->frame = (team == TEAM_1) ? 
	ld	a, -17 (ix)
	or	a, a
	jr	NZ, 00339$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:403: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_NORTH_2 : SPR_T1_PLAYER_HAPPY_TO_NORTH_3)) :
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00341$
	ld	-7 (ix), #0x5c
	ld	-6 (ix), #0
	jp	00340$
00341$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00343$
	ld	-7 (ix), #0x5d
	ld	-6 (ix), #0
	jp	00340$
00343$:
	ld	-7 (ix), #0x5e
	ld	-6 (ix), #0
	jp	00340$
00339$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:404: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_NORTH_2 : SPR_T2_PLAYER_HAPPY_TO_NORTH_3));
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00345$
	ld	-7 (ix), #0xcc
	ld	-6 (ix), #0
	jp	00346$
00345$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00347$
	ld	-7 (ix), #0xcd
	ld	-6 (ix), #0
	jp	00348$
00347$:
	ld	-7 (ix), #0xce
	ld	-6 (ix), #0
00348$:
00346$:
00340$:
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00237$
00227$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:407: if (i == 0 || i == 7) {
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00222$
	ld	a, -1 (ix)
	sub	a, #0x07
	jr	NZ, 00223$
00222$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:408: p->frame = CallFnc_U16_P4(SEG_GAMESTATE_9, GetPlayerAnimFrame, i, p->dx, p->dy, step);
	ld	l, -13 (ix)
	ld	h, -12 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	ld	h, -8 (ix)
	ld	l, -6 (ix)
	push	hl
	ld	h, -7 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	de, #_GetPlayerAnimFrame
	ld	a, #0x13
	call	_CallFnc_U16_P4
	ld	-7 (ix), e
	ld	-6 (ix), d
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
	jp	00237$
00223$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:410: p->frame = (team == TEAM_1) ? 
	ld	a, -17 (ix)
	or	a, a
	jr	NZ, 00349$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:411: ((step == 0) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T1_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T1_PLAYER_HAPPY_TO_SOUTH_3)) :
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00351$
	ld	-7 (ix), #0x3c
	ld	-6 (ix), #0
	jp	00350$
00351$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00353$
	ld	-7 (ix), #0x3d
	ld	-6 (ix), #0
	jp	00350$
00353$:
	ld	-7 (ix), #0x3e
	ld	-6 (ix), #0
	jp	00350$
00349$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:412: ((step == 0) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_1 : ((step == 1) ? SPR_T2_PLAYER_HAPPY_TO_SOUTH_2 : SPR_T2_PLAYER_HAPPY_TO_SOUTH_3));
	ld	a, -8 (ix)
	or	a, a
	jr	NZ, 00355$
	ld	-7 (ix), #0x9c
	ld	-6 (ix), #0
	jp	00356$
00355$:
	ld	a, -8 (ix)
	dec	a
	jr	NZ, 00357$
	ld	-7 (ix), #0x9d
	ld	-6 (ix), #0
	jp	00358$
00357$:
	ld	-7 (ix), #0x9e
	ld	-6 (ix), #0
00358$:
00356$:
00350$:
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -7 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -6 (ix)
	ld	(hl), a
00237$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:359: for (u8 i = 0; i <= 26; i++) {
	inc	-1 (ix)
	jp	00262$
00238$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:418: if (losers_offscreen) {
	ld	a, -20 (ix)
	or	a, a
	jr	Z, 00245$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:419: if (*wait_secs > 0) {
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	c, (hl)
	ld	a, c
	or	a, a
	jr	Z, 00242$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:420: if (*start_sec < Frms) { 
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, (de)
	ld	b, a
	ld	hl, #_Frms
	ld	a, b
	sub	a, (hl)
	jr	NC, 00240$
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:421: (*wait_secs)--; 
	dec	c
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), c
00240$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:423: *start_sec = Frms;
	ld	a, (_Frms+0)
	ld	(de), a
	jp	00263$
00242$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:425: CallFnc_VOID(SEG_MENU, ShowMenu);
	ld	de, #_ShowMenu
	ld	a, #0x0e
	call	_CallFnc_VOID
	jp	00263$
00245$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:428: *wait_secs = 6; // Resetta il timer a 6 finché non sono usciti tutti gli sconfitti
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	(hl), #0x06
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:429: *start_sec = Frms;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (_Frms+0)
	ld	(bc), a
00263$:
;E:\Dropbox\FAUSTO\SVILUPPI\MSX\CODE\C\MSXgl\projects\soccerlgMSX2/soccerlg_s15_b3.c:433: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
	.area _SEG15
	.area _INITIALIZER
	.area _CABS (ABS)
