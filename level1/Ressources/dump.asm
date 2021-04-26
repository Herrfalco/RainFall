Dump of assembler code for function run:
0x08048444 <+0>:	push   %ebp							< new stack frame
0x08048445 <+1>:	mov    %esp,%ebp					|

0x08048447 <+3>:	sub    $0x18,%esp					< 24 bytes for new frame

0x0804844a <+6>:	mov    0x80497c0,%eax				< stdout and "Good... Wait what?\n" in registers
0x0804844f <+11>:	mov    %eax,%edx					|
0x08048451 <+13>:	mov    $0x8048570,%eax				|
0x08048456 <+18>:	mov    %edx,0xc(%esp)				< stdout as 4th parameter for fwrite
0x0804845a <+22>:	movl   $0x13,0x8(%esp)				< 19 as 3rd parameter
0x08048462 <+30>:	movl   $0x1,0x4(%esp)				< 1 as 2nd parameter
0x0804846a <+38>:	mov    %eax,(%esp)					< "Good... Wait what?\n" as 1st parameter
0x0804846d <+41>:	call   0x8048350 <fwrite@plt>		> fwrite

0x08048472 <+46>:	movl   $0x8048584,(%esp)			< "/bin/sh" as parameter for system
0x08048479 <+53>:	call   0x8048360 <system@plt>		> system

0x0804847e <+58>:	leave								< return from run
0x0804847f <+59>:	ret									|

Dump of assembler code for function main:
0x08048480 <+0>:	push   %ebp							< new stack frame
0x08048481 <+1>:	mov    %esp,%ebp					|

0x08048483 <+3>:	and    $0xfffffff0,%esp				< stack 16 bytes alignment

0x08048486 <+6>:	sub    $0x50,%esp					< 80 bytes for new frame

0x08048489 <+9>:	lea    0x10(%esp),%eax				< str (64 bytes) as parameter for gets
0x0804848d <+13>:	mov    %eax,(%esp)					|
0x08048490 <+16>:	call   0x8048340 <gets@plt>			> gets

0x08048495 <+21>:	leave								< return 0 (or gets result)
0x08048496 <+22>:	ret									|
