
import Foundation

// Do two strings contain the same characters

// Difficulty: Easy

func sameCharacters(string1: String, string2: String) -> Bool {
    var copyOfString2 = string2
    
    for letter in string1 {
        if let index = copyOfString2.index(of: letter) {
            copyOfString2.remove(at: index)
        } else {
            return false
        }
    }
    
    return copyOfString2.count == 0
}

assert(sameCharacters(string1: "abca", string2: "abca") == true, "Test 1 failed")
assert(sameCharacters(string1: "abc", string2: "cba") == true, "Test 2 failed")
assert(sameCharacters(string1: "a1 b2", string2: "b1 a2") == true, "Test 3 failed")
assert(sameCharacters(string1: "abc", string2: "abca") == false, "Test 4 failed")
assert(sameCharacters(string1: "abc", string2: "Abc") == false, "Test 5 failed")
assert(sameCharacters(string1: "abc", string2: "cbAa") == false, "Test 6 failed")
assert(sameCharacters(string1: "abcc", string2: "abca") == false, "Test 7 failed")


// a better and more performant solution is:

func sameCharactersAlternative(string1: String, string2: String) -> Bool {
    return string2.sorted() == string1.sorted()
}
