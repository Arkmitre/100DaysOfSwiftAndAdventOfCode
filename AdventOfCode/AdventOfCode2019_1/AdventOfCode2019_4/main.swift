//
//  main.swift
//  AdventOfCode2019_4
//
//  Created by Alexander on 09/12/2019.
//  Copyright © 2019 Alexander Khorkov. All rights reserved.
//

import Foundation

extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).flatMap { Int(String($0)) }
    }
}

let range = 387638...919123
//let range = 111121...111122
var duplicateFlag = false
var risingFlag = false
var flag = 0
var tripleFlag = false
var counter = 0
var check = -1
var set: Set<Int>
set = []

// i + 1 >= i
// i + 1 = i  1 or more times
for i in range {
    duplicateFlag = false
    tripleFlag = false
    flag = 0
    risingFlag = false
    var t = i.digits
    for j in 0..<5 {
        //print(t, j)
        if t[j] == t[j + 1]  { // ?
            if !(set.insert(t[j]).inserted) {
                if check == t[j] {
                    tripleFlag = true
                }
                check = t[j]
                duplicateFlag = false
                if !tripleFlag {
                    flag -= 1
                }
            } else {
                set.insert(t[j])
                duplicateFlag = true
                flag += 1
            }
        }
        if t[j + 1] < t[j] {
            risingFlag = false
            break
        } else {
            risingFlag = true
        }
        //print(t)
    }
    check = -1
    set = []
    if flag > 0 && risingFlag {
        counter += 1
    }
}
print(counter)
