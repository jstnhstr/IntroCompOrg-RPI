
incFraction: incFraction.o fractionStruct.s fraction.o fractionGet.o fractionAddInt.o fractionDisplay.o newLine.o getDecInt.o writeStr.o readLn.o uDecToInt.o uIntToDec.o putDecInt.o
	gcc -o incFraction incFraction.o fractionStruct.s fraction.o fractionGet.o fractionAddInt.o fractionDisplay.o newLine.o getDecInt.o writeStr.o readLn.o uDecToInt.o uIntToDec.o putDecInt.o

incFraction.o:
	as -o incFraction.o incFraction.s

fractionStruct.o:
	as -o fractionStruct.o fractionStruct.s

fraction.o:
	as -o fraction.o fraction.s

fractionGet.o:
	as -o fractionGet.o fractionGet.s

fractionAddInt.o:
	as -o fractionAddInt.o fractionAddInt.s

fractionDisplay.o:
	as -o fractionDisplay.o fractionDisplay.s

newLine.o:
	as -o newLine.o ../exercises-24/newLine.s

getDecInt.o:
	as -o getDecInt.o ../exercises-27/getDecInt.s

writeStr.o:
	as -o writeStr.o ../exercises-24/writeStr.s

readLn.o:
	as -o readLn.o ../exercises-24/readLn2.s

uDecToInt.o:
	as -o uDecToInt.o ../../chp14/uDecToInt.s

uIntToDec.o:
	as -o uIntToDec.o ../exercises-27/uIntToDec2.s

putDecInt.o:
	as -o putDecInt.o ../exercises-27/putDecInt.s

clean:
	rm -f *.o incFraction

