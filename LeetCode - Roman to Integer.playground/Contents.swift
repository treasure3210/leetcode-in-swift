class Solution {
    func romanToInt(_ s: String) -> Int {
        // first create dictionary to hold given values
        let romanMap: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        
        // create total property to keep track
        var total = 0
        // need validation for special roman numerals like IV IX, XL XC, CD CM etc
        var previousValue = 0
        
        for char in s {
            // test case: "MCMXCIV"
            // first: "M" -> total = 1000, currentValue = 1000, previousValue = 1000
            // second: "C" -> total = 1100, currentValue = 100, currentValue < previousValue, previousValue = 100
            // third: "M" -> total = 2100, currentValue = 1000, currentValue > previousValue, total is now 2100 - 200 = 1900, previousValue = 1000
            // fourth: "X" -> total = 1910, currentValue = 10, currentValue < previousValue, previousValue = 10
            // fifth: "C" -> total = 2010, currentValue = 100, currentValue > previousValue, total is now 2010 - 20 = 1990, previousValue = 100
            // sixth: "I" -> total = 1991, currentValue = 1, currentValue < previousValue, previousValue = 1
            // seventh: "V" -> total = 1996, currentValue = 5, currentValue > previousValue, total is now 1996 - 2 = 1994, previousValue = 5
            // iteration ends
            if let currentValue = romanMap[char] {
                total += currentValue
                if currentValue > previousValue {
                    total -= 2 * previousValue
                }
                previousValue = currentValue
            }
        }
        return total
    }
}
