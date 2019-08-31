/*:
 # Selection Sort
 Here is the implementation of **Selection Sort** in Swift. It works by looping throught the entire array, and for every index to search for smallest element after the index, and swapping the elements and the index. In other words, if i is the value of the current index and j is the index of the smallest element such that *inputArray.count > j >= i*, then the elements at i and j will be swapped. Thus, the time complexity is *O(n^2)*.
 */
func selectionSort(arr: inout Array<Int>){
    for i in 0..<arr.count {
        let minIndex = findIndexMin(inputArray: arr, startIndex: i)
        let temp = arr[i]
        arr[i] = arr[minIndex]
        arr[minIndex] = temp
    }
}

func findIndexMin(inputArray: Array<Int>, startIndex: Int) -> Int{
    var indexMin = startIndex
    
    for i in (startIndex + 1)..<inputArray.count {
        if inputArray[i] < inputArray[indexMin] {
            indexMin = i
        }
    }
    
    return indexMin
}
//: [Previous: Intro](@previous) | [Next: Bubble Sort](@next)
