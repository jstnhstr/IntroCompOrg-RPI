# Addition and Subtraction Exercises

## 1. How many bits are required to store a single decimal digit?

  **Four bits**

## 2. Develop an algorithm for adding fixed-width integers in the binary number system.

    Let N be the max width for integers in bits
    Let x and y be any N-digit integers (each binary digit accessible like array)
    Let sum be an array of integers of length N
    Let carry be an array of integers of length N
    For i = 0 ... (N - 1):
      sum[i] = (x[i] + y[i] + carry[i]) % 2
      carry[i + 1] = (x[i] + y[i] + carry[i]) / 2
    # Ultimate carry is stored in carry[N]

## 3. Develop an algorithm for adding fixed-width integers in the hexadecimal number system.

    Let N be the max width for integers in hexadecimal digits
    Let x and y be any N-digit integers (each hexadecimal digit accessible like array)
    Let sum be an array of integers of length N
    Let carry be an array of integers of length N
    For i = 0 ... (N - 1):
      sum[i] = (x[i] + y[i] + carry[i]) % 16
      carry[i + 1] = (x[i] + y[i] + carry[i]) / 16
    # Ultimate carry is stored in carry[N]

## 4. Using the answer from Exercise 3.2.1, invent a code for storing two decimal digits in 32 bits. Using this code, does binary addition produce the correct results?

  A two-decimal digit can be stored in the 32 bits of space by allocating 16 bits for each digit. For example, if the numbers 87 and 63 are used as operands, the binary addition will be:

      00001000 00000111 (87)
    + 00000110 00000011 (63)
      =================
      00001110 00001010 (150)

  Storing data this way can store a carry flag for each digits' sum.

## 5. Develop an algorithm for subtracting fixed-width integers in the binary number system.

    Let N be the max width for integers in binary digits.
    Let x and y by any N-digit integers (each binary digit accessible by index).
    Let diff by an array of integers of length N.
    Let borrow be a boolean variable with an initial value of FALSE.
    Let i and j be integers with initial values of zero.
    For i = 0 ... (N - 1):
      If y[i] is less than or equal to x[i]:
        Set diff[i] = x[i] - y[i].
      Otherwise:
        Set j = i + 1
        Increment j until x[j] is found to be greater than zero or j > N.
        If j exceeds N, set borrow to TRUE.
        While j > i:
          Decrement x[i] by one.
          Decrement j by one.
          Increment x[j] by two.
        Set diff[i] = x[i] - y[i].

## 6. Develop an algorithm for subtracting fixed-width integers in the hexadecimal number system.

    Let N be the max width for integers in hexadecimal digits.
    Let x and y by any N-digit integers (each hexadecimal digit accessible by index).
    Let diff by an array of integers of length N.
    Let borrow be a boolean variable with an initial value of FALSE.
    Let i and j be integers with initial values of zero.
    For i = 0 ... (N - 1):
      If y[i] is less than or equal to x[i]:
        Set diff[i] = x[i] - y[i].
      Otherwise:
        Set j = i + 1.
        Increment j until x[j] is found to be greater than zero or j > N.
        If j exceeds N, set borrow to TRUE.
        While j > i:
          Decrement x[i] by one.
          Decrement j by one.
          Increment x[j] by sixteen.
        Set diff[i] = x[i] - y[i].
