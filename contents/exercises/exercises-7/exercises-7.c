/*
 * Write a program in C that creates a display similar to Figure 2.13.2
 */

#include <stdio.h>

int main(void)
{
  char *stringPtr = "Hello world.\n";

  printf("Address Contents\n");
  while (*stringPtr != '\0') {
    printf("%7p 0x%02x\n", stringPtr, *stringPtr);
    stringPtr++;
  }

  return 0;
}
