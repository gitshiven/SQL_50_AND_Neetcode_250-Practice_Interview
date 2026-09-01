# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
from collections import deque

class Solution:
    def levelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        # Base Case: Agar tree khali hai toh khali list return karo
        if not root:
            # Question ki demand List[List[int]] hai, isiliye [] return kiya
            return []
            
        result = [] # Final answer store karne ke liye
        queue = deque([root]) # Queue banayi aur shuruat mein root ko daal diya
        
        while queue:
            # 1. Yeh pata lagao ki IS CURRENT LEVEL par kitne nodes hain
            level_size = len(queue)
            current_level_values = [] # Is level ki values store karne ke liye
            
            # 2. Is level ke saare nodes ko ek sath process karo
            for _ in range(level_size):
                node = queue.popleft() # Line se sabse aage wale ko nikala
                current_level_values.append(node.val) # Uski value save ki
                
                # 3. Agar uske bache hain, toh unhe AGLE level ke liye queue mein piche laga do
                if node.left:
                    queue.append(node.left)
                if node.right:
                    queue.append(node.right)
            
            # 4. Poora level khatam hone ke baad, use main result mein jodh do
            result.append(current_level_values)
            
        return result



