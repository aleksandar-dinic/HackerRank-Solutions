//
//  Day 18 Queues and Stacks.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 24/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-queues-stacks/problem

import Foundation

class Solution {

    private var stack = [Character]()
    private var queue = [Character]()

    /// Pushes a character onto a stack.
    func pushCharacter(ch: Character) {
        stack.append(ch)
    }

    /// Enqueues a character in the queue
    func enqueueCharacter(ch: Character) {
        queue.append(ch)
    }

    /// Pops and returns the character at the top of the stack
    func popCharacter() -> Character? {
        return stack.popLast()
    }

    /// Dequeues and returns the first character in the queue
    func dequeueCharacter() -> Character {
        return queue.removeFirst()
    }

}

// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for character in s {
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character)
}


var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false

        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
