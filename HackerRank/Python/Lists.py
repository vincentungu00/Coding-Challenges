"""
Link: https://www.hackerrank.com/challenges/python-lists/problem

Question:
Initialize your list and read in the value of n followed by n lines of commands where each command will be of the 7 types listed above. Iterate through each command in order and perform the corresponding operation on your list.

Solution in Python 3.
"""

if __name__ == '__main__':
    N = int(input())
    
    array = []
    for i in range(N):
        commands = input().split(" ")
        
        if commands[0] == "insert":
            array.insert(int(commands[1]), int(commands[2]))
        elif commands[0] == "remove":
            array.remove(int(commands[1]))
        elif commands[0] == "append":
            array.append(int(commands[1]))
        elif commands[0] == "print":
            print(array)
        elif commands[0] == "pop":
            array.pop()
        elif commands[0] == "reverse":
            array.reverse()
        elif commands[0] == "sort":
            array.sort()