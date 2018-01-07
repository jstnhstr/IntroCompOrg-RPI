/* echoString1.c
 * Echoes a line entered by the user.
 * 2017-09-29: Bob Plantz
 */

#include <unistd.h>
#include <string.h>

#define USER_PROMPT "Enter a text string: "
#define END_PROMPT "You entered:\n"
#define MAX_LEN 200

int main(void)
{
	char aString[MAX_LEN];
	char *stringPtr = aString;

	write(STDOUT_FILENO, USER_PROMPT, strlen(USER_PROMPT));
	read(STDIN_FILENO, stringPtr, 1);
	while (*stringPtr != '\n') read(STDIN_FILENO, ++stringPtr, 1);

	// now echo for user
	write(STDOUT_FILENO, END_PROMPT, strlen(END_PROMPT));
	stringPtr = aString;
	do write(STDOUT_FILENO, stringPtr++, 1);
	while (*stringPtr != '\n');
	write(STDOUT_FILENO, stringPtr, 1);

	return 0;
}
