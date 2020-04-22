//
//  Day 07 Arrays.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 22/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-arrays/problem

import Foundation

let _ = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").compactMap { Int($0) }

/// Prints elements in reverse order as a single line of space-separated numbers.
for a in arr.reversed() {
    print(a, terminator: " ")
}
