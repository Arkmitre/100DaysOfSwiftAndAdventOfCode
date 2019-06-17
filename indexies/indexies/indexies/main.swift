//
//  main.swift
//  indexies
//
//  Created by Alexander on 18/11/2019.
//  Copyright © 2019 Alexander Khorkov. All rights reserved.
//

import Foundation


func inputModifier() -> Array<Array<String.Element>> {
    let fileURL = "/Users/Alexander/Desktop/100 swift/AdventOfCode/AdventOfCode 2/Input.txt"
    let readString = try! String(contentsOfFile: fileURL)
    let readings = readString.components(separatedBy: CharacterSet.newlines)
    var someAr: [Array<String.Element>]
    someAr = []
    for line in readings {
        var array2 = Array(line)
        someAr.append(array2)
    }
    return someAr
//    do {
//        let readString = try String(contentsOfFile: fileURL)
//        let readings = readString.components(separatedBy: CharacterSet.newlines)
//        return readings
//    } catch {
//        fatalError()
//    }
}

let array = inputModifier()
var counter = 0
var fArray: [String.Element] = []
jopa: for line in array {
    for line2 in array {
        if line == line2 { continue }
        
        var a: [String.Element] = []
        for i in line.indices {
            if line[i] == line2[i] {
                a.append(line[i])
            }
        }
        if a.count == line.count - 1 {
            a.forEach { print($0, separator: "", terminator: "") }
            fatalError()
        }
        
//        
//        
//        var flag: Bool = true
//        for i in line.indices {
//            if line[i] == line2[i] { }
//            else { if flag == false {
//                        continue
//                }
//            else { flag = false
//                   counter = i
//            }
//        }
//    }
//        if flag == false {
//            fArray = line
//            fArray.remove(at: counter)
//            line.forEach { print($0, separator: "", terminator: "") }
//            print("")
//            line2.forEach { print($0, separator: "", terminator: "") }
//            print("")
//            fArray.forEach { print($0, separator: "", terminator: "") }
////            print(fArray, counter)
//            break jopa
//        }
}
}



//var doubles = 0, sum = 0, tries = 0
//var counter = 1
//var set: Set<Character>
//var dict: Dictionary<Character,Int> = [:]
//
//set = []

//do {
//    let readString = try String(contentsOfFile: fileURL)
//    let readings = readString.components(separatedBy: CharacterSet.newlines)
//    for lines in readings {
//        var array = Array(lines)
//        print(array)
//        for i in array.indices {
//            if dict[array[i]] == nil { dict.updateValue(1, forKey: array[i]) }
//            else {
//                //                if dict[array[i]] != nil {
//                dict[array[i]]! += 1
//            }
//        }
//        if dict.values.contains(2) {
//            doubles += 1
//        }
//        if dict.values.contains(3) {
//            tries += 1
//        }
//        dict = [:]
//    }
//    sum = doubles * tries
//    print(sum, doubles , tries)
//} catch {
//
//}
