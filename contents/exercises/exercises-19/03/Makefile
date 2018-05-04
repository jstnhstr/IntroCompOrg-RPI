
gMain: gMain.o g.o
	gcc -o gMain gMain.o g.o

gMain.o:
	gcc -c gMain.c

g.o:
	as -o g.o g.s

g_gcc.s:
	gcc -S -o g_gcc.s g.c

clean:
	rm -f *.o gMain
