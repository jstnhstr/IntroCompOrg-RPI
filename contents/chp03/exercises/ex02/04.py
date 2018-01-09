#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Using the answer from Exercise 3.2.1,
invent a code for storing two decimal digits in 32 bits.
Using this code, does binary addition produce the correct results?

input:
    python 04.py x
        x = two decimal digit

output:
    x in binary to stdout

"""

import sys

def main():
    x = int(sys.argv[1])
    print(format(x, '032b'))


if __name__ == '__main__':
    main()
