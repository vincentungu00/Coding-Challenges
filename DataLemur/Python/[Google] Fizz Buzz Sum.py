"""
Link: https://datalemur.com/questions/python-fizz-buzz-sum

Question:
Write a function fizz_buzz_sum to find the sum of all multiples of 3 or 5 below a target value.

Solution in Python 3.
"""

def fizz_buzz_sum(target):
  sum = 0
  for i in range(target):
    if i%3 == 0 or i%5 == 0:
      sum += i
  return sum