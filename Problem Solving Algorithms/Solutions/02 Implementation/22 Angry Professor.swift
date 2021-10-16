//
//  22 Angry Professor.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/22 Angry Professor
//
//  Created by Aleksandar Dinic on 16/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/angry-professor/problem
struct Solution {
    
    /// Finds if the class is cancelled.
    ///
    /// - Parameters:
    ///   - k: The threshold number of students.
    ///   - a: The arrival times of the `n` students.
    /// - Returns: Either `YES` or `NO`.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `a`.
    ///   - space: O(1), only constant space is used.
    func angryProfessor(k: Int, a: [Int]) -> String {
        var ans = 0
        for time in a where time <= 0 {
            ans += 1
        }
        return ans >= k ? "NO" : "YES"
    }

}

let t = Int(readLine()!)!

let solution = Solution()
for _ in 0..<t {
    let nk = readLine()!.split(separator: " ").compactMap { Int($0) }
    let a = readLine()!.split(separator: " ").compactMap { Int($0) }

    let ans = solution.angryProfessor(k: nk[1], a: a)
    print(ans)
}
