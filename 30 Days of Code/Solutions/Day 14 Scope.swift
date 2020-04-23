//
//  Day 14 Scope.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 23/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-scope/problem

import Foundation

class Difference {

    private var elements = [Int]()
    var maximumDifference: Int

    init(a: [Int]) {
        self.elements = a
        maximumDifference = 0
    }

    /// Finds the maximum absolute difference between any *2* numbers in **elements**
    /// and stores it in the **maximumDifference** instance variable.
    func computeDifference() {
        maximumDifference = (elements.max() ?? Int.max) - (elements.min() ?? Int.min)
    }

}

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
