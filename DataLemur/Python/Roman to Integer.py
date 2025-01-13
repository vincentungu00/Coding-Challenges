"""
Link: https://datalemur.com/questions/python-roman-to-integer

Question:
Given a valid Roman numeral, convert it to an integer.


Solution in Python 3.
"""

def romanToInt(s):
	n = len(s)
	
	symbols = {'I':1, 'V':5, 'X':10, 'L':50, 
	           'C': 100, 'D': 500, 'M':1000, 
	           'IV': 4, 'IX': 9, 'XL':40, 'XC':90,
	           'CD': 400, 'CM': 900}
	
	pointer = 0
	total = 0
	
	while pointer < n:
	 
	  value = s[pointer:pointer+2]
	  if symbols.get(value) is not None:
	    total += symbols[value]
	    pointer += 2
	  else:
	    total += symbols[value[0]]
	    pointer += 1
	return total