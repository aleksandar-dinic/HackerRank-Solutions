//
//  Day 11 2D Arrays.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 23/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-2d-arrays/problem

import Foundation

var arr = [[Int]](repeating: [Int](), count: 6)
for i in 0..<6 {
    arr[i] = readLine()!.split(separator: " ").compactMap { Int($0) }
}

/// Returns the maximum hourglass sum in matrix.
func findMaxHourglass(_ arr: [[Int]]) -> Int {
    var ans = Int.min

    for i in 0..<arr.count-2 {
        for j in 0..<arr[i].count-2 {
            ans = max(ans, findSum(arr, i: i, j: j))
        }
    }
    return ans
}

/// Calculates the hourglass sum for given position.
func findSum(_ arr: [[Int]], i: Int, j: Int) -> Int {
    return arr[i][j] + arr[i][j+1] + arr[i][j+2] +
            arr[i+1][j+1] +
            arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
}

print(findMaxHourglass(arr))

