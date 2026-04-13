;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module soccerlg
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CallFnc_VOID_P2
	.globl _DEBUG_INIT
	.globl _PlotField
	.globl _MainLoop
	.globl _Print_SetColor
	.globl _Print_DrawFormat
	.globl _Print_DrawText
	.globl _Print_SetBitmapFont
	.globl _VPD_CommandSetupR36
	.globl _VPD_CommandSetupR32
	.globl _VDP_SetPaletteEntry
	.globl _VDP_SetPalette
	.globl _VDP_FillVRAM_128K
	.globl _VDP_WriteVRAM_128K
	.globl _VDP_RegWriteBakMask
	.globl _VDP_RegWrite
	.globl _VDP_SetMode
	.globl _VDP_ClearVRAM
	.globl _Bios_ClearScreen
	.globl _Bios_SetHookCallback
	.globl _g_VSynch
	.globl _g_pass_max_height
	.globl _g_pass_max_frames
	.globl _g_pass_target_y
	.globl _g_pass_target_x
	.globl _g_pass_start_y
	.globl _g_pass_start_x
	.globl _g_thrower_id
	.globl _g_selected_rec
	.globl _g_throw_rec_2
	.globl _g_throw_rec_1
	.globl _RestartSideY
	.globl _RestartSideX
	.globl _RestartType
	.globl _LastTouchPlayer
	.globl _LastTouchTeam
	.globl _TimerEnabled
	.globl _T2_Receiver
	.globl _T2_Carrier
	.globl _T1_Receiver
	.globl _T1_Carrier
	.globl _GameMode
	.globl _KickOffTeam
	.globl _Team2Code
	.globl _Team1Code
	.globl _ScoreB
	.globl _ScoreA
	.globl _Half
	.globl _LastSecs
	.globl _Mins
	.globl _Secs
	.globl _Frms
	.globl _ScoreBoardRight
	.globl _ScoreBoardLeft
	.globl _Field
	.globl _SwSprite
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
	.globl _dummy
	.globl _g_TeamColorsArray
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
	.globl _CallFnc_VOID_3PTR
	.globl _CallFnc_VOID_3PTR_U16
	.globl _CallFnc_VOID_U8U16U16
	.globl _CallFnc_VOID_16_P1
	.globl _CallFnc_VOID_16_P2
	.globl _CallFnc_U8
	.globl _CallFnc_U8_P1
	.globl _CallFnc_U16_P1
	.globl _CallFnc_U16_P3
	.globl _CallFnc_U16_P4
	.globl _CallFnc_U16_P4B
	.globl _CallFnc_U8_P2
	.globl _CallFnc_BOOL
	.globl _CallFnc_BOOL_P1
	.globl _CallFnc_VOID_U8U8
	.globl _SetTeamColors
	.globl _AddLines
	.globl _CallSpriteFrame
	.globl _VSyncCallback
	.globl _WaitForVBlank
	.globl _LoadField
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
_SwSprite::
	.ds 552
_Field::
	.ds 23
_ScoreBoardLeft::
	.ds 23
_ScoreBoardRight::
	.ds 23
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_Frms::
	.ds 1
_Secs::
	.ds 1
_Mins::
	.ds 1
_LastSecs::
	.ds 1
_Half::
	.ds 1
_ScoreA::
	.ds 1
_ScoreB::
	.ds 1
_Team1Code::
	.ds 1
_Team2Code::
	.ds 1
_KickOffTeam::
	.ds 1
_GameMode::
	.ds 1
_T1_Carrier::
	.ds 1
_T1_Receiver::
	.ds 1
_T2_Carrier::
	.ds 1
_T2_Receiver::
	.ds 1
_TimerEnabled::
	.ds 1
_LastTouchTeam::
	.ds 1
_LastTouchPlayer::
	.ds 1
_RestartType::
	.ds 1
_RestartSideX::
	.ds 1
_RestartSideY::
	.ds 2
_g_throw_rec_1::
	.ds 1
_g_throw_rec_2::
	.ds 1
_g_selected_rec::
	.ds 1
_g_thrower_id::
	.ds 1
_g_pass_start_x::
	.ds 2
_g_pass_start_y::
	.ds 2
_g_pass_target_x::
	.ds 2
_g_pass_target_y::
	.ds 2
_g_pass_max_frames::
	.ds 1
_g_pass_max_height::
	.ds 1
_g_VSynch::
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
;./soccerlg.c:100: void CallFnc_VOID(u8 segment, void (*func)()) {
;	---------------------------------
; Function CallFnc_VOID
; ---------------------------------
_CallFnc_VOID::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:101: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:102: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:103: func();
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:104: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:104: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:105: }
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
_g_Palette:
	.db #0x00	; 0
	.db #0x00	; 0
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
	.db #0x55	; 85	'U'
	.db #0x02	; 2
	.db #0x45	; 69	'E'
	.db #0x06	; 6
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x05	; 5
	.db #0x55	; 85	'U'
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x16	; 22
	.db #0x02	; 2
	.db #0x66	; 102	'f'
	.db #0x06	; 6
_g_TeamColorsArray:
	.dw #0x0526
	.dw #0x0777
	.dw #0x0777
	.dw #0x0215
	.dw #0x0777
	.dw #0x0777
	.dw #0x0511
	.dw #0x0671
	.dw #0x0671
	.dw #0x0777
	.dw #0x0111
	.dw #0x0111
	.dw #0x0470
	.dw #0x0111
	.dw #0x0111
	.dw #0x0071
	.dw #0x0071
	.dw #0x0777
;./soccerlg.c:107: void CallFnc_VOID_P1(u8 segment, void (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_VOID_P1
; ---------------------------------
_CallFnc_VOID_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:108: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:109: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:110: func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:111: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:111: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:112: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:114: void CallFnc_VOID_3PTR(u8 segment, void (*func)(u8*, u8*, u8*), u8* p1, u8* p2, u8* p3) {
;	---------------------------------
; Function CallFnc_VOID_3PTR
; ---------------------------------
_CallFnc_VOID_3PTR::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	c, e
	ld	b, d
;./soccerlg.c:115: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-2 (ix), l
;./soccerlg.c:116: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:117: func(p1, p2, p3);
	ld	l, 8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
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
;./soccerlg.c:118: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:118: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:119: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	pop	af
	jp	(hl)
;./soccerlg.c:121: void CallFnc_VOID_3PTR_U16(u8 segment, void (*func)(u8*, u8*, u8*, u16), u8* p1, u8* p2, u8* p3, u16 p4) {
;	---------------------------------
; Function CallFnc_VOID_3PTR_U16
; ---------------------------------
_CallFnc_VOID_3PTR_U16::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	c, e
	ld	b, d
;./soccerlg.c:122: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-2 (ix), l
;./soccerlg.c:123: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:124: func(p1, p2, p3, p4);
	ld	l, 10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 11 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, 8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
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
;./soccerlg.c:125: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:125: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:126: }
	ld	sp, ix
	pop	ix
	pop	hl
	ld	iy, #8
	add	iy, sp
	ld	sp, iy
	jp	(hl)
;./soccerlg.c:128: void CallFnc_VOID_U8U16U16(u8 segment, void (*func)(u8, u16, u16), u8 p1, u16 p2, u16 p3) {
;	---------------------------------
; Function CallFnc_VOID_U8U16U16
; ---------------------------------
_CallFnc_VOID_U8U16U16::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-1 (ix), a
	ld	c, e
	ld	b, d
;./soccerlg.c:129: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-2 (ix), l
;./soccerlg.c:130: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:131: func(p1, p2, p3);
	ld	l, 7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	e, 5 (ix)
	ld	d, 6 (ix)
	ld	a, 4 (ix)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	___sdcc_call_hl
;./soccerlg.c:132: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:132: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:133: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	inc	sp
	jp	(hl)
;./soccerlg.c:137: void CallFnc_VOID_P2(u8 segment, void (*func)(u8, bool), u8 p1, bool p2) {
;	---------------------------------
; Function CallFnc_VOID_P2
; ---------------------------------
_CallFnc_VOID_P2::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:138: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:139: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:140: func(p1,p2);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:141: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:141: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:142: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:145: void CallFnc_VOID_16_P1(u8 segment, void (*func)(u16), u16 p1) {
;	---------------------------------
; Function CallFnc_VOID_16_P1
; ---------------------------------
_CallFnc_VOID_16_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:146: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:147: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:148: func(p1);
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:149: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:149: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:150: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:153: void CallFnc_VOID_16_P2(u8 segment, void (*func)(u16,u16), u16 p1, u16 p2) {
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
;./soccerlg.c:154: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-2 (ix), l
;./soccerlg.c:155: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:156: func(p1,p2);
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
;./soccerlg.c:157: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:157: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:158: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;./soccerlg.c:160: u8 CallFnc_U8(u8 segment, u8 (*func)()) {
;	---------------------------------
; Function CallFnc_U8
; ---------------------------------
_CallFnc_U8::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:162: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:163: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:164: _res = func();
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:165: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:166: return _res;
	ld	a, c
;./soccerlg.c:167: }
	inc	sp
	pop	ix
	ret
;./soccerlg.c:169: u8 CallFnc_U8_P1(u8 segment, u8 (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_U8_P1
; ---------------------------------
_CallFnc_U8_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:171: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:172: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:173: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:174: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:175: return _res;
	ld	a, c
;./soccerlg.c:176: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:178: u16 CallFnc_U16_P1(u8 segment, u16 (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_U16_P1
; ---------------------------------
_CallFnc_U16_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:180: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:181: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:182: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
;./soccerlg.c:183: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:184: return _res;
;./soccerlg.c:185: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:187: u16 CallFnc_U16_P3(u8 segment, u16 (*func)(u8, i8, i8), u8 p1, i8 p2, i8 p3) {
;	---------------------------------
; Function CallFnc_U16_P3
; ---------------------------------
_CallFnc_U16_P3::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:189: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:190: SET_BANK_SEGMENT(3, segment);
	ld	b, #0x00
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
;./soccerlg.c:191: _res = func(p1, p2, p3);
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:192: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:193: return _res;
;./soccerlg.c:194: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;./soccerlg.c:196: u16 CallFnc_U16_P4(u8 segment, u16 (*func)(u8, i8, i8, u8), u8 p1, i8 p2, i8 p3, u8 p4) {
;	---------------------------------
; Function CallFnc_U16_P4
; ---------------------------------
_CallFnc_U16_P4::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:198: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:199: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:200: _res = func(p1, p2, p3, p4);
	ld	h, 7 (ix)
	ld	l, 6 (ix)
	push	hl
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:201: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:202: return _res;
;./soccerlg.c:203: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;./soccerlg.c:205: u16 CallFnc_U16_P4B(u8 segment, u16 (*func)(u8, u8, i8, i8), u8 p1, u8 p2, i8 p3, i8 p4) {
;	---------------------------------
; Function CallFnc_U16_P4B
; ---------------------------------
_CallFnc_U16_P4B::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:207: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:208: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:209: _res = func(p1, p2, p3, p4);
	ld	h, 7 (ix)
	ld	l, 6 (ix)
	push	hl
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:210: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:211: return _res;
;./soccerlg.c:212: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;./soccerlg.c:214: u8 CallFnc_U8_P2(u8 segment, u8 (*func)(u8, u8), u8 p1, u8 p2) {
;	---------------------------------
; Function CallFnc_U8_P2
; ---------------------------------
_CallFnc_U8_P2::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:216: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:217: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:218: _res = func(p1,p2);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
	ld	c, a
;./soccerlg.c:219: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:220: return _res;
	ld	a, c
;./soccerlg.c:221: }
	inc	sp
	pop	ix
	pop	hl
	pop	bc
	jp	(hl)
;./soccerlg.c:223: bool CallFnc_BOOL(u8 segment, bool (*func)()) {
;	---------------------------------
; Function CallFnc_BOOL
; ---------------------------------
_CallFnc_BOOL::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:225: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:226: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:227: _res = func();
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:228: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:229: return _res;
	ld	a, c
;./soccerlg.c:230: }
	inc	sp
	pop	ix
	ret
;./soccerlg.c:232: bool CallFnc_BOOL_P1(u8 segment, bool (*func)(u8), u8 p1) {
;	---------------------------------
; Function CallFnc_BOOL_P1
; ---------------------------------
_CallFnc_BOOL_P1::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:234: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:235: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:236: _res = func(p1);
	ld	a, 4 (ix)
	ex	de, hl
	call	___sdcc_call_hl
	ld	c, a
;./soccerlg.c:237: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:238: return _res;
	ld	a, c
;./soccerlg.c:239: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./soccerlg.c:242: void CallFnc_VOID_U8U8(u8 segment, void (*func)(u8, u8), u8 p1, u8 p2) {
;	---------------------------------
; Function CallFnc_VOID_U8U8
; ---------------------------------
_CallFnc_VOID_U8U8::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;./soccerlg.c:243: u8 _old = GET_BANK_SEGMENT(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-1 (ix), l
;./soccerlg.c:244: SET_BANK_SEGMENT(3, segment);
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
;./soccerlg.c:245: func(p1,p2);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 4 (ix)
	push	de
	pop	iy
	call	___sdcc_call_iy
;./soccerlg.c:246: SET_BANK_SEGMENT(3, _old);
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
;./soccerlg.c:246: SET_BANK_SEGMENT(3, _old);
;./soccerlg.c:247: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;./soccerlg.c:253: void SetTeamColors(u8 team, const struct TeamColors* colors)
;	---------------------------------
; Function SetTeamColors
; ---------------------------------
_SetTeamColors::
;./soccerlg.c:255: if (team == TEAM_1)
	ld	c, a
	or	a, a
	jr	NZ, 00104$
;./soccerlg.c:257: VDP_SetPaletteEntry(10, colors->Stripes); // [A] Righe Squadra 1
	ld	c, e
	ld	b, d
	ld	hl, #4
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	ld	e, c
	ld	d, b
	ld	a, #0x0a
	call	_VDP_SetPaletteEntry
	pop	de
;./soccerlg.c:258: VDP_SetPaletteEntry(11, colors->Shirt);   // [B] Maglietta Squadra 1
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	ld	e, c
	ld	d, b
	ld	a, #0x0b
	call	_VDP_SetPaletteEntry
	pop	de
;./soccerlg.c:259: VDP_SetPaletteEntry(13, colors->Shorts);  // [D] Pantaloncini Squadra 1
	ex	de, hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0x0d
	jp	_VDP_SetPaletteEntry
00104$:
;./soccerlg.c:261: else if (team == TEAM_2)
	dec	c
	ret	NZ
;./soccerlg.c:263: VDP_SetPaletteEntry(12, colors->Stripes); // [C] Righe Squadra 2
	push	de
	pop	iy
	ld	l, 4 (iy)
;	spillPairReg hl
	ld	h, 5 (iy)
;	spillPairReg hl
	ex	de, hl
	push	hl
	ld	a, #0x0c
	call	_VDP_SetPaletteEntry
	pop	de
;./soccerlg.c:264: VDP_SetPaletteEntry(5,  colors->Shirt);   // [5] Maglietta Squadra 2
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	ld	e, c
	ld	d, b
	ld	a, #0x05
	call	_VDP_SetPaletteEntry
	pop	de
;./soccerlg.c:265: VDP_SetPaletteEntry(9,  colors->Shorts);  // [9] Pantaloncini Squadra 2
	ex	de, hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0x09
;./soccerlg.c:267: }
	jp	_VDP_SetPaletteEntry
;./soccerlg.c:269: void AddLines(struct ObjectInfo* Field) 
;	---------------------------------
; Function AddLines
; ---------------------------------
_AddLines::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-11
	add	iy, sp
	ld	sp, iy
;./soccerlg.c:273: if (Field->dy==0) return;
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	bc,#18
	add	hl,bc
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jp	Z,00120$
;./soccerlg.c:276: for(i8 i=Field->dy; i>0; i--) {
	ld	a, -3 (ix)
	add	a, #0x04
	ld	-5 (ix), a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	-4 (ix), a
;./soccerlg.c:275: if (Field->dy>0) {
	xor	a, a
	sub	a, -1 (ix)
	jp	PO, 00154$
	xor	a, #0x80
00154$:
	jp	P, 00106$
;./soccerlg.c:276: for(i8 i=Field->dy; i>0; i--) {
00115$:
	xor	a, a
	sub	a, -1 (ix)
	jp	PO, 00155$
	xor	a, #0x80
00155$:
	jp	P, 00120$
;./soccerlg.c:277: v = (Field->ly + 192 - i) & 511;
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	ld	a, (hl)
	ld	-7 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	ld	hl, #0x00c0
	add	hl, bc
	ld	a, -1 (ix)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	cp	a, a
	sbc	hl, bc
	ex	de, hl
	ld	a, d
	and	a, #0x01
	ld	d, a
;./soccerlg.c:278: VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) +   0,1,0);	
	ld	a, e
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	hl, #_FieldMap
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	e, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x03
	ld	d, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
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
	call	_VPD_CommandSetupR32
;./soccerlg.c:279: VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 256,1,0);	
	ld	c, -9 (ix)
	ld	a, -8 (ix)
	inc	a
	ld	b, a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
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
	call	_VPD_CommandSetupR32
;./soccerlg.c:280: VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 512,1,0);	
	ld	c, -9 (ix)
	ld	a, -8 (ix)
	add	a, #0x02
	ld	b, a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #0x0300
	add	hl, de
	ex	de, hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
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
	call	_VPD_CommandSetupR32
;./soccerlg.c:276: for(i8 i=Field->dy; i>0; i--) {
	dec	-1 (ix)
	jp	00115$
00106$:
;./soccerlg.c:284: for(i8 i=-Field->dy; i>0; i--) {
	xor	a, a
	sub	a, -1 (ix)
	ld	-1 (ix), a
	ld	a, -5 (ix)
	ld	-11 (ix), a
	ld	a, -4 (ix)
	ld	-10 (ix), a
00118$:
	xor	a, a
	sub	a, -1 (ix)
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	P, 00120$
;./soccerlg.c:285: v = (Field->ly + i - 1) & 511;
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, -1 (ix)
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
	dec	de
	ld	a, d
	and	a, #0x01
	ld	d, a
;./soccerlg.c:286: VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) +   0,1,0);	
	ld	a, e
	ld	-9 (ix), a
	ld	-8 (ix), #0x00
	ld	c, a
	ld	b, #0x00
	ld	hl, #_FieldMap
	add	hl, de
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	e, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x03
	ld	d, a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	((_g_VDP_Command + 2)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	l, #0x01
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	ld	bc, #_g_VDP_Command + 13
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	push	bc
	call	_VPD_CommandSetupR32
	pop	bc
;./soccerlg.c:287: VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 256,1,0);	
	ld	e, -9 (ix)
	ld	a, -8 (ix)
	inc	a
	ld	-5 (ix), e
	ld	-4 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
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
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	hl, #0x0001
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	push	bc
	call	_VPD_CommandSetupR32
	pop	bc
;./soccerlg.c:288: VDP_CommandYMMM(FieldMap[v]+768,0,(v&255) + 512,1,0);	
	ld	e, -9 (ix)
	ld	a, -8 (ix)
	add	a, #0x02
	ld	d, a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	add	a, #0x03
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	-5 (ix), l
	ld	-4 (ix), h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:65: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:66: g_VDP_Command.DX = dx;
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:67: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), de
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:68: g_VDP_Command.NY = ny;
	ld	l, #0x01
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:69: g_VDP_Command.ARG = dir; 
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:70: g_VDP_Command.CMD = VDP_CMD_YMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xe0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:71: VPD_CommandSetupR32();
	call	_VPD_CommandSetupR32
;./soccerlg.c:284: for(i8 i=-Field->dy; i>0; i--) {
	dec	-1 (ix)
	jp	00118$
00120$:
;./soccerlg.c:291: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:293: void CallSpriteFrame(u8 x, u16 y, u16 frame)  __naked
;	---------------------------------
; Function CallSpriteFrame
; ---------------------------------
_CallSpriteFrame::
;./soccerlg.c:369: __endasm;
	ENAR	.equ 0x7FFF ; enable register interface
	OFFR	.equ 0x7FFE ; offset register (more on this later)
	CFGR	.equ 0x7FFD ; configuration bits
	ld	b,a ; b = x , de = y
	pop	af ; pop return
	pop	hl ; hl = frame
	push	af ; push return
	ld	a,#(768>>2) & #$%11000000
	ld	(OFFR),a ; Data offset
	ld	a,(#(_g_Bank0Segment + 6) + 0)
	push	af ; save the current mapper page (!!) has to be < 256
	call	SpriteFrame
	xor	a,a ; lower 2MB
	ld	(OFFR),a
	pop	af
	ld	(#0xB000),a ; restore the mapper page
	ld	(#(_g_Bank0Segment + 6) + 0),a
	ret
	SpriteFrame::
	ld	a,l
	and	#3 ; 4 sprite per pagina
	add	a,a
	add	a,a
	ld	c,a ; in c the low address of the function to be called
	srl	h ; page = 768 + frame / 4
	rr	l
	srl	h
	rr	l
	ld	a,#768
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
	rr	b
	ld	d,e
	ld	e,b ; DE = (x + y*256)/2 & 0xFFFF
	ld	l,c
	ld	h,#0xA000/256
	ld	a,d
	or	#0xC0
	ld	d,a
	jp	(hl)
;./soccerlg.c:370: }
;./soccerlg.c:383: void VSyncCallback()
;	---------------------------------
; Function VSyncCallback
; ---------------------------------
_VSyncCallback::
;./soccerlg.c:385: g_VSynch = TRUE;
	ld	hl, #_g_VSynch
	ld	(hl), #0x01
;./soccerlg.c:387: Frms--;
	ld	iy, #_Frms
	dec	0 (iy)
;./soccerlg.c:388: if (Frms==0) {
	ld	a, (_Frms+0)
	or	a, a
	ret	NZ
;./soccerlg.c:389: Frms = 60;
	ld	0 (iy), #0x3c
;./soccerlg.c:390: if (TimerEnabled) {
	ld	a, (_TimerEnabled+0)
	or	a, a
	ret	Z
;./soccerlg.c:391: if (Mins > 0 || Secs > 0) {
	ld	a, (_Mins+0)
	or	a, a
	jr	NZ, 00104$
	ld	a, (_Secs+0)
	or	a, a
	ret	Z
00104$:
;./soccerlg.c:392: if (Secs==0) {
	ld	a, (_Secs+0)
	or	a, a
	jr	NZ, 00102$
;./soccerlg.c:393: Secs = 59;
	ld	hl, #_Secs
	ld	(hl), #0x3b
;./soccerlg.c:394: Mins--;
	ld	hl, #_Mins
	dec	(hl)
	ret
00102$:
;./soccerlg.c:396: Secs--;
	ld	hl, #_Secs
	dec	(hl)
;./soccerlg.c:401: }
	ret
_dummy:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
;./soccerlg.c:403: void WaitForVBlank(){
;	---------------------------------
; Function WaitForVBlank
; ---------------------------------
_WaitForVBlank::
;./soccerlg.c:404: while(!g_VSynch) {}
00101$:
	ld	a, (_g_VSynch+0)
	or	a, a
	jr	Z, 00101$
;./soccerlg.c:405: g_VSynch = FALSE;
	ld	hl, #_g_VSynch
	ld	(hl), #0x00
;./soccerlg.c:406: }
	ret
;./soccerlg.c:408: void LoadField(u8 vdp_page)
;	---------------------------------
; Function LoadField
; ---------------------------------
_LoadField::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
	ld	e, a
;./soccerlg.c:410: u32 base     = (u32)vdp_page * 0x8000;
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
00168$:
	sla	d
	adc	hl, hl
	djnz	00168$
	inc	sp
	inc	sp
	push	de
	ld	-4 (ix), l
	ld	-3 (ix), h
;./soccerlg.c:411: u8  u = GET_BANK_SEGMENT_HIGH(3);
	ld	hl, (#(_g_Bank0Segment + 6) + 0)
	ld	-2 (ix), h
;./soccerlg.c:412: u8  v = GET_BANK_SEGMENT_LOW(3);
	ld	-1 (ix), l
;./soccerlg.c:414: for (u8 i = 0; i < FIELD_SEG_COUNT; i++)
	ld	c, #0x00
00145$:
	ld	a, c
	sub	a, #0x04
	jr	NC, 00101$
;./soccerlg.c:416: u32 addr    = base + (u32)i * 8192;
	ld	e, c
	xor	a, a
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	d, e
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, #0x00
	ld	b, #0x05
00170$:
	sla	d
	adc	hl, hl
	djnz	00170$
	ld	a, e
	add	a, -6 (ix)
	ld	e, a
	ld	a, d
	adc	a, -5 (ix)
	ld	d, a
	ld	a, l
	adc	a, -4 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, -3 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	de
	pop	iy
	ex	de, hl
;./soccerlg.c:418: SET_BANK_SEGMENT_LOW (3, (FIELD_BIN_SEG + i) & 255);
	ld	a, c
	add	a, #0xfc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:199: Poke((u16)&g_Bank0Segment[b] + 0, s);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#(_g_Bank0Segment + 6)),a
	ld	(#0xb000),a
;./soccerlg.c:419: SET_BANK_SEGMENT_HIGH(3, (FIELD_BIN_SEG + i) >>8);
	ld	a, c
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #0xfc
;	spillPairReg hl
;	spillPairReg hl
	jr	NC, 00172$
	inc	h
00172$:
	ld	a, h
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:207: Poke((u16)&g_Bank0Segment[b] + 1, s);
	ld	hl, #(_g_Bank0Segment + 6)
	inc	hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(hl), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:208: Poke(YAMANOOTO_OFFR, s << 6);
	rrca
	rrca
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;./soccerlg.c:420: VDP_WriteVRAM_128K((u8*)BANK3_BASE, (addr & 0xFFFF), (addr >> 16), 8192);
	ld	a, e
	push	iy
	pop	de
	push	bc
	ld	hl, #0x2000
	push	hl
	push	af
	inc	sp
	ld	h, #0xa0
	call	_VDP_WriteVRAM_128K
	pop	bc
;./soccerlg.c:414: for (u8 i = 0; i < FIELD_SEG_COUNT; i++)
	inc	c
	jp	00145$
00101$:
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:207: Poke((u16)&g_Bank0Segment[b] + 1, s);
	ld	bc, #(_g_Bank0Segment + 6)
	inc	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	a, -2 (ix)
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:208: Poke(YAMANOOTO_OFFR, s << 6);
	ld	a, -2 (ix)
	rrca
	rrca
	and	a, #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	(#0x7ffe),a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/rom_mapper.h:199: Poke((u16)&g_Bank0Segment[b] + 0, s);
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:101: inline void Poke(u16 addr, u8 val) { *(u8*)addr = val; }
	ld	bc, #(_g_Bank0Segment + 6)
	ld	a, -1 (ix)
	ld	(bc), a
	ld	hl, #0xb000
	ld	a, -1 (ix)
	ld	(hl), a
;./soccerlg.c:424: SET_BANK_SEGMENT_LOW (3, v);
;./soccerlg.c:425: }
	ld	sp, ix
	pop	ix
	ret
;./soccerlg.c:432: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/system.h:193: inline u8 Sys_GetMSXVersion() { return g_MSXVER; } 
	ld	a, (_g_MSXVER+0)
;./soccerlg.c:435: if (Sys_GetMSXVersion() == MSXVER_1)
	or	a, a
	jr	NZ, 00102$
;./soccerlg.c:437: Bios_ClearScreen();
	call	_Bios_ClearScreen
;./soccerlg.c:438: Bios_TextPrintSting("This game need MSX2 or above");
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
;./soccerlg.c:438: Bios_TextPrintSting("This game need MSX2 or above");
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:331: inline c8 Bios_GetCharacter() { return ((u8(*)(void))R_CHGET)(); }
;./soccerlg.c:440: return;
	jp	00104$
00102$:
;./soccerlg.c:443: DEBUG_INIT();
	call	_DEBUG_INIT
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/bios.h:64: inline void Bios_SetKeyClick(bool enable) { g_CLIKSW = enable; }
	ld	hl, #_g_CLIKSW
	ld	(hl), #0x00
;./soccerlg.c:445: VDP_SetMode(VDP_MODE_SCREEN5);
	ld	a, #0x06
	call	_VDP_SetMode
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:756: inline void VDP_EnableTransparency(u8 enable) { VDP_RegWriteBakMask(8, (u8)~R08_TP, !enable ? R08_TP : 0); }
	ld	a, #0x20
	push	af
	inc	sp
	ld	l, #0xdf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_VDP_RegWriteBakMask
;./soccerlg.c:447: VDP_SetPalette(g_Palette);
	ld	hl, #_g_Palette
	call	_VDP_SetPalette
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:719: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x07
	call	_VDP_RegWrite
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:834: inline void VDP_SetLineCount(u8 lines) { VDP_RegWriteBakMask(9, (u8)~R09_LN, lines); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0x7f
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_VDP_RegWriteBakMask
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:745: inline void VDP_EnableSprite(u8 enable) { VDP_RegWriteBakMask(8, (u8)~R08_SPD, !enable ? R08_SPD : 0); }
	ld	a, #0x02
	push	af
	inc	sp
	ld	l, #0xfd
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_VDP_RegWriteBakMask
;./soccerlg.c:451: VDP_ClearVRAM();
	call	_VDP_ClearVRAM
;./soccerlg.c:452: VDP_FillVRAM(0x77, 0x0000, 0, 0x8000);
	ld	hl, #0x8000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	de, #0x0000
	ld	a, #0x77
	call	_VDP_FillVRAM_128K
;./soccerlg.c:457: LoadField(3);
	ld	a, #0x03
	call	_LoadField
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	h, #0x03
	ld	((_g_VDP_Command + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	l, #0xd4
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:171: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), #0x77
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:172: g_VDP_Command.ARG = arg; 
	ld	bc, #_g_VDP_Command + 13
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:173: g_VDP_Command.CMD = VDP_CMD_HMMV;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:174: VPD_CommandSetupR36();
	push	bc
	call	_VPD_CommandSetupR36
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	h, #0x03
	ld	((_g_VDP_Command + 6)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	l, #0xd4
	ld	((_g_VDP_Command + 10)), hl
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:171: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), #0x77
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:172: g_VDP_Command.ARG = arg; 
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:173: g_VDP_Command.CMD = VDP_CMD_HMMV;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xc0
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp_inl.h:174: VPD_CommandSetupR36();
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
;./soccerlg.c:463: Print_SetBitmapFont(g_Fonts);
	ld	hl, #_g_Fonts
	call	_Print_SetBitmapFont
;./soccerlg.c:464: Print_SetColor(4, 7);
	ld	l, #0x07
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	call	_Print_SetColor
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	bc, #_g_PrintData + 5
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0308
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:466: Print_SetPosition(0,  8+768);Print_DrawText("A");
	push	bc
	ld	hl, #___str_1
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0310
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:467: Print_SetPosition(0,  16+768);Print_DrawText("U");
	push	bc
	ld	hl, #___str_2
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0318
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:468: Print_SetPosition(0,  24+768);Print_DrawText("S");
	push	bc
	ld	hl, #___str_3
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0320
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:469: Print_SetPosition(0,  32+768);Print_DrawText(" ");
	push	bc
	ld	hl, #___str_4
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0328
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:470: Print_SetPosition(0,  40+768);Print_DrawText("1");
	push	bc
	ld	hl, #___str_5
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0338
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:472: Print_SetPosition(0,  56+768);Print_DrawText("I");
	push	bc
	ld	hl, #___str_6
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0340
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:473: Print_SetPosition(0,  64+768);Print_DrawText("T");
	push	bc
	ld	hl, #___str_7
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0348
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:474: Print_SetPosition(0,  72+768);Print_DrawText("A");
	push	bc
	ld	hl, #___str_1
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0350
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:475: Print_SetPosition(0,  80+768);Print_DrawText(" ");
	push	bc
	ld	hl, #___str_4
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	xor	a, a
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0358
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:476: Print_SetPosition(0,  88+768);Print_DrawText("2");
	push	bc
	ld	hl, #___str_8
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0308
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:479: Print_SetPosition(248,  8+768);Print_DrawText("T");
	push	bc
	ld	hl, #___str_7
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0310
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:480: Print_SetPosition(248,  16+768);Print_DrawText("I");
	push	bc
	ld	hl, #___str_6
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0318
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:481: Print_SetPosition(248,  24+768);Print_DrawText("M");
	push	bc
	ld	hl, #___str_9
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0320
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:482: Print_SetPosition(248,  32+768);Print_DrawText("E");
	push	bc
	ld	hl, #___str_10
	call	_Print_DrawText
	pop	bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:223: g_PrintData.CursorX = x;
	ld	a, #0xf8
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/print.h:224: g_PrintData.CursorY = y;
	ld	hl, #0x0330
	ld	((_g_PrintData + 6)), hl
;./soccerlg.c:484: Print_SetPosition(248,  48+768);Print_DrawFormat("%i",Mins);//Print_DrawText("3");	
	ld	a, (_Mins+0)
	ld	e, a
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_11
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
;./soccerlg.c:485: Print_SetPosition(248,  60+768);Print_DrawFormat("%i",Secs/10);	
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
	ld	hl, #___str_11
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
;./soccerlg.c:486: Print_SetPosition(248,  68+768);Print_DrawFormat("%i",Secs-Secs/10*10);	
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
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	push	bc
	ld	hl, #___str_11
	push	hl
	call	_Print_DrawFormat
	pop	af
	pop	af
;./soccerlg.c:495: Field.dy = 1;
	ld	hl, #(_Field + 18)
	ld	(hl), #0x01
;./soccerlg.c:496: Field.ly = 0;
	ld	hl, #0x0000
	ld	((_Field + 4)), hl
;./soccerlg.c:498: ScoreBoardLeft.lx = 0;
	ld	hl, #_ScoreBoardLeft
	ld	(hl), #0x00
;./soccerlg.c:499: ScoreBoardLeft.ly = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardLeft + 4)), bc
;./soccerlg.c:501: ScoreBoardRight.lx = 248;
	ld	hl, #_ScoreBoardRight
	ld	(hl), #0xf8
;./soccerlg.c:502: ScoreBoardRight.ly = Field.ly;
	ld	bc, (#(_Field + 4) + 0)
	ld	((_ScoreBoardRight + 4)), bc
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:705: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./soccerlg.c:505: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly,   0);
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0000
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
;./soccerlg.c:506: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 256);
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0100
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
;./soccerlg.c:507: CallFnc_VOID_16_P2(SEG_DRAW, PlotField, Field.ly, 512);
	ld	hl, (#(_Field + 4) + 0)
	ld	de, #0x0200
	push	de
	push	hl
	ld	de, #_PlotField
	ld	a, #0x05
	call	_CallFnc_VOID_16_P2
;./soccerlg.c:517: Bios_SetHookCallback(H_TIMI, VSyncCallback);
	ld	de, #_VSyncCallback
	ld	hl, #0xfd9f
	call	_Bios_SetHookCallback
;./soccerlg.c:519: ScoreBoardLeft.x0 = ScoreBoardLeft.lx;
	ld	bc, #_ScoreBoardLeft + 1
	ld	a, (#_ScoreBoardLeft + 0)
	ld	(bc), a
;./soccerlg.c:520: ScoreBoardLeft.x1 = ScoreBoardLeft.lx;
	ld	bc, #_ScoreBoardLeft + 2
	ld	a, (#_ScoreBoardLeft + 0)
	ld	(bc), a
;./soccerlg.c:521: ScoreBoardLeft.x2 = ScoreBoardLeft.lx;
	ld	bc, #_ScoreBoardLeft + 3
	ld	a, (#_ScoreBoardLeft + 0)
	ld	(bc), a
;./soccerlg.c:523: ScoreBoardRight.x0 = ScoreBoardRight.lx;
	ld	bc, #_ScoreBoardRight + 1
	ld	a, (#_ScoreBoardRight + 0)
	ld	(bc), a
;./soccerlg.c:524: ScoreBoardRight.x1 = ScoreBoardRight.lx;
	ld	bc, #_ScoreBoardRight + 2
	ld	a, (#_ScoreBoardRight + 0)
	ld	(bc), a
;./soccerlg.c:525: ScoreBoardRight.x2 = ScoreBoardRight.lx;
	ld	bc, #_ScoreBoardRight + 3
	ld	a, (#_ScoreBoardRight + 0)
	ld	(bc), a
;E:/Dropbox/FAUSTO/SVILUPPI/MSX/CODE/C/MSXgl/engine/src/vdp.h:705: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
	ld	a, #0x40
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;./soccerlg.c:530: CallFnc_VOID(4,MainLoop);
	ld	de, #_MainLoop
	ld	a, #0x04
;./soccerlg.c:532: }
	jp	_CallFnc_VOID
___str_0:
	.ascii "This game need MSX2 or above"
	.db 0x00
___str_1:
	.ascii "A"
	.db 0x00
___str_2:
	.ascii "U"
	.db 0x00
___str_3:
	.ascii "S"
	.db 0x00
___str_4:
	.ascii " "
	.db 0x00
___str_5:
	.ascii "1"
	.db 0x00
___str_6:
	.ascii "I"
	.db 0x00
___str_7:
	.ascii "T"
	.db 0x00
___str_8:
	.ascii "2"
	.db 0x00
___str_9:
	.ascii "M"
	.db 0x00
___str_10:
	.ascii "E"
	.db 0x00
___str_11:
	.ascii "%i"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__Frms:
	.db #0x3c	; 60
__xinit__Secs:
	.db #0x00	; 0
__xinit__Mins:
	.db #0x01	; 1
__xinit__LastSecs:
	.db #0xff	; 255
__xinit__Half:
	.db #0x01	; 1
__xinit__ScoreA:
	.db #0x00	; 0
__xinit__ScoreB:
	.db #0x00	; 0
__xinit__Team1Code:
	.db #0x00	; 0
__xinit__Team2Code:
	.db #0x04	; 4
__xinit__KickOffTeam:
	.db #0x01	; 1
__xinit__GameMode:
	.db #0x00	; 0
__xinit__T1_Carrier:
	.db #0xff	; 255
__xinit__T1_Receiver:
	.db #0xff	; 255
__xinit__T2_Carrier:
	.db #0xff	; 255
__xinit__T2_Receiver:
	.db #0xff	; 255
__xinit__TimerEnabled:
	.db #0x00	; 0
__xinit__LastTouchTeam:
	.db #0xff	; 255
__xinit__LastTouchPlayer:
	.db #0xff	; 255
__xinit__RestartType:
	.db #0x00	; 0
__xinit__RestartSideX:
	.db #0x00	; 0
__xinit__RestartSideY:
	.dw #0x0000
__xinit__g_throw_rec_1:
	.db #0xff	; 255
__xinit__g_throw_rec_2:
	.db #0xff	; 255
__xinit__g_selected_rec:
	.db #0x00	; 0
__xinit__g_thrower_id:
	.db #0xff	; 255
__xinit__g_pass_start_x:
	.dw #0x0000
__xinit__g_pass_start_y:
	.dw #0x0000
__xinit__g_pass_target_x:
	.dw #0x0000
__xinit__g_pass_target_y:
	.dw #0x0000
__xinit__g_pass_max_frames:
	.db #0x0a	; 10
__xinit__g_pass_max_height:
	.db #0x07	; 7
__xinit__g_VSynch:
	.db #0x00	; 0
	.area _CABS (ABS)
