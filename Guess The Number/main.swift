//
//  main.swift
//  Guess The Number
//
//  Created by Dustin Nuzzo on 29.07.24.
//

import Foundation

var difficulty: Difficulty = .easy

print("Choose your difficulty:")
print("1. Easy")
print("2. Medium")
print("3. Hard")

if let input = readLine() {
    if input == "1" {
        difficulty = .easy
        easyGame()
    } else if input == "2" {
        difficulty = .medium
        mediumGame()
    } else if input == "3"{
        difficulty = .hard
        hardGame()
    }
}
