"""
Link: https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem

Question:
Given the participants' score sheet for your University Sports Day, you are required to find the runner-up score. You are given n scores. Store them in a list and find the score of the runner-up.

Solution in Python 3.
"""

if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    
    arr = sorted(list(arr))
    
    max_1 = arr[0]
    max_2 = arr[0]
    
    for i in range(1, n):
        if arr[i] > max_1:
            max_2 = max_1
            max_1 = arr[i]
        
    print(max_2)