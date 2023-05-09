class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var emptyArray = [Int]()
        var currentNumber: Int? = nil
        
        for (index, value) in nums.enumerated() {
            if currentNumber == nil || currentNumber != value {
                currentNumber = nums[index]
                emptyArray.append(currentNumber!)
            }
        }
        
        nums = emptyArray
        print("nums array: \(nums)")
        return nums.count
    }
}

var solution = Solution()

var nums1 = [1,1,2,3,4,4,4,4,5,6,10,10,15,15,20,21]
let result1 = solution.removeDuplicates(&nums1)
print("Total count for result1: \(result1)")

print("-------------------------------")

var nums2 = [1,1,1,1,1,1,1,1,1,1,1,1,2,3,4,5,5,5,5,5]
let result2 = solution.removeDuplicates(&nums2)
print("Total count for result2: \(result2)")

print("-------------------------------")

var nums3 = [1,5,5,5,7,7,7,10,15,30,30,50]
let result3 = solution.removeDuplicates(&nums3)
print("Total count for result2: \(result3)")

