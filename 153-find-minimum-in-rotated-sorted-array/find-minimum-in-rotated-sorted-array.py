class Solution:
    def findMin(self, nums: List[int]) -> int:
        res = max(nums)
        for i in nums:
            res = min(res, i)
        return res
            
            
          