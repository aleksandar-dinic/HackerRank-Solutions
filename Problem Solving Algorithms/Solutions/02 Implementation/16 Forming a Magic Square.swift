//
//  16 Forming a Magic Square.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/16 Forming a Magic Square
//
//  Created by Aleksandar Dinic on 10/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/magic-square-forming/problem
struct Solution {
    
    /// Finds minimum cost to convert given square to magic square.
    ///
    /// - Parameter s: A 3 x 3 array of integers.
    /// - Returns: The minimal total cost of converting the input square to a
    ///   magic square.
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func formingMagicSquare(s: [[Int]]) -> Int {
        var ans = Int.max

        for magic in allMagic {
            var cur = 0
            for (i, _) in s.enumerated() {
                for (j, _) in s[i].enumerated() {
                    cur += abs(magic[i][j]-s[i][j])
                }
            }
            ans = min(ans, cur)
        }

        return ans
    }
    
    private let allMagic = [
        [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
        [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
        [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
        [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
        [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
        [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
        [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
        [[2, 7, 6], [9, 5, 1], [4, 3, 8]]
    ]
    
}

var s = [[Int]]()

for _ in 0..<3 {
    s.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

let solution = Solution()
let ans = solution.formingMagicSquare(s: s)
print(ans)
