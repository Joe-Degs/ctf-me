global _start:

section .data
	msg db "Hello, World!", 0x0a	; define the message
	len equ $ - msg			; length of message by subtraction start position of msg in memory from the end.

section .text
_start:
	mov eax, 0x04	; sys-write syscall
	mov ebx, 1	; stdout file descritptor
	mov ecx, msg	; bytes to write
	mov edx, len	; len of bytes to write
	int 0x80	; perform syscall

	; exit program gracefully

	mov eax, 0x01	; sys_exit syscall
	mov ebx, 0x00	; all good exit status LOL!
	int 0x80	; perform another syscall
