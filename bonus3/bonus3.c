/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bonus3.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/23 14:45:42 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/23 16:08:04 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

//./bonus3 ""

int			main(int argc, char **argv) {
	FILE	*file;
	char	str[132];

	file = fopen("/home/user/end/.pass", "r");
	memset(str, '\0', 132);
	if (!file || argc != 2)
		return (-1);
	fread(str, 1, 66, file);
	str[65] = '\0';
	str[atoi(argv[1])] = '\0';
	fread(str + 66, 1, 65, file);
	fclose(file);
	if (!strcmp(str, argv[1]))
		execl("/bin/sh", "sh", NULL);
	else
		puts(str + 66);
	return (0);
}
