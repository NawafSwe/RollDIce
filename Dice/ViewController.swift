//
//  ViewController.swift
//  Dice
//
//  Created by Nawaf B Al sharqi on 06/11/1441 AH.
//  Copyright © 1441 Nawaf B Al sharqi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet is allows me to references a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButtonPress(_ sender: UIButton) {
        
        //generating a list of image literal that holds all pic of dice
        // image literal gives you ability to access pictures and change them from the assist file
        // then we generate two random elements from them
        let dices = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        //this way we avoid using many if statements to check for the number we get if we use Int.random() function
        
        // who.what = value , who is an element and what is the property we want to change, value is the value of the new property
        let firstRandomDice = dices.randomElement()
        let secondRandomDice = dices.randomElement()
        diceImageView1.image = firstRandomDice
        diceImageView2.image = secondRandomDice
        
    }
    
    
}

