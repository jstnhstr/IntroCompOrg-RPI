
peripherals: peripherals.o
	gcc -o peripherals peripherals.o /opt/vc/lib/libbcm_host.so

peripherals.o:
	as -o peripherals.o peripherals.s

clean:
	rm -f *.o peripherals

