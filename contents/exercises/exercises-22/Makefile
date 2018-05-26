
printDigits: printDigits.o
	gcc -o printDigits printDigits.o

printDigits.o:
	as -o printDigits.o printDigits.s

printAlphabet: printAlphabet.o
	gcc -o printAlphabet printAlphabet.o

printAlphabet.o:
	as -o printAlphabet.o printAlphabet.s

clean:
	rm -f *.o printDigits printAlphabet

