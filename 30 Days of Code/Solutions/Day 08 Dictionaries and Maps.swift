//
//  Day 08 Dictionaries and Maps.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 22/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-dictionaries-and-maps/problem

let n = Int(readLine()!)!
var phoneBook = [String: String]()

/// Create Phone Book
for _ in 0..<n {
    let user = readLine()!
    let data = user.split(separator: " ").compactMap { String($0) }

    phoneBook[data[0]] = data[1]
}

/// Print the associated entry from phone book on a new line in the form name=phoneNumber,
/// if an entry is not found, print Not found instead.
for _ in 0..<n {
    guard let name = readLine() else { break }
    if let phone = phoneBook[name] {
        print("\(name)=\(phone)")
    } else {
        print("Not found")
    }
}
