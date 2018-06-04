/* incFraction.c
 * Gets user's values for a fraction and
 * adds 1 to it.
 * 2017-09-29: Bob Plantz
 */

#include "fraction2.h"
#include "fractionGet.h"
#include "fractionAddInt.h"
#include "fractionDisplay.h"
#include "newLine.h"

int main(void)
{
	struct fraction x;

	fraction(&x);		/* "constructor" */
	fractionGet(&x);
	fractionAddInt(&x, 1);
	fractionDisplay(&x);
	newLine();
	return 0;
}

