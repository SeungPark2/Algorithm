import UIKit

func bubbleSort(arr: inout [Int]) {
    
    bubbleSort(arr: &arr,
               endIndex: arr.count - 1)
}

func bubbleSort(arr: inout [Int], endIndex: Int) {
    
    if endIndex > 1 {
             
        for index in 0..<endIndex {
            
            if arr[index] > arr[index + 1] {
                
                swap(arr: &arr,
                     index: index)
            }
        }
        
        bubbleSort(arr: &arr,
                   endIndex: endIndex - 1)
    }
}

func swap(arr: inout [Int], index: Int) {

    let temp = arr[index]
    arr[index] = arr[index + 1]
    arr[index + 1] = temp
}

var arr: [Int] = [3, 5, 9, 6, 1, 4, 2, 7]
bubbleSort(arr: &arr)
print(arr)
