# Fractional Values in Binary

1. Develop an algorithm to convert fractional binary numbers to decimal.

  ```
  Initialize some variable x to 0.
  Given  a fractional binary number 0.f
  For i = 1 to length of f (or up to round off bit):
    If the binary digit f[-i] is 1, add 1/(2^i) to x.
  As a result, x will be the fractional binary number f in decimal form.
  ```
