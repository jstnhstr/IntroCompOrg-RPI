/* helloWorld1.c
 * "Hello World" program using the write() system call.
 * 2017-09-29: Bob Plantz
 */

#include <unistd.h>

int main(void)
{
	write(STDOUT_FILENO, "Hello, World!\n", 14);

	return 0;
}
