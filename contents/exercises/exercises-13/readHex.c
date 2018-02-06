/* readHex.c
 * Asks user to enter a number in hexadecimal.
 */
#include <stdio.h>
#include <unistd.h>

int main(void)
{
	int x;
	unsigned char aChar;
	printf("Enter an integer in hexadecimal: ");
	fflush(stdout);

	x = 0;  // initialize result
	read(STDIN_FILENO, &aChar, 1);  // get first character
	while (aChar != '\n') {  //look for return key
		aChar = (aChar >= '9') ? (aChar + 9) & 0x0f : aChar & 0x0f;
		x = (x << 4) + (int)aChar;
		read(STDIN_FILENO, &aChar, 1);
	}

	printf("You entered %#010x = %d (decimal)\n\n", x, x);

	return 0;
	
}
