global _start:

section .text:
_start:
	mov ebx, 42	; exit status is 42
	mov eax, 0x01	; sys_exit syscall
	jmp skip	; jump to the "skip" label
	mov ebx, 13	; set exit status to 13 now

; new label
skip:
	int 0x80	; perform syscall my gee

; it works LOl
; this is called an unconditional jump
