/* fMain.c
 * Tests if f.s assembles and runs with no errors.
 */

#include <stdio.h>

extern int f(void);

int main(void)
{
	printf("%d", f());
	return 0;
}
