
fMain: fMain.o f.o
	gcc -o fMain fMain.o f.o

fMain.o:
	gcc -c fMain.c

f.o:
	as -o f.o f.s

f_gcc.s:
	gcc -S -o f_gcc.s f.c

clean:
	rm -f *.o fMain
