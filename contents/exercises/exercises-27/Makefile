
incrementUInt: incrementUInt.o writeStr.o readLn.o uDecToInt.o uIntToDec.o
	gcc -o incrementUInt incrementUInt.o writeStr.o readLn.o uDecToInt.o uIntToDec.o

incrementUInt.o:
	as -o incrementUInt.o incrementUInt.s

writeStr.o:
	as -o writeStr.o ../exercises-24/writeStr.s

readLn.o:
	as -o readLn.o ../exercises-24/readLn2.s

uDecToInt.o:
	as -o uDecToInt.o ../../chp14/uDecToInt.s

uIntToDec.o:
	as -o uIntToDec.o ../../chp14/uIntToDec.s

incrementUInt2: incrementUInt.o writeStr.o readLn.o uDecToInt.o uIntToDec2.o newLine.o
	gcc -o incrementUInt2 incrementUInt.o writeStr.o readLn.o uDecToInt.o uIntToDec2.o newLine.o

newLine.o:
	as -o newLine.o ../exercises-24/newLine.s

incrementSInt: incrementSInt.o writeStr.o readLn.o uDecToInt.o uIntToDec2.o newLine.o
	gcc -o incrementSInt incrementSInt.o writeStr.o readLn.o uDecToInt.o uIntToDec2.o newLine.o

incrementSInt.o:
	as -o incrementSInt.o incrementSInt.s

incrementSigned: incrementSigned.o writeStr.o getDecInt.o readLn.o uDecToInt.o putDecInt.o uIntToDec.o newLine.o
	gcc -o incrementSigned incrementSigned.o writeStr.o getDecInt.o readLn.o uDecToInt.o putDecInt.o uIntToDec.o newLine.o

incrementSigned.o:
	as -o incrementSigned.o incrementSigned.s

clean:
	rm -f *.o incrementUInt incrementUInt2 incrementSInt incrementSigned

