//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        // first find the middle of the linked list - hare and tortoise algorithm
        // reverse the second half of the linked list
        // compare first half and the reversed second half
        
        var fast = head
        var slow = head
        
        // find middle
        while fast != nil && fast!.next != nil {
            // test case: head = [1, 2, 2, 1]
            // slow and fast both point to 1
            // first iteration: slow points to the first 2 and fast points to the last 1
            // second iteration: slow points to the second 2 and fast points to nil
            // iteration ends
            slow = slow!.next
            fast = fast!.next!.next
        }
        
        // reverse the second half of the linked list
        var prev: ListNode? = nil
        while slow != nil {
            // first iteration slow points to 1, prev points to 2
            // second iteration slow points to nil and prev will point to 1 in reversed half
            // iteration ends
            let nextNode = slow!.next
            slow!.next = prev
            prev = slow
            slow = nextNode
        }
        
        // compare two list
        slow = head
        fast = prev
        while fast != nil {
            // slow points to 1, fast points to 1 in reversed half
            // first iteration: they are equal, they move next
            // second iteration: slow points to 2, fast points to 2 in reversed half, equal, move next
            // fast is now nil, iteration ends
            if slow!.val != fast!.val {
                return false
            }
            slow = slow!.next
            fast = fast!.next
        }
        
        return true
        
    }
}
