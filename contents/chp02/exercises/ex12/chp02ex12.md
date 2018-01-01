# Examining Memory With a Debugger Exercises

## 1. Enter the program in Listing 2.9.1  Follow through the program with `gdb`.  Using the numbers you get, explain where the variables `anInt` and `aFloat are stored in memory and what is stored in each location.

  **The variable `anInt` is stored in little-endian (e.g. Hexadecimal value is 0x01234567, but lowest address stores 0x67, then 0x45, etc.) as an unsigned integer data type.  The variable `aFloat` is stored in little-endian as well as an unsigned float data type.**

