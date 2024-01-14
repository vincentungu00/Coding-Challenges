"""
Link: https://leetcode.com/problems/add-two-numbers

Question:
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Solution in Python 3.
"""

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:

        l1_values = ""
        while l1.next is not None:
            l1_values += str(l1.val)
            l1 = l1.next
        l1_values += str(l1.val)
        l1_values = l1_values[::-1]

        l2_values = ""
        while l2.next is not None:
            l2_values += str(l2.val)
            l2 = l2.next
        l2_values += str(l2.val)
        l2_values = l2_values[::-1]

        result = str(int(l1_values) + int(l2_values))

        answer_prev = None
        for i in range(0, len(result)):
            answer = ListNode(result[i])
            if i == 0:
                answer_prev = answer
            else:
                answer.next = answer_prev
                answer_prev = answer

        return answer_prev