"""
Link: https://www.hackerrank.com/challenges/python-print/problem

Question:
The included code stub will read an integer, n, from STDIN.

Without using any string methods, try to print the following:
123...n

Note that "..." represents the consecutive values in between.

Solution in Python 3.
"""

if __name__ == '__main__':
    n = int(input())
    
    string = ""
    for i in range(1, n+1):
        string += str(i)
    
    print(string)