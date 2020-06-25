global _start:

section .text
_start:
	; writing the name 'Zara Ali'
	mov eax, 0x04
	mov ebx, 1
	mov ecx, name
	mov edx, 9
	int 0x80

	; write the name 'Nuha Ali'
	mov [name], dword 'Nuha'
	mov eax, 0x04
	mov ebx, 1
	mov ecx, name
	mov edx, 8
	int 0x80

	; exit
	mov eax, 0x01
	mov ebx, 0
	int 0x80	

section .data
	name db 'Zara Ali '
