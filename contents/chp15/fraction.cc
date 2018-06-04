// fraction.cc
// simple fraction class
// 2017-09-29: Bob Plantz

#include "fraction.h"
extern "C" int writeStr(char *);
extern "C" int getDecInt(void);
extern "C" int putDecInt(int);

fraction::fraction()
{
	num = 0;
	den = 1;
}

void fraction::get()
{
	// char arrays are used because writeStr takes
	// 	a pointer to a C-style string.
	char numMsg[] = "Enter numerator: ";
	char denMsg[] = "Enter denominator: ";

	writeStr(numMsg);
	num = getDecInt();

	writeStr(denMsg);
	den = getDecInt();
}

void fraction::display()
{
	// char array is used because writeStr takes
	// a	a pointer to a C-style string.
	char over[] = "/";

	putDecInt(num);
	writeStr(over);
	putDecInt(den);
}

void fraction::add(int theValue)
{
	num += theValue * den;
}

