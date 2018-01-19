//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Dauletov, Timur on 1/16/18.
//  Copyright © 2018 Dauletov, Timur. All rights reserved.
//

import Foundation

struct GuessingGame {
    
    // MARK: Properties
    var numberToGuess: Int
    
    // MARK: Initializer
    
    init() {
        //Generate the random number.
        numberToGuess = Int(arc4random_uniform(501)) // Get a number between 0 and 500
        
        
    }
    //MARK: Functions
    func checkGuessGiveFeedback(guess: Int) -> String {
        
        if numberToGuess == guess {
            return "You're correct and lucky! Go play lottery in my dad's casino: you'll become a millionaire."
        } else if
            guess > numberToGuess {
             return "Guess lower. But Instead of playin this stupid game, take your chances in my dad's casion: you'll get rich."
        } else if guess < numberToGuess {
            return "My dad's casino is waiting for you, but right now, guess higher."
        }
    }
        
}

