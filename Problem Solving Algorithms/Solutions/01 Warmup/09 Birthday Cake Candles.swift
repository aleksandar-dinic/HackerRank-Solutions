//
//  09 Birthday Cake Candles.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 29/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/birthday-cake-candles/problem
struct Solution {

    /// Finds out how many candles your niece can successfully blow out.
    ///
    /// - Parameter arr: An array of integers representing candle heights.
    /// - Returns: The number of candles that can be blown out.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the length of arr.
    ///   - space: O(1), only constant space is used.
    func birthdayCakeCandles(_ arr: [Int]) -> Int {
        var ans = 0
        var tallest = Int.min

        for a in arr {
            if tallest < a {
                tallest = a
                ans = 1
            } else if tallest == a {
                ans += 1
            }
        }

        return ans
    }

}

_ = readLine()!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.birthdayCakeCandles(arr)
print(ans)
