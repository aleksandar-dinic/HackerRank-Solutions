//
//  23 Beautiful Days at the Movies.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/23 Beautiful Days at the Movies
//
//  Created by Aleksandar Dinic on 17/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem
struct Solution {
    
    /// Finds the number of beautiful days in the range.
    ///
    /// - Parameters:
    ///   - i: The starting day number.
    ///   - j: The ending day number.
    ///   - k: The divisor.
    /// - Returns: The number of beautiful days in the range.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the number of days.
    ///   - space: O(1), only constant space is used.
    func beautifulDays(i: Int, j: Int, k: Int) -> Int {
        var ans = 0

        for x in i...j {
            guard abs(x - reverse(x)) % k == 0 else { continue }
            ans += 1
        }

        return ans
    }
    
    private func reverse(_ x: Int) -> Int {
        var x = x
        var ans = 0

        while x != 0 {
            ans = ans * 10 + x % 10
            x /= 10
        }

        return ans
    }

}

let ijk = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.beautifulDays(i: ijk[0], j: ijk[1], k: ijk[2])
print(ans)
