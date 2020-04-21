//
//  Day 02 Operators.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 21/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-operators/problem

import Foundation

/// Meal price (base cost of a meal)
let meal = Double(readLine()!)!
/// Tip percent (the percentage of the meal price being added as tip)
let tip = Int(readLine()!)!
/// Tax percent (the percentage of the meal price being added as tax)
let tax = Int(readLine()!)!

/// Finds and prints the meal's total cost.
func solve(meal: Double, tip: Int, tax: Int) -> Void {
    let tipCost = meal * Double(tip)/100
    let taxCost = meal * Double(tax)/100
    let totalCost = meal + tipCost + taxCost
    print(Int(totalCost.rounded(.toNearestOrAwayFromZero)))
}

solve(meal: meal, tip: tip, tax: tax)
