//
//  06 Subarray Division.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/06 Subarray Division
//
//  Created by Aleksandar Dinic on 30/09/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/the-birthday-bar/problem
struct Solution {
    
    /// Finds how many ways chocolate can be divided.
    ///
    /// - Parameters:
    ///   - s: The numbers on each of the squares of chocolate.
    ///   - d: Ron's birth day.
    ///   - m: Ron's birth month.
    /// - Returns: The number of ways the bar can be divided.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `s`.
    ///   - space: O(1), only constant space is used.
    func birthday(s: [Int], d: Int, m: Int) -> Int {
        var ans = 0
        for (i, _) in s[0...s.count-m].enumerated() {
            var sum = 0
            for j in 0..<m {
                sum += s[i+j]
            }
            if sum == d {
                ans += 1
            }
        }
        return ans
    }
    
}

_ = Int(readLine()!)!
let s = readLine()!.split(separator: " ").compactMap { Int($0) }
let dm = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.birthday(s: s, d: dm[0], m: dm[1])
print(ans)
