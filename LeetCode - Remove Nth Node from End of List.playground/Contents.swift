// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        // Create a dummy node to handle edge cases, specifically when the head node needs to be removed.
        // This dummy node also serves as the starting point for both pointers.
        var dummy = ListNode(0, head)
        
        // Initialize both pointers to the start of the list.
        var first: ListNode? = dummy
        var second: ListNode? = dummy
        
        // Move the first pointer n+1 steps ahead to create a gap between the first and second pointers.
        // This sets up our 'window' of size n. In this window, first is at the end and second is at the start.
        for _ in 0..<n+1 {
            first = first?.next
        }
        
        // Move the first and second pointers at the same speed.
        // When the first pointer reaches the end of the list, the second pointer will be at the (n+1)th node from the end,
        // because there are n nodes between the first and second pointers.
        while first != nil {
            first = first?.next
            second = second?.next
        }
        
        // Skip the nth node from the end. The second pointer is currently at the (n+1)th node from the end,
        // so we set its next node to be the (n-1)th node from the end, effectively removing the nth node from the end.
        second?.next = second?.next?.next
        
        // The dummy node's next node is now the head of the updated list, so we return it.
        return dummy.next
    }
}
