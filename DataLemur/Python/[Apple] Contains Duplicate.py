"""
Link: https://datalemur.com/questions/python-contains-duplicate

Question:
Given an list of integers called input, return True if any value appears at least twice in the array. Return False if every element in the input list is distinct.

Solution in Python 3.
"""

def contains_duplicate(input)-> bool:
  return len(set(input)) != len(input)