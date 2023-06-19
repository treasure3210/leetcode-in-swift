//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        // create pointers for use in reversal
        var prev: ListNode? = nil
        var current = head
        
        // testcase: head = [1,2,3,4,5]
        // first iteration:
        // next = 2, current?.next = nil, prev = 1, current = 2
        // prev = nil <- 1 | current = 2 -> 3 -> 4 -> 5 -> nil
        // second iteration:
        // next = 3, current?.next = 1, prev = 2, current = 3
        // prev = nil <- 1 <- 2 | current = 3 -> 4 -> 5 -> nil
        // third iteration:
        // next = 4, current?.next = 2, prev = 3, current = 4
        // prev = nil <- 1 <- 2 <- 3 | current = 4 -> 5 -> nil
        // fourth iteration:
        // next = 5, current?.next = 3, prev = 4, current = 5
        // prev = nil <- 1 <- 2 <- 3 <- 4 | current 5 -> nil
        // fifth iteration:
        // next = nil, current?.next = 4, prev = 5, current = nil
        // prev = nil <- 1 <- 2 <- 3 <- 4 <- 5 | current nil
        // loop ends
        // return reversed ListNode = prev
        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        return prev
    }
}
