//
//  main.swift
//  adventOfCode3
//
//  Created by Alexander on 19/11/2019.
//  Copyright © 2019 Alexander Khorkov. All rights reserved.
//

import Foundation

let frog = Frog("input.txt")
let lines = frog.readLines()
//let lines = ["#1 @ 1,3: 4x4", "#2 @ 3,1: 4x4", "#3 @ 5,5: 2x2", "#4 @ 1,1: 3x3", "#5 @ 6,6: 2x2", "#6 @ 4,3: 4x1"]
//let lines = ["#1 @ 1,3: 3x3","#2 @ 3,1: 3x3","#3 @ 5,5: 2x2","#4 @ 25,25: 2x2","#5 @ 25,25: 2x2","#6 @ 5,3: 2x4"]



// #1222 @ 738,846: 13x28
//    0  1  2   3    5  6
func sorter(_ input: [String]) {
    var coord = [Int]()
    var array = [[String]]()
    var allDots = [[Int]]()
    var sum = 0
    var t = 0
    var set: Set<String> = []
    var set2: Set<String> = []
    var set2Star: Set<Int> = []
    var dict: [String:Int] = [:]
    for line in input {
        array.append(line.components(separatedBy: [" ",",",":","x"]))
        //print(array)
        for  i in 0..<Int(array[t][5])! {
            for  j in 0..<Int(array[t][6])! {
                coord.append(Int(array[t][2])! + i + 1)
                coord.append(Int(array[t][3])! + j + 1)
            }
        }
        //print(coord)
        t += 1
        allDots.append(coord)
        set2Star.insert(allDots.count)
        //print("first \(set2Star)")
        coord.removeAll()
        // array[0][2] = y - 1
        // array[0][3] = x - 1
        // array[0][5] = xlong
        // array[0][6] = ylong
        //print(Int(array[0][2]))
        //print(Int(array[0][3]))
        
    }
        //print(allDots)
  //print(allDots.count)
//    print(allDots[0].count)
        for  counter in 0..<allDots.count {
            for  some in stride(from: 0, to: (allDots[counter].count ), by: 2) {
                //let extractedExpr = allDots[counter][some] * 1000 + allDots[counter][some + 1]
                let extractedExpr = "\(allDots[counter][some]),\(allDots[counter][some + 1])"
                if set.contains((extractedExpr)) {
                    set2Star.remove(counter)
                    continue
                } else {
                    if set2.contains((extractedExpr)) {

                        //print("\(some, counter) check \(extractedExpr)")
                        set2Star.remove(dict[extractedExpr]!)
                        dict.updateValue(counter + 1, forKey: extractedExpr)
                        set2Star.remove(dict[extractedExpr]!)
                        set2Star.remove(counter)
                        sum += 1
                        set.insert((extractedExpr))
                    } else {
                        set2.insert((extractedExpr))
                        dict.updateValue(counter + 1, forKey: extractedExpr)
                    }
                }
            }
            
    }
//    for var counter in 0..<(allDots.count - 1) {
//        for counters in (counter + 1)..<(allDots.count) {
//            for var some in stride(from: 0, to: (allDots[counter].count - 1 ), by: 2) {
//                if allDots[counter][some] != -1 {
//                for var test in stride(from: 0, to: (allDots[counters].count - 1 ), by: 2) {
//                        if allDots[counter][some] == allDots[counters][test] && allDots[counter][some + 1] == allDots[counters][test + 1] {
//                            allDots[counter][some] = -1
//                            allDots[counter][some + 1] = -1
//                            allDots[counters][test] = -1
//                            allDots[counters][test + 1] = -1
//                            sum += 1
//                        }
//                }
//                }
//            }
//    }
//        print("\((counter * 100)/allDots.count)%")
//    }
    //print(array)
    //print(sum)
    //print(dict)
    print(set2Star)
}

sorter(lines)
