import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func nextLargerNodes(_ head: ListNode?) -> [Int] {
 
    guard let head = head
    else {
        return []
    }
    
    var numArray:[Int] = [head.val]
    var node = head.next
    
    while let next = node {
        
        numArray.append(next.val)
        node = next.next
    }
    
    var stack: [Int] = []
    var count = numArray.count
    var result: [Int] = Array(repeating: 0,
                              count: count)
    
    for i in 0..<count {
        
        while !stack.isEmpty, let last = stack.last, numArray[last] < numArray[i] {
            
            result[stack.removeLast()] = numArray[i]
        }
        
        stack.append(i)
    }
    
    return result
}
