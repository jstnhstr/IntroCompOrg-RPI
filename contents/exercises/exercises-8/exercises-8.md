# Low-level Character Handling

## 1. Modify the program in Listing 2.15.2 so that it promts the user to enter an entire line, reads the line, then echoes the entire line.  Read only one byte at a time from the keyboard.

  **See echoString1.c (copied solution)**

## 2. Modify the programin Exercise 2.16.1 so that after it reads the line typed on the keyboard, it replaces the `\n` character with a NUL character. Now you have stored the input as a C-style string, and you can echo it with `printf()`:

  **See echoString2.c**

## 3. Write a program that prompts the user to enter a line of text on the keyboard then echoes the entire line. The program should continue echoing each line until the user responds to the prompt by not entering any text and hitting the return key. Your program should have two functions, `writeStr` and `readLn`, in addition to the `main` function. The text string itself should be stored in a `char` array in `main`. Both functions should operate on `1NUL`-terminated text strings.
  - `writeStr` takes one argument, a pointer to the string to be displayed, and it returns the number of characters actually displayed. It uses the `wirte` system call function to write characters to the screen.
  - `readLn` takes two arguments, on ethat points to `char` array where the characters are to be stored and one that specifies the maximum number of characters to store in the`char` array. Additional keystrokes entered by the user the should be read from the OS input buffer and discarded. `readLn` should return the number of characters actually stored in the `char` array. It should not stgore the newline character '\n'. It uses the `read` system call function to read characters from the keyboard.

  **See 03 subdirectory (copied solution)**
