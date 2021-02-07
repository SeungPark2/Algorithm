import UIKit

// Definition for singly-linked list.
 public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    private var _num: Int = 0
    
    var num: Int {
        get { return _num }
        set { _num = newValue }
    }
 }

class A {
    
    static let instance = A()
    
    private init() { }
    
    var _a = 0
    
//    var a: Int {
//        get { return _a }
//        set { _a = newValue }
//    }
//
//    func get()  { }
//    func set() { }
}

A.instance._a



func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
    let dummy = ListNode(0)
    var slow: ListNode? = dummy
    var fast: ListNode? = dummy
    
    
    
    dummy.num
    
    slow?.next = head
    
    for _ in 0...n {
        
        fast = fast?.next
    }
    
    while fast != nil {
        
        slow = slow?.next
        fast = fast?.next
    }
    
    slow?.next = slow?.next?.next
    
    return dummy.next
}

removeNthFromEnd(ListNode(1), 1)
removeNthFromEnd(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))), 2)
