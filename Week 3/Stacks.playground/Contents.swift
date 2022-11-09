import Foundation

// let array: [Int] = [] == Array<Int>()

public struct Stack<Element> {
    private var storage = [Element]()

    public init() { }

    public mutating func push(_ element: Element) {
        storage.append(element)
    }

    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }

    public init(array: [Element]) {
        storage = array
    }

    public func peek() -> Element? {
        storage.last
    }

    public var isEmpty: Bool {
        storage.isEmpty
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        -----------
        """
    }
}

var myStack = Stack<Int>()
myStack.push(1)
myStack.push(2)

let myArray = ["a", "b", "c", "d"]
var myArrayStack = Stack(array: myArray)

var myLiteralArrayStack: Stack = [1, 2, 3, 4]

print(myLiteralArrayStack)
