import UIKit

 public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

// 재귀함수
var carry = 0

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    if l1 == nil && l2 == nil && carry == 0 { return nil }
    
    let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
    carry = sum / 10
    
    return ListNode(sum % 10, addTwoNumbers(l1?.next, l2?.next))
}

// 내 처음 코드
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    let headNode = ListNode(((l1?.val ?? 0) + (l2?.val ?? 0)) % 10)
    var currentNode: ListNode? = headNode
    
    var copyL1 = l1?.next
    var copyL2 = l2?.next
    var plus = ((l1?.val ?? 0) + (l2?.val ?? 0)) / 10
    
    while copyL1 != nil && copyL2 != nil {
        
        var sum = plus
        plus = 0
        
        if let unWrappingL1 = copyL1 {
            
            sum += unWrappingL1.val
            copyL1 = unWrappingL1.next
        }
        
        if let unWrappingL2 = copyL2 {
            
            sum += unWrappingL2.val
            copyL2 = unWrappingL2.next
        }
        
        if sum > 9 {
            
            sum = sum % 10
            plus = 1
        }
        
        currentNode?.next = ListNode(sum)
        currentNode = currentNode?.next
    }
    
    return headNode
}
