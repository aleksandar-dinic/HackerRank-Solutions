//
//  04 Left Rotation.swift
//  HackerRank-Solutions/Problem Solving/Data Structures/01 Arrays
//
//  Created by Aleksandar Dinic on 23/07/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/array-left-rotation/problem
struct Solution {

    /// Performs *d* left rotations on the array.
    ///
    /// - Parameters:
    ///   - arr: The array of integers.
    ///   - d: The number of left rotations.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the lenght of arr.
    ///   - space: O(1), only constant space is used.
    func leftRotation(_ arr: inout [Int], d: Int) {
        let mod = d % arr.count

        for i in 0..<mod/2 {
            arr.swapAt(i, mod - i - 1)
        }

        for i in 0..<(arr.count - mod) / 2 {
            arr.swapAt(i + mod, arr.count - i - 1)
        }

        for i in 0..<arr.count/2 {
            arr.swapAt(i, arr.count - i - 1)
        }
    }

}

let nd = readLine()!.split(separator: " ").compactMap { Int($0) }
var arr = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
solution.leftRotation(&arr, d: nd[1])
print(arr.map { String($0) } .joined(separator: " "))
