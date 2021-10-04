//
//  10 Bill Division.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/10 Bill Division
//
//  Created by Aleksandar Dinic on 04/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/bon-appetit/problem
struct Solution {
    
    /// Finds if the bill can be fairly split.
    ///
    /// - Parameters:
    ///   - bill: The cost of each item ordered.
    ///   - k: The index of the item Anna doesn't eat.
    ///   - b: The amount of money that Anna contributed to the bill.
    /// - Returns: `Bon Appetit` if the bill is fairly split, otherwise amount
    ///   of money that Brian owes Anna.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `bill`.
    ///   - space: O(1), only constant space is used.
    func bonAppetit(bill: [Int], k: Int, b: Int) -> String {
        var ans = bill.reduce(0, +)
        ans = (ans - bill[k])/2
        return ans == b ? "Bon Appetit" : "\(b - ans)"
    }
    
}

let nk = readLine()!.split(separator: " ").compactMap { Int($0) }
let bill = readLine()!.split(separator: " ").compactMap { Int($0) }
let b = Int(readLine()!)!

let solution = Solution()
let ans = solution.bonAppetit(bill: bill, k: nk[1], b: b)
print(ans)
