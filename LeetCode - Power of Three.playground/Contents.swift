class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        // exclude negative values as they are never going to be power of three
        if n < 1 {
            return false
        }
        
        // if n is divisble by 3 without remainder, it's safe to say n is power of 3
        // n is a let constant, create a copy
        var num = n
        while num % 3 == 0 {
            num /= 3
        }
        
        return num == 1
    }
}
