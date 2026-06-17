class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
       count = {}
       freq = [[] for i in range(len(nums)+1)]

       for i in nums:
            count[i] = 1 + count.get(i,0)

       for n,c in count.items():
            freq[c].append(n)                #count.items() = [(1,1), (2,2), (3,3)]
                                             #                  n,c    n,c    n,c
    
# n=1, c=1 → freq[1].append(1) → freq[1] = [1]
# n=2, c=2 → freq[2].append(2) → freq[2] = [2]
# n=3, c=3 → freq[3].append(3) → freq[3] = [3]

       res = []
       for i in range(len(freq)-1, 0, -1):
            for n in freq[i]:
                res.append(n)
                if len (res) == k:
                    return res



        

