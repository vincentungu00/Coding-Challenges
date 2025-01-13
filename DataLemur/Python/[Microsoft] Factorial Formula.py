"""
Link: https://datalemur.com/questions/python-factorial-formula

Question:
Given a number n, write a formula that returns n!.

Solution in Python 3.
"""

def factorial(n):
  if n <= 1:
    return 1
  else:
    return n * factorial(n-1)