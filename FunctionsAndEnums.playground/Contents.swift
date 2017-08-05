//: Playground - noun: a place where people can play

import UIKit

protocol Transformation {
    func applyTransformation()
}

class BasicTransformation : Transformation {
    func applyTransformation() {
        print("Basic transformation")
    }
}

class FancyTransformation : Transformation {
    func applyTransformation() {
        print("Fancy transformation")
    }
}

struct ColorsTotalizers {
    var totalRed = 0
    var totalGreen = 0
    var totalBlue = 0
}

var totals = ColorsTotalizers()
totals.totalRed += 1
totals.totalGreen += 2
totals.totalBlue += 3

totals.totalRed
totals.totalGreen
totals.totalBlue

enum StringEnum: String
{
    case one, two, three
}

let anEnum = StringEnum(rawValue: "three")!

print("anEnum = \"\(anEnum.rawValue)\"")
