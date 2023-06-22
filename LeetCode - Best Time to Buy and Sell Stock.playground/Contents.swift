class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        // since we are only allowed one transaction, we must find the highest profitable area
        var minPrice = Int.max
        var maxProfit = 0

        // test case: prices = [7,1,5,3,6,4]
        // first iteration: price = 7, minPrice > price, minPrice = 7, maxProfit = 0
        // second iteration: price = 1, minPrice > price, minPrice = 1, 1 - 1 is not greater than 0, maxProfit = 0
        // third iteration: price = 5, minPrice < price, 5 - 1 > 0, maxProfit = 5 - 1 = 4
        // fourth iteration: price = 3, minPrice < price, 3 - 1 < 4, maxProfit is still 4
        // fifth iteration: price = 6, minPrice < price, 6 - 1 > 4, maxProfit = 6 - 1 = 5
        // last iteration: price = 4, minPrice < price, 4 - 1 < 5, maxProfit is still 5
        // iteration ends
        for price in prices {
            if price < minPrice {
                minPrice = price
            } else if price - minPrice > maxProfit {
                maxProfit = price - minPrice
            }
        }

        return maxProfit
    }
}
