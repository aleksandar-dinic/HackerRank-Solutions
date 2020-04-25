//
//  Day 23 BST Level-Order Traversal.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 25/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-binary-trees/problem

class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d: Int) {
        data = d
    }
}

class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }

    /// Prints the level-order traversal of the binary search tree.
    func levelOrder(root: Node?) -> Void {
        guard let root = root else { return }
        var queue = [Node]()
        queue.append(root)

        while !queue.isEmpty {
            let current = queue.removeFirst()

            print(current.data, terminator: " ")

            if let leftNode = current.left {
                queue.append(leftNode)
            }

            if let rightNode = current.right {
                queue.append(rightNode)
            }
        }
    }
}

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)
