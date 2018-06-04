/* fraction2.h
 * A fraction "constructor" in C
 * 2017-09-29: Bob Plantz
 */

#ifndef FRACTION_H
#define FRACTION_H

struct fraction {
	int num;
	int den;
};

void fraction(struct fraction* this);

#endif

