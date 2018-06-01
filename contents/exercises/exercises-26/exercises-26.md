# Shifting Bits

1. Show that the `main` function in Listing 14.3.1 (hexConvert1.c) works with the assembly language `hexToInt` function in Listing 14.3.5 (hexToInt2.s).

  **See `hexConvert2` target in ../../chp14/Makefile.**

2. Does the program in Exercise 14.4.1 work correctly for both lower case and uppercase alphabetic hex characters? Why or why not?

  **Yes, `hexConvert2` works for both lowercase and uppercase alphabetic hex characters, because each character shares the same low-order digit across cases. This means the gap reduces both to the corresponding decimal when the second digit is removed by an AND operation with no_ascii (0x30).**

3. Write an assembly language version of the `main` function in Listing 14.3.1 (hexConvert1.c). Use the assembly language versions of `hexToInt`, `writeStr`, and `readLn` in your program. You may use `printf` from the C Standard Library to display your result.

  **See `hexConvert2` target in Makefile.**

4. Write a program in assembly langauge that asks the user to enter two hexadecimal numbers, each up to 32 bits, and displays their sum.

  **See `sumHex` target in Makefile.**

