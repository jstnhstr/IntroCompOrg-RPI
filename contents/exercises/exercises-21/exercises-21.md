# Local Variabls on the Stack

## 1. Write an assembly language program that allows the user to enter four characters and then echoes them. What happens if the user enters three characters? What happens if the user enters fewer than three characters?

  **The program appears to run the same regardless of the number of characters input by the user. In gdb the `sp` register still allocates 8 bytes for the input and deallocates that local variable space. The last call to the `write` system call also performs the same as well when its third parameter is the constant 4.**

