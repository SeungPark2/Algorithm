import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
    
    if s.count == 0 && t.count == 0 { return true }
    if s.count != t.count  { return false }
        
    var changeS = changeASCII(s)
    var changeT = changeASCII(t)
    
    quickSort(&changeS)
    quickSort(&changeT)
    
    for i in 0..<changeS.count {
        
        if changeS[i] != changeT[i] {
            
            return false
        }
    }
    
    return true
}

func changeASCII(_ str: String) -> [UInt32] {
    
    var result: [UInt32] = []
    
    for char in str {
        
        if let asciiValue = UnicodeScalar(String(char))?.value {
            
            result.append(asciiValue)
        }
    }
    
    return result
}

func quickSort(_ arr: inout [UInt32]) {
    
    quickSort(arr: &arr,
              start: 0,
              end: arr.count - 1)
}

func quickSort(arr: inout [UInt32], start: Int, end: Int) {
    
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

func partition(arr: inout [UInt32], start: Int, end: Int) -> Int {
    
    let center = arr[(start + end) / 2]
    var startIndex: Int = start
    var endIndex: Int = end
    
    while startIndex <= endIndex {
     
        while arr[startIndex] < center { startIndex += 1 }
        while center < arr[endIndex] { endIndex -= 1 }
        
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

func swap(arr: inout [UInt32], start: Int, end: Int) {
    
    let temp = arr[start]
    arr[start] = arr[end]
    arr[end] = temp
}
