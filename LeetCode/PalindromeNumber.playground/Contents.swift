import UIKit

// One Line coding
func isPalindrome(_ x: Int) -> Bool {
    
    return String(String(x).reversed()) == String(x)
}

func isPalindrome(_ x: Int) -> Bool {
        
    guard x >= 0 else { return true }
    
    let convertingString = String(x)
    
    if convertingString == String(convertingString.reversed()) {
        
        return true
    }
    
    return false
}

func isPalindrome(_ x: Int) -> Bool {
    
    guard x >= 0 else { return false }
    
    var xCopy = x, reverse = 0
    
    while xCopy != 0 {
        
        let remainder: Int
        
        (xCopy, remainder) = xCopy.quotientAndRemainder(dividingBy: 10)
        reverse *= 10
        reverse += remainder
    }
    return x == reverse
}
