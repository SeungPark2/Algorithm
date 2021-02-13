import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
    let headNode: ListNode? = ListNode()
    headNode?.next = head
    var currentNode: ListNode? = headNode?.next
            
    while currentNode != nil {
        
        if let current = currentNode,
           let next = currentNode?.next {
            
            if current.val == next.val {
                
                currentNode?.next = next.next
                currentNode = next.next
                continue
            }
        }
        
        currentNode = currentNode?.next
    }
    
    return headNode?.next
}

// 112 -> 12
// 11233 -> 123
// 111 -> 1
