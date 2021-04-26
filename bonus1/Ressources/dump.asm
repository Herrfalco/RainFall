Dump of assembler code for function main:
0x08048424 <+0>:     push   %ebp						< new stack frame
0x08048425 <+1>:     mov    %esp,%ebp					|

0x08048427 <+3>:     and    $0xfffffff0,%esp			< 16 bytes stack alignment

0x0804842a <+6>:     sub    $0x40,%esp					< 64 bytes for new frame

0x0804842d <+9>:     mov    0xc(%ebp),%eax				< argv[1] as parameter for atoi
0x08048430 <+12>:    add    $0x4,%eax					|
0x08048433 <+15>:    mov    (%eax),%eax					|
0x08048435 <+17>:    mov    %eax,(%esp)					|
0x08048438 <+20>:    call   0x8048360 <atoi@plt>		> atoi

0x0804843d <+25>:    mov    %eax,0x3c(%esp)				< atoi result in nb (4 bytes)

0x08048441 <+29>:    cmpl   $0x9,0x3c(%esp)				? nb > 9
0x08048446 <+34>:    jle    0x804844f <main+43>			{

0x08048448 <+36>:    mov    $0x1,%eax					< return 1
0x0804844d <+41>:    jmp    0x80484a3 <main+127>
														}
0x0804844f <+43>:    mov    0x3c(%esp),%eax				< nb * 4, argv[2] and str in registers
0x08048453 <+47>:    lea    0x0(,%eax,4),%ecx			|
0x0804845a <+54>:    mov    0xc(%ebp),%eax				|
0x0804845d <+57>:    add    $0x8,%eax					|
0x08048460 <+60>:    mov    (%eax),%eax					|
0x08048462 <+62>:    mov    %eax,%edx					|
0x08048464 <+64>:    lea    0x14(%esp),%eax				|
0x08048468 <+68>:    mov    %ecx,0x8(%esp)				< nb * 4 as 3rd parameter of memcpy
0x0804846c <+72>:    mov    %edx,0x4(%esp)				< argv[2] as 2nd parameter
0x08048470 <+76>:    mov    %eax,(%esp)					< str as 1st parameter
0x08048473 <+79>:    call   0x8048320 <memcpy@plt>		> memcpy

0x08048478 <+84>:    cmpl   $0x574f4c46,0x3c(%esp)		? nb == 0x574f4c46
0x08048480 <+92>:    jne    0x804849e <main+122>		{

0x08048482 <+94>:    movl   $0x0,0x8(%esp)				< NULL in 3rd parameter of execl
0x0804848a <+102>:   movl   $0x8048580,0x4(%esp)		< "sh" as 2nd parameter
0x08048492 <+110>:   movl   $0x8048583,(%esp)			< "/bin/sh" as 1st parameter
0x08048499 <+117>:   call   0x8048350 <execl@plt>		> execl
														}
0x0804849e <+122>:   mov    $0x0,%eax					< return 0
0x080484a3 <+127>:   leave								|
0x080484a4 <+128>:   ret								|
