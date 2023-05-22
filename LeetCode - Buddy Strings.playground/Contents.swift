class Solution {
    func buddyStrings(_ s: String, _ goal: String) -> Bool {
        
        // If the lengths of the two strings are different, it's impossible to make them equal by swapping characters in s, so we return false.
        if s.count != goal.count {
            return false
        }

        // Check if string s equals to string goal:
        if s == goal {
            // We check if string s has any duplicate characters by converting it to a set and comparing the counts.
            // If string s contains any duplicates, we can perform a "meaningless" swap (swapping a character with another occurrence of itself) that doesn't change s, so we return true.
            // If all characters in s are unique, any swap would change string s and thus it would no longer equal goal, so we return false.
            return Set(s).count < s.count
            
        } else {
            // If string s does not equal string goal, we find the pairs of corresponding characters in string s and string goal that are different.
            // If there are exactly two such pairs, and these pairs are the same but in reverse order, we can make string s equal to string goal by swapping the two different characters in string s, so we return true.
            // Otherwise, it's not possible to make string s equal to string goal with a single swap, so we return false.
            let diff = zip(s, goal).filter { $0 != $1 }
            return diff.count == 2 && diff[0] == (diff[1].1, diff[1].0)
        }
        
    }
}

let solution = Solution()

let s = "ab"
let goal = "ba"

let s2 = "ab"
let goal2 = "ab"

let s3 = "aa"
let goal3 = "aa"

solution.buddyStrings(s, goal)
solution.buddyStrings(s2, goal2)
solution.buddyStrings(s3, goal3)
