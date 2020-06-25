global _start:

section .data:
	addr db "yellow"
	len equ $ - addr

section .text:
_start:
	mov [addr], byte 'H'	; we are moving the byte rep of "H" into the start of the addr memory location
	mov [addr+5], byte '!'	; we are now moving the byte rep of "!" to 5 steps from the start of mem loc of addr
	mov eax, 0x04		; sys_write call
	mov ebx, 1		; stdout file descriptor
	mov ecx, addr		; bytes to write
	mov edx, len		; number of bytes to write
	int 0x80
	mov eax, 0x01		; sys_exit call
	mov ebx, 0		; exit status
	int 0x80
