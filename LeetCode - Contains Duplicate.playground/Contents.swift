class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        // I'll use Hash Map to keep the value with it's new index
        // I will enumerate the nums array
        // Iterate through an array, if the value = stored value in our hash array, return true
        // Otherwise, false.
        
        var emptyHash: [Int:Int] = [:]
        for (index, value) in nums.enumerated() {
            // if value = stored value, we will return true
            // if value has not been stored previously, we will store it in our emptyHash
            
            // Test case: nums = [1,2,3,1]
            // if index = 0, value = 1, emptyHash[1] doesn't exist
            // store index and value: emptyHash[1] = 0;
            // if index = 1, value = 2, emptyHash[2] doesn't exist
            // store index and value: emptyHash[2] = 1;
            // if index = 2, value = 3, emptyHash[3] doesn't exist
            // store index and value: emptyHash[3] = 2
            // if index = 3, value = 1, emptyHash[1] exists, return true
            if let _ = emptyHash[value] {
                return true
            } else {
                emptyHash[value] = index
            }
        }
        return false
    }
}
