//
//  ViewController.swift
//  iPhoneCalculatorClone
//
//  Created by Mohamed Khalid on 13/02/2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK:- Outlets
    //
    
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var plusOrMinusButton: UIButton!
    @IBOutlet weak var remainderButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet var fiveButton: UIButton!
    @IBOutlet var sixButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var zeroButton: UIButton!
    @IBOutlet var dotButton: UIButton!
    @IBOutlet var equalButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Making all buttons with circular frame
        ACButton.layer.cornerRadius = ACButton.frame.size.height / 2
        plusOrMinusButton.layer.cornerRadius = plusOrMinusButton.frame.size.height / 2
        remainderButton.layer.cornerRadius = remainderButton.frame.size.height / 2
        divisionButton.layer.cornerRadius = divisionButton.frame.size.height / 2
        sevenButton.layer.cornerRadius = sevenButton.frame.size.height / 2
        eightButton.layer.cornerRadius = eightButton.frame.size.height / 2
        nineButton.layer.cornerRadius = nineButton.frame.size.height / 2
        multiplicationButton.layer.cornerRadius = multiplicationButton.frame.size.height / 2
        fourButton.layer.cornerRadius = fourButton.frame.size.height / 2
        fiveButton.layer.cornerRadius = fiveButton.frame.size.height / 2
        sixButton.layer.cornerRadius = sixButton.frame.size.height / 2
        minusButton.layer.cornerRadius = minusButton.frame.size.height / 2
        oneButton.layer.cornerRadius = oneButton.frame.size.height / 2
        twoButton.layer.cornerRadius = twoButton.frame.size.height / 2
        threeButton.layer.cornerRadius = threeButton.frame.size.height / 2
        plusButton.layer.cornerRadius = plusButton.frame.size.height / 2
        zeroButton.layer.cornerRadius = zeroButton.frame.size.height / 2
        dotButton.layer.cornerRadius = dotButton.frame.size.height / 2
        equalButton.layer.cornerRadius = equalButton.frame.size.height / 2
    }
}




