class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        // First, we will create a collection of tuples (diffs) where each tuple contains a pair of corresponding characters from s1 and s2 that are not equal to each other.
        let diffs = zip(s1, s2).filter { $0 != $1 }
        
        // If there are no tuples in diffs (i.e., if diffs.count == 0), then s1 and s2 are already equal, and we return true.
        // If there are exactly two tuples in diffs (i.e., if diffs.count == 2), then we check if swapping the characters in the second tuple makes it equal to the first tuple.
        // If it does, then a single swap in s1 or s2 would make the two strings equal, and we return true.
        // In all other cases, s1 and s2 cannot be made equal with a single swap, so we return false.
        return diffs.count == 0 || (diffs.count == 2 && diffs[0] == (diffs[1].1, diffs[1].0))
    }
}

let solution = Solution()
let s1 = "bank"
let s2 = "kanb"

let secondS1 = "attack"
let secondS2 = "defend"

let thirdS1 = "kelb"
let thirdS2 = "kelb"

solution.areAlmostEqual(s1, s2)
solution.areAlmostEqual(secondS1, secondS2)
solution.areAlmostEqual(thirdS1, thirdS2)
