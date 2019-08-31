/*:
 # Count Sort
 
 Here is the implementation of **Selection Sort** in Swift. It works by looping throught the entire array, and for every index to search for smallest element after the index, and swapping the elements and the index. In other words, if i is the value of the current index and j is the index of the smallest element such that *inputArray.count > j >= i*, then the elements at i and j will be swapped. Thus, the time complexity is *O(n^2)*.
 */
func countSort(inputArray: inout Array<Int>){
    var minValue: Int = inputArray[0]
    var maxValue: Int = inputArray[0]
    
    for i in 1..<inputArray.count{
        if inputArray[i] < minValue {
            minValue = inputArray[i]
        }
        if inputArray[i] > maxValue {
            maxValue = inputArray[i]
        }
    }
    
    var countArray = Array(repeating: 0, count: (maxValue - minValue))
    
    for num in inputArray{
        countArray[num - minValue] += 1
    }
    
    var j: Int = 0
    for i in 0..<countArray.count{
        while countArray[i] != 0 {
            inputArray[j] = i + minValue
            j += 1
            countArray[i] -= 1
        }
    }
}
//: [Previous: Quick Sort](@previous)
