//
//  ViewController.swift
//  MultipyApp
//
//  Created by Jordan Ancheta on 3/17/16.
//  Copyright © 2016 AALLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var multiplesLabel: UIImageView!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addLabel: UILabel!
    
    var startNumIncrease = 0
    var multiple = 0
    var maxTotal = 50
    var totalSum = 0
    
    @IBAction func playButtonPressed(sender: UIButton!) {
       
        if numberTextField.text != nil && numberTextField.text != "" {
            
            multiplesLabel.hidden = true
            playButton.hidden = true
            numberTextField.hidden = true
           
            addButton.hidden = false
            addLabel.hidden = false
            
            startNumIncrease = Int(numberTextField.text!)!
            multiple = startNumIncrease
        }
        else {
            addLabel.hidden = true
            addLabel.textColor = UIColor.redColor()
            addLabel.text = "Put in a Number"
        }
    }
    
    @IBAction func addButtonPressed(sender: UIButton!) {
        totalSum = startNumIncrease + multiple
        
        addLabel.text = "\(startNumIncrease) + \(multiple) = \(totalSum)"
        startNumIncrease += multiple
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func isGameOver() -> Bool {
        if startNumIncrease >= maxTotal {
            return true
        }
        else {
            return false
        }
    }
    
    func restartGame() {
        startNumIncrease = 0
        multiple = 0
        totalSum = 0
        
        multiplesLabel.hidden = false
        playButton.hidden = false
        numberTextField.hidden = false
        
        addButton.hidden = true
        addLabel.hidden = true
        addLabel.text = "I love Alexa!"
    }
}

