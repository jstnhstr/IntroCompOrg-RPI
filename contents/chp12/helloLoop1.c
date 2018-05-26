/* helloLoop1.c
 * "hello world" program using the write(() system call
 * one character at a time
 */
#include <unistd.h>

int main(void)
{
	char *aString = "Hello World.\n";

	while (*aString != '\0') {
		write(STDOUT_FILENO, aString, 1);
		aString++;
	}

	return 0;
}

