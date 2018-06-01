
hexConvert2: hexConvert2.o writeStr.o readLn.o hexToInt2.o
	gcc -o hexConvert2 hexConvert2.o writeStr.o readLn.o hexToInt2.o

hexConvert2.o:
	as -o hexConvert2.o hexConvert2.s

writeStr.o:
	as -o writeStr.o ../exercises-24/writeStr.s

readLn.o:
	as -o readLn.o ../exercises-24/readLn2.s

hexToInt2.o:
	as -o hexToInt2.o ../../chp14/hexToInt2.s

sumHex: sumHex.o writeStr.o readLn.o hexToInt2.o intToHex.o
	gcc -o sumHex sumHex.o writeStr.o readLn.o hexToInt2.o intToHex.o

sumHex.o:
	as -o sumHex.o sumHex.s

intToHex.o:
	as -o intToHex.o ../../chp14/intToHex.s

clean:
	rm -f *.o hexConvert2 sumHex
