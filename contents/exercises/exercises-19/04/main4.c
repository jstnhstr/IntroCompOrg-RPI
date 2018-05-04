/* main4.c
 * Solution for exercise 19 problem 4
 * Prints the integers produced by three assembly functions
 */

#include <stdio.h>

extern int int1(void);
extern int int2(void);
extern int int3(void);

int main(void) {
	printf("int1 = %d\n", int1());
	printf("int2 = %d\n", int2());
	printf("int3 = %d\n", int3());
	return 0;
}
