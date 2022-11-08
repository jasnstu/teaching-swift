//
//  TestProtocol.swift
//  Chapter0&1Test
//
//  Created by Jason Stuemke on 10/29/22.
//

import Foundation


protocol CentimeterShape {
    var numberOfSides: Int { get }

    /// Returns the area inside the shape
    /// - Returns: The area in cm^2 as a floating number
    func area() -> Double
}

protocol CentimeterTriangle: CentimeterShape {
    var base: Double { get }
    var height: Double { get }
}

protocol CentimeterRectangle: CentimeterShape {
    var length: Double { get }
    var width: Double { get }
}

protocol CentimeterCircle: CentimeterShape {
    var radius: Double { get }
}
