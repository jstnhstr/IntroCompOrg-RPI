/* assignment1.c
 * Assign a 32-bit pattern to a register
 *
 * 2017-09-29: Bob Plantz
 */

#include <stdio.h>

int main(void)
{
	register int x, y;
	int z;

	x = 123;
	y = 4567;
	z = x + y;

	printf("%i + %i = %i\n", x, y, z);

	return 0;
}
