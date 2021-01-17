//
//  01 Arrays - DS.swift
//  HackerRank-Solutions/Problem Solving/Data Structures/01 Arrays
//
//  Created by Aleksandar Dinic on 10/05/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/arrays-ds/problem
struct Solution {

    /// Reverses array in place.
    ///
    /// - Parameter arr: Array of integers
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the length of arr.
    ///   - space: O(1), only constant space is used.
    func reverse(_ arr: inout [Int]) {
        var i = 0
        var j = arr.count-1

        while i < j {
            arr.swapAt(i, j)
            i += 1
            j -= 1
        }
    }

}

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").compactMap { Int($0) }
guard arr.count == n else { fatalError("Bad input") }

let solution = Solution()
solution.reverse(&arr)
print(arr.map { String($0) } .joined(separator: " "))

