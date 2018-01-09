#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Develop an algorithm for adding fixed-width integers in the hexadecimal number system
Note: Large N allows for any integer n, not just fixed-width integers, where 0 < n < 18446744073709551615
However, the valid sum must remain within these 64 bits (i.e. x + y <= (2 ** 64) - 1)

input:
    python 03.py x y
    (Where x and y are the addition operands)

output:
    result of x + y to stdout
"""

import sys

RADIX = 16
N = 16

def main():
    x, y = int(sys.argv[1]), int(sys.argv[2])
    sums = [0] * N
    fmt = '0%dx' % N
    x_digits = [int(d, RADIX) for d in format(x, fmt)[::-1]]
    y_digits = [int(d, RADIX) for d in format(y, fmt)[::-1]]

    for i in range(N):
        place_sum = sum([x_digits[i], y_digits[i], sums[i]])
        if place_sum > RADIX - 1:
            sums[i], sums[i + 1] = place_sum % RADIX, 1
        else:
            sums[i] = place_sum

    print(sum([sums[i] * (RADIX ** i) for i in range(N)]))


if __name__ == '__main__':
    main()
