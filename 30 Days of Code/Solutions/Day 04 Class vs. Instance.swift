//
//  Day 04 Class vs. Instance.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 21/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-class-vs-instance/problem

import Foundation

class Person {
    
    var age: Int = 0

    /// Add some more code to run some checks on initialAge
    init(initialAge: Int) {
        if initialAge < 0 {
            print("Age is not valid, setting age to 0.")
            age = 0
        } else {
            age = initialAge
        }
    }

    /// Do some computations in here and print out the correct statement to the console
    func amIOld() {
        switch age {
        case 0..<13:
            print("You are young.")
        case 13..<18:
            print("You are a teenager.")
        default:
            print("You are old.")
        }
    }

    /// Increment the age of the person in here
    func yearPasses() {
        age += 1
    }
    
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let age = Int(readLine()!)!
    let p = Person(initialAge: age)

    p.amIOld()

    for i in 1...3 {
        p.yearPasses()
    }

    p.amIOld()

    print("")
}
