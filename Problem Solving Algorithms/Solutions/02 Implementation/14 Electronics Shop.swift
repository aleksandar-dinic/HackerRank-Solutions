//
//  14 Electronics Shop.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/14 Electronics Shop
//
//  Created by Aleksandar Dinic on 08/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/electronics-shop/problem
struct Solution {
    
    /// Finds the cost to buy items.
    ///
    /// - Parameters:
    ///   - keyboards: The keyboard prices.
    ///   - drives: The drive prices.
    ///   - b: The budget.
    /// - Returns: The maximum that can be spent, or -1 if it is not possible
    ///   to buy both items.
    ///
    /// - Complexity:
    ///   - time: O(n * m), where `n` is the number of `keyboards`, and `m` is
    ///   the number of `drives`.
    ///   - space: O(1), only constant space is used.
    func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
        var ans = -1
        
        for keyboard in keyboards {
            for drive in drives {
                guard keyboard + drive <= b else { continue }
                ans = max(ans, keyboard + drive)
            }
        }

        return ans
    }
    
}

let bnm = readLine()!.split(separator: " ").compactMap { Int($0) }
let keyboards = readLine()!.split(separator: " ").compactMap { Int($0) }
let drives = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.getMoneySpent(keyboards: keyboards, drives: drives, b: bnm[0])
print(ans)
