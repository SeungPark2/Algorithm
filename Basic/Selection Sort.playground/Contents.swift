import UIKit

func selectionSort(_ arr: inout [Int]) {
    
    selection(arr: &arr,
              start: 0)
}

func selection(arr: inout [Int], start: Int) {
    
    if start < arr.count - 1 {
        
        var minIndex = start
        
        for index in start..<arr.count {
            
            if arr[index] < arr[minIndex] {
                
                minIndex = index
            }
        }
        
        swap(&arr,
             firstIndex: start,
             secondIndex: minIndex)
        selection(arr: &arr,
                  start: start + 1)
    }
}

func swap(_ arr: inout [Int], firstIndex: Int, secondIndex: Int) {
    
    let temp = arr[firstIndex]
    arr[firstIndex] = arr[secondIndex]
    arr[secondIndex] = temp
}

var arr: [Int] = [3, 5, 9, 1, 4, 2, 6]
selectionSort(&arr)
print(arr)
