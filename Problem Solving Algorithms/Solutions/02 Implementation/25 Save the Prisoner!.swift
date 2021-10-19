//
//  25 Save the Prisoner!.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/25 Save the Prisoner!
//
//  Created by Aleksandar Dinic on 19/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/save-the-prisoner/problem
struct Solution {
    
    /// Finds the chair number occupied by the prisoner who will receive that
    /// candy.
    ///
    /// - Parameters:
    ///   - n: The number of prisoners.
    ///   - m: The number of sweets.
    ///   - s: The chair number to begin passing out sweets from.
    /// - Returns: The chair number of the prisoner to warn.
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
        let ans = (s + m - 1) % n
        return ans > 0 ? ans : n
    }
    
}

let t = Int(readLine()!)!

let solution = Solution()
for _ in 0..<t {
    let nms = readLine()!.split(separator: " ").compactMap { Int($0) }

    let ans = solution.saveThePrisoner(n: nms[0], m: nms[1], s: nms[2])
    print(ans)
}
