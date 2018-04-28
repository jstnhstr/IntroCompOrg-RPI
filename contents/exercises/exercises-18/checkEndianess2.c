/* checkEndianess.c
 * Solution for Exercise 18 problem 5.
 * 2018-04-28: Justin Hester
 */

#include <stdio.h>

int main(void)
{
	unsigned char *ptr;
	int i, x, littleEndian;
	register int y;

	ptr = (unsigned char *)&x;

	printf("Enter a non-zero integer: ");
	scanf("%i", &x);
	y = x;

	printf("You entered %#010x\n", y);
	for (i = 0; i < 4; i++)
		printf("%p: %02x\n", ptr + i, *(ptr + i));
	
	// Check each byte from low to high, shifting back in multiples of bytes.
	// Each low order byte after each shift should equal each subsequent deferenced ptr.
	littleEndian = (*ptr == (unsigned char)(0xff & y)) &&
			(*(ptr + 1) == (unsigned char)(0xff & (y >> 8))) &&
			(*(ptr + 2) == (unsigned char)(0xff & (y >> 16))) &&
			(*(ptr + 3) == (unsigned char)(0xff & (y >> 24)));
	printf("This machine is %s\n", littleEndian ? "little endian" : "big endian");

	return 0; 

}
