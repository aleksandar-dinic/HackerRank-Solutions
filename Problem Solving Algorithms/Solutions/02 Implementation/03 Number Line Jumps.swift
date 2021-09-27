//
//  03 Number Line Jumps.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/03 Number Line Jumps
//
//  Created by Aleksandar Dinic on 27/09/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/kangaroo/problem
struct Solution {

    /// Finds if both kangaroos can be in the same location at the same time.
    ///
    /// - Parameters:
    ///   - x1: Start location of the first kangaroo.
    ///   - v1: Meters per jump for the first kangaroo.
    ///   - x2: Start location of the second kangaroo.
    ///   - v2: Meters per jump for the second kangaroo.
    ///
    /// - Returns: `YES` if both kangaroos can be in the same location at the same
    ///   time, otherwise return `NO`.
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        if x2 > x1, v2 > v1 {
            return "NO"
        }

        if v1 == v2, x2 > x1 {
            return "NO"
        }

        let ans = (max(x1, x2) - min(x1, x2)) % (max(v1, v2) - min(v1, v2))
        return ans == 0 ? "YES" : "NO"
    }

}

let x1v1x2v2 = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.kangaroo(
    x1: x1v1x2v2[0],
    v1: x1v1x2v2[1],
    x2: x1v1x2v2[2],
    v2: x1v1x2v2[3]
)
print(ans)
