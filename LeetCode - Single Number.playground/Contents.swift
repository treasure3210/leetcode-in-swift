class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        // XOR operations
        // Usage of binary
        
        var result = 0
        for num in nums {
            // Test case: nums = [4,1,2,1,2]
            // result = 0
            // when num = 4: 000 (0) XOR 100 (4) = 100 (4)
            // when num = 1: 100 (4) XOR 001 (1) = 101 (5)
            // when num = 2: 101 (5) XOR 010 (2) = 111 (7)
            // when num = 1: 111 (7) XOR 001 (1) = 110 (6)
            // when num = 2: 110 (6) XOR 010 (2) = 100 (4)
            // Therefore result = 4
            
            result ^= num
        }
        return result
    }
}
