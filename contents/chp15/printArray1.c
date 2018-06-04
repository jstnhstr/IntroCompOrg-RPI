/* prinarArray1.c
 * Stores index number in each element of array
 * and prints the array.
 * 2017-09-29: Bob Plantz
 */
#include <stdio.h>

int main(void)
{
	int intArray[10];
	register int index;

	for (index = 0; index < 10; index++)
	intArray[index] = index;

	for (index = 0; index < 10; index++)
		printf("%i\n", intArray[index]);
	return 0;
}

