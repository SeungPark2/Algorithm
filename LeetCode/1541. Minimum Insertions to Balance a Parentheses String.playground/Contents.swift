import UIKit

func minInsertions(_ s: String) -> Int {
    
    var stack: [String] = []
    
    for char in s {
        
        if char == "(" {
                        
            stack.append("(")
            continue
        }
        
        if char == ")" {
        
            if stack.count > 1 {
                
                if stack[stack.count - 1] == ")" && stack[stack.count - 2] == "(" {
                    
                    stack.removeLast()
                    stack.removeLast()
                    continue
                }
             }
        }
        
        stack.append(")")
    }
    
    var count = 0
    print(stack)
    
    while !stack.isEmpty {
        
        let firstValue = stack.removeFirst()
        
        if firstValue == "(" {
            
            for _ in 0...1 {
                
                if stack.first == ")" {
                    
                    stack.removeFirst()
                    continue
                }
                
                count += 1
            }
            continue
        }
        
        if stack.first == ")" {
            
            count += 1
            stack.removeFirst()
            continue
        }
        
        count += 2
    }

    return count
}

minInsertions("(()))(()))()())))")
minInsertions("))())(")
minInsertions("(()))")
minInsertions("())")
minInsertions("))())(")
minInsertions("((((((")
minInsertions(")))))))")

