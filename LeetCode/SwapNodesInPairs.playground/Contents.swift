import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func swapPairs(_ head: ListNode?) -> ListNode? {
        
    guard let headNode = head, headNode.next != nil else {
        return head
    }
    
    let secondNode = headNode.next
    let thirdNode = secondNode?.next
    
    secondNode?.next = headNode
    headNode.next = swapPairs(thirdNode)
    
    return secondNode
}

swapPairs(ListNode(1, ListNode(2, ListNode(3, ListNode(4)))))
