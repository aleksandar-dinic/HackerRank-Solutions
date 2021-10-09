//
//  15 Cats and a Mouse.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/15 Cats and a Mouse
//
//  Created by Aleksandar Dinic on 09/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
struct Solution {
    
    /// Finds which cat will reach the mouse first.s
    ///
    /// - Parameters:
    ///   - x: Cat A's position.
    ///   - y: Cat B's position.
    ///   - z: Mouse C's position.
    /// - Returns: Either `Cat A`, `Cat B`, or `Mouse C`.
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func catAndMouse(x: Int, y: Int, z: Int) -> String {
        let a = abs(x - z)
        let b = abs(y - z)

        guard a != b else {
            return "Mouse C"
        }

        return a < b ? "Cat A" : "Cat B"
    }
    
}

let q = Int(readLine()!)!

for _ in 0..<q {
    let xyz = readLine()!.split(separator: " ").compactMap { Int($0) }

    let solution = Solution()
    let ans = solution.catAndMouse(x: xyz[0], y: xyz[1], z: xyz[2])
    print(ans)
}
