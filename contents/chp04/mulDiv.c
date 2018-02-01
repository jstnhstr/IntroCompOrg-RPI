/* mulDiv.c
 * Asks user to enter an integer. Then prompts user to enter
 * a power of two to multiply the integer, then another power
 * of two to divide. Assumes that user does not request more
 * than 30 as the power of 2.
 * 2017-09-29: Bob Plantz
 */

#include <stdio.h>

int main(void)
{
  int x;
  int leftShift, rightShift;

  printf("Enter an integer: ");
  scanf("%d", &x);

  printf("Multiply by two raised to the power: ");
  scanf("%d", &leftShift);
  printf("%d x %d = %d\n", x, 1 << leftShift, x << leftShift);

  printf("Divide by two raised to the power: ");
  scanf("%d", &rightShift);
  printf("%d / %d = %d\n", x, 1 << rightShift, x >> rightShift);

  return 0;
}
