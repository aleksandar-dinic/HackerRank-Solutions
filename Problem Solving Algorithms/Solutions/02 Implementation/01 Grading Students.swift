//
//  01 Grading Students.swift
//  HackerRank-Solutions/Problem Solving/Algorithms/02 Implementation
//
//  Created by Aleksandar Dinic on 09/06/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

import Foundation

/// Source: https://www.hackerrank.com/challenges/grading/problem
struct Solution {

    /// Automates the rounding grade process.
    ///
    /// - Parameter grades: Student's grades.
    /// - Returns: The rounded grade for each grade.
    ///
    /// - Complexity:
    ///   - time: O(n), where n is the number of grades.
    ///   - space: O(n), where n is the number of grades.
    func gradingStudents(_ grades: [Int]) -> [Int] {
        var ans = [Int]()

        for grade in grades {
            if grade < 38 || grade % 5 <= 2 {
                ans.append(grade)
            } else {
                ans.append(grade + 5 - (grade % 5))
            }
        }

        return ans
    }

}

let gradesCount = Int(readLine()!)!
var grades = [Int]()

for _ in 0..<gradesCount {
    grades.append(Int(readLine()!)!)
}

let solution = Solution()
let ans = solution.gradingStudents(grades)
print(ans.map { String($0) }.joined(separator: "\n"))
