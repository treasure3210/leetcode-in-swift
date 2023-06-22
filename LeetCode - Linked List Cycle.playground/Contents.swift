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
        // test case: head = [3, 2, 0, -4], pos = 1
        // first iteration: both slow and fast points 3 at the beginning, slow moves once so it's pointing 2, fast moves twice so it's pointing 0
        // second iteration: slow points to 0, fast points to 2
        // third iteration: slow points to -4, fast also points to -4
        // they equal each other, iteration ends
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
