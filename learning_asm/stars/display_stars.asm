global _start

section .text	
_start:
	mov edx, len 	; message bytes length
	mov ecx, msg	; message bytes to write
	mov ebx, 1	; file descritptor (stdout)
	mov eax, 0x04	; system call number (sys_write)
	int 0x80	; call kernel

	mov edx, 9	;new message to write
	mov ecx, s2	; message bytes
	mov ebx, 1	; fd (stdout)
	mov eax, 0x04	; sys_write hex rep
	int 0x80 	; call kernel

	; graceful mic dropping
	mov eax, 1	; sys_exit call hex rep
	mov ebx, 0	; done succefully rep
	int 0x80

section .data
	msg db 'Displaying 9 stars', 0x0a	; the message
	len equ $ - msg				; length of message
	s2 times 9 db '*'
