/* echoString3.c
 * Echoes a string entered by user.
 * 2017-09-29: Bob Plantz
 */

#include "readLn.h"
#include "writeStr.h"
#define STRLEN 200  // limited to 5 for testing readStr; change to 200 for use

int main(void)
{
	char aString[STRLEN];
	writeStr("Enter a text string: ");
	readLn(aString, STRLEN);
	writeStr("You entered:\n");
	writeStr(aString);
	writeStr("\n");

	return 0;
}
