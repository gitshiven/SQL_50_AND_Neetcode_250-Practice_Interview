class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        stack_1 = []        # ← 8 spaces
        curr = l1
        while curr:
            stack_1.append(curr.val)
            curr = curr.next

        stack_2 = []
        curr = l2
        while curr:
            stack_2.append(curr.val)
            curr = curr.next

        carry = 0
        head = None
        while stack_1 or stack_2 or carry:
            val1 = stack_1.pop() if stack_1 else 0
            val2 = stack_2.pop() if stack_2 else 0

            total = val1 + val2 + carry
            carry = total // 10
            digit = total % 10

            node = ListNode(digit)
            node.next = head
            head = node

        return head