/* fractionAddInt.c
 * adds an integer to the fraction
 * 2017-09-29: Bob Plantz
 */

#include "fractionAddInt.h"

void fractionAddInt(struct fraction* this, int theValue)
{
	this->num += theValue * this->den;
}

