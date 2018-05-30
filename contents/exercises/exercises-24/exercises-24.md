# Writing Your Own Functions

## 1. Enter the C program in Listing 13.2.1 (nineInts1.c). Using the "`-S`" compiler option, compile it with differing levels of optimization, i.e., "`-O1," "`-O3`," and discuss the assembly language that is generated. Compare the results with my solution in Listing 13.2.6 (nineInts2.s). Is the optimized code easier or more difficult to read?

  **The assembly compiled with "`-O1`" optimization used half as many words as the default optimization. Instead of storing data below the frame pointer and then transferring it for access by the function `sumNine`, both "`-O1`" and "`-O2`" wrote arguments directly to the stack frame. The assembly compiled with "`-O2`" optimization used more registers than `nineInts1.s` and `nineInts2.s` to position the arguments for the called function(e.g. `r0`-`r3`, `ip`), whereas "`-O1`" only used `r3`. The "`-O3`" assembled code was identical to "`-02`." I found the "`-Os`" assembled code the easiest to read compared to all of the code listings and other optimization levels due to readable register lists as operands in `push` and `stmib` calls.**

## 2. Write the function, `writeStr`, in assembly language. The function takes one argument, a `char *`, which is a pointer to a C-style text string. It displays the text string on the screen. It returns the number of characters displayed. Demonstrate that your function works correctly by writing a `main` function that calls `writeStr` to display "Hello world" on the screen. Your `main` function can ignore the character count that is returned by `writeStr`.

  **See `problem2` target in Makefile.**

## 3. Write the function, `readLn`, in assembly language. The function takes on argument a `char *` which is a pointer to a `char` array, for storing a text string. It reads characters from the keyboard and stores them in the array as a C-style text string. It does *not* store the `\n` character. It returns the number of characters, excluding the `NUL` character, that were stored in the array. Demonstrate that your function works correctly by writing a `main` function prompts the user to enter a text string and then echoes the user's input, using the `writeStr` function from Exercise 13.3.2. When testing your program, be careful not to enter more characters than the allocated space. Explain what would occur if you did enter too many characters. Your `main` function cna ignore the character count that is return by `writeStr` and `readLn`.

  **See `problem3` target in Makefile. When more characters are input than allocated by `malloc`, the call to `writeStr` still outputs the whole string, but leaks into the heap segment beyond the function's stack frame.**

## 4. Modify the `readLn` function in Exercises 13.3.3 so that it takes a second argument, the maximum length of the text string, including the `NUL` character. Excess characters entered by the user are discarded. Demonstrate that your function works correctly by writing a `main` function that prompts the user to enter a text string and then echoes the user's input, using the `writeStr` function from Exercises 13.3.2. When testing your program, be careful not to enter more characters than the allocated space. Your `main` function can ignore the character count that is returned by `writeStr` and `readLn`.

  **See `problem4` target in Makefile.**

## 5. One problem with using `readLn` in the solution to Exercise 13.3.4 is that it needs a newline after echoing the user's input string. Correct this problem. I do not recommend adding the newline character to the string before echoing it. See if you can solve the problem some other way.

  **See `problem5` target in Makefile.**

