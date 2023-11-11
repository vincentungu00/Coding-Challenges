"""
Link: https://www.hackerrank.com/challenges/write-a-function/problem

Question:
In this task, we would like for you to appreciate the usefulness of the groupby() function of itertools . To read more about this function, Check this out .

You are given a string S. Suppose a character 'c' occurs consecutively X times in the string. Replace these consecutive occurrences of the character 'c' with (X, c) in the string.

Solution in Python 3.
"""

import itertools

groups = []
uniquekeys = []

S = str(input())

for k, g in itertools.groupby(S):
    groups.append(list(g))
    uniquekeys.append(k)

string = ""

for index in range(len(groups)):
    key = str(uniquekeys[index])
    value = len(groups[index])
    
    if index == 0:
        string += "({}, {})".format(value, key)
    else:
        string += " ({}, {})".format(value, key)

print(string)