//
//  26 Circular Array Rotation.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/26 Circular Array Rotation
//
//  Created by Aleksandar Dinic on 20/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/circular-array-rotation/problem
struct Solution {
    
    /// Performs a number of right circular rotations and returns the values of
    /// the elements at the given indices.
    ///
    /// - Parameters:
    ///   - a: The array to rotate.
    ///   - k: The rotation count.
    ///   - queries: The indices to report.
    /// - Returns: The values in the rotated `a` as requested in `m`.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `queries`.
    ///   - space: O(n), where `n` is the length of `queries`.
    func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
        let n = a.count
        let rot = k % n

        var ans = [Int]()
        for querie in queries {
            if querie - rot >= 0 {
                ans.append(a[querie - rot])
            } else {
                ans.append(a[querie - rot + n])
            }
        }

        return ans
    }
    
}

let nkq = readLine()!.split(separator: " ").compactMap { Int($0) }
let a = readLine()!.split(separator: " ").compactMap { Int($0) }

var queries = [Int]()
for _ in 0..<nkq[2] {
    queries.append(Int(readLine()!)!)
}

let solution = Solution()
let ans = solution.circularArrayRotation(a: a, k: nkq[1], queries: queries)
print(ans.map { String($0) }.joined(separator: "\n"))
