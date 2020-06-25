# x86 Assembly Language Programming `notes by themeihide :(`

Assembly programming is not very hard as i percieved it to be, atleast not the basics. LOL!
Using lots of new syntax and commands. i'll keep track of all the things i'm doing and all the commands here so i can reference them later. :(


I've already written my hello world program which i understand. Its a lot of work but some thing are still not clear.
Like why do we keep track of the length of the string and why do I need to assign it to the `edx` register.
I watched the video by John Hammond that used some cool linux tricks to find the man pages for some system calls and their hexadecimal representations. And also the man pages for the C programming language for linux developers is a great guide to know how the system call functions work.

So the most important thing is to know the registers and how to use them.
```
eax  ; represents the general purpose register
	; if i understand it quite well, for you to perform a system function, you need to specify that function's
	; hex representation in the eax register before doing your kernel call which is `int 0x80`

ebx 	; represents the return value of all operations or something like that, i dont fully understand.
	; it is also like the first argument to every syscall function
	; so when you call sys_exit, the function is passed the value in the ebx

ecx, edx	; its like this ones are the other arguments you pass to a syscall functions inorder or something.

For example if you need to call a write function, that needs three arguments, you pass the first argument to ebx, then ecx, then the last argument is edx. then if you do a kernel call it calls the function specified in the eax which is the write function and passes it the ebx, ecx, edx in order implicitly.
```


Then there was jumps `jmp`.
Theres conditional and unconditional jumps.
So the unconditional jump is the `jmp`

Then conditional jumps are
```
je A, B 	; jump if equal
jne A, B 	; jump if not equal
jg A, B 	; jump if greater
jge A, B 	; jump if greater than or equal
jl A, B 	; jump if less
jle A, B 	; jump if less than or equal

```
Implemented my first loop in assembly. Difficult to reason about IMO. Like keeping track of all the registers and all that is alot of work.
But it was fun. I am about to start writing functions and doing stack operations.
What is an instruction pointer?????!!!

Hmmm the going is not getting any easier at all LOL!
I just want to be able to understand this so i can do this stupid buffer overflow merhn.
But what the fuck is all this.
After this i'll be learning privesc techniques in linux and windows Ohh my Lord!
What the fuck have i entered like this.

By the way i was doing some changing data types at runtime and it was not doing at all.
I dont know what exactly is wrong but it was giving a segmentation fault meaning i am writing more bytes to an address,
which can't take more than i am giving it but i feel like it should be able to take it.

So some basic data types in asm are 
```
section .data

 ; db is 1 byte
msg db "string"
msg db 0xff
msg db 100

 ; dw is 2 bytes
msg dw 0x1234
msg dw 1000

 ; dd is 4 bytes
msg dd 0x12345678
msg dd 100000

```

