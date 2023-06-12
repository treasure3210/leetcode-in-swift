class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        // Make mutable copy of an array
        var digits = digits
        // Iterate through the array in opposite order
        for i in 0..<digits.count {
            // Test case: digits = [1,2,3]
            // if i = 0, index = 3 - 1 - 0 = 2
            // if index = 2, digits[2] = 3, goes to else statement, digits[2] = 3 + 1 = 4 returns the array and ends the loop
            // digits = [1,2,4]
            var index = digits.count - 1 - i
            // If the current digit is 9, set it to 0 (as adding 1 would make it 10, but we want to keep it a single digit)
            if digits[index] == 9 {
                digits[index] = 0
            } else {
                // If the current digit is not 9, just add 1 to it and return the result immediately.
                // We can do this because there is no carry-over to worry about.
                digits[index] += 1
                return digits
            }
        }

        // If all digits in the array were 9, we have 'carried' the 1 all the way to the front
        // and we still have it 'in hand'. We therefore need to add another digit to the front to hold this.
        return [1] + digits
    }
}
