import UIKit

var samplePentence = "madam kayak civic racecar anna Civic anna notapalindrome Elle"
let counts = countingPalindrome(sentence: samplePentence)
print("freqDict", counts)

func countingPalindrome(sentence: String) -> [String: Int] {
    var freqDict = [String: Int]()
    
    let words = sentence.components(separatedBy: " ")
    words.forEach { (word) in
        
        if isPalindrome(word: word) {
            let frequency = freqDict[word] ?? 0
            freqDict[word] = frequency + 1
            print("Counts:", word)
        }
    }
    
    return freqDict
}

 func isPalindrome(word: String) -> Bool {
    
    let characters = Array(word.lowercased())
    var currentIndex = 0
    
    while currentIndex < characters.count / 2  {
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
            return false
        }
        currentIndex += 1
    }
    
    return true
}

countingPalindrome(sentence: samplePentence)
