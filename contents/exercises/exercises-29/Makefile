
structPass3: structPass3.o getFields.o loadStruct3.o readLn.o writeStr.o putChar.o newLine.o putDecInt.o uIntToDec.o theTagStruct.o
	gcc -o structPass3 structPass3.o getFields.o loadStruct3.o readLn.o writeStr.o putChar.o newLine.o putDecInt.o uIntToDec.o theTagStruct.o

getFields.o:
	as -o getFields.o getFields.s

uIntToDec.o:
	as -o uIntToDec.o ../../chp14/uIntToDec.s

readLn.o:
	as -o readLn.o ../exercises-24/readLn2.s

writeStr.o:
	as -o writeStr.o ../exercises-24/writeStr.s

newLine.o:
	as -o newLine.o ../exercises-24/newLine.s

putChar.o:
	as -o putChar.o ../../chp15/putChar.s

putDecInt.o:
	as -o putDecInt.o ../exercises-27/putDecInt.s

structPass3.o:
	as -o structPass3.o structPass3.s

loadStruct3.o:
	as -o loadStruct3.o loadStruct3.s

theTagStruct.o:
	as -o theTagStruct.o ../../chp15/theTagStruct.s

clean:
	rm -f *.o structPass3

