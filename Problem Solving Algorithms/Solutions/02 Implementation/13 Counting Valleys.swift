//
//  13 Counting Valleys.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/13 Counting Valleys
//
//  Created by Aleksandar Dinic on 07/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/counting-valleys/problem
struct Solution {
    
    /// Given the sequence of up and down steps during a hike, finds the
    /// number of valleys walked through.
    ///
    /// - Parameters:
    ///   - steps: The number of steps on the hike.
    ///   - path: A string describing the path.
    /// - Returns: The number of valleys traversed.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `path`.
    ///   - space: O(1), only constant space is used.
    func countingValleys(steps: Int, path: String) -> Int {
        var ans = 0
        var level = 0

        for c in path {
            if c == "U" {
                level += 1
            } else if c == "D" {
                level -= 1
            }
            
            guard level == 0, c == "U" else { continue }
            ans += 1
        }

        return ans
    }
    
}

let steps = Int(readLine()!)!
let path = readLine()!

let solution = Solution()
let ans = solution.countingValleys(steps: steps, path: path)
print(ans)
