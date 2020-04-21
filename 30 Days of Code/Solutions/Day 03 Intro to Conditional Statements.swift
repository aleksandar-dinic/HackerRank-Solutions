//
//  Day 03 Intro to Conditional Statements.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 21/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-conditional-statements/problem

import Foundation

let n = Int(readLine()!)!

/// Finds whether **n** is weird or not.
func isWeird(_ n: Int) -> String {
    guard n % 2 == 0 else { return "Weird" }

    switch n {
    case 2...5:
        return "Not Weird"
    case 6...20:
        return "Weird"
    default:
        return "Not Weird"
    }
}

print(isWeird(n))
