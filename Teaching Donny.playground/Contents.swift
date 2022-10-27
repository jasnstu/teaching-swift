import Foundation
import UIKit
import XCTest

// line comment

/// doc comment

/* inline comment */ let something = 1

/**
 * Multiline inline comment (old, objective-c style)
 */


// MARK: Pramga Mark

// MARK: - Pragma Mark w/ line

let constant = 1
var variable = 1

variable += 1

var floating = 2.0
var floatingFloat: Float = 2.0
var isSomething: Bool = true
var string = "string"
var multilineString = """
    do something
    on multiple lines
"""

struct Structure {
    var title: String
}

let myStructure = Structure(title: "Title")

print(myStructure.title)
print(myStructure.title, terminator: "")

// MARK: - Structure Extension

extension Structure {
    func getTitle() -> String {
        return title
    }

    func getExtendedTitle() -> String {
        "Extended\(title)"
    }
}

let myStructuresTitle = myStructure.getTitle()
let myStructuresExtendedTitle = myStructure.getExtendedTitle()

print("enter a number:")
let enteredNumber = readLine()
print("You entered \(enteredNumber ?? "")")

class SodaCan {
    var containedFluid: Double = 12
    var isOpened = false

//    init() {
//        containedFluid = 12
//    }

    convenience init(ounces: Double) {
        self.init()

        containedFluid = ounces
    }

    func open() {

    }
}

let mydefaultSoda = SodaCan()

let myBigSoda = SodaCan(ounces: 40)

class Reference {
    // references by reference (pointers)
}

struct Value {
    // references by values (direct memory)
}


class SomeScreen: UIViewController {

    static let shared = SomeScreen()

    static func doSometing() {
        print("Doing someting")
    }

    struct LocalizedStrings {
        var title: String
    }
    struct ImportantNumbers {
        var firstNumber: Int
    }

    let myLocalizedStrings = LocalizedStrings(title: "title")
    let importantNumbers = ImportantNumbers(firstNumber: 1)

    func doAnotherThing() { }
}

SomeScreen.doSometing()

let myScreen = SomeScreen()
//myScreen.doSomething()

SomeScreen.shared.doAnotherThing()
//SomeScreen.shared.doSomething()

func printIntArray(_ array: [Int?], beforeDeleting deletable: Int?) -> [Int] {
    print(array, separator: ",")

    if let something = deletable {
        array.filter({ arrayElement in
            arrayElement != something
        })
    }

    return array.compactMap { $0 }
}

var myArray = [0, 1, 2]

//printIntArray(myArray, beforeDeleting: 0)




func addStringToNumber(string: String, number: Int) -> String? {
    "\(number)\(string)\""
}

let number123: Int = 1
let maybeNumber: Int? // Maybe Int or Nil

var optionalsArray: [Int?] = [] // []

var optionalArray: [Int]? // []?
var optionalArray2: [Int]? // []?

print(optionalArray) // complain all you want computer!!!

optionalArray = []

print(optionalArray ?? optionalArray2 ?? [])


















func addStringToNumber2(string: String, number: Int) -> String? {
    return "\(number)\(string)\""
}


var addStringToNumber2Func: (String, Int) -> String? = { string, number in
    return "\(number)\(string)\""
}



addStringToNumber2Func = addStringToNumber2


class SomeView {
    var finishFunction: ((String, Int) -> String?)?
}

class SomeOtherView {
    var myFirstView: SomeView

    init() {
        myFirstView = SomeView()
        myFirstView.finishFunction = addStringToNumber2
    }

    func addStringToNumber2(string: String, number: Int) -> String? {
        return "\(number)\(string)\""
    }
}

let myView = SomeOtherView()

myView.myFirstView.finishFunction?("testString", 2)

//myView.finishFunction = addStringToNumber2

enum Sodas {
    case coke
    case pepsi
    case rootBeer

    var name: String {
        switch self {
        case .coke: return "Coke"
        case .pepsi: return "Pepsi"
        case .rootBeer: return "Root Beer"
        }
    }
}

let myFavoriteSoda = Sodas.rootBeer
let myOldFavorite: Sodas = .coke

print(myFavoriteSoda.name)


let firstDataStructure: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
let gettingBigger: [[Int]] = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
]



let stupidTuple = (myFavoriteSoda, myOldFavorite, 2)

var dictionary: [String: Int] = ["a": 1, "b": 2, "c": 3, "d": 4] // [AnyHashanble: Any] // [Key: Value]

let myThingNow = dictionary["a"]
let notInThere = dictionary["z"]



let myArray2 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

let thirdItem = myArray2[2]
let firstItem = myArray2[0]
let fifthItem = myArray2[4]


dictionary["a"] = 256

dictionary["z"] = 26

print(dictionary)

let keys = dictionary.keys

for key in keys {
    dictionary[key] = 0
}

print(dictionary)


/// Inheritance
///
/// Objects share features in related things



class Animal {
    var buttHoles: Int
    var legsCount: Int

    init(buttHoles: Int, legCount: Int) {
        self.buttHoles = buttHoles
        self.legsCount = legCount
    }

    func makeNoise() -> String {
        "rar"
    }
}


class Dog: Animal {
    override init(buttHoles: Int = 1, legCount: Int = 4) {
        super.init(buttHoles: buttHoles, legCount: legCount)
    }

    override func makeNoise() -> String {
        "woof"
    }
}



let myDog = Dog()
let myDogsLegsCount = myDog.legsCount
print(myDog.makeNoise())

let sparky = Dog(legCount: 2) // metal balls

protocol Rebellious { // maybe Interface?
    var firesStarted: Int { get }

    func makeNoise() -> String
    func rebel()
}

class FrenchDog: Dog, Rebellious {
    var firesStarted: Int

    override init(buttHoles: Int = 1, legCount: Int = 4) {
        firesStarted = 0

        super.init(buttHoles: buttHoles, legCount: legCount)
    }

    override func makeNoise() -> String {
        "le woof"
    }

    func rebel() {
        print("RIOT")
    }
}

protocol Anarchist: Rebellious {
    var windowsSmashed: Int { get }
}

class Gator: Animal, Anarchist {
    var windowsSmashed: Int = 0
    var firesStarted: Int = 0

    func rebel() {
        print("Riot in the water")
    }
}

let loopArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

for thing in loopArray {
    print(thing)
}

for index in 0..<loopArray.count {
    print(loopArray[index])
}

var keepLooping = true

while keepLooping {

}

repeat {

} while keepLooping

