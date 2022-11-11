//
//  LinkedListNode.swift
//  LinkedList
//
//  Created by Jason Stuemke on 11/8/22.
//

import Foundation

// MARK: Node

public class Node<Value> {

    public var value: Value
    public var next: Node?

    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }

    static func nodeExample() {
        let node1 = Node<Int>(value: 1, next: nil)
        let node2 = Node<Int>(value: 2, next: node1)
        let node3 = Node<Int>(value: 3, next: node2)

        print(node3)
    }

}

// MARK: Equatable

extension Node: Equatable where Value: Equatable { // equality checks only available if Value is Equatable

    public static func == (lhs: Node<Value>, rhs: Node<Value>) -> Bool {
        return lhs.value == rhs.value && lhs.next == rhs.next
    }

}

// MARK: CustomStringConvertible

extension Node: CustomStringConvertible {

    public var description: String {
        guard let next else { // if not
            return "\(value)"
        }

//        if let next = self.next {
//            return "\(value) -> " + String(describing: next) + " "
//        } else {
//            return "\(value)"
//        }

        return "\(value) -> " + String(describing: next) + " "
    }

}
