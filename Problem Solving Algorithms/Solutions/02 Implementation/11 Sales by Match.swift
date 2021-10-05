//
//  11 Sales by Match.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/11 Sales by Match
//
//  Created by Aleksandar Dinic on 05/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/sock-merchant/problem
struct Solution {
    
    /// Finds pairs of socks with matching colors.
    ///
    /// - Parameter arr: The colors of each sock.
    /// - Returns: The number of pairs.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `arr`.
    ///   - space: O(n), where `n` is the length of `arr`.
    func sockMerchant(_ arr: [Int]) -> Int {
        var set = Set<Int>()
        var ans = 0

        for a in arr {
            guard set.contains(a) else {
                set.insert(a)
                continue
            }
            ans += 1
            set.remove(a)
        }

        return ans
    }
    
}

_ = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.sockMerchant(arr)
print(ans)
