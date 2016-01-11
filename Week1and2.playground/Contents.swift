//: Playground - noun: a place where people can play

import UIKit

var str:String? = nil
// var str:String = nil     // cannot be nil unless it's optional
let name = "Juan Manuel"
// let name = "Manuel"      // cannot modify constant

if name.characters.count > 7 {
    print("long name")
} else {
    print("short name")
}

switch name.characters.count {
case 6..<10:
    print("long name")
case 1...5:
    print("short name")
default:
    print("default")
}

for number in 1...10 {
    print(number)
}

for number in [3,8,1,9,4] {
    number
}

let animals:[String] = ["Cat", "Rabbit", "Dog"]
let fierceness = ["Cat" : "some", "Rabbit" : "none", "Dog" : "lots"]    // Probably, "fierceness" isn't a real word ;)
fierceness["Cat"]
let catFierceness = fierceness["Cat"]       // is an optional! to handle nils you get by doing fierceness["invalid_key"]

// String interpolation MAGIC
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"

// So, printing a dictionary (I like more the term "Hash")...
for animal in animals {
    // Next line will get a nil...
    // let currentAnimal : String! = fierceness["sarlanga"]
    let currentAnimal : String! = fierceness[animal]
    let msg : String = "\(animal)s are \(currentAnimal) fierce"
    print(msg)
    // fierceness[animal]
}

// inout is like *passing a reference* and lets you modify an object into the outside world...
func addOneToMatrix(inout myMatrix:[[Int]]) {
    for i in 0..<myMatrix.count {
        for j in 0..<myMatrix[i].count {
            myMatrix[i][j]++
        }
    }
    print(myMatrix)
}

var matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

addOneToMatrix(&matrix)
print(matrix)

// some code checks
let x = 1
let x2: Double = 1
// let x3: Int = 1.1        // does not compile

let array = [1,2,2.5,3]

let array2: [Int] = []

let array3 = [Int]()



