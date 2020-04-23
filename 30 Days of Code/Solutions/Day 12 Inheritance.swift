//
//  Day 12 Inheritance.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 23/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-inheritance/problem

import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

class Student: Person {

    var testScores: [Int]

    /// Student Initializer
    ///
    /// - Parameters:
    ///   - firstName: A string denoting the Person's first name.
    ///   - lastName: A string denoting the Person's last name.
    ///   - id: An integer denoting the Person's ID number.
    ///   - scores: An array of integers denoting the Person's test scores.
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }

    /// Calculates a Student average grade
    ///
    /// - Returns: A character denoting the grade.
    func calculate() -> Character {
        let average = Double(testScores.reduce(0, +) / testScores.count)

        switch average {
        case ...39:
            return "T"
        case 40...54:
            return "D"
        case 55...69:
            return "P"
        case 70...79:
            return "A"
        case 80...89:
            return "E"
        case 90...100:
            return "O"
        default:
            return "U" // Undefined
        }
    }

}

let nameAndID = readLine()!.components(separatedBy: " ")
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
