"""
Link: https://datalemur.com/questions/python-base-13-conversion

Question:
Given an integer num, return its string representation in base 13.

Solution in Python 3.
"""

def getNumber(num):
  if num < 10:
    return str(num)
  elif num == 10:
    return 'A'
  elif num == 11:
    return 'B'
  elif num == 12:
    return 'C'

def convertToBase13(num):
  value = ''
  flag = False 
  
  if num < 0:
    flag = True
    num = abs(num)
  
  if num == 0:
    return '0'
  else:
    while num > 0:
      quotient = num // 13 
      remainder = num % 13
      
      value += getNumber(remainder)
      
      num = quotient
    
    if flag == True:
      return '-' + value[::-1]
    else:
      return value[::-1]