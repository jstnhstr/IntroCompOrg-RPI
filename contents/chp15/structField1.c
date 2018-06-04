/* structField1.c
 * Allocates two structs and assigns a value to each field
 * in each struct.
 * 2017-09-29: Bob Plantz
 */

#include <stdio.h>

struct theTag {	/* "template" for struct */
	char aByte;
	int anInt;
	char anotherByte;
};

int main(void)
{
	struct theTag x;
	struct theTag y;

	x.aByte = 'a';
	x.anInt = 123;
	x.anotherByte = 'b';
	y.aByte = '1';
	y.anInt = 456;
	y.anotherByte = '2';

	printf("x: %c, %i, %c\ny: %c, %i, %c\n",
		x.aByte, x.anInt, x.anotherByte,
		y.aByte, y.anInt, y.anotherByte);
	return 0;
}

