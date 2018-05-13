/* push.c
 * implement of push operation in C
 * 2017-09-29: Bob Plantz
 */

#include "push.h"

void push(int dataValue)
{
	stackPointer--;
	*stackPointer = dataValue;
}
