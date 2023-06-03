class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        // Create new array and set it to nums array
        var newList = nums
        // Iterate through an array
        // since we are skipping first index, we must set
        // it to less than and minus 1
        for i in 0..<newList.count - 1 {
            newList[i + 1] +=  newList[i]
        }
        return newList
    }
}

let solution = Solution()
let nums = [1, 3, 5, 7, 9]
solution.runningSum(nums)
