import UIKit

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        
    if (head == nil || head?.next == nil || k == 0) {
        
        return head
    }
    
    let dummy = ListNode()
    dummy.next = head
    var slow: ListNode? = dummy
    var fast: ListNode? = dummy
    var n = 0
        
    while(fast != nil && fast?.next != nil) {
        
        fast = fast?.next
        n += 1
    }
        
    for _ in 0..<(n - k%n) {
        
        slow = slow?.next
    }
        
    fast?.next = dummy.next
    dummy.next = slow?.next
    slow?.next = nil
    
    return dummy.next
}

rotateRight(ListNode(1), 1)
rotateRight(ListNode(0, ListNode(1, ListNode(2))), 2)
