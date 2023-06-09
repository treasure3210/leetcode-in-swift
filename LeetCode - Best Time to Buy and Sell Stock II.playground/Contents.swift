class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        // Buy low, sell high
        // Greedy Algorithm
        
        // Create a property to keep track of the max Profit
        var maxProfit = 0
        for i in 0..<prices.count - 1 {
            // test case: prices = [7,1,5,3,6,4]
            // if i = 0, prices[i] > prices[i + 1]
            // if i = 1, prices[i] < prices[i + 1], therefore maxProfit = 4
            // if i = 2, prices[i] > prices[i + 1], therefore maxProfit still = 4
            // if i = 3, prices[i] < prices[i + 1], therefore maxProfit = 3 + 4 = 7
            // if i = 4, prices[i] > prices[i + 1], therefore maxProfit still = 7
            if prices[i] < prices[i + 1] {
                maxProfit += prices[i + 1] - prices[i]
            }
            // We are not worried about where prices[i] > prices[i + 1]
        }
        // return total appended maxProfit
        return maxProfit
    }
}
