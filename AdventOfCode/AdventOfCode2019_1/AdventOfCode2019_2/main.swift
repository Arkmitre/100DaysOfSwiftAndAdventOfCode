//
//  2.swift
//  AdventOfCode2019_2
//
//  Created by Alexander on 02/12/2019.
//  Copyright © 2019 Alexander Khorkov. All rights reserved.
//

import Foundation

let nums = Frog("input.txt")
    .readLine()!
    .components(separatedBy: ",")
    .flatMap(Int.init)

func runProgram(_ nums: [Int], _ a: Int, _ b: Int) -> Int {
    var nums = nums
    (nums[1], nums[2]) = (a, b)
    for start in stride(from: 0, through: nums.count, by: 4) {
        if nums[start] == 99 { break }
        let op: (Int, Int) -> Int = (nums[start] == 1) ? (+) : (*)
        let (arg0, arg1, output) = (nums[start + 1], nums[start + 2], nums[start + 3])
        nums[output] = op(nums[arg0], nums[arg1])
    }
    return nums[0]
}

func silver() {
    print("*", runProgram(nums, 12, 2))
}
func gold() {
    for a in 0...99 {
        for b in 0...99 {
            if runProgram(nums, a, b) == 19690720 {
                print("**", a * 100 + b)
                return
            }
        }
    }
}

assert(runProgram([1, 0, 0, 0, 99], 0, 0) == 2)

silver()
gold()

func old() {
    let frog = Frog("input.txt")
    let line = frog.readLine()
    var input = [Int]()
    input = []
    var temp = 0
    var tempc = 0
    
    let array = line!.components(separatedBy: ",")
    //print(array)
    
    for counter in array.indices {
        input.append(Int(array[counter])!)
    }
    var tempArr = input
    //print(input)
    //while
    for c in 0...99 {
        for t in 0...99 {
            for i in stride(from: 0, through: input.count, by: 4) {
                if input[i] == 99 { break }
                if input[i] == 1 {
                    input[input[i+3]] = input[input[i+1]] + input[input[i+2]]
                } else if input[i] == 2 {
                    input[input[i+3]] = input[input[i+1]] * input[input[i+2]]
                }
            }
            //print(input[0], input[1], input[2])
            if input[0] == 19690720 {
                print(input[1], input[2])
                break
            }
            tempc = input[2]
            input = tempArr
            input[2] = tempc
            input[1] = t
            //print("\(input[1])s \(t)t  \(c)c")
        }
        temp = input[1]
        input = tempArr
        input[1] = temp
        input[2] = c
        //print("\(input[1])d \(input[2])s")
    }
}
