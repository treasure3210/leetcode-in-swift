class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        // if given string is empty, return empty string
        if strs.isEmpty {
            return ""
        }
        
        // create variable to hold first of strs array
        var prefix = strs[0]
        // iterate through the strs array, starting from 1st
        // For each string we check if it starts with out current prefix
        // test case: strs = ["flower", "flow", "flight"]
        // i = 1, prefix = flower, strs[1] does not have prefix flower, droplast, prefix is now flowe
        // i is still 1, prefix = flowe, strs[1] does not have prefix flowe, droplast, prefix is now flow
        // i is still 1, prefix = flow, strs[1] does not have prefix flow, droplast, prefix is now flo
        // i is still 1, prefix = flo, strs[1] does not have prefix flo, droplast, prefix is now fl
        // i is still 1, prefix = fl, strs[1] does have prefix fl, move to next iteration
        // i = 2, prefix = fl, strs[2] does have prefix fl
        // end of iteration
        for i in 1..<strs.count {
            while !strs[i].hasPrefix(prefix) {
                // If it doesn't, we remove the last character from our prefix
                prefix = String(prefix.dropLast())
                if prefix.isEmpty {
                    // if there aren't any common prefix, return ""
                    return ""
                }
            }
        }
        return prefix
    }
}
