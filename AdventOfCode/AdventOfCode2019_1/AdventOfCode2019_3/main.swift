//
//  main.swift
//  AdventOfCode2019_3
//
//  Created by Alexander on 03/12/2019.
//  Copyright © 2019 Alexander Khorkov. All rights reserved.
//

import Foundation

//let paths = Frog("input.txt").readLines()


//let paths = Frog("input.txt").readLines()
//let paths = ["R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51","U98,R91,D20,R16,D67,R40,U7,R15,U6,R7"]
let paths = ["R8,U5,L5,D3","U7,R6,D4,L9"]
//let paths = ["R75,D30,R83,U83,L12,D49,R71,U7,L72","U62,R66,U55,R34,D71,R55,D58,R83"]
var coordSet: Set<String>
coordSet = []
var crosses: Array<(Int,Int)>
crosses = []
var tempCoord = 0
var someFlag = false
var lastFlag = false
var distanceFlag = true
var dict = [Int:Int]()
dict = [:]
var distance: Int = 0
    
    func pathCoordinates(_ paths:[String]) {
    var x = 0, y = 0
    for path in paths {
    let cabelPath = path.components(separatedBy: ",")
    //print(cabelPath)
    for action in cabelPath {
    if action == cabelPath.last {lastFlag = true}
    switch action.first! {
    case "R":
    tempCoord = x
    x += Int(action.dropFirst())!
    crossFinder(x, y, tempCoord, "R", someFlag, lastFlag)
    case "L":
    tempCoord = x
    x -= Int(action.dropFirst())!
    crossFinder(x, y, tempCoord, "L", someFlag, lastFlag)
    case "U":
    tempCoord = y
    y += Int(action.dropFirst())!
    crossFinder(x, y, tempCoord, "U", someFlag, lastFlag)
    case "D":
    tempCoord = y
    y -= Int(action.dropFirst())!
    crossFinder(x, y, tempCoord, "D", someFlag, lastFlag)
    default:
    print("Unacceptable condition!")
    }
    }
    x = 0
    y = 0
    someFlag = true
    }
    }
    
    func crossFinder(_ x:Int, _ y:Int,
                     _ temp: Int, _ direction: String,
                     _ someFlag: Bool, _ lastFlag2: Bool) {
    var endRange = 0
    var xc = x
    var yc = y
    var range = 0...1
    var flag = true
    var move:Int = 0
    if direction == "R" || direction == "L" {
    endRange = x
    } else { endRange = y }
    if temp > endRange {
    range = endRange...temp
    flag = false } else {
    range = temp...endRange
    flag = true }
    for var i in range {
        var moveFlag = true
        if someFlag && distanceFlag {
            distance = 0
            distanceFlag = false
        }
    if !flag {if lastFlag2 {lastFlag = false} else {i += 1}} else {if lastFlag2 {lastFlag = false} else{if i == temp {continue} } }
    //if !flag {if i == temp {continue}} else {i += 1}
    if endRange == x { xc = i } else { yc = i }
        if (direction == "R" || direction == "U") && moveFlag {
            move = 1
            moveFlag = false
        } else {
            moveFlag = false
            distance += range.last!
            move = -1
        }
        distance = distance + move
    print("\(xc) x, \(yc) y, \(distance) distance")
    //if xc == -1306 && yc == 441 { print("here") }
    if coordSet.insert("\(xc),\(yc)").inserted { if someFlag { dict.updateValue(i, forKey:(xc * 10000 + yc))}} else { if someFlag {
    if xc == 0 && yc == 0 {continue}
    //print("\(dict) \(i) to")
        if dict.updateValue(i, forKey:(xc * 10000 + yc)) != nil {continue}
    crosses.append((xc,yc))
    dict.updateValue(i, forKey:(xc * 10000 + yc))
    //if xc == 0 || yc == 0 { }
    }
    }
        if i == range.last! && move == -1 {
            distance += range.last!
        }
    }
    }
    pathCoordinates(paths)
    crosses.removeFirst()
    //print(crosses)
    var min = abs(crosses[0].0) + abs(crosses[0].1)
    for i in 0..<crosses.count {
    var current = abs(crosses[i].0) + abs(crosses[i].1)
    //print(current, i, crosses[i].0, crosses[i].1, "curr")
    if current == 0 { print(crosses[i])}
    if min > current { min = current } else { continue }
    //print(current)
    }
    //print(crosses)
    print(min)
    print("242")
    //print(dict)
//
