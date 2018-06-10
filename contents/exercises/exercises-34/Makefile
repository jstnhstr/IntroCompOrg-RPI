
blink5: blink5.o gpioPinFSelect.o gpioPinSet.o gpioPinClr.o
	gcc -o blink5 blink5.o gpioPinFSelect.o gpioPinSet.o gpioPinClr.o

blink5.o:
	as -o blink5.o blink5.s

gpioPinFSelect.o:
	as -o gpioPinFSelect.o ../../chp19/gpioPinFSelect.s

gpioPinSet.o:
	as -o gpioPinSet.o ../../chp19/gpioPinSet.s

gpioPinClr.o:
	as -o gpioPinClr.o gpioPinClr.s

clean:
	rm -f *.o blink5

