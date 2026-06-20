#O(N)
class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        numSet = set(nums)
        max_count = 0
        length = 0

        for i in numSet:
            if i-1 not in numSet:
                length = 0
                while (i+length) in numSet:
                    length +=1
                    max_count = max(max_count, length)
        return max_count
                


        