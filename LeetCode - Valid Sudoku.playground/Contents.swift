class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        // Initialize sets for rows, columns, and boxes (3x3 subgrids in Sudoku).
        // Each set will store the characters already seen in that particular row/column/box.
        var rows = Array(repeating: Set<Character>(), count: 9)
        var columns = Array(repeating: Set<Character>(), count: 9)
        var boxes = Array(repeating: Set<Character>(), count: 9)

        // Iterate over the entire 9x9 board.
        for i in 0..<9 {
        // When i = 0, j = 0, the character at board[0][0] is '5'
    // '5' does not exist in the 0th row, 0th column, and 0th box, so it is inserted into these sets.

    // When i = 0, j = 1, the character at board[0][1] is '3'
    // '3' does not exist in the 0th row, 1st column, and 0th box, so it is inserted into these sets.

    // When i = 0, j = 2, the character at board[0][2] is '.'
    // '.' represents an empty cell, so the code continues to the next iteration without doing anything.

    // ...

    // Continue this way for the remaining cells.
    // If at any point, a character exists in its respective row, column, or box, the function will return false,
    // indicating that the board is not a valid Sudoku board.
    // In this case, no such character is found, so the function will return true after iterating over all cells.
            for j in 0..<9 {
                // Get the character at the current cell.
                let ch = board[i][j]
                
                // If the cell is empty (represented by "."), skip this iteration.
                if ch == "." {
                    continue
                }

                // Calculate which 3x3 box the current cell belongs to.
                let boxIndex = (i / 3) * 3 + j / 3

                // Check if the character already exists in the corresponding row, column, or box.
                // If it does, it's a duplicate and the board is not valid according to Sudoku rules.
                if rows[i].contains(ch) || columns[j].contains(ch) || boxes[boxIndex].contains(ch) {
                    return false
                }

                // If the character doesn't exist in the row, column, or box, add it to the set.
                rows[i].insert(ch)
                columns[j].insert(ch)
                boxes[boxIndex].insert(ch)
            }
        }

        // If we've iterated over the entire board without finding duplicates in any row, column, or box,
        // the board is valid according to Sudoku rules.
        return true
    }
}
