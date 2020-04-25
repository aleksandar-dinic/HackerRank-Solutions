//
//  Day 25 Running Time and Complexity.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 25/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-running-time-and-complexity/problem

import Foundation

let count = Int(readLine()!)!

/// A prime is a natural number greater than **1** that has no positive
/// divisors other than **1** and itself.
func isPrime(_ n: Int) -> String {
    guard n != 2 else { return "Prime" }
    guard n > 1, n % 2 != 0 else { return "Not prime" }

    for i in stride(from: 3, through: Int(sqrt(Double(n))), by: 2) {
        if n % i == 0 {
            return "Not prime"
        }
    }

    return "Prime"
}

for _ in 0..<count {
    let n = Int(readLine()!)!

    print(isPrime(n))
}
