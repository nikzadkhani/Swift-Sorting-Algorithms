/*:
 # Bubble Sort
 Here is the implementation of **Bubble Sort** in Swift. It is called bubble sort because the highest number is bubbled up to the end of the array at the end of every iteration. It works via a nested for loop. The inner loop makes the max number bubble up to the end of the array, and the outer loop repeats this n - 1 times. The inner loop gets faster and faster, since as we sort the array, we can stop looking at the numbers that were already bubbled up. In other words, halfway through the outer loop, the end half of the array will already be sorted, so we only need to look at numbers in the first half.
 */
func bubbleSort(arr: inout Array<Int>) {
    for i in (1..<arr.count).reversed() {
        for j in 0..<i {
            if (arr[j] > arr[j + 1]) {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}
//: [Previous: Selection Sort](@previous) | [Next: Insertion Sort](@next)
