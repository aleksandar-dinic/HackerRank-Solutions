//
//  20 Designer PDF Viewer.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/20 Designer PDF Viewer
//
//  Created by Aleksandar Dinic on 14/10/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/designer-pdf-viewer/problem
struct Solution {
    
    /// Finds the size of the highlighted area.
    ///
    /// - Parameters:
    ///   - h: The heights of each letter.
    ///   - word: The word.
    /// - Returns: The size of the highlighted area.
    ///
    /// - Complexity:
    ///   - time: O(n), where `n` is the length of `word`.
    ///   - space: O(1), only constant space is used.
    func designerPdfViewer(h: [Int], word: String) -> Int {
        var ans = 0

        for w in word {
            ans = max(ans, h[Int((w.asciiValue ?? 0) - 97)])
        }

        return ans * word.count
    }

}

let h = readLine()!.split(separator: " ").compactMap { Int($0) }
let word = readLine()!

let solution = Solution()
let ans = solution.designerPdfViewer(h: h, word: word)
print(ans)
