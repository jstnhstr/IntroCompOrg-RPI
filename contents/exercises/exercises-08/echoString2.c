/* echoString2.c
 * Echoes a line entered by the user. 
 */

#include <stdio.h>
#include <unistd.h>
#include <string.h>

#define USER_PROMPT "Enter a text string: "
#define MAX_LEN 200

int main(void)
{
	char aString[MAX_LEN];
	char *stringPtr = aString;

	write(STDOUT_FILENO, USER_PROMPT, strlen(USER_PROMPT));
	read(STDIN_FILENO, stringPtr, 1);
	while (*stringPtr != '\n') read(STDIN_FILENO, ++stringPtr, 1);
	*stringPtr = '\0';

	printf("You entered:\n%s\n", aString);

	return 0;
}
