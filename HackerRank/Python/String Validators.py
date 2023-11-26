"""
Link: https://www.hackerrank.com/challenges/string-validators/problem

Question:
You are given a string S.
Your task is to find out if the string S contains: alphanumeric characters, alphabetical characters, digits, lowercase and uppercase characters.

Solution in Python 3.
"""

if __name__ == '__main__':
    s = input()
    
    flag = False
    for i in range(len(s)):
        if s[i].isalnum():
            flag = True
            break
    
    print(flag)
    
    flag = False
    for i in range(len(s)):
        if s[i].isalpha():
            flag = True
            break
    
    print(flag)
    
    flag = False
    for i in range(len(s)):
        if s[i].isdigit():
            flag = True
            break
    
    print(flag)
    
    flag = False
    for i in range(len(s)):
        if s[i].islower():
            flag = True
            break
    
    print(flag)
    
    flag = False
    for i in range(len(s)):
        if s[i].isupper():
            flag = True
            break
    
    print(flag)