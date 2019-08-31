/*:
# Quick Sort

Here is the implementation of **Selection Sort** in Swift. It works by looping throught the entire array, and for every index to search for smallest element after the index, and swapping the elements and the index. In other words, if i is the value of the current index and j is the index of the smallest element such that *inputArray.count > j >= i*, then the elements at i and j will be swapped. Thus, the time complexity is *O(n^2)*.
*/
func quickSort(inputArray: inout Array<Int>){
    qSort(arr: &inputArray, first: 0, last: (inputArray.count - 1))
}

func qSort(arr: inout Array<Int>, first: Int, last: Int){
    let pivot = arr[(first + last) / 2]
    var i = first
    var j = last
    
    while true {
        while arr[i] < pivot {
            i += 1
        }
        
        while arr[j] > pivot {
            j -= 1
        }
        
        if i < j {
            let temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
            i += 1
            j -= 1
        } else {
            break
        }
    }
    
    if first < j {
        qSort(arr: &arr, first: first, last: j)
    }
    if last > j + 1 {
        qSort(arr: &arr, first: j + 1, last: last)
    }
}
//: [Previous: Merge Sort](@previous) | [Next: Count Sort](@next)
