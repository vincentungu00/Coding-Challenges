"""
Link: https://leetcode.com/problems/two-sum

Question:
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

Solution in Python 3.
"""
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i in range(len(nums)-1):
            for j in range (i+1, len(nums)):
                if(nums[i] + nums[j] == target):
                    return [i,j] 