//
//  03 Compare the Triplets.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 20/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/compare-the-triplets/problem
struct Solution {

    /// Finds Alice's and Bob's comparison points. Comparison points are the total
    /// points a person earned.
    ///
    /// - Parameters:
    ///   - a: An array of integers representing Alice's challenge rating,
    ///   - b: An array of integers representing Bob's challenge rating.
    /// - Returns: An array of two integers denoting the respective comparison points
    ///   earned by Alice and Bob.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the length of the array *a*.
    ///   - space: O(1), only constant space is used.
    func compareTriplets(a: [Int], b: [Int]) -> [Int] {
        guard a.count == b.count else { return [] }

        var aliceScore = 0
        var bobScore = 0

        for i in 0..<a.count {
            if a[i] > b[i] {
                aliceScore += 1
            } else if a[i] < b[i] {
                bobScore += 1
            }
        }

        return [aliceScore, bobScore]
    }

}

let a: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }
let b: [Int] = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.compareTriplets(a: a, b: b
print(ans.map { String($0) } .joined(separator: " "))
