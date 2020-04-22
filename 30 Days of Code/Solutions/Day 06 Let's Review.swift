//
//  Day 06 Let's Review.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 22/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-review-loop/problem

import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)

    // Print the even-indexed characters
    for (i, chr) in string.enumerated() {
        guard i % 2 == 0 else { continue }
        print(chr, terminator: "")
    }

    // Print a space
    print(" ", terminator: "")

    // Print the odd-indexed characters
    for (i, chr) in string.enumerated() {
        guard i % 2 != 0 else { continue }
        print(chr, terminator: "")
    }

    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}
