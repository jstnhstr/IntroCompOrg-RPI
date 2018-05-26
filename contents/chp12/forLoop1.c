/* forLoop1.c
 * "hello world" program using the write() system call
 * one character at a time.
 */
#include <unistd.h>

int main(void)
{
	register char *aString = "Hello World.\n";
	register int i;

	for (i = 0; i <= 13; i++) {
		write(STDOUT_FILENO, aString,1 );
		aString++;
	}

	return 0;
}

