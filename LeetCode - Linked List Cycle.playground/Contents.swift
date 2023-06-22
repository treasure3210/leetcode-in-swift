//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        
    }
    
}


class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        // this can also be solved with hare and turtoise algorithm
        var slow = head
        var fast = head
        
        // if in while loop, we find a matching case for slow and fast pointer, it means cycle exists
        while fast != nil && fast!.next != nil {
            slow = slow!.next
            fast = fast!.next!.next
            
            if slow === fast {
                return true
            }
        }
        
        return false
    }
}
