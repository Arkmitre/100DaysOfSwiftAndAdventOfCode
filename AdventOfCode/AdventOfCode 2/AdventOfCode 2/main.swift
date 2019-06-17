//
//  main.swift
//  AdventOfCode 2
//
//  Created by Alexander on 18/06/2019.
//  Copyright © 2019 Alexander Khorkov. All rights reserved.
//

import Foundation

var doubles = 0, sum = 0, tries = 0
var counter = 1
var set: Set<Character>
var dict: Dictionary<Character,Int> = [:]

set = []
let fileURL = "/Users/Alexander/Desktop/100 swift/AdventOfCode/AdventOfCode 2/Input.txt"
do {
    let readString = try String(contentsOfFile: fileURL)
    let readings = readString.components(separatedBy: CharacterSet.newlines)
    for lines in readings {
        var array = Array(lines)
        print(array)
        for i in array.indices {
            if dict[array[i]] == nil { dict.updateValue(1, forKey: array[i]) }
            else {
//                if dict[array[i]] != nil {
                    dict[array[i]]! += 1
        }
        }
        if dict.values.contains(2) {
            doubles += 1
        }
        if dict.values.contains(3) {
            tries += 1
        }
        dict = [:]
    }
    sum = doubles * tries
print(sum, doubles , tries)
} catch {
    
}

