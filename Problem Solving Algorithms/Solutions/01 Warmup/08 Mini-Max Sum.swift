//
//  08 Mini-Max Sum.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 28/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/mini-max-sum/problem
struct Solution {

    /// Finds the minimum and maximum values that can be calculated by summing exactly four
    /// of the five integers.
    ///
    /// - Parameter arr: An array of 5 integers.
    /// - Returns: Minimum and maximum values.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the length of arr.
    ///   - space: O(1), only constant space is used.
    func miniMaxSum(_ arr: [Int]) -> [Int] {
        var minEl = Int.max
        var maxEl = Int.min

        for a in arr {
            minEl = min(minEl, a)
            maxEl = max(maxEl, a)
        }

        let sum = arr.reduce(0, +)
        return [sum - maxEl, sum - minEl]
    }

}

let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.miniMaxSum(arr)
print(ans.map { String($0) }.joined(separator: " "))
