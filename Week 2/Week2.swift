#!/usr/bin/env swift

import Foundation

class Person {
  var firstName: String
  var lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }

  var fullName: String {
    "\(firstName) \(lastName)"
  }
}

struct PersonStruct {
    var firstName: String
    var lastName: String

    var fullName: String {
//        "\(firstName) \(lastName)"
        return String(firstName) + " " + String(lastName)

//        "some string \(firstName)"
    }

    mutating func updateFirstName(_ newName: String) {
        self.firstName = newName
    }
}

let john = Person(firstName: "Johnny", lastName: "Appleseed")
var fakeJohn = PersonStruct(firstName: "Johnny", lastName: "Appleseed")

let classJohn = john
let structJohn = fakeJohn

john.firstName = "John"
fakeJohn.updateFirstName("fakeJohn")

print(classJohn.firstName)
print(structJohn.firstName)

// For some examples of looping through strings, check out the end of the Week 1 file.
// Also, at the end of this week, we went through and added more comments to the Week 1 file.
