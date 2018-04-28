# Central Processing Unit Exercises

## 1. Enter the program in Listing 8.5.1 and trace through the program one line at a time using `gdb`. Use the `n` command, not `s` or `si`. Keep a written record of the `pc` register at the beginning of each line. How many bytes of machine code are in each of the C statements in this program? Note that the addresses you see in the `pc` register may differ from the example given in this chapter.

C statement | pc | total bytes
:- | :- | :-
`ptr = &ex;` | 0x1049c | 8
`ex = 305441741;` | 0x104a4 | 8
`wye = -1;` | 0x104ac | 4
`printf("Enter an integer: ");` | 0x104b0 | 8
`scanf("%i", ptr);` | 0x104b8 | 12
`wye += *ptr;` | 0x104c4 | 12
`printf("The result is %i\n", wye);` | 0x104d0 | 12
`return 0;` | 0x104dc | 4
`}` | 0x104e0 | 

## 2. As you trace through the program in Exercise 8.6.1 stop on line 21. We determined in the example above that the `r4` register is used for the variable `wye`. Determine which register is being used for wye in your instance of the program. Inspect the registers

  <ol class="alpha-sub-list">
    <li>When your program stops at this C statement, what is the address of the first instruction that will be executed when you enter the `n` command? **0x104d0**</li>
    <li>How will the register that holds the `wye` value change when this statement is executed? **`wye` becomes the input integer minus one.**</li>
    <li>How many bytes of the program does this statement use? **12 bytes**</li>
  </ol>

## 3. Modify the program in Listing 8.5.1 so that a register is also requested for the `ex` variable. Were you able to convince the compiler to do this for you? Did the compiler produce any error or warning messages? Why do you think the compiler would not use a register for this variable?

  The compiler produces an error on `ptr = &ex;`. The compiler would not use a register for pointers, because these should refer to memory external from the CPU. Dereferencing values in a CPU register would not work since the pointer doesn't know or can't store the assembler's predefined register names (e.g. `r4`, `pc`).

## 4. Use the `gdb` debugger to observe the contents of memory in the program from Exercise 2.16.2. Verify that your algorithm creates a null-terminated string without the newline character.

  **Verified in gdb**

## 5. Write a program in C that allows you to determin the endianess of your computer.

  **See checkEndianess.c**

## 6. Modify the program in Exercise 8.6.5 so that you can demonstrate, using `gdb`, that endianess is a property of the CPU. That is, even though a 32-bit int is stored in little endian in memory, it will be read into a register in the "proper" order.

  **See checkEndianess2.c**

<style type="text/css">
  .alpha-sub-list {
    list-style-type: lower-alpha;
  }
</style> 


