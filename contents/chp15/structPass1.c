/* structPass1.c
 * Demonstrates passing structs as arguments in C
 * 2017-09-29: Bob Plantz
 */

#include <stdio.h>
#include "loadStruct1.h"	/* includes struct theTag def. */

int main(void)
{
	struct theTag x;
	struct theTag y;

	loadStruct(&x, 'a', 123, 'b');
	loadStruct(&y, '1', 456, '2');

	printf("x: %c, %i, %c and y: %c, %i, %c\n",
		x.aChar, x.anInt, x.anotherChar,
		y.aChar, x.anInt, y.anotherChar);

	return 0;
}

