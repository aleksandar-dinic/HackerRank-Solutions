//
//  Day 16 Exceptions - String to Integer.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 24/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-exceptions-string-to-integer/problem

import Foundation

enum StringToIntTypecastingError: Error {
    case BadString
}

/// Converts inputString to Int, or throws StringToIntTypecastingError
func stringToInt(inputString: String) throws -> Int {
    guard let ans = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    return ans
}

let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
