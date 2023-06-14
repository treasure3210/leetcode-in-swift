class Solution {
    func reverseString(_ s: inout [Character]) {
        // Cannot create new arrays or strings to hold data as it's asked to use in-place algorithm
        // O(1) extra memory means that we can only use fixed amount of memory
        // Two pointer approach?
        
        var leftIndex = 0
        var rightIndex = s.count - 1
        
        // As long as left index is less than right index, it means they are at opposite index of each other, which we can use to perform valid swap
        // This process continues until the pointers meet in the middle, at which point the array has been reversed.
        while leftIndex < rightIndex {
            // Test Case: ["h","e","l","l","o"]
            // leftIndex = 0, rightIndex = 4, temp = s[leftIndex] = "h", s[leftIndex] = s[4] = "o", s[rightIndex] = temp = "h", leftIndex is now 1, rightIndex is now 3
            // so right now it's ["o","e","l","l","h"]
            // leftIndex = 1, rightIndex = 3, temp = s[leftIndex] = "e", s[leftIndex] = s[3] = "l", s[rightIndex] = temp = "e", leftIndex is now 2, rightIndex is now 2
            // so now it's ["o","l","l","e","h"]
            // Since leftIndex is no longer smaller than rightIndex, while loop ends, swap has completed
            
            // temporarily store left side of index
            let temp = s[leftIndex]
            // swap left with right index value
            s[leftIndex] = s[rightIndex]
            // set right index value as temp(left index value)
            s[rightIndex] = temp
            
            // increment left index
            leftIndex += 1
            
            // decrement right index
            rightIndex -= 1
        }
    }
}
