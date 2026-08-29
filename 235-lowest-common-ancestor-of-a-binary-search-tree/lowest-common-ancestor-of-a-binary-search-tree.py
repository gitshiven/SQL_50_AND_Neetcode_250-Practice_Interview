# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
         if not root:
            return None
            
        # 1. Agar root dono se bada hai, toh dono left mein hain
         if root.val > p.val and root.val > q.val:
            return self.lowestCommonAncestor(root.left, p, q)
            
        # 2. Agar root dono se chhota hai, toh dono right mein hain
         if root.val < p.val and root.val < q.val:
            return self.lowestCommonAncestor(root.right, p, q)
            
        # 3. Agar raste alag ho gaye (ek chhota, ek bada), toh yahi LCA hai!
         return root