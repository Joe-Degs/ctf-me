global _start

section .text
_start:
	mov ebx, 1	; start ebx at 1
	mov ecx, 4	; number of iterations

label: 			; start of the loop
	add ebx, ebx	; ebx += ebx
	dec ecx		; ecx -= 1 
	cmp ecx, 0 	; compare ecx to 0
	jg label	; jump to label if greater
	mov eax, 0x01	; sys_exit call
	int 0x80 	; perform the system call
