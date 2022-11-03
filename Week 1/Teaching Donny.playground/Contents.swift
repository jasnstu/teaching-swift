import Foundation
import UIKit
import XCTest

// line comment

/// doc comment

/* inline comment */ let something = 1

/**
 * Multiline inline comment (old, objective-c style)
 */

// ^^^^ DON'T USE THAT ONE ^^^^

// MARK: Pramga Mark

// MARK: - Pragma Mark w/ line

// MARK: Basic Types

let constant = 1 // can't change
var variable = 1 // can change

variable += 1

var floating = 2.0 // int by default
var floatingFloat: Float = 2.0 // specify if needing other types
var isSomething: Bool = true
var string = "string"
var multilineString = """
    do something
    on multiple lines
"""

// MARK: Complex Types

struct Structure { // Capital Name to designate type declaration
    var title: String
}

let myStructure = Structure(title: "Title") // default init provided on structs

print(myStructure.title)
print(myStructure.title, terminator: "") // overriding default values

// MARK: - Structure Extension

extension Structure { // Types can be extended to add functionality
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
let enteredNumber = readLine() // this will work outside of Playgounds - see Week 2's file
print("You entered \(enteredNumber ?? "")") // providing default value in case optional is `nil`

class SodaCan {
    var containedFluid: Double = 12
    var isOpened = false

//    init() {
//        containedFluid = 12 // other way to init than inline
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

/// See Week 2 for a deeper example on class vs struct reference types

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
        array.filter({ arrayElement in // High Order Function
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







enum Flowtypes {
    case someFlow

    var name: String {
        switch self {
        case .someFlow: return ""
        }
    }


}












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



class Animal { // base class
    var buttHoles: Int
    var legsCount: Int

    init(buttHoles: Int, legCount: Int) { // init that takes 2 ints
        self.buttHoles = buttHoles
        self.legsCount = legCount
    }

    func makeNoise() -> String {
        "rar"
    }
}


class Dog: Animal { // inherits from base class
    override init(buttHoles: Int = 1, legCount: Int = 4) { // has the same signature as the base class, so needs to override the init
        super.init(buttHoles: buttHoles, legCount: legCount) // call super when overriding init
    }

    override func makeNoise() -> String { // overriding functionality
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

class FrenchDog: Dog, Rebellious { // inherits from different class & the new protocol
    var firesStarted: Int

    override init(buttHoles: Int = 1, legCount: Int = 4) { // override the init with the same signature
        firesStarted = 0

        super.init(buttHoles: buttHoles, legCount: legCount) // call super when overriding init
    }

    override func makeNoise() -> String { // overriding functionality
        "le woof"
    }

    func rebel() { // not in super-class, so no need to override
        print("RIOT")
    }
}

protocol Anarchist: Rebellious {
    var windowsSmashed: Int { get }
}

class Gator: Animal, Anarchist { // inherits from base class
    var windowsSmashed: Int = 0
    var firesStarted: Int = 0

    func rebel() {
        print("Riot in the water")
    }
}

let loopArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] // literal declaration of array

for thing in loopArray { // for each `thing` in the `loopArray`
    print(thing)
}

for index in 0..<loopArray.count { // for each index in 0 to less-than-loopArray-items-count
    print(loopArray[index])
}

var keepLooping = true

while keepLooping { // checks if should run before running

}

repeat {

} while keepLooping // runs loop once before checking if should run again


