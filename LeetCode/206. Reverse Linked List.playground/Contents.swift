import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {

    guard let h = head, head?.next != nil else {
        return head
    }
    
    var next = h
    var result: ListNode? = nil
    
    while let temp = next.next {
        next.next = result
        result = next
        next = temp
    }
    
    next.next = result
    return next
}

var node = reverseList(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))))
while node != nil {
    
    print(node?.val)
    node = node?.next
}


