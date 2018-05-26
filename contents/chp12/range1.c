/* range1.c
 * Checks to see if a character entered by user is a numeral.
 * 2017-09-29: Bob Plantz
 */

#include <unistd.h>

int main()
{
	char response;	// For user's response
	char *prompt = "Enter a single character: ";
	char *numeral = "You entered a numeral.\n";
	char *other = "You enter a non-numeric character.\n";

	while (*prompt != '\0') {
		write(STDOUT_FILENO, prompt, 1);
		prompt++;
	}

	read(STDIN_FILENO, prompt, 1);

	if ((response <= '9') && (response >= '0')) {
		while (*numeral != '\0') {
			write(STDOUT_FILENO, numeral, 1);
			numeral++;
		}
	}
	else {
		while (*other != '\0') {
			write(STDOUT_FILENO, other, 1);
			other++;
		}
	}
	return 0;
}

