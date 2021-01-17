//
//  02 2D Array - DS.swift
//  HackerRank-Solutions/Problem Solving/Data Structures/01 Arrays
//
//  Created by Aleksandar Dinic on 05/06/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/2d-array/problem
struct Solution {

    /// Calculates the maximum hourglass sum.
    ///
    /// - Parameter matrix: The matrix of integers.
    /// - Returns: The largest (maximum) hourglass sum found in matrix.
    ///
    /// - Complexity:
    ///   - time: O(n * m), where n is the number of rows in the matrix, and m is the
    ///     number of columns in matrix.
    ///   - space: O(1), only constant space is used.
    func hourglassSum(_ matrix: [[Int]]) -> Int {
        var ans = Int.min

        for i in 0..<matrix.count-2 {
            for j in 0..<matrix[i].count-2 {
                var sum = matrix[i][j] + matrix[i][j+1] + matrix[i][j+2]
                sum += matrix[i+1][j+1]
                sum += matrix[i+2][j] + matrix[i+2][j+1] + matrix[i+2][j+2]

                ans = max(ans, sum)
            }
        }

        return ans
    }

}

var matrix = [[Int]]()

for _ in 0..<6 {
    matrix.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

let solution = Solution()
let ans = solution.hourglassSum(matrix)
print(ans)
