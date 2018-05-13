/* pop.h
 * pop stack operation in C
 * 2017-09-29: Bob Plantz
 */

/* The stack and stack pointer are global variables. They
 * are accessible to all functions in the program.
 */
extern int *stackPointer;

/* pop operation:
 * Copies int at current location of stack pointer
 * to *dataLocation; address in stackPointer is
 * incremented by size of int.
 */
#ifndef POP_H
#define POP_H
void pop(int *dataLocation);
#endif
