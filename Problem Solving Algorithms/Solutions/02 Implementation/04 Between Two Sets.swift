//
//  04 Between Two Sets.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/04 Between Two Sets
//
//  Created by Aleksandar Dinic on 28/09/2021.
//  Copyright © 2021 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/between-two-sets/problem
struct Solution {
    
    /// Finds the number of integers that are between two sets.
    ///
    /// - Parameters:
    ///   - a: An array of integers.
    ///   - b: An array of integers.
    /// - Returns: The number of integers that are between the sets.
    ///
    /// - Complexity:
    ///   - time: O(n log(n)), where `n` is the max length between `a` and `b`.
    ///   - space: O(1), only constant space is used.
    func getTotalX(_ a: [Int], _ b: [Int]) -> Int {
        let f = lcm(a)
        let l = gcd(b)
        var ans = 0
        var i = f
        var j = 2
        while i <= l {
            if l % i == 0 {
                ans += 1
            }
            i = f * j
            j += 1
        }
        return ans
    }
    
    private func lcm(_ nums: [Int]) -> Int {
        guard var ans = nums.first else { return 0 }
        for i in 1..<nums.count {
            ans = ans * (nums[i] / gcd(ans, nums[i]))
        }
        return ans
    }
    
    private func gcd(_ nums: [Int]) -> Int {
        guard var ans = nums.first else { return 0 }
        for i in 1..<nums.count {
            ans = gcd(ans, nums[i])
        }
        return ans
    }
    
    private func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        while b > 0 {
            let tmp = b
            b = a % b
            a = tmp
        }
        return a
    }
    
}

_ = readLine()!
let a = readLine()!.split(separator: " ").compactMap { Int($0) }
let b = readLine()!.split(separator: " ").compactMap { Int($0) }

let solution = Solution()
let ans = solution.getTotalX(a, b)
print(ans)
