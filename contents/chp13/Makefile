
nineInts1: nineInts1.o sumNine1.o
	gcc -o nineInts1 nineInts1.o sumNine1.o

nineInts1.o:
	gcc -c nineInts1.c

sumNine1.o:
	gcc -c sumNine1.c sumNine1.h

nineInts2: nineInts2.o sumNine2.o
	gcc -o nineInts2 nineInts2.o sumNine2.o

nineInts2.o:
	as -o nineInts2.o nineInts2.s

sumNine2.o:
	as -o sumNine2.o sumNine2.s

clean:
	rm -f *.o nineInts1 nineInts2

