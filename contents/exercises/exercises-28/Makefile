
reverse: reverse.o getDecInt.o readLn.o uDecToInt.o putDecInt.o uIntToDec.o writeStr.o newLine.o
	gcc -o reverse reverse.o getDecInt.o readLn.o uDecToInt.o putDecInt.o uIntToDec.o writeStr.o newLine.o

reverse.o:
	as -o reverse.o reverse.s

getDecInt.o:
	as -o getDecInt.o ../exercises-27/getDecInt.s

readLn.o:
	as -o readLn.o ../exercises-24/readLn2.s

uDecToInt.o:
	as -o uDecToInt.o ../../chp14/uDecToInt.s

putDecInt.o:
	as -o putDecInt.o ../exercises-27/putDecInt.s

uIntToDec.o:
	as -o uIntToDec.o ../exercises-27/uIntToDec2.s

writeStr.o:
	as -o writeStr.o ../exercises-24/writeStr.s

newLine.o:
	as -o newLine.o ../exercises-24/newLine.s

clean:
	rm -f *.o reverse

