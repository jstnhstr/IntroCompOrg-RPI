/* stack.c
 * Stack example in C.
 * 2017-09-29: Bob Plantz
 */

/* Prototype declarations for functions used in this function.
 */
#include <stdio.h>
#include "push.h"
#include "pop.h"

/* The stack and stack pointer are global variables. They
 * are accessible to all functions in the program.
 */
int theStack[500];
int *stackPointer = &theStack[500];

/* main
 * Illutrates the actions of the push and pop operations.
 */
int main(void)
{
	int x = 12;
	int y = 34;
	int z = 56;
	printf("Start with the stack pointer at %p\n", (void *)stackPointer);
	printf("x = %i, y = %i, and z = %i\n", x, y, z);

	push(x);
	push(y);
	push(z);
	x = 100;
	y = 200;
	z = 300;
	printf("push x\npush y\npush z\n");
	printf("Now the stack pointer is at %p\n", (void *)stackPointer);
	printf("Chage x, y, and z:\n");
	printf("x = %i, y = %i, and z = %i\n", x, y, z);
	pop(&z);
	pop(&y);
	pop(&x);

	printf("pop z\npop y\npop x\n");
	printf("And we end with the stack pointer at %p\n", (void *)stackPointer);
	printf("x = %i, y = %i, z = %i\n", x, y, z);

	return 0;
}
