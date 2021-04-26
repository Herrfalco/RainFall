Dump of assembler code for function p:
0x08048444 <+0>:	push   %ebp								< new stack frame
0x08048445 <+1>:	mov    %esp,%ebp						|

0x08048447 <+3>:	sub    $0x18,%esp						< 24 bytes for new frame

0x0804844a <+6>:	mov    0x8(%ebp),%eax					< str (p 1st parameter) as parameter for printf
0x0804844d <+9>:	mov    %eax,(%esp)						|
0x08048450 <+12>:	call   0x8048340 <printf@plt>			> printf

0x08048455 <+17>:	leave									> return from p
0x08048456 <+18>:	ret										|

Dump of assembler code for function n:
0x08048457 <+0>:	push   %ebp								< new stack frame
0x08048458 <+1>:	mov    %esp,%ebp						|

0x0804845a <+3>:	sub    $0x218,%esp						< 536 bytes for new frame

0x08048460 <+9>:	mov    0x8049804,%eax					< stdin as 3rd parameter of fgets
0x08048465 <+14>:	mov    %eax,0x8(%esp)					|
0x08048469 <+18>:	movl   $0x200,0x4(%esp)					< 512 as 2nd parameter
0x08048471 <+26>:	lea    -0x208(%ebp),%eax				< str (520 bytes) as 1st parameter
0x08048477 <+32>:	mov    %eax,(%esp)						|
0x0804847a <+35>:	call   0x8048350 <fgets@plt>			> fgets

0x0804847f <+40>:	lea    -0x208(%ebp),%eax				< str as parameter for p
0x08048485 <+46>:	mov    %eax,(%esp)						|
0x08048488 <+49>:	call   0x8048444 <p>					> p

0x0804848d <+54>:	mov    0x8049810,%eax					? 16930116 == m
0x08048492 <+59>:	cmp    $0x1025544,%eax					|
0x08048497 <+64>:	jne    0x80484a5 <n+78>					{

0x08048499 <+66>:	movl   $0x8048590,(%esp)				< "/bin/cat /home/user/level5/.pass" as parameter for system
0x080484a0 <+73>:	call   0x8048360 <system@plt>			> system
															}
0x080484a5 <+78>:	leave									< return from n
0x080484a6 <+79>:	ret										|

Dump of assembler code for function main:
0x080484a7 <+0>:	push   %ebp								< new stack frame
0x080484a8 <+1>:	mov    %esp,%ebp						|

0x080484aa <+3>:	and    $0xfffffff0,%esp					< 16 bytes stack alignment

0x080484ad <+6>:	call   0x8048457 <n>					> n

0x080484b2 <+11>:	leave									< return 0 (or call result)
0x080484b3 <+12>:	ret										|
