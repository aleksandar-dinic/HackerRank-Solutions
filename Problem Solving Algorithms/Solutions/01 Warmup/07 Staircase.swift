//
//  07 Staircase.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 27/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/staircase/problem
struct Solution {

    /// Creates the staircase of size n using # symbols and spaces.
    ///
    /// - Parameter n: Size of the staircase.
    /// - Returns: The staircase of size n.
    ///
    /// - Complexity:
    ///   - time: O(n * n), where n is the size of the staircase.
    ///   - space: O(n), where n is the size of the staircase.
    func staircase(_ n: Int) -> [String] {
        var ans = [String]()

        for i in 0..<n {
            var tmp = ""
            for j in 0..<n {
                tmp += j >= n - (i+1) ? "#" : " "
            }
            ans.append(tmp)
        }
        return ans
    }

}

let n = Int(readLine()!)!

let solution = Solution()
let ans = solution.staircase(n)
print(ans.joined(separator: "\n"))
