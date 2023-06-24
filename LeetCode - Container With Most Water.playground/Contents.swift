class Solution {
    func maxArea(_ height: [Int]) -> Int {
        // Use Two Pointer Technique
        var left = 0
        var right = height.count - 1
        var maxArea = 0
        
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
