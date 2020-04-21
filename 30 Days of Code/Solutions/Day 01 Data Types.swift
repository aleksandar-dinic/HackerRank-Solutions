//
//  Day 01 Data Types.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 21/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-data-types/problem

var i = 4
var d = 4.0
var s = "HackerRank "

// Declare second integer, double, and String variables.
var secInt: Int
var secDouble: Double
var secString: String

// Read and save an integer, double, and String to your variables.
secInt = Int(readLine()!)!
secDouble = Double(readLine()!)!
secString = readLine()!

// Print the sum of both integer variables on a new line.
print(i + secInt)

// Print the sum of the double variables on a new line.
print(d + secDouble)

// Concatenate and print the String variables on a new line
// The 's' variable above should be printed first.
print("\(s)\(secString)")
