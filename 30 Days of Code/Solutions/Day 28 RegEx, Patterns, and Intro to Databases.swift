//
//  Day 28 RegEx, Patterns, and Intro to Databases.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 25/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-regex-patterns/problem

import Foundation

let n = Int(readLine()!)!

extension String {
    func isGmail() -> Bool {
        return self.hasSuffix("@gmail.com")
    }
}

/// Prints an alphabetically-ordered list of people whose email address ends in *@gmail.com*
var names = [String]()
for _ in 1...n {
    let data = readLine()!.split(separator: " ").compactMap { String($0) }

    guard data[1].isGmail() else { continue }

    names.append(data[0])
}

for name in names.sorted() {
    print(name)
}
