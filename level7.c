/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level7.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/16 00:24:36 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/16 01:49:29 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

//(gdb) disas m
//Dump of assembler code for function m:
//   0x080484f4 <+0>:	push   %ebp
//   0x080484f5 <+1>:	mov    %esp,%ebp
//   0x080484f7 <+3>:	sub    $0x18,%esp
//   
//   0x080484fa <+6>:	movl   $0x0,(%esp)
//   0x08048501 <+13>:	call   0x80483d0 <time@plt>
//
//   0x08048506 <+18>:	mov    $0x80486e0,%edx
//   0x0804850b <+23>:	mov    %eax,0x8(%esp)
//   0x0804850f <+27>:	movl   $0x8049960,0x4(%esp)
//   0x08048517 <+35>:	mov    %edx,(%esp)
//   0x0804851a <+38>:	call   0x80483b0 <printf@plt>
//
//   0x0804851f <+43>:	leave  
//   0x08048520 <+44>:	ret    
//End of assembler dump.
//(gdb) disas main
//Dump of assembler code for function main:
//   0x08048521 <+0>:	push   %ebp
//   0x08048522 <+1>:	mov    %esp,%ebp
//   0x08048524 <+3>:	and    $0xfffffff0,%esp
//
//   0x08048527 <+6>:	sub    $0x20,%esp
//
//   0x0804852a <+9>:	movl   $0x8,(%esp) < malloc size 8 octets
//   0x08048531 <+16>:	call   0x80483f0 <malloc@plt> < .
//
//   0x08048536 <+21>:	mov    %eax,0x1c(%esp) < first var stores first malloc result
//   0x0804853a <+25>:	mov    0x1c(%esp),%eax < memory space address in eax
//   0x0804853e <+29>:	movl   $0x1,(%eax) < value 1 stored into first allocated memory
//
//   0x08048544 <+35>:	movl   $0x8,(%esp) < malloc size 8 octets
//   0x0804854b <+42>:	call   0x80483f0 <malloc@plt> < .
//
//   0x08048550 <+47>:	mov    %eax,%edx < second memory space address in edx
//   0x08048552 <+49>:	mov    0x1c(%esp),%eax < first memory space in eax
//   0x08048556 <+53>:	mov    %edx,0x4(%eax) < stores second memory space into second half of first memory space
//
//   0x08048559 <+56>:	movl   $0x8,(%esp) < malloc size 8 octets
//   0x08048560 <+63>:	call   0x80483f0 <malloc@plt> < .
//
//   0x08048565 <+68>:	mov    %eax,0x18(%esp) < second var stores second third malloc
//   0x08048569 <+72>:	mov    0x18(%esp),%eax < memory space address in eax
//   0x0804856d <+76>:	movl   $0x2,(%eax) < value 2 stored into third allocated memory
//
//   0x08048573 <+82>:	movl   $0x8,(%esp) < malloc size 8 octets
//   0x0804857a <+89>:	call   0x80483f0 <malloc@plt> < .
//
//   0x0804857f <+94>:	mov    %eax,%edx < fourth memory space address in edx
//   0x08048581 <+96>:	mov    0x18(%esp),%eax < third memory space in eax
//   0x08048585 <+100>:	mov    %edx,0x4(%eax) < stores fourth memory space into second half of third allocated memory
//
//   0x08048588 <+103>:	mov    0xc(%ebp),%eax < access argv
//   0x0804858b <+106>:	add    $0x4,%eax < argv + 1
//   0x0804858e <+109>:	mov    (%eax),%eax <  argv[1]
//   0x08048590 <+111>:	mov    %eax,%edx < argv[1] in edx
//   0x08048592 <+113>:	mov    0x1c(%esp),%eax < first var in eax
//   0x08048596 <+117>:	mov    0x4(%eax),%eax < second half of first var in eax
//   0x08048599 <+120>:	mov    %edx,0x4(%esp) < argv[1] as second parameter
//   0x0804859d <+124>:	mov    %eax,(%esp) < second half of first var as first parameter
//   0x080485a0 <+127>:	call   0x80483e0 <strcpy@plt>
//
//   0x080485a5 <+132>:	mov    0xc(%ebp),%eax < access argv
//   0x080485a8 <+135>:	add    $0x8,%eax < argv + 2
//   0x080485ab <+138>:	mov    (%eax),%eax <  argv[2]
//   0x080485ad <+140>:	mov    %eax,%edx < argv[2] in edx
//   0x080485af <+142>:	mov    0x18(%esp),%eax < second var in eax
//   0x080485b3 <+146>:	mov    0x4(%eax),%eax < second half of second var in eax
//   0x080485b6 <+149>:	mov    %edx,0x4(%esp) < argv[2] as second parameter
//   0x080485ba <+153>:	mov    %eax,(%esp) < second half of second var as first parameter
//   0x080485bd <+156>:	call   0x80483e0 <strcpy@plt>
//
//   0x080485c2 <+161>:	mov    $0x80486e9,%edx
//   0x080485c7 <+166>:	mov    $0x80486eb,%eax
//   0x080485cc <+171>:	mov    %edx,0x4(%esp)
//   0x080485d0 <+175>:	mov    %eax,(%esp)
//   0x080485d3 <+178>:	call   0x8048430 <fopen@plt>
//
//   0x080485d8 <+183>:	mov    %eax,0x8(%esp)
//   0x080485dc <+187>:	movl   $0x44,0x4(%esp)
//   0x080485e4 <+195>:	movl   $0x8049960,(%esp)
//   0x080485eb <+202>:	call   0x80483c0 <fgets@plt>
//
//   0x080485f0 <+207>:	movl   $0x8048703,(%esp)
//   0x080485f7 <+214>:	call   0x8048400 <puts@plt>
//
//   0x080485fc <+219>:	mov    $0x0,%eax
//   0x08048601 <+224>:	leave  
//   0x08048602 <+225>:	ret    
//End of assembler dump.

#include <time.h>
#include <stdio.h>
#include <string.h>

char	*c;

void	m(void) {
	printf("%s - %d\n", c, (int)time(NULL));
}

int		main(int argc, char **argv) {
	unsigned int	*a;
	unsigned int	*b;

	a = malloc(8);
	a[0] = 1;
	a[1] = (unsigned int)malloc(8);

	b = malloc(8);
	b[0] = 2;
	b[1] = (unsigned int)malloc(8);

	strcpy((char *)a[1], argv[1]);
	strcpy((char *)b[1], argv[2]);

	return (0);
}
