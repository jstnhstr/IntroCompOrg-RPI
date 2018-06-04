
printArray1:
	gcc -o printArray1 printArray1.c

printArray2: printArray2.o uIntToDec.o writeStr.o newLine.o
	gcc -o printArray2 printArray2.o uIntToDec.o writeStr.o newLine.o

printArray2.o:
	as -o printArray2.o printArray2.s

uIntToDec.o:
	as -o uIntToDec.o ../chp14/uIntToDec.s

writeStr.o:
	as -o writeStr.o ../exercises/exercises-24/writeStr.s

newLine.o:
	as -o newLine.o ../exercises/exercises-24/newLine.s

structField1:
	gcc -o structField1 structField1.c

structField2: structField2.o writeStr.o putChar.o newLine.o putDecInt.o uIntToDec.o
	gcc -o structField2 structField2.o writeStr.o putChar.o newLine.o putDecInt.o uIntToDec.o

structField2.o:
	as -o structField2.o structField2.s

putChar.o:
	as -o putChar.o putChar.s

putDecInt.o:
	as -o putDecInt.o ../exercises/exercises-27/putDecInt.s

structPass1: loadStruct1.o
	gcc -o structPass1 structPass1.c loadStruct1.o

loadStruct1.o:
	gcc -c loadStruct1.c loadStruct1.h

structPass2: structPass2.o loadStruct2.o writeStr.o putChar.o newLine.o putDecInt.o uIntToDec.o theTagStruct.o
	gcc -o structPass2 structPass2.o loadStruct2.o writeStr.o putChar.o newLine.o putDecInt.o uIntToDec.o theTagStruct.o

structPass2.o:
	as -o structPass2.o structPass2.s

loadStruct2.o:
	as -o loadStruct2.o loadStruct2.s

theTagStruct.o:
	as -o theTagStruct.o theTagStruct.s

incFraction1: incFraction1.o fraction.o newLine.o writeStr.o getDecInt.o putDecInt.o readLn.o uDecToInt.o uIntToDec.o
	g++ -o incFraction1 incFraction1.o fraction.o newLine.o writeStr.o getDecInt.o putDecInt.o readLn.o uDecToInt.o uIntToDec.o

incFraction1.o:
	g++ -c -o incFraction1.o incFraction.cc

fraction.o:
	g++ -c fraction.cc fraction.h

getDecInt.o:
	as -o getDecInt.o ../exercises/exercises-27/getDecInt.s

readLn.o:
	as -o readLn.o ../exercises/exercises-24/readLn2.s

uDecToInt.o:
	as -o uDecToInt.o ../chp14/uDecToInt.s

incFraction2: incFraction2.o fraction2.o fractionAddInt.o fractionDisplay.o fractionGet.o newLine2.o writeStr2.o putDecInt2.o getDecInt2.o readLn.o uDecToInt.o uIntToDec.o
	gcc -o incFraction2 incFraction.o fraction.o fractionAddInt.o fractionDisplay.o fractionGet.o newLine2.o writeStr2.o putDecInt2.o getDecInt2.o readLn.o uDecToInt.o uIntToDec.o

incFraction2.o: fractionGet.o fractionAddInt.o fractionDisplay.o newLine2.o
	gcc -c incFraction.c newLine.h

fraction2.o:
	gcc -c fraction.c fraction2.h

fractionAddInt.o:
	gcc -c fractionAddInt.c fractionAddInt.h

fractionDisplay.o: writeStr2.o putDecInt2.o
	gcc -c fractionDisplay.c fractionDisplay.h putDecInt.h

writeStr2.o:
	as -o writeStr2.o ../exercises/exercises-24/writeStr.s

putDecInt2.o:
	as -o putDecInt2.o ../exercises/exercises-27/putDecInt.s

getDecInt2.o:
	as -o getDecInt2.o ../exercises/exercises-27/getDecInt.s

fractionGet.o: writeStr2.o getDecInt2.o getDecInt2.o
	gcc -c fractionGet.c fractionGet.c fractionGet.h getDecInt.h

newLine2.o:
	as -o newLine2.o ../exercises/exercises-24/newLine.s

clean:
	rm -f *.o printArray1 printArray2 structField1 structField2 structPass1 structPass2 incFraction1 incFraction2

