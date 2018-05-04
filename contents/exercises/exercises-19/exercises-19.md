# Programming in Assembly Language\

## 1. Enter the program in Listing 9.1.3 and use `gdb` to make sure it works. Next, change the program so that it returns a non-zero integer. Run it with `gdb`. What number base does `gdb` use to display the exit code?

  **The exit code returned is 052, which is in octal (base 8).**

## 2. Write the C function `f.c` (not copied here) in assembly language. Make sure that it assembles with no errors. Use the `-S` option to compile `f.c` and compare `gcc`'s assembly language with yours.

  **I ran `make` to build `fMain` and confirm that my assembly version of `f.c` (`f.s`) ran with no errors. Then, I ran `make f_gcc.s` to build the `gcc`'s assembly of `f.c` (`f_gcc.s`) and compared the two `.s` files with `diff f.s f_gcc.s > diff_f.txt`. The differences are saved in `diff_f.txt`.**

## 3. Write the C function `g.c` (not copied here) in assembly language. Make sure that it assembles with no errors. Use the `-S` option to compile `g.c` and compare `gcc`'s assembly language with yours.

  **I followed the steps in problem 2 to solve this; additional `make` targets were added to `Makefile`. The differences were produced with `diff g.s g_gcc.s > diff_g.txt` and are saved in `diff_g.txt`.

## 4. Write three assembly language functions that do nothing but return an integer. They should each return different, non-zero, integers. Write a C `main` function to test your assembly language functions. The `main` function should capture each of the return values and display them using `printf`.

  **See subfolder 04.**

## 5. Write three assembly language functions that do nothing but return a character. They should each return different characters. Write a C `main` function to test your assembly language functions. The `main` function should capture each of the return values and display them using `printf`.

  **See subfolder 05.**
