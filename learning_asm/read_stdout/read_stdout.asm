global _start:

section .bss
	num resb 5		; unitialized data or variable

section .data
	userMsg db 'Please enter Number: '
	lenUserMsg equ $ - userMsg
	dispMsg db 'You have entered: '
	lenDispMsg equ $ - dispMsg

section .text
_start:
	; write to stdout
	mov eax, 0x04
	mov ebx, 1
	mov ecx, userMsg
	mov edx, lenUserMsg
	int 0x80

	; read from stdout
	mov eax, 0x03	; sys_read call
	mov ebx, 2	; read form keyboard output
	mov ecx, num	; buffer to store read data
	mov edx, 5	; 5 bytes (numeric, 1 for sign) of that information.
	int 0x80

	; write to stdout
	mov eax, 0x04
	mov ebx, 1
	mov ecx, dispMsg
	mov edx, lenDispMsg
	int 0x80

	; write to stdout
	mov  eax, 0x04
	mov ebx, 1
	mov ecx, num
	mov edx, 5
	int 0x80

	; graceful exit
	mov eax, 0x01
	mov ebx, 0
	int 0x80

