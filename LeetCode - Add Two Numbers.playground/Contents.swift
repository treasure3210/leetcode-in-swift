public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result = ListNode(0)
        // Possibility of reversing the given ListNode
        // As soon as we find nil as our next value, consider it being the last node
        var tensDigitStored = 0
        var l1 = l1
        var l2 = l2

        var l3: ListNode? = result

        while l1 != nil || l2 != nil {
            let value1 = l1?.val ?? 0
            let value2 = l2?.val ?? 0

            let sum = value1 + value2 + tensDigitStored
            
            l3?.val = sum % 10
            tensDigitStored = sum / 10

            if l1?.next != nil || l2?.next != nil || tensDigitStored > 0 {
                l3?.next = ListNode(0)
                l3 = l3?.next
            }

            l1 = l1?.next
            l2 = l2?.next
        }

        if tensDigitStored > 0 {
            l3?.val = tensDigitStored
        }
        return result

    }
}

let node1 = ListNode(2, ListNode(4, ListNode(3)))
let node2 = ListNode(5, ListNode(6, ListNode(4)))

let solution = Solution()
let result = solution.addTwoNumbers(node1, node2)

func printList(_ head: ListNode?) {
    var current = head
    while current != nil {
        print(current!.val)
        current = current?.next
    }
}

printList(result)
