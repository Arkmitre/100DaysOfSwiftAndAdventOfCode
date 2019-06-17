//
//  main.swift
//  AdventOfCode2019_1
//
//  Created by Alexander on 01/12/2019.
//  Copyright © 2019 Alexander Khorkov. All rights reserved.
//

import Foundation

let frog = Frog("input.txt")
let lines = frog.readLines()
var sum:Int = 0

for line in lines {
    var intLine = Int(line)!
    while intLine > 0 {
        intLine = (intLine/3) - 2
        if intLine < 0 { continue }
        sum += intLine
    }
}
print(sum)


