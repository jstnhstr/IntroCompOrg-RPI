# -*- coding: utf-8 -*-
"""
chp3_sec1_alg2.py - python script of Algorithm 3.1.2

Used Spyder's breakpoints to view the variables when operating on each digit.

command-line input:
    python chp3_sec1_alg2.py x y
    (where x and y are N-digit integers, Note: no check for valid sys args)

output:
    result of x - y to stdout
"""


import sys

def main():
    x, y = sys.argv[1], sys.argv[2]
    xList, yList = [int(i) for i in x][::-1], [int(i) for i in y][::-1]
    n = len(x) if int(x) > int(y) else len(y)
    borrow = 0
    difference = [0 for _ in range(n)]

    for i in range(n):
        if yList[i] <= xList[i]:
            difference[i] = xList[i] - yList[i]
        else:
            j = i + 1
            while (j < n) and (xList[j] == 0):
                j = j + 1
            if j == n:
                borrow = 1
                j = j - 1
                xList[j] = xList[j] + 10
            while j > i:
                xList[j] = xList[j] - 1
                j = j - 1
                xList[j] = xList[j] + 10
            difference[i] = xList[i] - yList[i]
    return sum([difference[i] * (10 ** i) for i in range(n)])

if __name__ == '__main__':
    ans = main()
    print(ans)
