/* writeStr.c
 * Writes a line to standard out.
 *
 * input:
 *	pointer to C-style text string
 * output:
 *	to screen
 *	returns number of chars written
 *
 * 2017-09-29: Bob Plantz
 */

#include <unistd.h>
#include "writeStr.h"

int writeStr(char *stringAddr)
{
	int count = 0;

	while (*stringAddr != '\0')
	{
		write(STDOUT_FILENO, stringAddr, 1);
		count++;
		stringAddr++;
	}

	return count;
}
