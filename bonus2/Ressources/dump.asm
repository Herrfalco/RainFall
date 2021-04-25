# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    dump.asm                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/25 22:41:54 by fcadet            #+#    #+#              #
#    Updated: 2021/04/25 22:42:05 by fcadet           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

Dump of assembler code for function greetuser:
0x08048484 <+0>:     push   %ebp								< new stack frame
0x08048485 <+1>:     mov    %esp,%ebp							|

0x08048487 <+3>:     sub    $0x58,%esp							< 88 bytes on stack

0x0804848a <+6>:     mov    0x8049988,%eax						? language == 1
0x0804848f <+11>:    cmp    $0x1,%eax							|
0x08048492 <+14>:    je     0x80484ba <greetuser+54>			{

-----------------------------------------------------------
0x080484ba <+54>:    mov    $0x8048717,%edx						< copy "Hyvää päivää " (19 bytes with '\0') into s (72 bytes)
0x080484bf <+59>:    lea    -0x48(%ebp),%eax					|
0x080484c2 <+62>:    mov    (%edx),%ecx							|
0x080484c4 <+64>:    mov    %ecx,(%eax)							|
0x080484c6 <+66>:    mov    0x4(%edx),%ecx						|
0x080484c9 <+69>:    mov    %ecx,0x4(%eax)						|
0x080484cc <+72>:    mov    0x8(%edx),%ecx						|
0x080484cf <+75>:    mov    %ecx,0x8(%eax)						|
0x080484d2 <+78>:    mov    0xc(%edx),%ecx						|
0x080484d5 <+81>:    mov    %ecx,0xc(%eax)						|
0x080484d8 <+84>:    movzwl 0x10(%edx),%ecx						|
0x080484dc <+88>:    mov    %cx,0x10(%eax)						|
0x080484e0 <+92>:    movzbl 0x12(%edx),%edx						|
0x080484e4 <+96>:    mov    %dl,0x12(%eax)						|
0x080484e7 <+99>:    jmp    0x804850a <greetuser+134>			}
-----------------------------------------------------------

0x08048494 <+16>:    cmp    $0x2,%eax							? else language == 2
0x08048497 <+19>:    je     0x80484e9 <greetuser+101>			{

-----------------------------------------------------------
0x080484e9 <+101>:   mov    $0x804872a,%edx						< copy "Goedemiddag! " (14 bytes with '\0') into s
0x080484ee <+106>:   lea    -0x48(%ebp),%eax					|
0x080484f1 <+109>:   mov    (%edx),%ecx							|
0x080484f3 <+111>:   mov    %ecx,(%eax)							|
0x080484f5 <+113>:   mov    0x4(%edx),%ecx						|
0x080484f8 <+116>:   mov    %ecx,0x4(%eax)						|
0x080484fb <+119>:   mov    0x8(%edx),%ecx						|
0x080484fe <+122>:   mov    %ecx,0x8(%eax)						|
0x08048501 <+125>:   movzwl 0xc(%edx),%edx						|
0x08048505 <+129>:   mov    %dx,0xc(%eax)						|
0x08048509 <+133>:   nop										}
-----------------------------------------------------------

0x08048499 <+21>:    test   %eax,%eax							? else language == 0
0x0804849b <+23>:    jne    0x804850a <greetuser+134>			{

0x0804849d <+25>:    mov    $0x8048710,%edx						< copy "Hello " (7 bytes with '\0') into s
0x080484a2 <+30>:    lea    -0x48(%ebp),%eax					|
0x080484a5 <+33>:    mov    (%edx),%ecx							|
0x080484a7 <+35>:    mov    %ecx,(%eax)							|
0x080484a9 <+37>:    movzwl 0x4(%edx),%ecx						|
0x080484ad <+41>:    mov    %cx,0x4(%eax)						|
0x080484b1 <+45>:    movzbl 0x6(%edx),%edx						|
0x080484b5 <+49>:    mov    %dl,0x6(%eax)						|
0x080484b8 <+52>:    jmp    0x804850a <greetuser+134>			}

0x0804850a <+134>:   lea    0x8(%ebp),%eax						< str as 2nd parameter of strcat
0x0804850d <+137>:   mov    %eax,0x4(%esp)						|
0x08048511 <+141>:   lea    -0x48(%ebp),%eax					< s as 1st parameter
0x08048514 <+144>:   mov    %eax,(%esp)							|
0x08048517 <+147>:   call   0x8048370 <strcat@plt>				> strcat

0x0804851c <+152>:   lea    -0x48(%ebp),%eax					< s as parameter of puts
0x0804851f <+155>:   mov    %eax,(%esp)							|
0x08048522 <+158>:   call   0x8048390 <puts@plt>				> puts

0x08048527 <+163>:   leave										< return from function greetuser
0x08048528 <+164>:   ret										|

Dump of assembler code for function main:
0x08048529 <+0>:     push   %ebp								< new stack frame
0x0804852a <+1>:     mov    %esp,%ebp							|

0x0804852c <+3>:     push   %edi								< save some registers
0x0804852d <+4>:     push   %esi								|
0x0804852e <+5>:     push   %ebx								|

0x0804852f <+6>:     and    $0xfffffff0,%esp					< 16 bytes stack alignment

0x08048532 <+9>:     sub    $0xa0,%esp							< 160 bytes for new frame

0x08048538 <+15>:    cmpl   $0x3,0x8(%ebp)						? argc != 3
0x0804853c <+19>:    je     0x8048548 <main+31>					{

0x0804853e <+21>:    mov    $0x1,%eax							< return 1
0x08048543 <+26>:    jmp    0x8048630 <main+263>
																}
0x08048548 <+31>:    lea    0x50(%esp),%ebx						< fill str (76 bytes) with '\0'
0x0804854c <+35>:    mov    $0x0,%eax							|
0x08048551 <+40>:    mov    $0x13,%edx							|
0x08048556 <+45>:    mov    %ebx,%edi							|
0x08048558 <+47>:    mov    %edx,%ecx							|
0x0804855a <+49>:    rep stos %eax,%es:(%edi)					|

0x0804855c <+51>:    mov    0xc(%ebp),%eax						< argv[1] in eax
0x0804855f <+54>:    add    $0x4,%eax							|
0x08048562 <+57>:    mov    (%eax),%eax							|
0x08048564 <+59>:    movl   $0x28,0x8(%esp)						< 40 as 3rd parameter of strncpy
0x0804856c <+67>:    mov    %eax,0x4(%esp)						< argv[1] as 2nd parameter
0x08048570 <+71>:    lea    0x50(%esp),%eax						< str as 1st parameter
0x08048574 <+75>:    mov    %eax,(%esp)							|
0x08048577 <+78>:    call   0x80483c0 <strncpy@plt>				> strncpy

0x0804857c <+83>:    mov    0xc(%ebp),%eax						< argv[2] in eax
0x0804857f <+86>:    add    $0x8,%eax							|
0x08048582 <+89>:    mov    (%eax),%eax							|
0x08048584 <+91>:    movl   $0x20,0x8(%esp)						< 32 as 3rd parameter of strncpy
0x0804858c <+99>:    mov    %eax,0x4(%esp)						< argv[2] as 2nd parameter
0x08048590 <+103>:   lea    0x50(%esp),%eax						< str + 40 as 1st parameter
0x08048594 <+107>:   add    $0x28,%eax							|
0x08048597 <+110>:   mov    %eax,(%esp)							|
0x0804859a <+113>:   call   0x80483c0 <strncpy@plt>				> strncpy

0x0804859f <+118>:   movl   $0x8048738,(%esp)					< "LANG" as parameter for getenv
0x080485a6 <+125>:   call   0x8048380 <getenv@plt>				> getenv

0x080485ab <+130>:   mov    %eax,0x9c(%esp)						< getenv result in env (4 bytes)

0x080485b2 <+137>:   cmpl   $0x0,0x9c(%esp)						? getenv result != 0
0x080485ba <+145>:   je     0x8048618 <main+239>				{

0x080485bc <+147>:   movl   $0x2,0x8(%esp)						< 2 as 3rd parameter for memcmp
0x080485c4 <+155>:   movl   $0x804873d,0x4(%esp)				< "fi" as 2nd parameter
0x080485cc <+163>:   mov    0x9c(%esp),%eax						< env as 1st parameter
0x080485d3 <+170>:   mov    %eax,(%esp)							|
0x080485d6 <+173>:   call   0x8048360 <memcmp@plt>				> memcmp

0x080485db <+178>:   test   %eax,%eax							? memcmp result == 0
0x080485dd <+180>:   jne    0x80485eb <main+194>				{

0x080485df <+182>:   movl   $0x1,0x8049988						< 1 in language
0x080485e9 <+192>:   jmp    0x8048618 <main+239>
																}
0x080485eb <+194>:   movl   $0x2,0x8(%esp)						< 2 as 3rd parameter for memcmp
0x080485f3 <+202>:   movl   $0x8048740,0x4(%esp)				< "nl" as 2nd parameter
0x080485fb <+210>:   mov    0x9c(%esp),%eax						< env as 1st parameter
0x08048602 <+217>:   mov    %eax,(%esp)							|
0x08048605 <+220>:   call   0x8048360 <memcmp@plt>				> memcmp

0x0804860a <+225>:   test   %eax,%eax							? memcmp result == 0
0x0804860c <+227>:   jne    0x8048618 <main+239>				{

0x0804860e <+229>:   movl   $0x2,0x8049988						< 2 in language
																}}
0x08048618 <+239>:   mov    %esp,%edx							< copy str into 1st parameter of greetuser
0x0804861a <+241>:   lea    0x50(%esp),%ebx						| but greetuser doesn't change str anyway
0x0804861e <+245>:   mov    $0x13,%eax							| so no need to copy
0x08048623 <+250>:   mov    %edx,%edi							|
0x08048625 <+252>:   mov    %ebx,%esi							|
0x08048627 <+254>:   mov    %eax,%ecx							|
0x08048629 <+256>:   rep movsl %ds:(%esi),%es:(%edi)			|
0x0804862b <+258>:   call   0x8048484 <greetuser>				> greetuser

0x08048630 <+263>:   lea    -0xc(%ebp),%esp						< free stack memory

0x08048633 <+266>:   pop    %ebx								< load saved registers
0x08048634 <+267>:   pop    %esi								|
0x08048635 <+268>:   pop    %edi								|

0x08048636 <+269>:   pop    %ebp								< return 0 (or greetuser result)
0x08048637 <+270>:   ret										|
