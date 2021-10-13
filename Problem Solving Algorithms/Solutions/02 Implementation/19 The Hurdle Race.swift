//
//  19 The Hurdle Race.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/19 The Hurdle Race
//
//  Created by Aleksandar Dinic on 13/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/the-hurdle-race/problem
struct Solution {
    
    /// Finds the minimum number of doses required.
    ///
    /// - Parameters:
    ///   - k: The height the character can jump naturally.
    ///   - height: The heights of each hurdle.
    /// - Returns: The minimum number of doses required, always 0 or more.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `height`.
    ///   - space: O(1), only constant space is used.
    func hurdleRace(k: Int, height: [Int]) -> Int {
        guard let maxHeight = height.max() else { return 0 }

        return k > maxHeight ? 0 : maxHeight - k
    }

}

let nk = readLine()!.split(separator: " ").compactMap { Int($0) }
let height = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.hurdleRace(k: nk[1], height: height)
print(ans)
