/* loadStruct1.h
 * Defines the fields of a theTag struct.
 * 2017-09-29: Bob Plantz
 */

#ifndef LOADSTRUCT_H
#define LOADSTRUCT_H
struct theTag {
	char aChar;
	int anInt;
	char anotherChar;
};

void loadStruct(struct theTag* aStruct, char firstChar,
	int aNumber, char secondChar);
#endif

