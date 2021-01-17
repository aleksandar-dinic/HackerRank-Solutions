//
//  03 Dynamic Array.swift
//  HackerRank-Solutions/Problem Solving/Data Structures/01 Arrays
//
//  Created by Aleksandar Dinic on 08/06/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/dynamic-array/problem
struct Solution {

    /// Executes queries.
    ///
    /// - Parameters:
    ///   - n: The number of sequences.
    ///   - queries: An array of queries.
    /// - Returns: The updated value of lastAnswer for each type 2 query.
    ///
    /// - Complexity:
    ///   - time: O(m), where m is the number of queries.
    ///   - space: O(max(n, m)), where n is given n, and m is the number of queries.
    func dynamicArray(_ n: Int, queries: [[Int]]) -> [Int] {
        var seqList = Array(repeating: [Int](), count: n)
        var lastAnswer = 0
        var ans = [Int]()

        for querie in queries {
            let x = querie[1]
            let y = querie[2]

            let pos = (x ^ lastAnswer) % n

            if querie[0] == 1 {
                seqList[pos].append(y)

            } else if querie[0] == 2 {
                let seq = seqList[pos]
                lastAnswer = seq[y % seq.count]
                ans.append(lastAnswer)
            }
        }

        return ans
    }

}

let nq = readLine()!.split(separator: " ").compactMap { Int($0) }
var queries = [[Int]]()

for _ in 0..<nq[1] {
    queries.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

let solution = Solution()
let ans = solution.dynamicArray(nq[0], queries: queries)
print(ans.map { String($0) } .joined(separator: "\n"))
