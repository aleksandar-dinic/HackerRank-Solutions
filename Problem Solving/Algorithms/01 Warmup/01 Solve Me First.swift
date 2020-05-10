//
//  01 Solve Me First.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 10/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/solve-me-first/problem
struct Solution {

    /// Computes the sum of two integers.
    ///
    /// - Parameters:
    ///   - a: The first integer.
    ///   - b: The second integer.
    ///
    /// - Returns: Sum of the above two integers
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func solveMeFirst(a: Int, b: Int) -> Int {
        return a + b
    }

}

var a = Int(readLine()!)!
var b = Int(readLine()!)!

let solution = Solution()
let ans = solution.solveMeFirst(a: a, b: b)
print(ans)
