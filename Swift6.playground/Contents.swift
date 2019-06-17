//: Playground - noun: a place where people can play

import UIKit

//  let driving = {
//      print("I'm driving in my car")
//  }
//  driving()

//  let driving = { (place: String) in
//     print("Im going to \(place) in my car")
//  }
//  driving("London")

//  let driving = { (place: String) -> String in
//     return "Im going to \(place) in my car"
//  }
//  let message = driving("London")
//  print(message)


//let driving = {
//    print("Im driving in my car")
//}
//
//func travel(action: () -> Void) {
//    print("Im getting ready to go.")
//    action()
//    print("Im arrived!")
//}
//
//travel(action: driving)
//
//travel { print("Im driving in my car") }

//func travel(action: (String) -> Void) {
//    print("Ready")
//    action("London")
//    print("on place")
//}
//travel { (place: String) in
//    print("im going to \(place) in my car")
//}

//func travel(action: (String) -> String) {
//    print("Ready")
//    let description = action("London")
//    print(description)
//    print("on place")
//}
//
//travel { (place: String) -> String in
//    return "im going to \(place) in my car"
//}
//
//travel { place -> String in
//    return "im going to \(place) in my car"
//}
//
//travel { place in
//    return "im going to \(place) in my car"
//}
//
//travel { place in
//    "im going to \(place) in my car"
//}
//
//travel {
//    "im going to \($0) in my car"
//}


//func travel(action: (String, Int) -> String) {
//    print("Ready")
//    let description = action("London", 60)
//    print(description)
//    print("on place")
//}
//
//travel {
//    "Im going to \($0) at \($1) miles per hour"
//}


func travel() -> (String) -> Void {
    return {
        print("Im going to \($0)")
    }
}

let result = travel()
result("London")


