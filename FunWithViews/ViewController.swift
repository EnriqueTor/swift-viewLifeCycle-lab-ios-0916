//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var squareOne: UIView!
    @IBOutlet weak var squareTwo: UIView!
    @IBOutlet weak var squareThree: UIView!
    @IBOutlet weak var squareFour: UIView!
    @IBOutlet weak var squareFive: UIView!
    @IBOutlet weak var squareSix: UIView!
    @IBOutlet weak var squareSeven: UIView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    override func viewDidLoad() {
        
        squareOne.isHidden = true
        squareTwo.isHidden = true
        squareThree.isHidden = true
        squareFour.isHidden = true
        squareFive.isHidden = true
        squareSix.isHidden = true
        squareSeven.isHidden = true
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
        
        super.viewDidLoad()
    }

    func rollDice() -> Int {
        let diceNumber = Int(arc4random_uniform(6) + 1)
        print(diceNumber)
        return diceNumber
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if labelOne.isHidden {
            labelOne.text = diceScore
            labelOne.isHidden = false
        } else if labelTwo.isHidden {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            labelThree.text = diceScore
            labelThree.isHidden = false
        } else if labelFour.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
        } else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        } else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
    }
    
    func rearrangeDie() {
        var labelText = String()
        
        if labelTwo.isHidden {
            labelText = labelOne.text!
        } else if labelThree.isHidden {
            labelText = labelTwo.text!
        } else if labelFour.isHidden {
            labelText = labelThree.text!
        } else if labelFive.isHidden {
            labelText = labelFour.text!
        } else if labelSix.isHidden {
            labelText = labelFive.text!
        } else {
            labelText = labelSix.text!
        }
        
        if labelText == "1" {
            squareOne.isHidden = true
            squareTwo.isHidden = true
            squareThree.isHidden = true
            squareFour.isHidden = false
            squareFive.isHidden = true
            squareSix.isHidden = true
            squareSeven.isHidden = true
        } else if labelText == "2" {
            squareOne.isHidden = true
            squareTwo.isHidden = true
            squareThree.isHidden = false
            squareFour.isHidden = true
            squareFive.isHidden = false
            squareSix.isHidden = true
            squareSeven.isHidden = true
        } else if labelText == "3" {
            squareOne.isHidden = true
            squareTwo.isHidden = true
            squareThree.isHidden = false
            squareFour.isHidden = false
            squareFive.isHidden = false
            squareSix.isHidden = true
            squareSeven.isHidden = true
        } else if labelText == "4" {
            squareOne.isHidden = false
            squareTwo.isHidden = true
            squareThree.isHidden = false
            squareFour.isHidden = true
            squareFive.isHidden = false
            squareSix.isHidden = true
            squareSeven.isHidden = false
        } else if labelText == "5" {
            squareOne.isHidden = false
            squareTwo.isHidden = true
            squareThree.isHidden = false
            squareFour.isHidden = false
            squareFive.isHidden = false
            squareSix.isHidden = true
            squareSeven.isHidden = false
        } else if labelText == "6" {
            squareOne.isHidden = false
            squareTwo.isHidden = false
            squareThree.isHidden = false
            squareFour.isHidden = true
            squareFive.isHidden = false
            squareSix.isHidden = false
            squareSeven.isHidden = false
            
        }
    }

    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        updateLabelWithRoll(roll:rollDice())
        rearrangeDie()
    }
    }




