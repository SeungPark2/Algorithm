import UIKit

class MyCircularQueue {
    
    private var valueArr: [Int] = []
    private var k: Int = 0

    init(_ k: Int) {
        
        self.k = k
    }
    
    func enQueue(_ value: Int) -> Bool {
        
        if valueArr.count < k {
            
            valueArr.append(value)
            return true
        }
        
        return false
    }
    
    func deQueue() -> Bool {
        
        if valueArr.count > 0 {
            
            valueArr.removeFirst()
            return true
        }
        
        return false
    }
    
    func Front() -> Int {
        
        return valueArr.first ?? -1
    }
    
    func Rear() -> Int {
        
        return valueArr.last ?? -1
    }
    
    func isEmpty() -> Bool {
        
        return valueArr.isEmpty
    }
    
    func isFull() -> Bool {
        
        return valueArr.count == k
    }
}
