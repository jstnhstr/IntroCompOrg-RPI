
lowerCase: lowerCase.o writeStr.o readLn.o toLower.o
	gcc -o lowerCase lowerCase.o writeStr.o readLn.o toLower.o

writeStr.o:
	as -o writeStr.o ../exercises-24/writeStr.s

readLn.o:
	as -o readLn.o ../exercises-24/readLn2.s

lowerCase.o:
	as -o lowerCase.o lowerCase.s

toLower.o:
	as -o toLower.o toLower.s

clean:
	rm -f *.o lowerCase

