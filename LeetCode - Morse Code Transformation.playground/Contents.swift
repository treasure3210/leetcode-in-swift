class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        // Create dictionary to store morse code by alphabet
        let morse: [Character: String] = ["a":".-","b":"-...","c":"-.-.","d":"-..","e":".","f":"..-.","g":"--.","h":"....","i":"..","j":".---","k":"-.-","l":".-..","m":"--","n":"-.","o":"---","p":".--.","q":"--.-","r":".-.","s":"...","t":"-","u":"..-","v":"...-","w":".--","x":"-..-","y":"-.--","z":"--.."]
        
        // Use Set element to only allow unique entry
        var uniqueMorseCode = Set<String>()

        // Iterate through each word in an arry
        for word in words {
            // String to hold the Morse code for the current word
            var morseCode = ""
            // Iterate over each character in the current word
            for char in word {
                // Convert the character to Morse code and append it to the Morse code for the current word
                if let morseChar = morse[char] {
                    morseCode += morseChar
                }
            }
            // Add the Morse code for the current word to the set of unique Morse code words
            uniqueMorseCode.insert(morseCode)
        }
        return uniqueMorseCode.count
    }
}
