//
//  Tests.swift
//  Chapter0&1TestTests
//
//  Created by Jason Stuemke on 10/29/22.
//

import Foundation
import XCTest

@testable import Chapter0_1Test

final class TestingDonny: XCTestCase {

    /// For this test, create a base Shape class which adopts the CentimeterShape protocol but returns 0 for the area,
    /// because it doesn't make sense otherwise at this point
    func test_1() {
//        let sut =
//        StuTestObject.test_basicShape(sut)
    }

    /// For this test, create a Shape class which inherites from your Shape created in test 1.  This object should also
    /// adopt the CentimeterTriangle protcol
    func test_2() {
        //        let sut =
        //        StuTestObject.test_basicTriangle(sut)
    }

    /// For this test, create a function that takes an array of integers as its input, and returns an array of strings.
    /// The stings array that is returned, should be string representations of the integers input, keeping the same order.
    func test_3() {
        // Example of how to call, when I tested this using a function I named `arrayToString`
//        StuTestObject.test_arrayPrinter(arrayToString)
    }

    /// For this test, explain the difference between each set of properties
    ///
    /// Ignore the asserts at the end which are only there to eliminate warnings.
    func test_verbalQuestion() {
        let constant = 1
        var variable = 1

        let constant2 = 2
        variable = 1

        let constant3 = 3
        let constant4: Int64 = 4

        let variable2: Int = 0
        let variable3: Int? = 0

        let maybeArray: [Int]? = []
        let arrayMaybe: [Int?] = []

        XCTAssertEqual(arrayMaybe, [])
        XCTAssertEqual(maybeArray, [])
        XCTAssertEqual(constant4, 4)
        XCTAssertEqual(variable3, 1)
        XCTAssertEqual(variable3, 1)
        XCTAssertEqual(variable2, 1)
        XCTAssertEqual(constant3, 1)
        XCTAssertEqual(constant2, 1)
        XCTAssertEqual(constant, 1)
        XCTAssertEqual(variable, 1)
        XCTAssertEqual(variable2, variable3)
    }


}


final class StuTestObject {

    static func test_basicShape(_ testShape: CentimeterShape) {
        XCTAssertEqual(testShape.area(), 0)
        XCTAssertEqual(testShape.numberOfSides, 0)
    }

    static func test_basicTriangle(_ testTriangle: CentimeterTriangle) {
        let myArea = testTriangle.base * testTriangle.height * 0.5

        XCTAssertEqual(testTriangle.area(), myArea)
    }

    static func test_arrayPrinter(_ testFunction: ([Int]) -> [String]) {
        let testArray = [0, 1, 33, 45, 68, 99]
        let testResult = testFunction(testArray)

        XCTAssertEqual(testResult, testArray.map { String($0) })
    }

}
