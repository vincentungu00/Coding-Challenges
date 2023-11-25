"""
Link: https://www.hackerrank.com/challenges/py-if-else/problem

Question:
Given an integer, n, perform the following conditional actions:

If n is odd, print Weird
If n is even and in the inclusive range of 2 to 5, print Not Weird
If n is even and in the inclusive range of 6 to 20, print Weird
If n is even and greater than 20, print Not Weird

Solution in Python 3.
"""

import math
import os
import random
import re
import sys

if __name__ == '__main__':
    n = int(input().strip())
    
    flag = "Weird"
    
    if n % 2 == 0:
        if n in range(2, 5 + 1) or n > 20:
            flag = "Not Weird"
    print(flag)