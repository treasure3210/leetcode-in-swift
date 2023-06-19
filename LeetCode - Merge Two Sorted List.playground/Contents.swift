//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        // first, if either list is empty, we can set them to return either or
        if list1 == nil {
            return list2
        } else if list2 == nil {
            return list1
        }
        
        // make dummy listnode and set currentnode as dummy as a starting point
        // make copies of list1 and list2 as they are constants
        var dummy = ListNode(0)
        var currentNode = dummy
        var l1 = list1
        var l2 = list2
        
        // test case: list1 = [1,2,4] | list2 = [1,3,4]
        // first iteration: l1 = l2, goes to else, currentNode.next = l2 = 1, l2 = 3 -> 4
        // currentNode = dummy -> 1
        // second iteration: l1 < l2, goes to first if stmt., currentNode.next = l1 = 1, l1 = 2 -> 4
        // currentNode = dummy -> 1 -> 1
        // third iteration: l1 < l2, goes to first, currentNode.next = l1 = 2, l1 = 4
        // currentNode = dummy -> 1 -> 1 -> 2
        // fourth iteration: l1 > l2, goes to else, currentNode.next = l2 = 3, l2 = 4
        // currentNode = dummy -> 1 -> 1 -> 2 -> 3
        // fifth iteration: l1 = l2, goes to else, currentNode.next = l2 = 4, l2 = nil
        // currentNode = dummy -> 1 -> 1 -> 2 -> 3 -> 4
        // loop ends as l2 is nil
        
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                currentNode.next = l1
                l1 = l1!.next
            } else {
                currentNode.next = l2
                l2 = l2!.next
            }
            currentNode = currentNode.next!
        }
        
        // check if either listNode is not nil (checking for any leftovers)
        // since l1 != nil, currentNode.next = l1 = 4, l1 = nil
        // currentNode = dummy -> 1 -> 1 -> 2 -> 3 -> 4 -> 4
        // both l1 and l2 = nil
        if l1 != nil {
            currentNode.next = l1
        } else if l2 != nil {
            currentNode.next = l2
        }
        
        // return next of dummy: 1 -> 1 -> 2 -> 3 -> 4 -> 4
        return dummy.next
    }
}
