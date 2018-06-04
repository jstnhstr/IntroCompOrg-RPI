/* fraction.c
 * A fraction "constructor" in C
 * 2017-09-29: Bob Plantz
 */


#include "fraction2.h"

void fraction(struct fraction* this)
{
	this->num = 0;
	this->den = 1;
}

