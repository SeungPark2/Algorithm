import UIKit

// for + for
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    for i in 0..<nums.count - 1 {
        for j in i+1..<nums.count {
            
            if nums[i] + nums[j] == target {
                
                return [i, j]
            }
        }
    }
    
    return []
}

// for + dictionary
func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
 
    var numberToIndex: [Int: Int] = [:]
    
    for (index, value) in nums.enumerated() {
        
        let findValue = target - value
        
        if let otherIndex = numberToIndex[findValue] {
            
            return [index, otherIndex]
        }
        
        numberToIndex[value] = index
    }
    
    return []
}
