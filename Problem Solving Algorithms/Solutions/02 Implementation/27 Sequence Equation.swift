//
//  27 Sequence Equation.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/27 Sequence Equation
//
//  Created by Aleksandar Dinic on 21/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/permutation-equation/problem
struct Solution {
    
    /// Finds the values of `y` for all `x` in the arithmetic sequence 1
    /// to `n`.
    ///
    /// - Parameter p: An array of integers.
    /// - Returns: The values of `y` for all `x`.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `p`.
    ///   - space: O(n), where `n` is the length of `p`.
    func permutationEquation(p: [Int]) -> [Int] {
        let n = p.count
        var tmp = [Int](repeating: 0, count: n + 1)
        var ans = [Int]()
        
        for (i, val) in p.enumerated() {
            tmp[val] = i + 1
        }
        
        for i in 1...n {
            ans.append(tmp[tmp[i]])
        }

        return ans
    }
    
}

_ = readLine()!
let p = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.permutationEquation(p: p)
print(ans.map { String($0) }.joined(separator: "\n"))
