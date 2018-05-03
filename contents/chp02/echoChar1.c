/* echoChar1.c
 * Echoes a character enter by the user.
 * 2017-09-29: Bob Plantz
 */

#include <unistd.h>

int main(void)
{
	char aLetter;

	write(STDOUT_FILENO, "Enter one character: ", 21);  // prompt user
	read(STDIN_FILENO, &aLetter, 1);  // one character
	write(STDOUT_FILENO, "You entered: ", 13);  // message
	write(STDOUT_FILENO, &aLetter, 1);  // echo character

	return 0;
}
