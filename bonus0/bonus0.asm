# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    bonus0.asm                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 12:05:03 by fcadet            #+#    #+#              #
#    Updated: 2021/04/22 12:05:05 by fcadet           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

Dump of assembler code for function p:
0x080484b4 <+0>:     push   %ebp
0x080484b5 <+1>:     mov    %esp,%ebp

0x080484b7 <+3>:     sub    $0x1018,%esp					< 4120 bytes on stack

0x080484bd <+9>:     mov    0xc(%ebp),%eax					< s2 in eax
0x080484c0 <+12>:    mov    %eax,(%esp)						< s2 as param for puts
0x080484c3 <+15>:    call   0x80483b0 <puts@plt>

0x080484c8 <+20>:    movl   $0x1000,0x8(%esp)				< 4096 as 3rd param for read
0x080484d0 <+28>:    lea    -0x1008(%ebp),%eax				< buff in eax
0x080484d6 <+34>:    mov    %eax,0x4(%esp)					< buff as 2nd param
0x080484da <+38>:    movl   $0x0,(%esp)						< 0 as 1st param
0x080484e1 <+45>:    call   0x8048380 <read@plt>

0x080484e6 <+50>:    movl   $0xa,0x4(%esp)					< '\n' as 2nd param for strchr
0x080484ee <+58>:    lea    -0x1008(%ebp),%eax				< buff in eax
0x080484f4 <+64>:    mov    %eax,(%esp)						< buff as 1st param
0x080484f7 <+67>:    call   0x80483d0 <strchr@plt>

0x080484fc <+72>:    movb   $0x0,(%eax)						< replace first '\n' by '\0'

0x080484ff <+75>:    lea    -0x1008(%ebp),%eax				< buff in eax
0x08048505 <+81>:    movl   $0x14,0x8(%esp)					< 20 as 3rd param for strncpy
0x0804850d <+89>:    mov    %eax,0x4(%esp)					< buff as 2nd param
0x08048511 <+93>:    mov    0x8(%ebp),%eax					< s1 in eax
0x08048514 <+96>:    mov    %eax,(%esp)						< s1 as 1st param
0x08048517 <+99>:    call   0x80483f0 <strncpy@plt>

0x0804851c <+104>:   leave
0x0804851d <+105>:   ret

Dump of assembler code for function pp:
0x0804851e <+0>:     push   %ebp
0x0804851f <+1>:     mov    %esp,%ebp

0x08048521 <+3>:     push   %edi							< save registers
0x08048522 <+4>:     push   %ebx

0x08048523 <+5>:     sub    $0x50,%esp						< 80 bytes on stack

0x08048526 <+8>:     movl   $0x80486a0,0x4(%esp)			< " - " as 2nd parameter of p
0x0804852e <+16>:    lea    -0x30(%ebp),%eax				< s2 in eax
0x08048531 <+19>:    mov    %eax,(%esp)						< eax as 1st parameter
0x08048534 <+22>:    call   0x80484b4 <p>

0x08048539 <+27>:    movl   $0x80486a0,0x4(%esp)			< " - " as 2nd parameter of p
0x08048541 <+35>:    lea    -0x1c(%ebp),%eax				< s1 in eax
0x08048544 <+38>:    mov    %eax,(%esp)						< eax as 1st parameter
0x08048547 <+41>:    call   0x80484b4 <p>

0x0804854c <+46>:    lea    -0x30(%ebp),%eax				< s2 in eax
0x0804854f <+49>:    mov    %eax,0x4(%esp)					< eax as 2nd parameter of strcpy
0x08048553 <+53>:    mov    0x8(%ebp),%eax					< str in eax
0x08048556 <+56>:    mov    %eax,(%esp)						< str as 1st parameter
0x08048559 <+59>:    call   0x80483a0 <strcpy@plt>

0x0804855e <+64>:    mov    $0x80486a4,%ebx					< ' ' in ebx
0x08048563 <+69>:    mov    0x8(%ebp),%eax					< str in eax
0x08048566 <+72>:    movl   $0xffffffff,-0x3c(%ebp)			< -1 in local
0x0804856d <+79>:    mov    %eax,%edx						< str in edx
0x0804856f <+81>:    mov    $0x0,%eax	
0x08048574 <+86>:    mov    -0x3c(%ebp),%ecx				< -1 in count register
0x08048577 <+89>:    mov    %edx,%edi						< str in destination register
0x08048579 <+91>:    repnz scas %es:(%edi),%al				< loop on str until '\0'
0x0804857b <+93>:    mov    %ecx,%eax						< count in eax
0x0804857d <+95>:    not    %eax							< 2's complement to get positive value
0x0804857f <+97>:    sub    $0x1,%eax
0x08048582 <+100>:   add    0x8(%ebp),%eax					< end of str in eax
0x08048585 <+103>:   movzwl (%ebx),%edx						< ' ' in edx
0x08048588 <+106>:   mov    %dx,(%eax)						< ' ' at end of str

0x0804858b <+109>:   lea    -0x1c(%ebp),%eax				< s1 in eax
0x0804858e <+112>:   mov    %eax,0x4(%esp)					< eax as 2nd parameter of strcat
0x08048592 <+116>:   mov    0x8(%ebp),%eax					< str in eax
0x08048595 <+119>:   mov    %eax,(%esp)						< eax as 1st parameter
0x08048598 <+122>:   call   0x8048390 <strcat@plt>

0x0804859d <+127>:   add    $0x50,%esp						< free stack space

0x080485a0 <+130>:   pop    %ebx							< load saved registers
0x080485a1 <+131>:   pop    %edi

0x080485a2 <+132>:   pop    %ebp
0x080485a3 <+133>:   ret

Dump of assembler code for function main:
0x080485a4 <+0>:     push   %ebp
0x080485a5 <+1>:     mov    %esp,%ebp

0x080485a7 <+3>:     and    $0xfffffff0,%esp				< stack alignment

0x080485aa <+6>:     sub    $0x40,%esp						< 64 bytes on stack

0x080485ad <+9>:     lea    0x16(%esp),%eax					< str in eax
0x080485b1 <+13>:    mov    %eax,(%esp)						< eax as 1st parameter for pp
0x080485b4 <+16>:    call   0x804851e <pp>

0x080485b9 <+21>:    lea    0x16(%esp),%eax					< str in eax
0x080485bd <+25>:    mov    %eax,(%esp)						< eax as 1st parameter for puts
0x080485c0 <+28>:    call   0x80483b0 <puts@plt>

0x080485c5 <+33>:    mov    $0x0,%eax						< return 0
0x080485ca <+38>:    leave
0x080485cb <+39>:    ret
