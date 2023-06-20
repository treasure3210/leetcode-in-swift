class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        // No need to check if either haystack and needle are empty thanks to constraints
        // check if needle is longer than haystack
        // both cases should return -1
        if needle.count > haystack.count {
            return -1
        } else {
            // find occurrance of needle in haystack using range
            let range = haystack.range(of: needle)
            
            if let range = range {
                // if range exists, return the startIndex of the range
                return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
            } else {
                // if not, return -1
                return -1
            }
        }
    }
}
