/* gdbExample2.c
 * Subtracts one from user integer.
 * Demonstrate use of gdb to examine registers, etc.
 * 2018-04-28: Justin Hester
 */

#include <stdio.h>

int main(void)
{
	register int wye;
	int *ptr;
	register int ex;

	ptr = &ex;
	ex = 305441741;
	wye = -1;
	printf("Enter an integer: ");
	scanf("%i", ptr);
	wye += *ptr;
	printf("The result is %i/n", wye);

	return 0;
}

