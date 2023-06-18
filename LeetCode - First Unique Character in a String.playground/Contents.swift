class Solution {
    func firstUniqChar(_ s: String) -> Int {
        // Make s into an array to iterate through each character
        // Create a hash map to store each character
        var newArray = Array(s)
        var frequencyDict: [Character:Int] = [:]
        
        // Iterate through an array
        // if the character exists in our hash, we will increment the count by one
        // if the character doesn't exists, we will set it as 1
        for char in newArray {
            if let count = frequencyDict[char] {
                frequencyDict[char] = count + 1
            } else {
                frequencyDict[char] = 1
            }
        }
        
        // We enumerate the array of s to find the first unique character
        // unique character should equal to 1
        for (index, value) in newArray.enumerated() {
            if frequencyDict[value] == 1 {
                return index
            }
        }
        
        return -1
    }
}
