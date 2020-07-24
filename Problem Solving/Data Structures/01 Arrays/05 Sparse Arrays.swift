//
//  05 Sparse Arrays.swift
//  HackerRank-Solutions/Problem Solving/Data Structures/01 Arrays
//
//  Created by Aleksandar Dinic on 24/07/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/sparse-arrays/problem
struct Solution {

    /// Determines how many times each query string occurs in the list of input strings.
    ///
    /// - Parameters:
    ///   - strings: An array of strings.
    ///   - queries: An array of query strings.
    /// - Returns: An integer array of the results of all queries in order.
    ///
    /// - Complexity:
    ///   - time: O(max(n, m)), where n is the length of the strings, and m is the length
    ///     of the queries.
    ///   - space: O(max(n, m)), where n is the length of the strings, and m is the length
    ///     of the queries.
    func matchingStrings(_ strings: [String], _ queries: [String]) -> [Int] {
        var dic = [String: Int]()

        for string in strings {
            dic[string, default: 0] += 1
        }

        var ans = [Int]()

        for querie in queries {
            ans.append(dic[querie] ?? 0)
        }

        return ans
    }

}

let stringsCount = Int(readLine()!)!
var strings = [String]()
for _ in 0..<stringsCount {
    strings.append(readLine()!)
}

let queriesCount = Int(readLine()!)!
var queries = [String]()
for _ in 0..<queriesCount {
    queries.append(readLine()!)
}

let solution = Solution()
let ans = solution.matchingStrings(strings, queries)
print(ans.map { String($0) } .joined(separator: "\n"))
