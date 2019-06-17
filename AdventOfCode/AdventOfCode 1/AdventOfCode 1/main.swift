//
//  main.swift
//  AdventOfCode 1
//
//  Created by Alexander on 17/06/2019.
//  Copyright © 2019 Alexander Khorkov. All rights reserved.
//

import Foundation

var result = 0
var answer = 0
var results = Set<Int>()
results.insert(0)
let fileURL = "/Users/Alexander/Desktop/100 swift/AdventOfCode/AdventOfCode 1/AdventOfCode 1/Test.txt"
    do {
        let readString = try String(contentsOfFile: fileURL)
        let readings = readString.components(separatedBy: CharacterSet.newlines)
        
        func loop() {
            for line in readings {
                guard let frequency = Int(line) else { break }
                    result += frequency
                    if !(results.insert(result).inserted) {
                        answer = result
                        break
                    } else {
                        results.insert(result)
                    }
            }
            
            if answer == 0 {
                loop()
            }
        }
        loop()
    } catch let error as NSError {
        print("error \(error)")
     }

print(result)
print(results)
print(answer)
