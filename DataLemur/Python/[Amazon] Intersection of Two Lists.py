"""
Link: https://datalemur.com/questions/python-intersection-of-two-lists

Question:
Write a function to get the intersection of two lists.


Solution in Python 3.
"""

def intersection(a, b):
  return list(set(a) & set(b))