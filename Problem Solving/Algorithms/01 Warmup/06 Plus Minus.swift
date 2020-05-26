//
//  06 Plus Minus.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 26/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/plus-minus/problem
struct Solution {

    /// Calculates the fractions of array elements that are positive, negative,
    /// and are zeros.
    ///
    /// - Parameter arr: An array of integers.
    /// - Returns: The fraction of positive numbers, negative numbers, and zeros in the
    ///   array compared to its size.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the length of arr.
    ///   - space: O(1), only constant space is used.
    func plusMinus(_ arr: [Int]) -> [Double] {
        var positiveCount = 0.0
        var negativeCount = 0.0
        var zeroCount = 0.0

        for a in arr {
            if a > 0 {
                positiveCount += 1
            } else if a < 0 {
                negativeCount += 1
            } else {
                zeroCount += 1
            }
        }

        let n = Double(arr.count)
        return [positiveCount/n, negativeCount/n, zeroCount/n]
    }

}

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.plusMinus(arr)
print(ans.map { String($0) }.joined(separator: "\n"))
