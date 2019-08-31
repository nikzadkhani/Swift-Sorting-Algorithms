/*:
 # Insertion Sort
 Here is an implementation of  *Insertion Sort* in Swift. Insertion sort works by looping throught the entire list and checking to see if the next element in the array is properly sorted. If the element is not properly sorted, then the element is inserted to its proper position. It does this by continuosly swapping elements in the array until for the ith element, i - 1 < i < i + 1 is true. 
 */
func insertionSort(arr: inout Array<Int>) {
    for i in (1..<arr.count) {
        if arr[i] < arr[i - 1] {
            let toInsert = arr[i]
            
            var j = i
            repeat {
                arr[j] = arr[j - 1]
                j -= 1
            } while j > 0 && toInsert < arr[j - 1]
            
            arr[j] = toInsert
        }
    }
}
//: [Previous: Bubble Sort](@previous) | [Next: Merge Sort](@next)

