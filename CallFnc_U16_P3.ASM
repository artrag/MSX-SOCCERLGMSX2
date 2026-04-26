
;./soccerlg.c:216: u16 CallFnc_U16_P3(u8 segment, u16 (*func)(u8, i8, i8), u8 p1, i8 p2, i8 p3) {
;	---------------------------------
; Function CallFnc_U16_P3
; ---------------------------------
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	
	ld	c, a
	ld	a, (#(_g_Bank0Segment + 6) + 0)					; u8 _old = GET_BANK_SEGMENT(3);
	ld	-1 (ix), a
	xor	a,a
	ld	(#0x7ffe),a
	ld	a, c											;	SET_BANK_SEGMENT(3, segment);
	ld	((_g_Bank0Segment + 6)), a						;   g_Bank0Segment[b] = s;
	ld	(#0xb000), a

; _res = func(p1, p2, p3);
	ld	a, 6 (ix)
	push	af
	inc	sp
	ld	l, 5 (ix)
	ld	a, 4 (ix)
	push	de
	pop		iy
	call	mysdcc_call_iy

	xor	a,a
	ld	(#0x7ffe),a
	ld	a, -1 (ix)
	ld	((_g_Bank0Segment + 6)), a						; g_Bank0Segment[b] = s;
	ld	(#0xb000), a

	inc	sp
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
ysdcc_call_iy:	
	jp	(iy)	