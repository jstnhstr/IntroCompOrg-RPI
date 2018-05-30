
problem1:
	gcc -S ../../chp13/nineInts1.c
	mv nineInts1.s nineInts1_O0.s
	gcc -O1 -S ../../chp13/nineInts1.c
	mv nineInts1.s nineInts1_O1.s
	gcc -O2 -S ../../chp13/nineInts1.c
	mv nineInts1.s nineInts1_O2.s
	gcc -O3 -S ../../chp13/nineInts1.c
	mv nineInts1.s nineInts1_O3.s
	gcc -Os -S ../../chp13/nineInts1.c
	mv nineInts1.s nineInts1_Os.s

problem2: main02.o writeStr.o
	gcc -o problem2 main02.o writeStr.o

main02.o:
	as -o main02.o main02.s

writeStr.o:
	as -o writeStr.o writeStr.s

problem3: main03.o readLn1.o writeStr.o
	gcc -o problem3 main03.o readLn1.o writeStr.o

readLn1.o:
	as -o readLn1.o readLn1.s

problem4: main04.o readLn2.o writeStr.o
	gcc -o problem4 main04.o readLn2.o writeStr.o

readLn2.o:
	as -o readLn2.o readLn2.s

problem5: main05.o readLn2.o writeStr.o
	gcc -o problem5 main05.o readLn2.o writeStr.o

main05.o:
	as -o main05.o main05.s

clean:
	rm -f *.o problem2 problem3 problem4 problem5

