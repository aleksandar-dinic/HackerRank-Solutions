//
//  05 Breaking the Records.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/05 Breaking the Records
//
//  Created by Aleksandar Dinic on 29/09/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
struct Solution {
    
    /// Finds the number of times Maria breaks her records for most and least
    /// points scored during the season.
    ///
    /// - Parameter scores: Points scored per game.
    /// - Returns: An array with the numbers of times she broke her records.
    ///   Index 0 is for breaking most points records, and index 1 is for
    ///   breaking least points records.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `scores`.
    ///   - space: O(1), only constant space is used.
    func breakingRecords(_ scores: [Int]) -> [Int] {
        guard !scores.isEmpty else { return [0, 0] }
        var maxScore = scores[0]
        var minScore = scores[0]
        var max = 0
        var min = 0

        for i in 1..<scores.count {
            if scores[i] > maxScore {
                max += 1
                maxScore = scores[i]
            } else if scores[i] < minScore {
                min += 1
                minScore = scores[i]
            }
        }

        return [max, min]
    }
    
}

_ = Int(readLine()!)!
let scores = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.breakingRecords(scores)
print(ans.map { String($0) }.joined(separator: " "))
