//
//  21 Utopian Tree.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/21 Utopian Tree
//
//  Created by Aleksandar Dinic on 15/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/utopian-tree/problem
struct Solution {
    
    /// Finds the height of the tree after the given number of cycles.
    ///
    /// - Parameter n: The number of growth cycles to simulate.
    /// - Returns: The height of the tree.
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func utopianTree(for n: Int) -> Int {
        return n % 2 == 0 ? Int(pow(2, Double(n + 2) / 2) - 1) : Int(pow(2, Double(n + 3) / 2) - 2)
    }

}

let t = Int(readLine()!)!

let solution = Solution()
for _ in 0..<t {
    let n = Int(readLine()!)!

    let ans = solution.utopianTree(for: n)
    print(ans)
}

