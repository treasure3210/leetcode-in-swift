class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        // I will create an empty array to store the output
        // I will create an empty dictionary to store the value, and the count of value in one of the array
        var outputArray = [Int]()
        var emptyDict = [Int:Int]()

        // I will iterate through one of the array
        // to count the number of values in single array
        for i in nums1 {
            // If the value exists, I will just increase the count by 1
            // Test case: nums1 = [1,2,2,1], nums2 = [2,2]
            // if i = 1, it will go to else statement, emptyDict[1] = 1
            // if i = 2, it will go to else statement, emptyDict[2] = 1
            // if i = 2, it exists, count = emptyDict[2] = 1, emptyDict[2] = 1 + 1 = 2
            // if i = 1, it exists, count = emptyDict[1] = 1, emptyDict[1] = 1 + 1 = 2

            // Test case: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
            // if i = 4, emptyDict[4] = 1
            // if i = 9, emptyDict[9] = 1
            // if i = 5, emptyDict[5] = 1
            
            if let count = emptyDict[i] {
                emptyDict[i] = count + 1
            } else {
                // If the value doesn't exist,
                // I will set the value to 1 to indicate there is one value
                emptyDict[i] = 1
            }
        }

        for i in nums2 {
            // if value exists, append to outputArray
            // Test case: nums1 = [1,2,2,1], nums2 = [2,2]
            // emptyDict = [1:2, 2:2]
            // if i = 2, value exists, count = 2, outputArray = [2]
            // if i = 2, value exists, count = 2, outputArray = [2,2]

            // Test case: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
            // emptyDict = [4:1, 9:1, 5:1]
            // if i = 9, value exists, count = 1, outputArray = [9], count = 0
            // if i = 4, count = 1, outputArray = [9,4], count = 0
            // if i = 9, count = 0, nothing gets appended, outputArray is still [9,4]
            // if i = 4, count = 0, nothing gets appended, outputArray is still [9,4]
            // if i = 8, it's nil,  nothing gets appended, outputArray is still [9,4]

            if let count = emptyDict[i], count > 0 {
                outputArray.append(i)
                emptyDict[i] = count - 1
            }
        }

        return outputArray
    }
}
