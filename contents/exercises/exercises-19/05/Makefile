
all: main5.o char1.o char2.o char3.o
	gcc -o main5 main5.o char1.o char2.o char3.o

main5.o:
	gcc -c main5.c

char1.o:
	as -o char1.o char1.s

char2.o:
	as -o char2.o char2.s

char3.o:
	as -o char3.o char3.s

clean:
	rm -f *.o main5
