/* readLn.h
 * Reads a line from standard in.
 * Drops newline character. Eliminates
 * excess characters from input buffer.
 *
 * input:
 *	from keyboard
 * output:
 *	null-terminated text string
 *	returns number of chars in text string
 * 2017-09-29: Bob Plantz
 */

#ifndef READLN_H
#define READLN_H
int readLn(char *, int);
#endif
