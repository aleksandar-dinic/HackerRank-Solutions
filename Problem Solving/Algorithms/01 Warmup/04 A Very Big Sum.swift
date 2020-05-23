//
//  04 A Very Big Sum.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 23/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/a-very-big-sum/problem
struct Solution {

    /// Calculates the sum of the elements in an array.
    ///
    /// - Parameter arr: An array of integers.
    /// - Returns: Sum of the elements in the array.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the length of the array *arr*.
    ///   - space: O(1), only constant space is used.
    func aVeryBigSum(_ arr: [Int]) -> Int {
        return arr.reduce(0, +)
    }

}

_ = readLine()!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.aVeryBigSum(arr)
print(ans)
