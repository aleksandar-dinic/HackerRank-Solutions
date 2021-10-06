//
//  12 Drawing Book.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/12 Drawing Book
//
//  Created by Aleksandar Dinic on 06/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/drawing-book/problem
struct Solution {
    
    /// Find the minimum number of pages that must be turned in order to
    /// arrive at page `p`.
    ///
    /// - Parameters:
    ///   - n: The number of pages in the book.
    ///   - p: The page number to turn to.
    /// - Returns: The minimum number of pages to turn.
    ///
    /// - Complexity:
    ///   - time: O(1), only constant time is used.
    ///   - space: O(1), only constant space is used.
    func pageCount(n: Int, p: Int) -> Int {
        return min(p/2, n/2 - p/2)
    }
    
}

let n = Int(readLine()!)!
let p = Int(readLine()!)!

let solution = Solution()
let ans = solution.pageCount(n: n, p: p)
print(ans)
