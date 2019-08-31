/*:
 # Merge Sort
 
 Here is the implementation of **Selection Sort** in Swift. It works by looping throught the entire array, and for every index to search for smallest element after the index, and swapping the elements and the index. In other words, if i is the value of the current index and j is the index of the smallest element such that *inputArray.count > j >= i*, then the elements at i and j will be swapped. Thus, the time complexity is *O(n^2)*.
 */
func mergeSort(inputArray: inout Array<Int>) {
    var temp = Array(repeating: 0, count: inputArray.count)
    mSort(&inputArray, &temp, start: 0, end: (inputArray.count - 1))
}

func mSort(_ arr: inout Array<Int>, _ temp: inout Array<Int>, start: Int, end: Int) {
    if start >= end {
        return
    }
    
    let middle = (start + end)/2
    
    mSort(&arr, &temp, start: start, end: middle)
    mSort(&arr, &temp, start: middle + 1, end: end)
    
    var i = start
    var j = middle + 1
    var k = start
    
    let leftStart = start
    let leftEnd = middle
    let rightEnd = end
    
    while i <= leftEnd && j <= rightEnd {
        if arr[i] < arr[j] {
            temp[k] = arr[i]
            i += 1
            k += 1
        } else {
            temp[k] = arr[j]
            j += 1
            k += 1
        }
    }
    
    while i <= leftEnd {
        temp[k] = arr[i]
        i += 1
        k += 1
    }
    
    while j <= rightEnd {
        temp[k] = arr[j]
        j += 1
        k += 1
    }
    
    for i in leftStart...rightEnd {
        arr[i] = temp[i]
    }
}
//: [Previous](@previous) | [Next](@next)
