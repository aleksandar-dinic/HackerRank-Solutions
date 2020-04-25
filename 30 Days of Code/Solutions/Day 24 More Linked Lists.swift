//
//  Day 24 More Linked Lists.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 25/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-linked-list-deletion/problem

import Foundation

class Node {
    var data: Int
    var next: Node?

    init(d: Int) {
        data = d
    }
}

class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }

        head?.next = insert(head: head?.next, data: data)

        return head
    }

    func display(head: Node?) {
        if head != nil {
            print(head!.data, terminator: " ")

            display(head: head?.next)
        }
    }

    /// Deletes any duplicate nodes from the list and returns the head of the updated list.
    func removeDuplicates(head: Node?) -> Node? {
        guard head != nil else { return nil }
        var curr = head

        while curr?.next != nil {
            if curr?.data == curr?.next?.data {
                curr?.next = curr?.next?.next
            } else {
                curr = curr?.next
            }
        }

        return head
    }
}

var head: Node?
let linkedList = LinkedList()

let t = Int(readLine()!)!

for _ in 0..<t {
    head = linkedList.insert(head: head, data: Int(readLine()!)!)
}

linkedList.display(head: linkedList.removeDuplicates(head: head))
