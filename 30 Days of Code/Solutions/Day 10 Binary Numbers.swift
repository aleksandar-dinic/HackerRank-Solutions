//
//  Day 10 Binary Numbers.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 22/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-binary-numbers/problem

import Foundation

let n = Int(readLine()!)!

/// Finds the maximum number of consecutive 1's in n's binary representation.
func binaryNumbers(_ n: Int) -> Int {
    var n = n

    var curr = 0
    var ans = Int.min
    while n > 0 {
        if n % 2 == 1 {
            curr += 1
            ans = max(ans, curr)
        } else {
            curr = 0
        }
        n = n >> 1
    }
    return ans
}

print(binaryNumbers(n))
