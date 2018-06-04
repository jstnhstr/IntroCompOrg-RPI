// fraction.h
// simple fraction class
// 2017-09-29: Bob Plantz

#ifndef FRACTION_H
#define FRACTION_H

class fraction {
		int num;	// numerator
		int den;	// denominator
	public:
		fraction();	// default constructor
		void get();	// gets user's values
		void display();	// displays fraction
		void add(int);	// adds integer
};

#endif

