import UIKit

func mergeSort(arr: inout [Int]) {
    
    var temp = [Int](repeating: 0,
                     count: arr.count)
    
    mergeSort(arr: &arr,
              temp: &temp,
              start: 0,
              end: arr.count - 1)
}

func mergeSort(arr: inout [Int], temp: inout [Int], start: Int, end: Int) {
    
    if start < end {
        
        let center = (start + end) / 2
        mergeSort(arr: &arr,
                  temp: &temp,
                  start: start,
                  end: center)
        mergeSort(arr: &arr,
                  temp: &temp,
                  start: center + 1,
                  end: end)
        merge(arr: &arr,
              temp: &temp,
              start: start,
              center: center,
              end: end)
    }
}

func merge(arr: inout [Int], temp: inout [Int], start: Int, center: Int, end: Int) {
    
    for i in start...end {
        
        temp[i] = arr[i]
    }
    
    var part1: Int = start
    var part2: Int = center + 1
    var index: Int = start

    while part1 <= center && part2 <= end {

        if temp[part1] <= temp[part2] {

            arr[index] = temp[part1]
            part1 += 1
        }
        else {

            arr[index] = temp[part2]
            part2 += 1
        }

        index += 1
    }
    
    if center - part1 >= 0 {
     
        for i in 0...(center - part1) {

            arr[index + i] = temp[part1 + i]
        }
    }
}

var arr: [Int] = [3, 9, 4, 7, 5, 0, 1, 6, 8, 2]
mergeSort(arr: &arr)
print(arr)
