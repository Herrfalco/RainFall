/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level9.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/18 15:42:26 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/18 18:04:59 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

//(gdb) disas 'N::N(int)'
//Dump of assembler code for function _ZN1NC2Ei:
//   0x080486f6 <+0>:     push   %ebp
//   0x080486f7 <+1>:     mov    %esp,%ebp
//   0x080486f9 <+3>:     mov    0x8(%ebp),%eax
//   0x080486fc <+6>:     movl   $0x8048848,(%eax)
//   0x08048702 <+12>:    mov    0x8(%ebp),%eax
//   0x08048705 <+15>:    mov    0xc(%ebp),%edx
//   0x08048708 <+18>:    mov    %edx,0x68(%eax)
//   0x0804870b <+21>:    pop    %ebp
//   0x0804870c <+22>:    ret
//End of assembler dump.
//(gdb) disas 'N::setAnnotation(char*)'
//Dump of assembler code for function _ZN1N13setAnnotationEPc:
//   0x0804870e <+0>:     push   %ebp
//   0x0804870f <+1>:     mov    %esp,%ebp
//   0x08048711 <+3>:     sub    $0x18,%esp
//   0x08048714 <+6>:     mov    0xc(%ebp),%eax
//   0x08048717 <+9>:     mov    %eax,(%esp)
//   0x0804871a <+12>:    call   0x8048520 <strlen@plt>
//   0x0804871f <+17>:    mov    0x8(%ebp),%edx
//   0x08048722 <+20>:    add    $0x4,%edx
//   0x08048725 <+23>:    mov    %eax,0x8(%esp)
//   0x08048729 <+27>:    mov    0xc(%ebp),%eax
//   0x0804872c <+30>:    mov    %eax,0x4(%esp)
//   0x08048730 <+34>:    mov    %edx,(%esp)
//   0x08048733 <+37>:    call   0x8048510 <memcpy@plt>
//   0x08048738 <+42>:    leave
//   0x08048739 <+43>:    ret
//End of assembler dump.
//(gdb) disas 'N::operator+(N&)'
//Dump of assembler code for function _ZN1NplERS_:
//   0x0804873a <+0>:     push   %ebp
//   0x0804873b <+1>:     mov    %esp,%ebp
//   0x0804873d <+3>:     mov    0x8(%ebp),%eax
//   0x08048740 <+6>:     mov    0x68(%eax),%edx
//   0x08048743 <+9>:     mov    0xc(%ebp),%eax
//   0x08048746 <+12>:    mov    0x68(%eax),%eax
//   0x08048749 <+15>:    add    %edx,%eax
//   0x0804874b <+17>:    pop    %ebp
//   0x0804874c <+18>:    ret
//End of assembler dump.
//(gdb) disas 'N::operator-(N&)'
//Dump of assembler code for function _ZN1NmiERS_:
//   0x0804874e <+0>:     push   %ebp
//   0x0804874f <+1>:     mov    %esp,%ebp
//   0x08048751 <+3>:     mov    0x8(%ebp),%eax
//   0x08048754 <+6>:     mov    0x68(%eax),%edx
//   0x08048757 <+9>:     mov    0xc(%ebp),%eax
//   0x0804875a <+12>:    mov    0x68(%eax),%eax
//   0x0804875d <+15>:    mov    %edx,%ecx
//   0x0804875f <+17>:    sub    %eax,%ecx
//   0x08048761 <+19>:    mov    %ecx,%eax
//   0x08048763 <+21>:    pop    %ebp
//   0x08048764 <+22>:    ret
//End of assembler dump.

//Dump of assembler code for function main:
//   0x080485f4 <+0>:     push   %ebp
//   0x080485f5 <+1>:     mov    %esp,%ebp
//   0x080485f7 <+3>:     push   %ebx < save ebx sub 4 to esp
//   0x080485f8 <+4>:     and    $0xfffffff0,%esp < sub 4 to esp (esp = ebp - 8)
//
//   0x080485fb <+7>:     sub    $0x20,%esp < 32 octets for local var
//
//   0x080485fe <+10>:    cmpl   $0x1,0x8(%ebp) < if argc < 2
//   0x08048602 <+14>:    jg     0x8048610 <main+28> {
//
//   0x08048604 <+16>:    movl   $0x1,(%esp) < 0 as param
//   0x0804860b <+23>:    call   0x80484f0 <_exit@plt>
//
//	 }
//   0x08048610 <+28>:    movl   $0x6c,(%esp)
//   0x08048617 <+35>:    call   0x8048530 <_Znwj@plt>
//
//   0x0804861c <+40>:    mov    %eax,%ebx
//   0x0804861e <+42>:    movl   $0x5,0x4(%esp)
//   0x08048626 <+50>:    mov    %ebx,(%esp)
//   0x08048629 <+53>:    call   0x80486f6 <_ZN1NC2Ei>
//
//   0x0804862e <+58>:    mov    %ebx,0x1c(%esp)
//   0x08048632 <+62>:    movl   $0x6c,(%esp)
//   0x08048639 <+69>:    call   0x8048530 <_Znwj@plt>
//
//   0x0804863e <+74>:    mov    %eax,%ebx
//   0x08048640 <+76>:    movl   $0x6,0x4(%esp)
//   0x08048648 <+84>:    mov    %ebx,(%esp)
//   0x0804864b <+87>:    call   0x80486f6 <_ZN1NC2Ei>
//
//   0x08048650 <+92>:    mov    %ebx,0x18(%esp)
//   0x08048654 <+96>:    mov    0x1c(%esp),%eax
//   0x08048658 <+100>:   mov    %eax,0x14(%esp)
//   0x0804865c <+104>:   mov    0x18(%esp),%eax
//   0x08048660 <+108>:   mov    %eax,0x10(%esp)
//   0x08048664 <+112>:   mov    0xc(%ebp),%eax
//   0x08048667 <+115>:   add    $0x4,%eax
//   0x0804866a <+118>:   mov    (%eax),%eax
//   0x0804866c <+120>:   mov    %eax,0x4(%esp)
//   0x08048670 <+124>:   mov    0x14(%esp),%eax
//   0x08048674 <+128>:   mov    %eax,(%esp)
//   0x08048677 <+131>:   call   0x804870e <_ZN1N13setAnnotationEPc>
//
//   0x0804867c <+136>:   mov    0x10(%esp),%eax
//   0x08048680 <+140>:   mov    (%eax),%eax
//   0x08048682 <+142>:   mov    (%eax),%edx
//   0x08048684 <+144>:   mov    0x14(%esp),%eax
//   0x08048688 <+148>:   mov    %eax,0x4(%esp)
//   0x0804868c <+152>:   mov    0x10(%esp),%eax
//   0x08048690 <+156>:   mov    %eax,(%esp)
//   0x08048693 <+159>:   call   *%edx
//
//   0x08048695 <+161>:   mov    -0x4(%ebp),%ebx
//   0x08048698 <+164>:   leave
//   0x08048699 <+165>:   ret
//End of assembler dump.
