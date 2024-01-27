"""
Link: https://leetcode.com/problems/palindrome-number/

Question:
Given an integer x, return true if x is a palindrome, and false otherwise.

Solution in Python 3.
"""

class Solution:
    def isPalindrome(self, x: int) -> bool:
        str_x = str(x)

        if str_x == str_x[::-1]:
            return True
        else:
            return False