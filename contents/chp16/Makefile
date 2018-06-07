
rulerAdd:
	gcc -o rulerAdd rulerAdd.c

addFloat1:
	gcc -o addFloat1 addFloat1.c

addFloat2: addFloat2.o
	gcc -o addFloat2 addFloat2.o

addFloat2.o:
	as -o addFloat2.o addFloat2.s

clean:
	rm -f *.o rulerAdd addFloat1 addFloat2

