//
//  MediumGame.swift
//  Guess The Number
//
//  Created by Dustin Nuzzo on 29.07.24.
//
import Foundation

func mediumGame() {
    let randomNumber: Int = Int.random(in: 1...50)
    
    var tries: Int = 0 {
        didSet {
            print("Current tries: \(tries). \(10 - tries) tries left.")
        }
    }
    
    var solved: Bool = false {
        didSet {
            tries += 1
            print("You guessed right! Next round starts!")
            hardGame()
        }
    }
    
    
    print("Im thinking of a number between 1 and 50... can you guess it in 10 tries?")
    while !solved {
        if let input = readLine() {
            if !(tries < 9) && input != String(randomNumber)  {
                print("You couldnt guess the number with 10 tries. The number was \(randomNumber).")
                break
            } else if input < String(randomNumber) {
                print("Your number is too small.")
                tries += 1
            } else if input > String(randomNumber) {
                print("Your number is too big.")
                tries += 1
            } else {
                solved = true
            }
        }
    }
}

