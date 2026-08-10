class Solution:
    def findDuplicate(self, nums: List[int]) -> int:
        seen = set()
        for i in nums:
            if i in seen:
                return i
            seen.add(i)

# Set Internally Kaise Kaam Karta Hai
# seen = {1, 3, 4, 2}

# Andar yeh hota hai —

# Bucket 0: []
# Bucket 1: [1]   ← hash(1)=1
# Bucket 2: [2]   ← hash(2)=2
# Bucket 3: [3]   ← hash(3)=3
# Bucket 4: [4]   ← hash(4)=4
# 2 in seen Check Kaise Hota Hai
# Step 1: hash(2) = 2
# Step 2: Bucket 2 pe jao
# Step 3: 2 hai? YES → return True

# Sirf 1 step → O(1) ✅