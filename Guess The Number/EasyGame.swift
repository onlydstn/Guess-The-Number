//
//  EasyGame.swift
//  Guess The Number
//
//  Created by Dustin Nuzzo on 29.07.24.
//

func easyGame() {
    let randomNumber: Int = Int.random(in: 1...10)
    
    var round: Int = 0 {
        didSet {
            print("New round: \(round + 1).")
        }
    }
    
    var tries: Int = 0 {
        didSet {
            print("Current tries: \(tries). \(5 - tries) tries left.")
        }
    }
    var solved: Bool = false {
        didSet {
            tries += 1
            print("You guessed right! Next round starts!")
            mediumGame()
        }
    }
    var triesExceeded: Bool = false {
        didSet {
            print("You couldnt guess the number with 5 tries. The number was \(randomNumber).")
        }
    }
    
    print("Im thinking of a number between 1 and 10... can you guess it in 5 tries?")
    print(randomNumber)
    while !solved {
        if let input = readLine() {
            if !(tries < 4) && input != String(randomNumber)  {
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
