/* pop.c
 * pop stack operation in C
 * 2017-09-29: Bob Plantz
 */

#include "pop.h"

void pop(int *dataLocation)
{
	*dataLocation = *stackPointer;
	stackPointer++;
}
