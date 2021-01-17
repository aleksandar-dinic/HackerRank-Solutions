//
//  02 Apple and Orange.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/02 Implementation
//
//  Created by Aleksandar Dinic on 17/01/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/apple-and-orange/problem
struct Solution {

    /// Finds how many fruits will fall on Sam's house.
    ///
    /// - Parameters:
    ///   - start: The start point of the house.
    ///   - end: The endpoint of the house.
    ///   - tree: Location of the tree.
    ///   - fruits: Location of the fruits.
    /// - Returns: The number of fruits in the Sam's house.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the number of fruits.
    ///   - space: O(1), only constant space is used.
    func countFruits(start: Int, end: Int, tree: Int, fruits: [Int]) -> Int {
        var ans = 0
        
        for fruit in fruits {
            guard fruit + tree >= start, fruit + tree <= end else { continue }
            ans += 1
        }
        
        return ans
    }

}

let houseLocations = readLine()!.split(separator: " ").compactMap { Int($0) }
let houseStart = houseLocations[0]
let houseEnd = houseLocations[1]

let treeLocations = readLine()!.split(separator: " ").compactMap { Int($0) }
let appleTree = treeLocations[0]
let orangeTree = treeLocations[1]

_ = readLine()!

let apples = readLine()!.split(separator: " ").compactMap { Int($0) }
let oranges = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let appleCount = solution.countFruits(
    start: houseStart, end: houseEnd, tree: appleTree, fruits: apples
)
print(appleCount)

let orangeCount = solution.countFruits(
    start: houseStart, end: houseEnd, tree: orangeTree, fruits: oranges
)
print(orangeCount)
