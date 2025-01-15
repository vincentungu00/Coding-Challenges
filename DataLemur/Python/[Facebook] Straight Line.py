"""
Link: https://datalemur.com/questions/python-straight-line

Question:
Given an array containing exactly three unique points, each represented as coordinate pairs (x, y) with no duplicates, determine whether these points lie on the same straight line. Return True if they do, and False otherwise.

Solution in Python 3.
"""

def on_straight_line(points):
  a, b = points[0]
  m, n = points[1]
  x, y = points[2]
	
  if (n-b) * (x-m) == (y-n) * (m-a):
    return True
  else:
    return False