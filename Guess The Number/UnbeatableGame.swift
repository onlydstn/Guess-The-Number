//
//  UnbeatableGame.swift
//  Guess The Number
//
//  Created by Dustin Nuzzo on 7/31/24.
//

import Foundation

func unbeatableGame() {
    let randomNumber: Int = Int.random(in: 1...1000)
    
    var tries: Int = 0 {
        didSet {
            print("Current tries: \(tries). \(20 - tries) tries left.")
        }
    }
    
    var solved: Bool = false
    
    
    print("Im thinking of a number between 1 and 1000... can you guess it in 20 tries?")
    while !solved {
        if let input = readLine() {
            if !(tries < 19) && input != String(randomNumber)  {
                print("You couldnt guess the number with 15 tries. The number was \(randomNumber).")
                break
            } else if input < String(randomNumber) {
                print("Your number is too small.")
                tries += 1
            } else if input > String(randomNumber) {
                print("Your number is too big.")
                tries += 1
            } else {
                print("You beat all levels! Congratulations!")
                solved = true
                break
            }
        }
    }
}

