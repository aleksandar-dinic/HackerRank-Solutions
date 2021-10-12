//
//  18 Climbing the Leaderboard.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/18 Climbing the Leaderboard
//
//  Created by Aleksandar Dinic on 12/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem
struct Solution {
    
    /// Finds the player's rank after each new score.
    ///
    /// - Parameters:
    ///   - ranked: The leaderboard scores.
    ///   - player: The player's scores.
    /// - Returns: The player's rank after each new score.
    ///
    /// - Complexity:
    ///   - time: O(n + m), where `n` is the length of `ranked`, and `m` is
    ///     the length of `player`.
    ///   - space: O(max(n, m)), where `n` is the length of `ranked`, and `m`
    ///     is the length of `player`.
    func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
        guard !ranked.isEmpty else { return [] }
        var ans = [Int]()
        var stack = [Int]()
        stack.append(ranked[0])
        var tmp = 0
        for i in 1..<ranked.count {
            guard stack[tmp] != ranked[i] else { continue }
            stack.append(ranked[i])
            tmp += 1
        }
        
        for player in player {
            while tmp >= 0, player >= stack[tmp] {
                tmp -= 1
            }
            ans.append(tmp + 2)
        }
        
        return ans
    }

}

_ = readLine()!
let ranked = readLine()!.split(separator: " ").compactMap { Int($0) }
_ = readLine()!
let player = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.climbingLeaderboard(ranked: ranked, player: player)
print(ans.map { String($0) }.joined(separator: "\n"))
