import Foundation

let array: [Int] = [] // Array<Int>()

public struct Stack<Element> { // FILO / LIFO
    private var storage = [Element]()

    public var isEmpty: Bool {
        storage.isEmpty
    }

    public init() { }

    public init(array: [Element]) {
        storage = array
    }

    public mutating func push(_ element: Element) {
        storage.append(element)
    }

    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }

    public func peek() -> Element? {
        storage.last
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
myStack.pop()

print(myStack)

var myArrayStack = Stack(array: [1, 2, 3])
myArrayStack.pop()
print(myArrayStack)

var myLiteralStack: Stack = [1, 2, 3, 4]

//var array2: [Int] = []

print(array)



