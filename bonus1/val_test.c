/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/22 15:29:27 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/22 15:38:44 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int		main(int argc, char **argv) {
	(void)argc;
	printf("%ld\n", (size_t)(atoi(argv[1]) * 4));
}
