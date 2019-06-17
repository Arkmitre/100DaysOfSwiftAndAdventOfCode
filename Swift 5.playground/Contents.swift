//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func printHelp(){
    let message = """
Welcome to Myapp!

Run this app inside...
myapp do smth
"""
    
    print(message)
}

func square(_ number: Int) -> Int {
    return number * number
}
let result = square(8)
print(result)


func say(_ name: String) {
    print("Hi, \(name)!")
}
say("me")


func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("youre welcome")
    } else {
        print("gerara here man")
    }
}
greet("Dude")
greet("zoomer", nicely: false)
//printHelp()



// Variadic functions

func square2(numbers: Int...) {
    for number in numbers {
        print("\(number) sqrt is \(number * number)")
    }
}
square2(numbers: 1, 2, 3, 4, 5)


// Throwing


enum PasswordError: Error {
    case obivious
}

func checkPass(_ pass: String) throws -> Bool {
    if pass == "pass" {
        throw PasswordError.obivious
    }
    return true
}

do {
    
    try checkPass("pass")
    print("pass is ok")
} catch {
    print("invalid pass")
}
