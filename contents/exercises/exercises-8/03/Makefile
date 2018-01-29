CC=gcc
EXE=echoString3
CFLAGS=-c -Wall  # -c option source files without linking

all: echoString3.o writeStr.o readLn.o
	$(CC) echoString3.o writeStr.o readLn.o -o $(EXE)

echoString3.o: echoString3.c
	$(CC) $(CFLAGS) echoString3.c

writeStr.o: writeStr.c writeStr.h
	$(CC) $(CFLAGS) writeStr.c

readLn.o: readLn.c readLn.h
	$(CC) $(CFLAGS) readLn.c

clean:
	rm *o $(EXE)
