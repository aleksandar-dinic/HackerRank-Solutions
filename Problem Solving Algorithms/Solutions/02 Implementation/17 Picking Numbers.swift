//
//  17 Picking Numbers.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/17 Picking Numbers
//
//  Created by Aleksandar Dinic on 11/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/picking-numbers/problem
struct Solution {
    
    /// Finds the longest subarray where the absolute difference between any
    /// two elements is less than or equal to 1.
    ///
    /// - Parameter arr: An array of integers.
    /// - Returns: The length of the longest subarray that meets the criterion.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `arr`.
    ///   - space: O(n), where `n` is the length of `arr`.
    func pickingNumbers(_ arr: [Int]) -> Int {
        guard !arr.isEmpty else { return 0 }
        var ans = 0
        var dic = [Int: Int]()

        for num in arr {
            dic[num, default: 0] += 1
        }

        for (key, val) in dic {
            ans = max(ans, val)

            if let left = dic[key-1] {
                ans = max(ans, left + val)
            }

            if let right = dic[key+1] {
                ans = max(ans, right + val)
            }
        }

        return ans
    }

}

_ = readLine()!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.pickingNumbers(arr)
print(ans)
