# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    dump.asm                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/25 22:35:53 by fcadet            #+#    #+#              #
#    Updated: 2021/04/25 22:36:04 by fcadet           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

Dump of assembler code for function o:
0x080484a4 <+0>:	push   %ebp							< new stack frame
0x080484a5 <+1>:	mov    %esp,%ebp					|

0x080484a7 <+3>:	sub    $0x18,%esp					< 24 bytes for new frame

0x080484aa <+6>:	movl   $0x80485f0,(%esp)			< "/bin/sh" as parameter for system
0x080484b1 <+13>:	call   0x80483b0 <system@plt>		> system

0x080484b6 <+18>:	movl   $0x1,(%esp)					< 1 as parameter for exit
0x080484bd <+25>:	call   0x8048390 <_exit@plt>		> exit

Dump of assembler code for function n:
0x080484c2 <+0>:	push   %ebp							< new stack frame
0x080484c3 <+1>:	mov    %esp,%ebp					|

0x080484c5 <+3>:	sub    $0x218,%esp					< 536 bytes for new frame

0x080484cb <+9>:	mov    0x8049848,%eax				< stdin as 3rd parameter for fgets
0x080484d0 <+14>:	mov    %eax,0x8(%esp)				|
0x080484d4 <+18>:	movl   $0x200,0x4(%esp)				< 512 as 2nd parameter
0x080484dc <+26>:	lea    -0x208(%ebp),%eax			< str (520 bytes) as 1st parameter
0x080484e2 <+32>:	mov    %eax,(%esp)					|
0x080484e5 <+35>:	call   0x80483a0 <fgets@plt>		> fgets

0x080484ea <+40>:	lea    -0x208(%ebp),%eax			< str as parameter for printf
0x080484f0 <+46>:	mov    %eax,(%esp)					|
0x080484f3 <+49>:	call   0x8048380 <printf@plt>		> printf

0x080484f8 <+54>:	movl   $0x1,(%esp)					< 1 as parameter for exit
0x080484ff <+61>:	call   0x80483d0 <exit@plt>			> exit

Dump of assembler code for function main:
0x08048504 <+0>:	push   %ebp							< new stack frame
0x08048505 <+1>:	mov    %esp,%ebp					|

0x08048507 <+3>:	and    $0xfffffff0,%esp				< 16 bytes stack alignment

0x0804850a <+6>:	call   0x80484c2 <n>				> n

0x0804850f <+11>:	leave								< return 0 (or call result)
0x08048510 <+12>:	ret									|
