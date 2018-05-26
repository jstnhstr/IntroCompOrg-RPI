
helloLoop1:
	gcc -o helloLoop1 helloLoop1.c

helloLoop2: helloLoop2.o
	gcc -o helloLoop2 helloLoop2.o

helloLoop2.o:
	as -o helloLoop2.o helloLoop2.s

forLoop1:
	gcc -o forLoop1 forLoop1.c

forLoop2: forLoop2.o
	gcc -o forLoop2 forLoop2.o

forLoop2.o:
	as -o forLoop2.o forLoop2.s

yesNo1:
	gcc -o yesNo1 yesNo1.c

yesNo2: yesNo2.o
	gcc -o yesNo2 yesNo2.o
	
yesNo2.o:
	as -o yesNo2.o yesNo2.s

range2: range2.o
	gcc -o range2 range2.o

range2.o:
	as -o range2.o range2.s

clean:
	rm -f *.o helloLoop1 helloLoop2 forLoop1 forLoop2 yesNo1 yesNo2 range2

