import UIKit

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

func maxDepth(_ root: Node?) -> Int {
        
    if root == nil { return 0 }
    var max = 1
    
    while !(root?.children.isEmpty ?? true) {
        
        let count = 1 + maxDepth(root?.children.removeFirst())
        if count > max {
            
            max = count
        }
    }
        
    return max
}
