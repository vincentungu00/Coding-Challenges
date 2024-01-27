"""
Link: https://leetcode.com/problems/roman-to-integer/

Question:
Given a roman numeral, convert it to an integer.

Solution in Python 3.
"""

class Solution:
    def romanToInt(self, s: str) -> int:
        mapping = {"I" : 1 , "V" : 5, "X" : 10,
                   "L" : 50, "C" : 100, "D" : 500,
                   "M" : 1000, "IV" : 4, "IX": 9,
                   "XL" : 40, "XC": 90, "CD": 400,
                   "CM": 900}
        
        value  = 0
        i = 0

        while i < len(s):
            if s[i:i+2] in mapping.keys():
                value = value + mapping[s[i:i+2]]
                i = i+2
            else:
                value = value + mapping[s[i]]
                i = i+1

        return value