Dump of assembler code for function main:
0x08048ec0 <+0>:	push   %ebp								< new stack frame
0x08048ec1 <+1>:	mov    %esp,%ebp						|

0x08048ec3 <+3>:	and    $0xfffffff0,%esp					< stack 16 bytes alignment

0x08048ec6 <+6>:	sub    $0x20,%esp						< 32 bytes for new frame

0x08048ec9 <+9>:	mov    0xc(%ebp),%eax					< argv[1] as parameter for atoi
0x08048ecc <+12>:	add    $0x4,%eax						|
0x08048ecf <+15>:	mov    (%eax),%eax						|
0x08048ed1 <+17>:	mov    %eax,(%esp)						|
0x08048ed4 <+20>:	call   0x8049710 <atoi>					> atoi

0x08048ed9 <+25>:	cmp    $0x1a7,%eax						? atoi result == 423
0x08048ede <+30>:	jne    0x8048f58 <main+152>				{

0x08048ee0 <+32>:	movl   $0x80c5348,(%esp)				< "/bin/sh" as 1st parameter for strdup
0x08048ee7 <+39>:	call   0x8050bf0 <strdup>				> strdup

0x08048eec <+44>:	mov    %eax,0x10(%esp)					< strdup result in env[0] (4 bytes)
0x08048ef0 <+48>:	movl   $0x0,0x14(%esp)					< NULL in env[1] (4 bytes)

0x08048ef8 <+56>:	call   0x8054680 <getegid>				> getegid

0x08048efd <+61>:	mov    %eax,0x1c(%esp)					< getegid result in gid (4 bytes)

0x08048f01 <+65>:	call   0x8054670 <geteuid>				> geteuid

0x08048f06 <+70>:	mov    %eax,0x18(%esp)					< geteuid result in uid (4 bytes)

0x08048f0a <+74>:	mov    0x1c(%esp),%eax					< gid as 3rd parameter for setresgid
0x08048f0e <+78>:	mov    %eax,0x8(%esp)					|
0x08048f12 <+82>:	mov    0x1c(%esp),%eax					< gid as 2nd parameter
0x08048f16 <+86>:	mov    %eax,0x4(%esp)					| 
0x08048f1a <+90>:	mov    0x1c(%esp),%eax					< gid as 1st parameter
0x08048f1e <+94>:	mov    %eax,(%esp)						|
0x08048f21 <+97>:	call   0x8054700 <setresgid>			> setresgid

0x08048f26 <+102>:	mov    0x18(%esp),%eax					< uid as 3rd parameter for setresuid
0x08048f2a <+106>:	mov    %eax,0x8(%esp)                   |
0x08048f2e <+110>:	mov    0x18(%esp),%eax                  < uid as 2nd parameter
0x08048f32 <+114>:	mov    %eax,0x4(%esp)                   | 
0x08048f36 <+118>:	mov    0x18(%esp),%eax                  < uid as 1st parameter
0x08048f3a <+122>:	mov    %eax,(%esp)                      |
0x08048f3d <+125>:	call   0x8054690 <setresuid>            > setresuid

0x08048f42 <+130>:	lea    0x10(%esp),%eax					< env as 2nd parameter for execv
0x08048f46 <+134>:	mov    %eax,0x4(%esp)					|
0x08048f4a <+138>:	movl   $0x80c5348,(%esp)				< "/bin/sh" as 1st parameter
0x08048f51 <+145>:	call   0x8054640 <execv>				> execv

0x08048f56 <+150>:	jmp    0x8048f80 <main+192>
															}
0x08048f58 <+152>:	mov    0x80ee170,%eax					< stderr & "No !\n" in registers
0x08048f5d <+157>:	mov    %eax,%edx						|
0x08048f5f <+159>:	mov    $0x80c5350,%eax					|
0x08048f64 <+164>:	mov    %edx,0xc(%esp)					< stderr as 4th parameter of fwrite
0x08048f68 <+168>:	movl   $0x5,0x8(%esp)					< 5 as 3rd parameter
0x08048f70 <+176>:	movl   $0x1,0x4(%esp)					< 1 as 2nd parameter
0x08048f78 <+184>:	mov    %eax,(%esp)						< "No !\n" as 1st parameter
0x08048f7b <+187>:	call   0x804a230 <fwrite>				> fwrite

0x08048f80 <+192>:	mov    $0x0,%eax						< return 0
0x08048f85 <+197>:	leave  									|
0x08048f86 <+198>:	ret    									|
