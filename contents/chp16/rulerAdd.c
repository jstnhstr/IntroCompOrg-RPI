/* rulerAdd.c
 * Adds two ruler measurements, to nearest 1/16th inch.
 * 2017-09-29: Bob Plantz
 */
#include <stdio.h>

int main(void)
{
	int x, y, fraction_part, sum;

	printf("Enter first measurement, inches: ");
	scanf("%d", &x);
	x = x << 4;		/* shift to integral part of variable */
	printf("			sixteenths: ");
	scanf("%d", &fraction_part);
	x = x | (0xf & fraction_part);	/* add in fractional part */

	printf("Enter a second measurement, inches: ");
	scanf("%d", &y);
	y = y << 4;		/* shift to integral part of variable */
	printf("			sixteenth: ");
	scanf("%d", &fraction_part);
	y = y | (0xf & fraction_part);	/* add in fractional part */

	sum = x + y;
	printf("Their sum is %d and %d/16 inches\n",
				(sum >> 4), (sum & 0xf));

	return 0;
}

