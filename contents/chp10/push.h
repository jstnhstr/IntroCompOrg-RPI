/* push.h
 * implementation of push operations in c
 * 2017-09-29: Bob Plantz
 */

/* The stack and stack pointer are global variables. They
 * are accessible to all functions in the program.
 */
extern int *stackPointer;

/* push operation:
 * Address in stackPointer is decremented by size
 * of int. dataValue is stored at this address, which
 * is now the top of the stack.
 */
#ifndef PUSH_H
#define PUSH_H
void push(int dataValue);
#endif
