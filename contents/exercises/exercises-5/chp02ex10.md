# Using C Programs to Explore Data Formats

## 1. Enter the program in Listing 2.9.2 and test it.  Use Exercises 2.6 to test the program.

## 2. Using the program in Listing 2.9.2, how many bits are in the largest unsigned integer that is supported by this program?

  **There are 32 bits in the largest unsigned integer.**

## 3. Modify the last `printf` statement in the program in Listing 2.9.2 so that the hexadecimal value is display in signed integer format.  What is the largest integer you can enter in hexadecimal while still getting "correct" output?

  **The largest integer is `7fffffff` before the modified `printf` format returns -1.**

## 4. Modify the program in Listing 2.9.2 so that it also displays the addresses of the `x` and `y` variables.  The addresses should be displayed in hexadecimal.  How many bytes does the compiler allocate for each of the `int`s?

  **The compiler allocates 4 bytes for each of the `int`s.**

