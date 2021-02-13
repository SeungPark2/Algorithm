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
    
    var pre = headNode
    var currentNode: ListNode? = headNode?.next
            
    while currentNode != nil {
        
        if currentNode?.val == currentNode?.next?.val {
            
            while currentNode?.next?.val == currentNode?.val {
                
                currentNode = currentNode?.next
            }
            
            pre?.next = currentNode?.next
            currentNode = currentNode?.next
        }
        else {
            
            pre = currentNode
            currentNode = currentNode?.next
        }
    }
    
    return headNode?.next
}

var node = deleteDuplicates(ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
while node != nil {
    
    print(node?.val)
    node = node?.next
}
