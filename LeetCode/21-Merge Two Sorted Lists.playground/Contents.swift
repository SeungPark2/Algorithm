import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    if l1 == nil && l2 == nil {
        
        return nil
    }
    
    if l1 == nil {
        
        return l2
    }
    
    if l2 == nil {
        
        return l1
    }
    
    var copyL1 = l1
    var copyL2 = l2
    var head: ListNode?
    if (copyL1?.val ?? 0) < (copyL2?.val ?? 0) {
        
        head = ListNode(copyL1?.val ?? 0)
        copyL1 = copyL1?.next
    }
    else {
        
        head = ListNode(copyL2?.val ?? 0)
        copyL2 = copyL2?.next
    }
    var newNode = head
    
    while copyL1 != nil || copyL2 != nil {
        
        switch true {
        
        case copyL1 == nil:
            
            newNode?.next = ListNode(copyL2?.val ?? 0)
            copyL2 = copyL2?.next
            
        case copyL2 == nil:
            
            newNode?.next = ListNode(copyL1?.val ?? 0)
            copyL1 = copyL1?.next
            
        case (copyL1?.val ?? 0) < (copyL2?.val ?? 0):
            
            newNode?.next = ListNode(copyL1?.val ?? 0)
            copyL1 = copyL1?.next
            
        default:
            
            newNode?.next = ListNode(copyL2?.val ?? 0)
            copyL2 = copyL2?.next
        }
        
        newNode = newNode?.next
    }
    
    return head
    
}

// 재귀
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    var smallerNode: ListNode? = nil
    
    if l1 == nil {
        return l2
    } else if l2 == nil {
        return l1
    } else {
        if l1!.val <= l2!.val {
            smallerNode = l1
            smallerNode?.next = self.mergeTwoLists(l1?.next, l2)
        } else {
            smallerNode = l2
            smallerNode?.next = self.mergeTwoLists(l1, l2?.next)
        }
    }
    
    return smallerNode

}
