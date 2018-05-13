
all: helloYourName.o
	gcc -o helloYourName helloYourName.o

helloYourName.o:
	as -o helloYourName.o helloYourName.s

clean:
	rm -f *.o
	rm -f helloYourName
