//
//  LoopsStacksAndLinkedListsTests.swift
//  LoopsStacksAndLinkedListsTests
//
//  Created by Jason Stuemke on 11/10/22.
//

import XCTest

@testable import LoopsStacksAndLinkedLists

// MARK: Stack Protocol

protocol Stack {
    associatedtype Element

    /// Whether or not the Stack is empty.
    var isEmpty: Bool { get }

    /// Adds a value to the Stack.
    /// - Parameter value: The value to be added to the Stack.
    mutating func push(_ element: Element)
    /// Look at the item on the Stack without changing the Stack.
    /// - Returns: The top element on the Stack, if it exists.
    func peek() -> Element?
    /// Remove the top element from the stack.
    /// - Returns: The top element on the Stack, if it exists.
    mutating func pop() -> Element?
}

// MARK: - Node Protocol
protocol Node {
    associatedtype Value
    associatedtype AssociatedNode: Node

    var value: Value { get }
    var next: AssociatedNode? { get set }
}

// MARK: - LinkedList Protocol

protocol LinkedList {
    associatedtype Value
    associatedtype AssociatedNode: Node

    var head: AssociatedNode? { get }
    var tail: AssociatedNode? { get }
    var isEmpty: Bool { get }

    /// Adds a value to the front of the list.
    /// - Parameter value: The value to be added to the list.
    ///
    /// This is also known as a Head-First Insertion
    mutating func push(_ value: Value)
    /// Adds a value to the back of the list.
    /// - Parameter value: The value to be added to the list.
    mutating func append(_ value: Value)
    /// Returns the node at the specified index.
    /// - Parameter index: The index of the node to return.
    /// - Returns: The node at the specified index, if it exists.
    func node(at index: Int) -> AssociatedNode?
    /// Inserts the provided value after the provided node in the list.
    /// - Parameters:
    ///   - value: The value to be added to the list.
    ///   - node: The node to put the value behind on the list.
    /// - Returns: The node that was added to the list.
    mutating func insert(value: Value, after node: AssociatedNode) -> AssociatedNode
    /// Removes the value at the front of the list.
    /// - Returns: the value that is at the front of the list
    mutating func pop() -> Value?
    /// Removes the value at the end of the list.
    /// - Returns: The value that was at the end of the list.
    mutating func removeLast() -> Value?
    /// Remove the value after the provided Node.
    /// - Parameter node: The node just before the value to be removed.
    /// - Returns: The value removed from the list.
    mutating func remove(after: AssociatedNode) -> Value?
}

// MARK: - LoopsStacksAndLinkedListsTests

final class LoopsStacksAndLinkedListsTests: XCTestCase {

    func test_question1_loops() {
        /// Create a Function that takes an Array of Strings, and will return a String which is all of the provided
        /// Strings appended together.
        /// For example:
        /// If your function is provided `["a", "b", "c"]`, it would return `"abc"`

    }

    func test_question2_loops() {
        /// Create a Function that takes an Array of Integers and returns a Sum of all the values it contains.
        /// For example:
        /// If your function is provided `[1, 2, 3]`, it would return `6`

    }

    func test_question3_loops_review() {
        /// Create a Function that takes a 2D Array of Integers (Array of Array of Integers) and prints every value
        /// within.
        /// For example:
        /// If your function is provided `[[1, 2], [3], [4, 5]]`, it would print `"1\n2\n3\n4\n5\n"` in the Console.
        /// I'm being lazy, but essentially each of those would be on a new line, by themselves.
    }

    func test_question4_stacks() {
        /// First, implement a Struct which adopts the Stack protocol.

    }

    func test_question5_stacksAndLoops() {
        /// Create a Function that takes an Array of Elements, and returns a Stack of those Elements

    }

    func test_question6_linkedLists() {
        /// Create a LinkedList, adopting the Protocol provided above.
    }

    func test_question7_linkedLists() {
        /// Explain the differences between Arrays and LinkedLists in the following situations:
        /// - 1. Inserting a value at the end.
        /// - 2. Inserting a value at the beginning.
        /// - 3. Inserting a value in the middle.
        /// - 4. Removing a value from the end.
        /// - 5. Removing a value from the beginning.
        /// - 6. Removing a value from the middle.
        /// - 7. Reading from a random index.
    }

}
