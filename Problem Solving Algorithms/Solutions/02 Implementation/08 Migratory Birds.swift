//
//  08 Migratory Birds.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/08 Migratory Birds
//
//  Created by Aleksandar Dinic on 02/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/migratory-birds/problem
struct Solution {
    
    /// Finds the lowest type id of the most frequently
    /// sighted birds.
    ///
    /// - Parameter arr: The types of birds sighted.
    /// - Returns: The lowest type id of the most frequently
    ///   sighted birds.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `arr`.
    ///   - space: O(n), where `n` is the length of `arr`.
    func migratoryBirds(arr: [Int]) -> Int {
        var dic = [Int: Int]()
        var maxVal = Int.min

        for a in arr {
            dic[a, default: 0] += 1
            maxVal = max(maxVal, dic[a] ?? 0)
        }

        var ans = Int.max
        for (key, val) in dic {
            guard maxVal == val else { continue }
            ans = min(ans, key)
        }

        return ans
    }
    
}

_ = readLine()!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.migratoryBirds(arr: arr)
print(ans)
