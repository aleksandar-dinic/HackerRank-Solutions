//
//  02 Simple Array Sum.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 12/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/simple-array-sum/problem
struct Solution {

    /// Finds the sum of the array elements.
    ///
    /// - Parameter arr: An array of integers.
    /// - Returns: The sum of the array elements.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the length of the array.
    ///   - space: O(1), only constant space is used.
    func simpleArraySum(_ arr: [Int]) -> Int {
        return arr.reduce(0, +)
    }

}

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }
guard arr.count == n else { fatalError("Bad input") }

let solution = Solution()
let ans = solution.simpleArraySum(arr)
print(ans)
