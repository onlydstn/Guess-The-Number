//
//  HardGame.swift
//  Guess The Number
//
//  Created by Dustin Nuzzo on 29.07.24.
//

func hardGame() {
    let randomNumber: Int = Int.random(in: 1...100)
    var tries: Int = 0
    var solved: Bool = false
    
    print("Im thinking of a number between 1 and 100... can you guess it?")
    while solved == false {
        if let input = readLine() {
            if input < String(randomNumber) {
                tries += 1
                print("Your number is too small. Tries: \(tries)")
            } else if input > String(randomNumber) {
                tries += 1
                print("Your number is too big. Tries: \(tries)")
            } else {
                tries += 1
                print("You guessed right! Tries: \(tries)")
                solved = true
            }
        }
    }
}
