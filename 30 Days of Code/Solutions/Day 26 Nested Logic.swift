//
//  Day 26 Nested Logic.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 25/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-nested-logic/problem

import Foundation

let actual = readLine()!.split(separator: " ").compactMap { Int($0) }
let expected = readLine()!.split(separator: " ").compactMap { Int($0) }

struct LibraryDate {
    let day: Int
    let month: Int
    let year: Int
}

func calculateFine(actualDate: LibraryDate, expectedDate: LibraryDate) -> Int {
    // If the book is returned after the calendar year in which it was expected,
    // there is a fixed fine of 10_000 Hackos
    guard actualDate.year <= expectedDate.year else { return 10_000 }

    // If the book is returned after the expected return month but still within the same
    // calendar year as the expected return date, 500 Hackos * the number of months late
    if actualDate.month > expectedDate.month,
        actualDate.year >= expectedDate.year {
        return 500 * (actualDate.month - expectedDate.month)
    }

    // If the book is returned after the expected return day but still within the same
    // calendar month and year as the expected return date, 15 Hackos * the number of days late
    if actualDate.day > expectedDate.day,
        actualDate.month >= expectedDate.month,
        actualDate.year >= expectedDate.year {
        return 15 * (actualDate.day - expectedDate.day)
    }

    // If the book is returned on or before the expected return date,
    // no fine will be charged
    return 0
}

let actualDate = LibraryDate(day: actual[0], month: actual[1], year: actual[2])
let expectedDate = LibraryDate(day: expected[0], month: expected[1], year: expected[2])
print(calculateTheFine(actualDate: actualDate, expectedDate: expectedDate))
