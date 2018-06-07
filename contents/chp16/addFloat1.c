/*
 * addFloat1.c
 * Add two floats.
 * 2017-09-29: Bob Plantz
 */

#include <stdio.h>

int main()
{
	float x = 1.23;
	float y = 4.56;
	float z;

	z = x + y;

	printf("%f + %f = %f\n", x, y, z);

	return 0;
}

