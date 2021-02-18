import UIKit

func quickSort(arr: inout [Int]) {
    
    quickSort(arr: &arr,
              start: 0,
              end: arr.count - 1)
}

func quickSort(arr: inout [Int], start: Int, end: Int) {
    
    let part: Int = partition(arr: &arr,
                              start: start,
                              end: end)
    
    if start < part - 1 {
        
        quickSort(arr: &arr,
                  start: start,
                  end: part - 1)
    }
    
    if part < end {
        
        quickSort(arr: &arr,
                  start: part,
                  end: end)
    }
}

func partition(arr: inout [Int], start: Int, end: Int) -> Int {
    
    let center = arr[(start + end) / 2]
    var startIndex = start
    var endIndex = end
    
    while startIndex <= endIndex {
        
        while arr[startIndex] < center { startIndex += 1 }
        while arr[endIndex] > center { endIndex -= 1 }
        
        if startIndex <= endIndex {
            
            swap(arr: &arr,
                 start: startIndex,
                 end: endIndex)
            startIndex += 1
            endIndex -= 1
        }
    }
    
    return startIndex
}

func swap(arr: inout [Int], start: Int, end: Int) {
        
    let temp = arr[start]
    arr[start] = arr[end]
    arr[end] = temp
}

var arr = [3, 9, 4, 7, 5, 0, 1, 6, 8, 2]

quickSort(arr: &arr)
print(arr)

