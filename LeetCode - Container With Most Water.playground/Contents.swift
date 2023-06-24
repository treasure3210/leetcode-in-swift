class Solution {
    func maxArea(_ height: [Int]) -> Int {
        // Use Two Pointer Technique
        var left = 0
        var right = height.count - 1
        var maxArea = 0
        
        // test case: height = [1,8,6,2,5,4,8,3,7], left = 0, right = 8
        // first iteration: h = 1, w = 8, area = 8, maxArea = 8
        // height[left:0] = 1 | height[right:8] = 7, left = 1
        // second iteration: h = 7, w = 7, area = 49, maxArea = 49
        // height[left:1] = 8 | height[right:8] = 7, right = 7
        // third iteration: h = 3, w = 6, area = 18, maxArea = 49
        // height[left:1] = 8 | height[right:7] = 3, right = 6
        // fourth iteration: h = 8, w = 5, area = 40, maxArea = 49
        // height[left:1] = 8 | height[right:6] = 8, right = 5
        // fifth iteration: h = 4, w = 4, area = 16, maxArea = 49
        // height[left:1] = 8 | height[right:5] = 4, right = 4
        // sixth iteration: h = 5, w = 3, area = 15, maxArea = 49
        // height[left:1] = 8 | height[right:4] = 5, right = 3
        // seventh iteration: h = 2, w = 2, area = 4, maxArea = 49
        // height[left:1] = 8 | height[right:3] = 2, right = 2
        // eighth iteration: h = 6, w = 1, area = 6, maxArea = 49
        // height[left:1] = 8 | height[right:2] = 6, right = 1
        // iteration ends, maxProfit = 49
        while left < right {
            // Calculate area
            let h = min(height[left], height[right])
            let w = right - left
            let area = h * w
            
            // Update maxArea if current area is larger
            maxArea = max(maxArea, area)
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return maxArea
    }
}
