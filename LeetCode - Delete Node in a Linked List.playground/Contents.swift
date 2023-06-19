
// * Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func deleteNode(_ node: ListNode?) {
        // test case: head = [4,5,1,9], node = 5
        // node?.val = node?.next?.val ?? 0 = 5 is now 1, now my ListNode is as such 4 -> 1 -> 1 -> 9
        // node?.next = node?.next?.next = 4 -> 1 -> (now pointing the next?.next) 9
        node?.val = node?.next?.val ?? 0
        node?.next = node?.next?.next
    }
}
