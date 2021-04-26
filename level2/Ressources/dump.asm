Dump of assembler code for function p:
0x080484d4 <+0>:	push   %ebp								< new stack frame
0x080484d5 <+1>:	mov    %esp,%ebp						|

0x080484d7 <+3>:	sub    $0x68,%esp						< 104 bytes for new frame

0x080484da <+6>:	mov    0x8049860,%eax					< stdout as parameter for fflush
0x080484df <+11>:	mov    %eax,(%esp)						|
0x080484e2 <+14>:	call   0x80483b0 <fflush@plt>			> fflush

0x080484e7 <+19>:	lea    -0x4c(%ebp),%eax					< str (64 bytes) as parameter for gets
0x080484ea <+22>:	mov    %eax,(%esp)						|
0x080484ed <+25>:	call   0x80483c0 <gets@plt>				> gets

0x080484f2 <+30>:	mov    0x4(%ebp),%eax					< p return address in ptr (12 bytes or 3 * 4 bytes)
0x080484f5 <+33>:	mov    %eax,-0xc(%ebp)					|

0x080484f8 <+36>:	mov    -0xc(%ebp),%eax					? ptr[0] & 0xb00000000 == 0xb00000000
0x080484fb <+39>:	and    $0xb0000000,%eax					|
0x08048500 <+44>:	cmp    $0xb0000000,%eax					|
0x08048505 <+49>:	jne    0x8048527 <p+83>					{

0x08048507 <+51>:	mov    $0x8048620,%eax					< "(%p)\n" and ptr in registers
0x0804850c <+56>:	mov    -0xc(%ebp),%edx					|
0x0804850f <+59>:	mov    %edx,0x4(%esp)					< ptr as 2nd parameter for printf
0x08048513 <+63>:	mov    %eax,(%esp)						< "(%p)\n" as 1st parameter
0x08048516 <+66>:	call   0x80483a0 <printf@plt>			> printf

0x0804851b <+71>:	movl   $0x1,(%esp)						< 1 as parameter for exit
0x08048522 <+78>:	call   0x80483d0 <_exit@plt>			> exit
															}
0x08048527 <+83>:	lea    -0x4c(%ebp),%eax					< str as parameter for puts
0x0804852a <+86>:	mov    %eax,(%esp)						|
0x0804852d <+89>:	call   0x80483f0 <puts@plt>				> puts

0x08048532 <+94>:	lea    -0x4c(%ebp),%eax					< str as parameter for strdup
0x08048535 <+97>:	mov    %eax,(%esp)						|
0x08048538 <+100>:	call   0x80483e0 <strdup@plt>			> strdup

0x0804853d <+105>:	leave									< return strdup result (or not)
0x0804853e <+106>:	ret										|

Dump of assembler code for function main:
0x0804853f <+0>:	push   %ebp								< new stack frame
0x08048540 <+1>:	mov    %esp,%ebp						|

0x08048542 <+3>:	and    $0xfffffff0,%esp					< stack 16 bytes alignment

0x08048545 <+6>:	call   0x80484d4 <p>					> p

0x0804854a <+11>:	leave									< return 0 (or p return)
0x0804854b <+12>:	ret										|
