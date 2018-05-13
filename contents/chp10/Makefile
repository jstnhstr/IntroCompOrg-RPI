
helloWorld2: helloWorld2.o
	gcc -o helloWorld2 helloWorld2.o

helloWorld2.o:
	as -o helloWorld2.o helloWorld2.s


stack: stack.o push.o pop.o 
	gcc -o stack stack.o push.o pop.o

stack.o:
	gcc -c stack.c

push.o:
	gcc -c push.c push.h

pop.o:
	gcc -c pop.c pop.h

ehoChar1: echoChar1.o
	gcc -o echoChar1 echoChar1.o

echoChar1.o:
	as -o echoChar1.o echoChar1.s

echoChar2: echoChar2.o
	gcc -o echoChar2 echoChar2.o

echoChar2.o:
	as -o echoChar2.o echoChar2.s

clean:
	rm -f *.o
	rm -f helloWorld2
	rm -f stack
	rm -f echoChar1
	rm -f echoChar2
