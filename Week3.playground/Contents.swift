//: Playground - noun: a place where people can play

import UIKit

// Optionals
var isString: String? = "Hello, playground"    // not sure if it's a String... could be nil!
isString!.characters.count                     // unwrap to string

var notString: String?
// notString!.characters.count     // error... is nil!

// Functions as first class citizens
func sayHelloTo(person: String) -> String {
    return "Hello, \(person)!"
}

sayHelloTo("Juan")

let myFunction = sayHelloTo
myFunction("Natalia")

// Closure structure
//    { (parameters) -> return type in
//        statements
//    }

var myFirstClosure = {
    (str: String) -> String in
    return str.uppercaseString
}

myFirstClosure("Some MixeD CaSe StRIng")

// Classes and Structs
class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var p = Person(name: "Juan")
var p2 = p

p.name = "Natalia"

p.name          // Changed to Natalia
p2.name         // Also changed to Natalia

// Structs behave like value types, not like references
struct CoolerPerson {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var coolerP = CoolerPerson(name: "Juan")
var coolerP2 = coolerP

coolerP.name = "Natalia"

coolerP.name          // Changed to Natalia
coolerP2.name         // Still Juan! Because isn't a reference...
