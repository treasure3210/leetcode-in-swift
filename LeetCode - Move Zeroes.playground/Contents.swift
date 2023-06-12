class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            // Test case: [0,1,0,3,12]
            // starting from 4, going by -1 through 0
            // if i = 4, nums[4] = 12, nothing happens
            // if i = 3, nums[3] = 3, nothing happens
            // if i = 2, nums[2] = 0, it removes at index 2, and appends 0 at the end
            // if i = 1, nums[1] = 1, nothing happens
            // if i = 0, nums[0] = 0, it removes at index 0, and appends 0 at the end
            if nums[i] == 0 {
                nums.remove(at: i)
                nums.append(0)
            }
        }
    }
}
