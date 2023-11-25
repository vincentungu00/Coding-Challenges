"""
Link: https://www.hackerrank.com/challenges/python-loops/problem

Question:
The provided code stub reads and integer, n, from STDIN. For all non-negative integers i < n, print i^2.

Solution in Python 3.
"""

if __name__ == '__main__':
    n = int(input())
    
    for i in range(0, n):
        print(i ** 2)