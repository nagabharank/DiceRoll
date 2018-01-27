//
//  ViewController.swift
//  DiceApp
//
//  Created by NagaBharan Kothrui on 1/26/18.
//  Copyright © 2018 Bharan Kothrui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    var diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    @IBOutlet weak var diceImg1: UIImageView!
    @IBOutlet weak var diceImg2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageChange()
    }

  

    @IBAction func rollBtnPressed(_ sender: UIButton) {
        diceImageChange()
    }
    
    func diceImageChange() {
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImg1.image = UIImage(named: diceArray[randomDice1])
        diceImg2.image = UIImage(named: diceArray[randomDice2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        diceImageChange()
    }
    
}

