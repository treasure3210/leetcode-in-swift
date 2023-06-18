class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        // test case matrix = [[1,2,3],[4,5,6],[7,8,9]]
        // When i = 0, j = 0:
        // Temp stores the value 1 from matrix[0][0].
        // matrix[0][0] is updated with matrix[2][0] value, becoming 7.
        // matrix[2][0] is updated with matrix[2][2] value, becoming 9.
        // matrix[2][2] is updated with matrix[0][2] value, becoming 3.
        // matrix[0][2] is updated with the stored temp value, becoming 1.
        // Now, the matrix looks like this: [[7,2,1],[4,5,6],[9,8,3]]
        
        // When i = 0, j = 1:
        // Temp stores the value 2 from matrix[0][1].
        // matrix[0][1] is updated with matrix[1][0] value, becoming 4.
        // matrix[1][0] is updated with matrix[2][1] value, becoming 8.
        // matrix[2][1] is updated with matrix[1][2] value, becoming 6.
        // matrix[1][2] is updated with the stored temp value, becoming 2.
        // Now, the matrix looks like this: [[7,4,1],[8,5,2],[9,6,3]]
        
        for i in 0..<n/2 {
            // The inner loop starts from i and ends at n - i - 1, this is to ensure we are only
            // visiting the top-left quadrant of the matrix.
            for j in i..<n - i - 1 {
                // Store the value at the current position (i, j), which will be replaced in the next step.
                let temp = matrix[i][j]
                // The top row's values are replaced by the left column's values.
                matrix[i][j] = matrix[n-j-1][i]
                // The left column's values are replaced by the bottom row's values.
                matrix[n-j-1][i] = matrix[n-i-1][n-j-1]
                // The bottom row's values are replaced by the right column's values.
                matrix[n-i-1][n-j-1] = matrix[j][n-i-1]
                // The right column's values are replaced by the stored value.
                matrix[j][n-i-1] = temp
            }
        }
    }
}
