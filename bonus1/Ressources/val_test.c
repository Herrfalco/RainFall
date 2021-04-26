#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int		main(int argc, char **argv) {
	(void)argc;
	printf("%ld\n", (size_t)(atoi(argv[1]) * 4));
}
