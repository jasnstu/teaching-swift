


/// Create an array of Integers that contains no elements
func test_question1() {

}

/// Create an array of Strings, which contains your DnD Characters' names
func test_question2() {

}

/// Create an array of Doubles with no elements
/// Then, insert the numbers 1 through 5
func test_question3() {
    var doubles: [Double] = []
    for i in 1...5 {
        doubles.append(Double(i))
    }
}

// 1, 2, 3, 4, 5
// (x,y]

/// Create an array of Integers containing 10 elements
/// Then, print the 6th element
func test_question4() {

}

/// Create a function that takes an array and returns the last index of the array
func test_question5() {
    // 4 elements, last index 3
    //
    // 3 elements, last index 2
    // n: Int elements, last index n-1
}

/// Create an array of arrays, where the inner Array holds Integers
func test_question6() {

}

/// Create a function that takes a 2D array of Integers, like you created on the previous problem, and prints every element inside
func test_question7() {
    let gettingBigger: [[Int]] = [
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    ]

    func verbose_print2DArray(array: [[Int]]) { }
    func print2DArray(_ outerArray: [[Int]]) {
        for innerArray in outerArray {
            for item in innerArray {
                print(item)
            }
        }
    }

    verbose_print2DArray(array: gettingBigger)
    print2DArray(gettingBigger)
}

/// Describe the memory cost and operation time of various scenarios
func test_question8() {
    // Scenario 1: Adding an element to the end of an Array

    // Scenario 2: Removing an element from the end of an Array

    // Scenario 3: Adding an element to the beginning of an Array

    // Scenario 4: Removing an element from the middle of an Array
}

/// *REVIEW* Create a function that takes an array of Doubles, and returns an Array of Integers.
func test_reviewQuestion() {

}

/// *BONUS* Demonstrate any use of a High Order Function on an Array of your choosing, and explain what is happening
func test_bonusQuestion() {

}
