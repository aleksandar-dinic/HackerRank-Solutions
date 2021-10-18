//
//  24 Viral Advertising.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/24 Viral Advertising
//
//  Created by Aleksandar Dinic on 18/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/strange-advertising/problem
struct Solution {
    
    /// Finds how many people have liked the ad by the end of a given day.
    ///
    /// - Parameter n: The day number to report.
    /// - Returns: The cumulative likes at that day.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the given `n`.
    ///   - space: O(1), only constant space is used.
    func viralAdvertising(n: Int) -> Int {
        guard n > 0 else { return 0 }
        var people = 5
        var ans = 0

        for _ in 0..<n {
            people = people / 2
            ans += people
            people *= 3
        }

        return ans
    }
    
}

let n = Int(readLine()!)!

let solution = Solution()
let ans = solution.viralAdvertising(n: n)
print(ans)
