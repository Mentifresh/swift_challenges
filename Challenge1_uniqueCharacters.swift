import Foundation

// Difficulty: Easy

// Write a function that accepts a String as its only parameter
// Return true if the string has only unique letters
// Take letter casing into account


func checkIfCharsUnique(for input: String) -> Bool {
    var checkedChars = [Character]()
    
    for char in input {
        if checkedChars.contains(char) {
            return false
        }
        checkedChars.append(char)
    }
    return true
}



assert(checkIfCharsUnique(for: "No duplicates") == true, "Test 1 failed")
assert(checkIfCharsUnique(for: "abcdefghijklmnopqrstuvwxyz") == true, "Test 2 failed")
assert(checkIfCharsUnique(for: "AaBbCc") == true, "Test 3 failed")
assert(checkIfCharsUnique(for: "Hello, world") == false, "Test 4 failed")



/*
 The solutiona above doesn't scale well as the .contains is an O(n) operation
 It's better to use a Set
 */

func checkIfUnique(for input: String) -> Bool {
    return Set(input).count == input.count
}

