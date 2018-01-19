//
//  ViewController.swift
//  GuessingGame
//
//  Created by Dauletov, Timur on 1/13/18.
//  Copyright © 2018 Dauletov, Timur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var numberGuessed: UITextField!
    
    
    
    // MARK: Properties (variables)
    var game = GuessingGame()
    
    // MARK: Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The number to guess is:")
        print(game.numberToGuess)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Actions
    
    @IBAction func guessAction(_ sender: Any) {
        
        // Print the number that was guessed
        
         print(numberGuessed.text)
        
        //Use a guard statement to bind to a non-optional variable
        guard let inputGiven = numberGuessed.text else {
            //If the input was nill, stop and return (exit) the function
            
            return
        }
        
        //Use a guard statement to attempt to create an integer
        guard let integerGiven = Int(inputGiven) else {
            // If the input was text( e.g. : "five") we can't make an integer, so sto and return (exit) the function
            
            return
        }
        
         // Print the number that was guessed
        print(integerGiven)
        print("The number to guess is:")
        print(game.numberToGuess)
    }
    
   
    
    
    
    
    // MARK: Custom Function(s)


}

