//
//  Day 29 Bitwise AND.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 25/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-bitwise-and/problem

import Foundation

let t = Int(readLine()!)!

// Finds two integers, A and B (where A < B), such that the value of A&B is the
// maximum possible and also less than a given integer, K.
func solve(n: Int, k: Int) -> Int {
    var ans = 0

    for i in 1...n-1 {
        for j in i+1...n {
            guard i & j < k else { continue }

            ans = max(ans, i & j)

            guard ans == k - 1 else { continue }
            return ans
        }
    }

    return ans
}

for _ in 1...t {
    let nk = readLine()!.split(separator: " ").compactMap { Int($0) }

    print(solve(n: nk[0], k: nk[1]))
}
