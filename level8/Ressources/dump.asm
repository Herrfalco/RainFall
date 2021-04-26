Dump of assembler code for function main:
0x08048564 <+0>:	push   %ebp									< new stack frame
0x08048565 <+1>:	mov    %esp,%ebp							|

0x08048567 <+3>:	push   %edi									< saved registers
0x08048568 <+4>:	push   %esi									|

0x08048569 <+5>:	and    $0xfffffff0,%esp						< 16 bytes stack alignment

0x0804856c <+8>:	sub    $0xa0,%esp							< 160 bytes for new frame

0x08048572 <+14>:	jmp    0x8048575 <main+17>					? while true
0x08048574 <+16>:	nop											{

0x08048575 <+17>:	mov    0x8049ab0,%ecx						< global service, global auth and "%p, %p \n" in registers
0x0804857b <+23>:	mov    0x8049aac,%edx						|
0x08048581 <+29>:	mov    $0x8048810,%eax						|
0x08048586 <+34>:	mov    %ecx,0x8(%esp)						< service as 3rd parameter for printf
0x0804858a <+38>:	mov    %edx,0x4(%esp)						< auth as 2nd parameter
0x0804858e <+42>:	mov    %eax,(%esp)							< "%p, %p \n" as 1st parameter
0x08048591 <+45>:	call   0x8048410 <printf@plt>				> printf

0x08048596 <+50>:	mov    0x8049a80,%eax						< stdin as 3rd parameter of fgets
0x0804859b <+55>:	mov    %eax,0x8(%esp)						|
0x0804859f <+59>:	movl   $0x80,0x4(%esp)						< 128 as 2nd parameter
0x080485a7 <+67>:	lea    0x20(%esp),%eax						< buffer (128 bytes) as 1st parameter
0x080485ab <+71>:	mov    %eax,(%esp)							|
0x080485ae <+74>:	call   0x8048440 <fgets@plt>				> fgets

0x080485b3 <+79>:	test   %eax,%eax							? fgets result != NULL
0x080485b5 <+81>:	je     0x804872c <main+456>					{

0x080485bb <+87>:	lea    0x20(%esp),%eax						< compare 5 first characters of buffer and "auth "
0x080485bf <+91>:	mov    %eax,%edx							|
0x080485c1 <+93>:	mov    $0x8048819,%eax						|
0x080485c6 <+98>:	mov    $0x5,%ecx							|
0x080485cb <+103>:	mov    %edx,%esi							|
0x080485cd <+105>:	mov    %eax,%edi							|
0x080485cf <+107>:	repz cmpsb %es:(%edi),%ds:(%esi)			|
0x080485d1 <+109>:	seta   %dl									|
0x080485d4 <+112>:	setb   %al									|
0x080485d7 <+115>:	mov    %edx,%ecx							|
0x080485d9 <+117>:	sub    %al,%cl								|
0x080485db <+119>:	mov    %ecx,%eax							|
0x080485dd <+121>:	movsbl %al,%eax								|

0x080485e0 <+124>:	test   %eax,%eax							? buffer == "auth "
0x080485e2 <+126>:	jne    0x8048642 <main+222>					{

0x080485e4 <+128>:	movl   $0x4,(%esp)							< 4 as parameter for malloc
0x080485ec <+135>:	call   0x8048470 <malloc@plt>				> malloc

0x080485f0 <+142>:	mov    %eax,0x8049aac						< malloc result into auth
0x080485f5 <+145>:	mov    0x8049aac,%eax						< "" in auth
0x080485fa <+150>:	movl   $0x0,(%eax)							|

0x08048600 <+156>:	lea    0x20(%esp),%eax						< find buffer + 5 length
0x08048604 <+160>:	add    $0x5,%eax							|
0x08048607 <+163>:	movl   $0xffffffff,0x1c(%esp)				|
0x0804860f <+171>:	mov    %eax,%edx							|
0x08048611 <+173>:	mov    $0x0,%eax							|
0x08048616 <+178>:	mov    0x1c(%esp),%ecx						|
0x0804861a <+182>:	mov    %edx,%edi							|
0x0804861c <+184>:	repnz scas %es:(%edi),%al					|
0x0804861e <+186>:	mov    %ecx,%eax							|
0x08048620 <+188>:	not    %eax									|
0x08048622 <+190>:	sub    $0x1,%eax							|

0x08048625 <+193>:	cmp    $0x1e,%eax							? buffer + 5 length <= 30
0x08048628 <+196>:	ja     0x8048642 <main+222>					{

0x0804862a <+198>:	lea    0x20(%esp),%eax						< buffer + 5 and auth in registers
0x0804862e <+202>:	lea    0x5(%eax),%edx						|
0x08048631 <+205>:	mov    0x8049aac,%eax						|
0x08048636 <+210>:	mov    %edx,0x4(%esp)						< buffer + 5 as 2nd parameter for strcpy
0x0804863a <+214>:	mov    %eax,(%esp)							< auth as 1st parameter
0x0804863d <+217>:	call   0x8048460 <strcpy@plt>				> strcpy
																}}
0x08048642 <+222>:	lea    0x20(%esp),%eax						< compare 5 first characters of buffer and "reset"
0x08048646 <+226>:	mov    %eax,%edx							|	
0x08048648 <+228>:	mov    $0x804881f,%eax						|	
0x0804864d <+233>:	mov    $0x5,%ecx							|
0x08048652 <+238>:	mov    %edx,%esi							|
0x08048654 <+240>:	mov    %eax,%edi							|
0x08048656 <+242>:	repz cmpsb %es:(%edi),%ds:(%esi)			|
0x08048658 <+244>:	seta   %dl									|
0x0804865b <+247>:	setb   %al									|
0x0804865e <+250>:	mov    %edx,%ecx							|	
0x08048660 <+252>:	sub    %al,%cl								|
0x08048662 <+254>:	mov    %ecx,%eax							|	
0x08048664 <+256>:	movsbl %al,%eax								|	

0x08048667 <+259>:	test   %eax,%eax							? buffer == "reset"
0x08048669 <+261>:	jne    0x8048678 <main+276>					{

0x0804866b <+263>:	mov    0x8049aac,%eax						< auth as parameter for free
0x08048670 <+268>:	mov    %eax,(%esp)							|
0x08048673 <+271>:	call   0x8048420 <free@plt>					> free
																}
0x08048678 <+276>:	lea    0x20(%esp),%eax						< compare 6 first characters of buffer and "service"
0x0804867c <+280>:	mov    %eax,%edx							|
0x0804867e <+282>:	mov    $0x8048825,%eax						|
0x08048683 <+287>:	mov    $0x6,%ecx							|
0x08048688 <+292>:	mov    %edx,%esi							|
0x0804868a <+294>:	mov    %eax,%edi							|
0x0804868c <+296>:	repz cmpsb %es:(%edi),%ds:(%esi)			|
0x0804868e <+298>:	seta   %dl									|
0x08048691 <+301>:	setb   %al									|
0x08048694 <+304>:	mov    %edx,%ecx							|
0x08048696 <+306>:	sub    %al,%cl								|
0x08048698 <+308>:	mov    %ecx,%eax							|
0x0804869a <+310>:	movsbl %al,%eax								|

0x0804869d <+313>:	test   %eax,%eax							? buffer == "servic"
0x0804869f <+315>:	jne    0x80486b5 <main+337>					{

0x080486a1 <+317>:	lea    0x20(%esp),%eax						< buffer + 7 as parameter for strdup
0x080486a5 <+321>:	add    $0x7,%eax							|
0x080486a8 <+324>:	mov    %eax,(%esp)							|
0x080486ab <+327>:	call   0x8048430 <strdup@plt>				> strdup

0x080486b0 <+332>:	mov    %eax,0x8049ab0						< strdup result in service
																}
0x080486b5 <+337>:	lea    0x20(%esp),%eax						< compare 5 first characters of buffer and "login"
0x080486b9 <+341>:	mov    %eax,%edx							|
0x080486bb <+343>:	mov    $0x804882d,%eax						|
0x080486c0 <+348>:	mov    $0x5,%ecx							|
0x080486c5 <+353>:	mov    %edx,%esi							|
0x080486c7 <+355>:	mov    %eax,%edi							|
0x080486c9 <+357>:	repz cmpsb %es:(%edi),%ds:(%esi)			|
0x080486cb <+359>:	seta   %dl									|
0x080486ce <+362>:	setb   %al									|
0x080486d1 <+365>:	mov    %edx,%ecx							|
0x080486d3 <+367>:	sub    %al,%cl								|
0x080486d5 <+369>:	mov    %ecx,%eax							|
0x080486d7 <+371>:	movsbl %al,%eax								|

0x080486da <+374>:	test   %eax,%eax							? buffer == "login"
0x080486dc <+376>:	jne    0x8048574 <main+16>					{

0x080486e2 <+382>:	mov    0x8049aac,%eax						? auth[32] != '\0'
0x080486e7 <+387>:	mov    0x20(%eax),%eax						|
0x080486ea <+390>:	test   %eax,%eax							|
0x080486ec <+392>:	je     0x80486ff <main+411>					{

0x080486ee <+394>:	movl   $0x8048833,(%esp)					< "/bin/sh" as parameter for system
0x080486f5 <+401>:	call   0x8048480 <system@plt>				> system

0x080486fa <+406>:	jmp    0x8048574 <main+16>
																} else {
0x080486ff <+411>:	mov    0x8049aa0,%eax						< stdout and "Password:\n" in registers
0x08048704 <+416>:	mov    %eax,%edx							|
0x08048706 <+418>:	mov    $0x804883b,%eax						|
0x0804870b <+423>:	mov    %edx,0xc(%esp)						< stdout as 4th parameter for fwrite
0x0804870f <+427>:	movl   $0xa,0x8(%esp)						< 10 as 3rd parameter
0x08048717 <+435>:	movl   $0x1,0x4(%esp)						< 1 as 2nd parameter
0x0804871f <+443>:	mov    %eax,(%esp)							< "Password:\n" as 1rst parameter
0x08048722 <+446>:	call   0x8048450 <fwrite@plt>				> fwrite

0x08048727 <+451>:	jmp    0x8048574 <main+16>
																}}} else { break }}
0x0804872c <+456>:	nop
0x0804872d <+457>:	mov    $0x0,%eax							< free stack frame, load saved registers and return 0
0x08048732 <+462>:	lea    -0x8(%ebp),%esp						|
0x08048735 <+465>:	pop    %esi									|
0x08048736 <+466>:	pop    %edi									|
0x08048737 <+467>:	pop    %ebp									|
0x08048738 <+468>:	ret											|
