/* main5.c
 * Solution for exercise 19 problem 5
 * Prints the integers produced by three assembly functions
 */

#include <stdio.h>

extern char char1(void);
extern char char2(void);
extern char char3(void);

int main(void) {
	printf("char1 = %c\n", char1());
	printf("char2 = %c\n", char2());
	printf("char3 = %c\n", char3());
	return 0;
}
