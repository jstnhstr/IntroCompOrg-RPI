
upperCase: upperCase.o writeStr.o readLn.o toUpper.o
	gcc -o upperCase upperCase.o writeStr.o readLn.o toUpper.o

writeStr.o:
	as -o writeStr.o ../exercises/exercises-24/writeStr.s

readLn.o:
	as -o readLn.o ../exercises/exercises-24/readLn2.s

upperCase.o:
	as -o upperCase.o upperCase.s

toUpper.o:
	as -o toUpper.o toUpper.s

hexConvert1: hexConvert1.o writeStr.o readLn.o hexToInt1.o
	gcc -o hexConvert1 writeStr.o readLn.o hexConvert1.o hexToInt1.o

hexConvert1.o:
	gcc -c hexConvert1.c

hexToInt1.o:
	gcc -c hexToInt1.c hexToInt1.h

hexConvert2: hexConvert1.o writeStr.o readLn.o hexToInt2.o
	gcc -o hexConvert2 writeStr.o readLn.o hexConvert1.o hexToInt2.o

hexToInt2.o:
	as -o hexToInt2.o hexToInt2.s

incrementHex: incrementHex.o writeStr.o readLn.o hexToInt2.o intToHex.o newLine.o
	gcc -o incrementHex incrementHex.o writeStr.o readLn.o hexToInt2.o intToHex.o newLine.o

incrementHex.o:
	as -o incrementHex.o incrementHex.s

intToHex.o:
	as -o intToHex.o intToHex.s

newLine.o:
	as -o newLine.o ../exercises/exercises-24/newLine.s

clean:
	rm -f *.o upperCase hexConvert1 hexConvert2 incrementHex

