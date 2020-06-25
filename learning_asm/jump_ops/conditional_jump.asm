global _start:

_start:		; this is like the main function or something
	mov ecx, 99
	mov ebx, 42
	mov eax, 0x01
	cmp ecx, 100	; compare ecx to 100
	jl skip		; jump if ecx is less than 100
	mov ebx, 13	; this line does not execute

skip:
	int 0x80

; this is called a conditional jump
; you can see 
