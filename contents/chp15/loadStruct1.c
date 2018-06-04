/* loadStruct1.c
 * Assigns values to the fields of a theTag struct.
 * 2017-09-29: Bob Plantz
 */

#include "loadStruct1.h"	/* includes struct theTag def. */

void loadStruct(struct theTag* aStruct, char firstChar,
	int aNumber, char secondChar)
{
	aStruct->aChar = firstChar;
	aStruct->anInt = aNumber;
	aStruct->anotherChar = secondChar;
}

