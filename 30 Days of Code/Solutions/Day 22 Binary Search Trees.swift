//
//  Day 22 Binary Search Trees.swift
//  HackerRank-Solutions/30 Days of Code
//
//  Created by Aleksandar Dinic on 25/04/2020.
//  Copyright © 2020 Aleksandar Dinic. All rights reserved.
//

/// Source: https://www.hackerrank.com/challenges/30-binary-search-trees/problem

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

    /// Returns the height of the binary search tree.
    func getHeight(root: Node?) -> Int {
        guard let root = root else { return -1 }

        var leftHeight = getHeight(root: root.left)
        var rightHeight = getHeight(root: root.right)

        return max(leftHeight, rightHeight) + 1
    }

}

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

print(tree.getHeight(root: root))

