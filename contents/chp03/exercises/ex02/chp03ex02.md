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
