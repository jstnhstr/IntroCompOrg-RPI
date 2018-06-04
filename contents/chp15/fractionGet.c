/* fractionGet.c
 * Gets user values for a fraction
 * 2017-09-29: Bob Plantz
 */

#include "writeStr.h"
#include "getDecInt.h"
#include "fractionGet.h"

void fractionGet(struct fraction* this)
{
	writeStr("Enter numerator: ");
	this->num = getDecInt();

	writeStr("Enter denominator: ");
	this->den = getDecInt();
}

