//
//  LinkedListExamples.swift
//  LinkedList
//
//  Created by Jason Stuemke on 11/8/22.
//

import Foundation

// MARK: LinkedList

public struct LinkedList<Value> {

    public var head: Node<Value>?
    public var tail: Node<Value>?

    public var isEmpty: Bool {
        head == nil
    }

    public init() { }

    /// Adds a value to the front of the list.
    /// - Parameter value: The value to be added to the list.
    ///
    /// This is also known as a Head-First Insertion
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)

        if tail == nil {
            tail = head
        }
    }

    /// Adds a value to the back of the list.
    /// - Parameter value: The value to be added to the list.
    public mutating func append(_ value: Value) {
        guard !isEmpty, let tail else {
            push(value)
            return
        }

        tail.next = Node(value: value)

        self.tail = tail.next
    }

    /// Returns the node at the specified index.
    /// - Parameter index: The index of the node to return.
    /// - Returns: The node at the specified index, if it exists.
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0

        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }

        return currentNode
    }

    /// Inserts the provided value after the provided node in the list.
    /// - Parameters:
    ///   - value: The value to be added to the list.
    ///   - node: The node to put the value behind on the list.
    /// - Returns: The node that was added to the list.
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        guard tail !== node else {
            append(value)
            return tail!
        }

        node.next = Node(value: value, next: node.next)
        return node.next!
    }

    /// Removes the value at the front of the list.
    /// - Returns: the value that is at the front of the list
    ///
    /// As usual with `pop`'s, the user should not be required to keep the result.
    /// The Structure should be changed by this function.
    // Build a `pop` function here.

    /// Removes the value at the end of the list.
    /// - Returns: The value that was at the end of the list.
    ///
    /// The structure should be changed by this function.
    /// The user should not be required to use the result.
    // Build a `removeLast` function here.

    /// Remove the value after the provided Node.
    /// - Parameter node: The node just before the value to be removed.
    /// - Returns: The value removed from the list.
    ///
    /// The structure should be changed by this function.
    /// The user should not be required to do anything with the result.
    // Build a `removeAfter` function here

    /// Easily shows an example of LinkedList in the Console
    public static func showLinkedList() {
        var myLinkedList = LinkedList<Int>() //
        myLinkedList.append(1) // 1
        myLinkedList.append(2) // 1 -> 2
        myLinkedList.append(3) // 1 -> 2 -> 3

        guard let nodeAt = myLinkedList.node(at: 1) else { return } // 2

        myLinkedList.insert(4, after: nodeAt)

        print(myLinkedList) // 1 -> 2 -> 4 -> 3
    }

}

// MARK: Equatable

extension LinkedList: Equatable where Value: Equatable { // The LinkedList will be Equatable if the Values within are Equatable

    public static func == (lhs: LinkedList<Value>, rhs: LinkedList<Value>) -> Bool {
        return lhs.head == rhs.head
    }

}

// MARK: CustomStringConvertible

extension LinkedList: CustomStringConvertible {

    public var description: String {
        guard let head else {
            return "Empty list"
        }

        return String(describing: head)
    }

}
