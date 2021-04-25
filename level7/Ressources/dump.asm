# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    dump.asm                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/25 22:37:38 by fcadet            #+#    #+#              #
#    Updated: 2021/04/25 22:37:46 by fcadet           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

Dump of assembler code for function m:
0x080484f4 <+0>:	push   %ebp								< new stack frame
0x080484f5 <+1>:	mov    %esp,%ebp						|

0x080484f7 <+3>:	sub    $0x18,%esp						< 24 bytes for new frame

0x080484fa <+6>:	movl   $0x0,(%esp)						< 0 as parameter for time
0x08048501 <+13>:	call   0x80483d0 <time@plt>				> time

0x08048506 <+18>:	mov    $0x80486e0,%edx					< "%s - %d\n" in edx
0x0804850b <+23>:	mov    %eax,0x8(%esp)					< time result as 3rd parameter for printf
0x0804850f <+27>:	movl   $0x8049960,0x4(%esp)				< c global var as 2nd parameter
0x08048517 <+35>:	mov    %edx,(%esp)						< "%s - %d\n" as 1st parameter
0x0804851a <+38>:	call   0x80483b0 <printf@plt>			> printf

0x0804851f <+43>:	leave									< return from function m
0x08048520 <+44>:	ret										|

Dump of assembler code for function main:
0x08048521 <+0>:	push   %ebp								< new stack frame
0x08048522 <+1>:	mov    %esp,%ebp						|

0x08048524 <+3>:	and    $0xfffffff0,%esp					< 16 bytes stack alignment

0x08048527 <+6>:	sub    $0x20,%esp						< 32 bytes for new frame

0x0804852a <+9>:	movl   $0x8,(%esp)						< 8 as parameter for malloc
0x08048531 <+16>:	call   0x80483f0 <malloc@plt>			> malloc

0x08048536 <+21>:	mov    %eax,0x1c(%esp)					< malloc result in b (4 bytes)

0x0804853a <+25>:	mov    0x1c(%esp),%eax					< 1 in b[0]
0x0804853e <+29>:	movl   $0x1,(%eax)						|

0x08048544 <+35>:	movl   $0x8,(%esp)						< 8 as parameter for malloc
0x0804854b <+42>:	call   0x80483f0 <malloc@plt>			> malloc

0x08048550 <+47>:	mov    %eax,%edx						< malloc result in b[1]
0x08048552 <+49>:	mov    0x1c(%esp),%eax					|
0x08048556 <+53>:	mov    %edx,0x4(%eax)					|

0x08048559 <+56>:	movl   $0x8,(%esp)						< 8 as parameter for malloc
0x08048560 <+63>:	call   0x80483f0 <malloc@plt>			> malloc

0x08048565 <+68>:	mov    %eax,0x18(%esp)					< malloc result in a (4 bytes)

0x08048569 <+72>:	mov    0x18(%esp),%eax					< 2 in a[0]
0x0804856d <+76>:	movl   $0x2,(%eax)						|

0x08048573 <+82>:	movl   $0x8,(%esp)						< 8 as parameter for malloc
0x0804857a <+89>:	call   0x80483f0 <malloc@plt>			|

0x0804857f <+94>:	mov    %eax,%edx						< malloc result in a[1]
0x08048581 <+96>:	mov    0x18(%esp),%eax					|
0x08048585 <+100>:	mov    %edx,0x4(%eax)					|

0x08048588 <+103>:	mov    0xc(%ebp),%eax					< argv[1] and b[1] in registers
0x0804858b <+106>:	add    $0x4,%eax						|
0x0804858e <+109>:	mov    (%eax),%eax						|
0x08048590 <+111>:	mov    %eax,%edx						|
0x08048592 <+113>:	mov    0x1c(%esp),%eax					|
0x08048596 <+117>:	mov    0x4(%eax),%eax					|
0x08048599 <+120>:	mov    %edx,0x4(%esp)					< argv[1] as 2nd parameter of strcpy
0x0804859d <+124>:	mov    %eax,(%esp)						< b[1] as 1st parameter
0x080485a0 <+127>:	call   0x80483e0 <strcpy@plt>			> strcpy

0x080485a5 <+132>:	mov    0xc(%ebp),%eax					< argv[2] and a[1] in registers
0x080485a8 <+135>:	add    $0x8,%eax						|
0x080485ab <+138>:	mov    (%eax),%eax						|
0x080485ad <+140>:	mov    %eax,%edx						|
0x080485af <+142>:	mov    0x18(%esp),%eax					|
0x080485b3 <+146>:	mov    0x4(%eax),%eax					|
0x080485b6 <+149>:	mov    %edx,0x4(%esp)					< argv[2] as 2nd parameter of strcpy
0x080485ba <+153>:	mov    %eax,(%esp)						< a[1] as 1st parameter
0x080485bd <+156>:	call   0x80483e0 <strcpy@plt>			> strcpy

0x080485c2 <+161>:	mov    $0x80486e9,%edx					< "r" and "/home/user/level8/.pass" in registers
0x080485c7 <+166>:	mov    $0x80486eb,%eax					|
0x080485cc <+171>:	mov    %edx,0x4(%esp)					< "r" as 2nd parameter for fopen
0x080485d0 <+175>:	mov    %eax,(%esp)						< "/home/user/level8/.pass" as 1st parameter
0x080485d3 <+178>:	call   0x8048430 <fopen@plt>			> fopen

0x080485d8 <+183>:	mov    %eax,0x8(%esp)					< fopen result as 3rd parameter of fgets
0x080485dc <+187>:	movl   $0x44,0x4(%esp)					< 68 as 2nd parameter
0x080485e4 <+195>:	movl   $0x8049960,(%esp)				< c as 1st parameter
0x080485eb <+202>:	call   0x80483c0 <fgets@plt>			> fgets

0x080485f0 <+207>:	movl   $0x8048703,(%esp)				< "~~" as parameter of puts
0x080485f7 <+214>:	call   0x8048400 <puts@plt>				> puts

0x080485fc <+219>:	mov    $0x0,%eax						< return 0
0x08048601 <+224>:	leave									|
0x08048602 <+225>:	ret										|
