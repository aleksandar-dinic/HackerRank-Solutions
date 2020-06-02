//
//  10 Time Conversion.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/01 Warmup
//
//  Created by Aleksandar Dinic on 02/06/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/time-conversion/problem
struct Solution {

    /// Converts time to military (24-hour) time.
    ///
    /// - Parameter str: A string representing time in 12-hour format.
    /// - Returns: Time in 24-hour format
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func timeConversion(_ str: String) -> String {
        guard let hh = Int(str.prefix(2)) else { fatalError("Bad input") }

        var time = String(str.dropLast(2))

        if str.hasSuffix("PM"), hh < 12 {
            time = String(time.dropFirst(2))
            time = "\(hh+12)\(time)"
        } else if str.hasSuffix("AM"), hh == 12 {
            time = String(time.dropFirst(2))
            time = "00\(time)"
        }

        return time
    }

}

let str = readLine()!

let solution = Solution()
let ans = solution.timeConversion(str)
print(ans)
