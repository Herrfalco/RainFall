/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level8.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/16 19:22:37 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/18 15:14:45 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

//Dump of assembler code for function main:
//   0x08048564 <+0>:	push   %ebp
//   0x08048565 <+1>:	mov    %esp,%ebp
//   0x08048567 <+3>:	push   %edi < save registers (esp = ebp - 4)
//   0x08048568 <+4>:	push   %esi < . (esp = ebp - 8)
//   0x08048569 <+5>:	and    $0xfffffff0,%esp < already aligned (do nothing)
//
//   0x0804856c <+8>:	sub    $0xa0,%esp < space for variables (esp = ebp - 168)
//   0x08048572 <+14>:	jmp    0x8048575 <main+17>
//   0x08048574 <+16>:	nop
//
//   0x08048575 <+17>:	mov    0x8049ab0,%ecx < global service
//   0x0804857b <+23>:	mov    0x8049aac,%edx < global auth
//   0x08048581 <+29>:	mov    $0x8048810,%eax < "%p, %p \n"
//   0x08048586 <+34>:	mov    %ecx,0x8(%esp) < ecx 3rd param
//   0x0804858a <+38>:	mov    %edx,0x4(%esp) < edx 2nd param
//   0x0804858e <+42>:	mov    %eax,(%esp) < eax 1st param
//   0x08048591 <+45>:	call   0x8048410 <printf@plt>
//   
//   0x08048596 <+50>:	mov    0x8049a80,%eax < stdin
//   0x0804859b <+55>:	mov    %eax,0x8(%esp) < eax 3rd param
//   0x0804859f <+59>:	movl   $0x80,0x4(%esp) < 128 2nd param
//   0x080485a7 <+67>:	lea    0x20(%esp),%eax < stack buffer (128 until variables start)
//   0x080485ab <+71>:	mov    %eax,(%esp) < as first param
//   0x080485ae <+74>:	call   0x8048440 <fgets@plt>
//
//   0x080485b3 <+79>:	test   %eax,%eax < while fgets result
//   0x080485b5 <+81>:	je     0x804872c <main+456> < {
//
//   0x080485bb <+87>:	lea    0x20(%esp),%eax < put stack buffer in eax
//   0x080485bf <+91>:	mov    %eax,%edx < then in edx
//   0x080485c1 <+93>:	mov    $0x8048819,%eax < "auth " in eax
//   0x080485c6 <+98>:	mov    $0x5,%ecx < counter set at 5 for comparing up to 5 bytes
//   0x080485cb <+103>:	mov    %edx,%esi < stack buffer in source register
//   0x080485cd <+105>:	mov    %eax,%edi < "auth " in destination register
//   
//   0x080485cf <+107>:	repz cmpsb %es:(%edi),%ds:(%esi) < compare stack buffer with "auth "
//   0x080485d1 <+109>:	seta   %dl < "auth " < stack buff
//   0x080485d4 <+112>:	setb   %al < "auth " > stack buff
//   0x080485d7 <+115>:	mov    %edx,%ecx < store dl in cl
//   0x080485d9 <+117>:	sub    %al,%cl < (-1, 0 or 1) in cl
//   0x080485db <+119>:	mov    %ecx,%eax < cl in eax
//   0x080485dd <+121>:	movsbl %al,%eax < truncate to al
//
//   0x080485e0 <+124>:	test   %eax,%eax < if "auth " == stack buffer
//   0x080485e2 <+126>:	jne    0x8048642 <main+222> < {
//
//   0x080485e4 <+128>:	movl   $0x4,(%esp) < size for malloc
//   0x080485ec <+135>:	call   0x8048470 <malloc@plt>
//   0x080485f0 <+142>:	mov    %eax,0x8049aac < malloc into auth global
//   0x080485f5 <+145>:	mov    0x8049aac,%eax < .
//   0x080485fa <+150>:	movl   $0x0,(%eax) < init empty string
//
//   0x08048600 <+156>:	lea    0x20(%esp),%eax < stack buffer address in eax
//   0x08048604 <+160>:	add    $0x5,%eax < buffer + 5
//   0x08048607 <+163>:	movl   $0xffffffff,0x1c(%esp) < second var (i) = UINT_MAX
//   0x0804860f <+171>:	mov    %eax,%edx < buffer + 5 in edx
//   0x08048611 <+173>:	mov    $0x0,%eax < 0 in eax
//   0x08048616 <+178>:	mov    0x1c(%esp),%ecx < UNINT_MAX in ecx
//   0x0804861a <+182>:	mov    %edx,%edi < buffer + 5 in edi
//
//   0x0804861c <+184>:	repnz scas %es:(%edi),%al < search for '\0'
//   0x0804861e <+186>:	mov    %ecx,%eax < get buffer + 5 length for ecx remainder with 2's complement
//   0x08048620 <+188>:	not    %eax < .
//   0x08048622 <+190>:	sub    $0x1,%eax < .
//   0x08048625 <+193>:	cmp    $0x1e,%eax < if length <= 30
//   0x08048628 <+196>:	ja     0x8048642 <main+222> {
//
//   0x0804862a <+198>:	lea    0x20(%esp),%eax < buffer in eax
//   0x0804862e <+202>:	lea    0x5(%eax),%edx < buffer + 5 in edx
//   0x08048631 <+205>:	mov    0x8049aac,%eax < auth in eax
//   0x08048636 <+210>:	mov    %edx,0x4(%esp) < buffer + 5 as second param
//   0x0804863a <+214>:	mov    %eax,(%esp) < auth as first param
//   0x0804863d <+217>:	call   0x8048460 <strcpy@plt>
//
//   }}
//   0x08048642 <+222>:	lea    0x20(%esp),%eax < buffer in eax
//   0x08048646 <+226>:	mov    %eax,%edx < in edx
//   0x08048648 <+228>:	mov    $0x804881f,%eax < "reset"
//   0x0804864d <+233>:	mov    $0x5,%ecx < 5 in count register
//   0x08048652 <+238>:	mov    %edx,%esi < buffer in source register
//   0x08048654 <+240>:	mov    %eax,%edi < "reset" in destination register
//
//   0x08048656 <+242>:	repz cmpsb %es:(%edi),%ds:(%esi) < compare stack buffer with "reset"
//   0x08048658 <+244>:	seta   %dl < "reset" < stack buff
//   0x0804865b <+247>:	setb   %al < "reset" > stack buff
//   0x0804865e <+250>:	mov    %edx,%ecx < dl in cl
//   0x08048660 <+252>:	sub    %al,%cl < (-1, 0 or 1) in cl
//   0x08048662 <+254>:	mov    %ecx,%eax < cl in eax
//   0x08048664 <+256>:	movsbl %al,%eax < truncate eax
//
//   0x08048667 <+259>:	test   %eax,%eax < if buffer == "reset"
//   0x08048669 <+261>:	jne    0x8048678 <main+276> < {
//
//   0x0804866b <+263>:	mov    0x8049aac,%eax < free auth
//   0x08048670 <+268>:	mov    %eax,(%esp) < .
//   0x08048673 <+271>:	call   0x8048420 <free@plt> < .
//
//	 }
//   0x08048678 <+276>:	lea    0x20(%esp),%eax < buffer in eax
//   0x0804867c <+280>:	mov    %eax,%edx < in edx
//   0x0804867e <+282>:	mov    $0x8048825,%eax < "service" in eax
//   0x08048683 <+287>:	mov    $0x6,%ecx < 6 in count register
//   0x08048688 <+292>:	mov    %edx,%esi < buffer in source register
//   0x0804868a <+294>:	mov    %eax,%edi < "service" in destination register
//   0x0804868c <+296>:	repz cmpsb %es:(%edi),%ds:(%esi) < compare stack buffer with "service"
//   0x0804868e <+298>:	seta   %dl < "service" < stack buff
//   0x08048691 <+301>:	setb   %al < "service" > stack buff
//   0x08048694 <+304>:	mov    %edx,%ecx < dl in cl
//   0x08048696 <+306>:	sub    %al,%cl < (-1, 0 or 1) in cl
//   0x08048698 <+308>:	mov    %ecx,%eax < cl in eax
//   0x0804869a <+310>:	movsbl %al,%eax < truncate eax
//
//   0x0804869d <+313>:	test   %eax,%eax < if buffer == "servic"
//   0x0804869f <+315>:	jne    0x80486b5 <main+337> < {
//
//   0x080486a1 <+317>:	lea    0x20(%esp),%eax < buffer in eax
//   0x080486a5 <+321>:	add    $0x7,%eax < buffer + 7 in eax
//   0x080486a8 <+324>:	mov    %eax,(%esp) < buffer + 7 as param
//   0x080486ab <+327>:	call   0x8048430 <strdup@plt>
//   0x080486b0 <+332>:	mov    %eax,0x8049ab0 < strdup result in service global
//
//   }
//   0x080486b5 <+337>:	lea    0x20(%esp),%eax < buffer in eax
//   0x080486b9 <+341>:	mov    %eax,%edx < in edx
//   0x080486bb <+343>:	mov    $0x804882d,%eax < "login" in eax
//   0x080486c0 <+348>:	mov    $0x5,%ecx < 5 in count register
//   0x080486c5 <+353>:	mov    %edx,%esi < buffer in source register
//   0x080486c7 <+355>:	mov    %eax,%edi < "login" in destination register
//   0x080486c9 <+357>:	repz cmpsb %es:(%edi),%ds:(%esi) < compare stack buffer with "login"
//   0x080486cb <+359>:	seta   %dl < "login" < stack buff
//   0x080486ce <+362>:	setb   %al < "login" > stack buff
//   0x080486d1 <+365>:	mov    %edx,%ecx < dl in cl
//   0x080486d3 <+367>:	sub    %al,%cl < (-1, 0 or 1) in cl
//   0x080486d5 <+369>:	mov    %ecx,%eax < cl in eax
//   0x080486d7 <+371>:	movsbl %al,%eax < truncate eax
//
//   0x080486da <+374>:	test   %eax,%eax < if buffer == "login"
//   0x080486dc <+376>:	jne    0x8048574 <main+16> < {
//
//   0x080486e2 <+382>:	mov    0x8049aac,%eax < global auth address in eax
//   0x080486e7 <+387>:	mov    0x20(%eax),%eax < auth[32] in eax
//   0x080486ea <+390>:	test   %eax,%eax < if auth[32]
//   0x080486ec <+392>:	je     0x80486ff <main+411> {
//
//   0x080486ee <+394>:	movl   $0x8048833,(%esp) < "/bin/sh" as parameter
//   0x080486f5 <+401>:	call   0x8048480 <system@plt>
//
//   0x080486fa <+406>:	jmp    0x8048574 <main+16>
//
//	 } else {
//   0x080486ff <+411>:	mov    0x8049aa0,%eax < stdout in eax
//   0x08048704 <+416>:	mov    %eax,%edx < stdout in edx
//   0x08048706 <+418>:	mov    $0x804883b,%eax < "Password:\n" in eax
//   0x0804870b <+423>:	mov    %edx,0xc(%esp) < stdout as 4rth parameter
//   0x0804870f <+427>:	movl   $0xa,0x8(%esp) < 10 in 3rd parameter
//   0x08048717 <+435>:	movl   $0x1,0x4(%esp) < 1 in 2nd parameter
//   0x0804871f <+443>:	mov    %eax,(%esp) < "Passwrod:\n" as 1rst parameter
//   0x08048722 <+446>:	call   0x8048450 <fwrite@plt>
//
//   0x08048727 <+451>:	jmp    0x8048574 <main+16>
//
//	 }}
//   0x0804872c <+456>:	nop
//   0x0804872d <+457>:	mov    $0x0,%eax < 0 to return
//   0x08048732 <+462>:	lea    -0x8(%ebp),%esp < argc 
//   0x08048735 <+465>:	pop    %esi < clean argc
//   0x08048736 <+466>:	pop    %edi < clean argv
//   0x08048737 <+467>:	pop    %ebp < clean env
//   0x08048738 <+468>:	ret    
//End of assembler dump.
