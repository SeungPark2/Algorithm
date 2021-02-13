import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    
    var currentNode = head
    
    while currentNode != nil  && currentNode?.next != nil {
        
        if (currentNode?.next?.val ?? 0) == currentNode?.val ?? 0 {
            
            currentNode?.next = currentNode?.next?.next
        }
        else {
            
            currentNode = currentNode?.next
        }
    }
    
    return head
}
