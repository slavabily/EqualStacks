//
//  main.swift
//  EqualStacks
//
//  Created by slava bily on 14.12.2021.
//

import Foundation

func equalStacks(h1: [Int], h2: [Int], h3: [Int]) -> Int {
    var t1 = h1
    var t2 = h2
    var t3 = h3
    
    var r1 = t1.reduce(0) { $0 + $1 }
    var r2 = t2.reduce(0) { $0 + $1 }
    var r3 = t3.reduce(0) { $0 + $1 }
    
    repeat {
        let arr = [r1, r2, r3]
        let max = arr.max()
        print(max)
        switch max {
        case r1:
            t1.removeFirst()
        case r2:
            t2.removeFirst()
        case r3:
            t3.removeFirst()
        default:
            break
        }
        r1 = t1.reduce(0) { $0 + $1 }
        r2 = t2.reduce(0) { $0 + $1 }
        r3 = t3.reduce(0) { $0 + $1 }
    }
    while r1 != r2 || r1 != r3
    
    return r1
}

print(equalStacks(h1: [1,2,1,1], h2: [1,1,2], h3: [1,1]))

