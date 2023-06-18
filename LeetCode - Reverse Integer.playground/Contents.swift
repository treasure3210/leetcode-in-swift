class Solution {
    func reverse(_ x: Int) -> Int {
        // Create copy of x constant and bool property to determine integer's negativity
        var x = x
        var isNegative = false
        
        if x < 0 {
            // Since we are converting to string to perform reversal, we make x absolute
            isNegative = true
            x = -x
        }
        
        // Set x as reversed string, then convert back to Int
        var reversedString = String(x.description.reversed())
        var reversedInt = Int(reversedString)

        // Check if reversed Int is bigger than Int32.max
        if reversedInt == nil || reversedInt! > Int32.max {
            return 0
        }
        
        // return reversedInt depending on it's negativity
        return isNegative ? -reversedInt! : reversedInt!
    }
}
