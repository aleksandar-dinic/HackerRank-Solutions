//
//  09 Day of the Programmer.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/09 Day of the Programmer
//
//  Created by Aleksandar Dinic on 03/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/day-of-the-programmer/problem
struct Solution {
    
    /// Finds the date of the 256th day of the given year.
    ///
    /// - Parameter year: An integer.
    /// - Returns: The date of the 256th day of the given year.
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func dayOfProgrammer(year: Int) -> String {
        switch year {
        case 1700...1917:
            if year % 4 == 0 {
                return "12.09.\(year)"
            }
            return "13.09.\(year)"
        case 1918:
            return "26.09.\(year)"
        case 1919...2700:
            if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
                return "12.09.\(year)"
            }

            return "13.09.\(year)"
        default:
            return "WRONG YEAR"
        }
    }
    
}

let year = Int(readLine()!)!

let solution = Solution()
let ans = solution.dayOfProgrammer(year: year)
print(ans)
