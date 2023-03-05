//
//  main.swift
//  arc065a
//

// 問題URL: https://atcoder.jp/contests/abs/tasks/arc065_a

import Foundation

let input = readLine()!
var inputCopy = input
let words = ["dreamer", "eraser", "dream", "erase"]

while true {
    var matched = false
    for word in words {
        if inputCopy.hasSuffix(word) {
            inputCopy = inputCopy.prefix(inputCopy.count - word.count).description
            matched = true
        }
    }
    if matched == false {
        break
    }
}

if inputCopy.count == 0 {
    print("YES")
} else {
    print("NO")
}
