//
//  HardGame.swift
//  Guess The Number
//
//  Created by Dustin Nuzzo on 29.07.24.
//

func hardGame() {
    let randomNumber: Int = Int.random(in: 1...100)
    
    var tries: Int = 0 {
        didSet {
            print("Current tries: \(tries). \(15 - tries) tries left.")
        }
    }
    
    var triesExceeded: Bool = false {
        didSet {
            print("You couldnt guess the number with 15 tries. The number was \(randomNumber).")
        }
    }
    
    var solved: Bool = false {
        didSet {
            tries += 1
            print("You guessed right! You completed all 3 levels. Congratulations.")
        }
    }
    
    print("Im thinking of a number between 1 and 100... can you guess it in 15 tries?")
    print(randomNumber)
    while !solved {
        if let input = readLine() {
            if !(tries < 14) && input != String(randomNumber)  {
                triesExceeded = true
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

