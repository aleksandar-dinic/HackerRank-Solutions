//
//  Day 15 Linked List.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 23/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-linked-list/problem

import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

/// Insert new node at the tail of linked list.
func insert(head: Node?, data: Int) -> Node? {
    let node = Node(data: data)
    guard head != nil else { return node }

    var curr = head
    while let next = curr?.next {
        curr = next
    }

    curr?.next = node
    return head
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)
