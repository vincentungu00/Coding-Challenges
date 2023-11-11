"""
Link: https://www.hackerrank.com/challenges/write-a-function/problem

Question:
Given a year, determine whether it is a leap year. If it is a leap year, return the Boolean True, otherwise return False. Note that the code stub provided reads from STDIN and passes arguments to the is_leap function. It is only necessary to complete the is_leap function.

Solution in Python 3.
"""

def is_leap(year):
    leap = False
    
    if year % 400 == 0:
        leap = True
    else:
        if year % 100 != 0:
            if year % 4 == 0:
                leap = True
    
    return leap

year = int(input())
print(is_leap(year))