
all: main4.o int1.o int2.o int3.o
	gcc -o main4 main4.o int1.o int2.o int3.o

main4.o:
	gcc -c main4.c

int1.o:
	as -o int1.o int1.s

int2.o:
	as -o int2.o int2.s

int3.o:
	as -o int3.o int3.s

clean:
	rm -f *.o main4
