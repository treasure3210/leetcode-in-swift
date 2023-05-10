class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var emptyArray = [Int]()
        var startingIndex = nums.count - k % nums.count
        
        for (index, _) in nums.enumerated() {
            var newIndex = (startingIndex + index) % nums.count
            emptyArray.append(nums[newIndex])
        }
        
        nums = emptyArray
        print("Sorted array: \(nums)")
    }
}

let solution = Solution()

var array1 = [1, 2, 3, 4, 5, 6, 7]
let k1 = 3
let result1: () = solution.rotate(&array1, k1)

print("-------------------------------")

var array2 = [5, 7, 9, 4, 3]
let k2 = 1
let result2: () = solution.rotate(&array2, k2)
