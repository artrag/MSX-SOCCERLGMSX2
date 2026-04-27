
;./soccerlg.c:216: u16 CallFnc_U16_P3(u8 segment, u16 (*func)(u8, i8, i8), u8 p1, i8 p2, i8 p3) {
;	---------------------------------
; Function CallFnc_U16_P3
; ---------------------------------
; de  	->*func
; a   	->segment
;(sp-2) ->p1
;(sp-3) ->p2
;(sp-4) ->p3
; (sp)	->return


	ld	hl,#6
	add	hl,sp
	dec	sp
	
	ld	c, a
	ld	a, (#(_g_Bank0Segment + 6) + 0)					; u8 _old = GET_BANK_SEGMENT(3);
	ex  af,af
	xor	a,a
	ld	(#0x7ffe),a
	ld	a, c											;	SET_BANK_SEGMENT(3, segment);
	ld	((_g_Bank0Segment + 6)), a						;   g_Bank0Segment[b] = s;
	ld	(#0xb000), a

	ld	a, (hl)										; _res = func(p1, p2, p3);
	push	af
	inc	sp
	dec		hl
	ld	c, (hl)
	dec		hl
	ld	a, (hl)
	ld	l,c
	push	de
	pop		iy
	call	___sdcc_call_iy

	xor	a,a
	ld	(#0x7ffe),a
	ex  af,af
	ld	((_g_Bank0Segment + 6)), a						; g_Bank0Segment[b] = s;
	ld	(#0xb000), a

	inc	sp

	pop	hl
	pop	af
	inc	sp
	jp	(hl)