// incFraction.cc
// Gets a fraction from user and increments by one
// 2017-09-29: Bob Plantz

#include "fraction.h"
extern "C" int newLine(void);

int main(void)
{
	fraction x;

	x.get();
	x.add(1);
	x.display();
	newLine();
	return 0;
}

