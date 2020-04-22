//
//  Day 09 Recursion 3.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 22/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-recursion/problem

import Foundation

let n = Int(readLine()!)!

func factorial(of n: Int) -> Int {
    guard n > 1 else { return 1 }

    var res = 1
    for i in 2...n {
        res *= i
    }
    return res
}

print(factorial(of: n))
