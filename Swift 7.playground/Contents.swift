//: Playground - noun: a place where people can play

import UIKit

//struct Sport {
//    var name: String
//    var isOlympicSport: Bool
//
//    var olympicStatus: String {
//        if isOlympicSport {
//            return "\(name) is an Olympic sport"
//        } else {
//            return "\(name) is not an Olympic sport"
//        }
//    }
//}
//
//let chessBoxing = Sport(name: "chessBoxing", isOlympicSport: false)
//print(chessBoxing.olympicStatus)


//var tennis = Sport(name: "Tennis")
//print(tennis.name)
//tennis.name = "Lawn tennis"

//struct Progress {
//    var task: String
//    var amount: Int {
//        didSet {   //willSet - action before a property changes
//            print("\(task) is now \(amount)% complete")
//        }
//    }
//}
//
//var progress = Progress(task: "Loading data", amount: 0)
//progress.amount = 30
//progress.amount = 80
//progress.amount = 100



//struct City {
//    var population: Int
//
//    func collectTaxes() -> Int {
//        return population * 1000
//    }
//}
//
//let london = City(population: 9_000_000)
//london.collectTaxes()


//struct Person {
//    var name: String
//
//    mutating func makeAnonymous() {
//        name = "Anonymous"
//    }
//}
//var person = Person(name: "Ed")
//person.makeAnonymous()

//let string = "Do or do not, there is no try."
//
//print(string.count)
//print(string.hasPrefix("Do"))
//print(string.uppercased())
//print(string.sorted())
//string.


//var toys = ["Woody"]
//toys.count
//toys.append("Buzz")
//toys.index(of: "Buzz")
//toys.sorted()
//toys.remove(at: 0)


//struct User {
//    var username: String
//
//    init() {
//        username = "Anonymous"
//        print("Creating a new user!")
//    }
//}
////var user = User(username: "twostraws")
//
//var user = User()
//user.username = "fail"

//struct Person {
//    var name: String
//
//    init(name: String) {
//        print("\(name) was born!")
//        self.name = name
//    }
//}
// var user = Person(name: "karl")
//user.name = "keany"


//struct FamilyTree {
//    init() {
//        print("Creating family tree!")
//    }
//}
//
//struct Person {
//    var name: String
//    lazy var familyTree = FamilyTree()
//
//    init(name: String) {
//        self.name = name
//    }
//}
//var ed = Person(name: "Ed")
//ed.familyTree

//struct Student {
//    static var classSize = 0
//    var name: String
//
//    init(name: String) {
//        self.name = name
//        Student.classSize += 1
//    }
//}
//
//let ed = Student(name: "Ed")
//let taylor = Student(name: "Taylor")
//Student.classSize

struct Person {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My \(id)"
    }
}




var used = [Int]()
used.append





