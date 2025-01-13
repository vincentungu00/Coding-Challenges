"""
Link: https://datalemur.com/questions/python-triangular-sum-of-an-array

Question:
Return the triangular sum of nums.

Solution in Python 3.
"""

def triangular_sum(nums):
  while len(nums) > 1:
    new_nums = []
    for j in range(len(nums) - 1):
      value = (nums[j] + nums[j+1]) % 10
      
      new_nums.append(value)
    nums = new_nums
    
  else:
    return nums[0]