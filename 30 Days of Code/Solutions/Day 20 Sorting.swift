//
//  Day 20 Sorting.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 24/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-sorting/problem

import Foundation

// read the integer n
let n = Int(readLine()!)!

// read the array
var arr = readLine()!.components(separatedBy: " ").compactMap { Int($0) }

var swaps = 0
var swapped = false
for i in 0..<n {
    swapped = false
    for j in 0..<n-i-1 {
        guard arr[j] > arr[j + 1] else { continue }
        arr.swapAt(j, j+1)
        swaps += 1
        swapped = true
    }
    guard swapped else { break }
}

print("Array is sorted in \(swaps) swaps.")
print("First Element: \(arr.first ?? -1)")
print("Last Element: \(arr.last ?? -1)")
