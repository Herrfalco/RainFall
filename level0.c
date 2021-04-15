/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level0.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/07 16:06:49 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/08 10:50:36 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#define _GNU_SOURCE

#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int		main(int ac, char **av) {
	int		value;
	char	*env[2];
	gid_t	gid;
	gid_t	uid;

	(void)ac;
	value = atoi(av[1]);

	if (value == 423) {
		env[0] = strdup("/bin/sh");
		env[1] = NULL;

		gid = getegid();
		uid = geteuid();
		setresgid(gid, gid, gid);
		setresuid(uid, uid, uid);

		execv("/bin/sh", env);
	} else {
		fwrite("No !\n", 1, 5, stderr);
	}
	return (0);
}
