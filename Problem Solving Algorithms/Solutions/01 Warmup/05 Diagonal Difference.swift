//
//  05 Diagonal Difference.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 24/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/diagonal-difference/problem
struct Solution {

    /// Calculates the absolute difference between the sums of square matrix diagonal.
    ///
    /// - Parameter matrix: Square matrix.
    /// - Returns: The absolute difference between the sums of the matrix's two diagonals
    ///   as a single integer.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the number of rows in the matrix.
    ///   - space: O(1), only constant space is used.
    func diagonalDifference(_ matrix: [[Int]]) -> Int {
        var leftSum = 0
        var rightSum = 0

        for i in 0..<matrix.count {
            leftSum += matrix[i][i]
            rightSum += matrix[i][matrix.count-i-1]
        }

        return abs(leftSum - rightSum)
    }

}

let n = Int(readLine()!)!
var matrix = [[Int]]()

for _ in 1...n {
    matrix.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

let solution = Solution()
let ans = solution.diagonalDifference(matrix)
print(ans)
