import Foundation

// Is a string a palindrome (reads the same reverse)

// Difficult: easy


func isPalindrome(_ input: String) -> Bool {
    let lowerCaseInput = input.lowercased()
    
    return lowerCaseInput == String(lowerCaseInput.reversed())
}


assert(isPalindrome("rotator") == true, "Test 1 failed")
assert(isPalindrome("Rats live on no evil star") == true, "Test 2 failed")
assert(isPalindrome("Never odd or even") == false, "Test 3 failed")
assert(isPalindrome("Hello, world") == false, "Test 4 failed")

