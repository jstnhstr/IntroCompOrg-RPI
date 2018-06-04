/* fractionDisplay.c
 * Displays a fraction in num/den format
 * 2017-09-29: Bob Plantz
 */

#include "writeStr.h"
#include "putDecInt.h"
#include "fractionDisplay.h"

void fractionDisplay(struct fraction* this)
{
	putDecInt(this->num);
	writeStr("/");
	putDecInt(this->den);
}

