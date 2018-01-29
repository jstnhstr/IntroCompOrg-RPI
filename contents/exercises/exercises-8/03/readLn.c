/* readLn.c
 * Reads a line from standard in.
 * Drops newline character. Eliminates
 * excess characters from input buffer.
 *
 * input:
 *	from keyboard
 * output:
 *	null-terminated text string
 *	returns number of chars in text string
 *
 * 2017-09-29: Bob Plantz
 */

#include <unistd.h>
#include "readLn.h"

int readLn(char *stringAddr, int maxLength)
{
	int count = 0;
	maxLength--;  // allow space for NUL
	read(STDIN_FILENO, stringAddr, 1);
	while (*stringAddr != '\n')
	{
		if (count < maxLength)
		{
			count++;
			stringAddr++;
		}
		read(STDIN_FILENO, stringAddr, 1);
	}
	*stringAddr = '\0';  // terminate C string

	return count;
}
