/* gMain.c
 * Tests if g.s assembles and runs with no errors.
 */

#include <stdio.h>

extern int g(void);

int main(void)
{
	printf("%d", g());
	return 0;
}
