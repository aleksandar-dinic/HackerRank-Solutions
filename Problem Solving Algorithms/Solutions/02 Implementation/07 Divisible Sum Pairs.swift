//
//  07 Divisible Sum Pairs.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/07 Divisible Sum Pairs
//
//  Created by Aleksandar Dinic on 01/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
struct Solution {
    
    /// Determines the number of `(i, j)` pairs where `i < j` and
    /// `arr[i] + arr[j]` is divisible by `k`.
    ///
    /// - Parameters:
    ///   - n: The length of array.
    ///   - k: The integer divisor.
    ///   - arr: An array of integers.
    /// - Returns: The number of pairs.
    ///
    /// - Complexity:
    ///   - time: O(n^2), where `n` is the length of `arr`.
    ///   - space: O(1), only constant space is used.
    func divisibleSumPairs(n: Int, k: Int, arr: [Int]) -> Int {
        var ans = 0

        for i in 0..<n-1 {
            for j in i+1..<n {
                guard (arr[i] + arr[j]) % k == 0 else { continue }
                ans += 1
            }
        }

        return ans
    }
    
}

let nk = readLine()!.split(separator: " ").compactMap { Int($0) }
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.divisibleSumPairs(n: nk[0], k: nk[1], arr: arr)
print(ans)
