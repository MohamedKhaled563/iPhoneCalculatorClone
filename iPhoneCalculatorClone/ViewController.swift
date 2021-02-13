//
//  ViewController.swift
//  iPhoneCalculatorClone
//
//  Created by Mohamed Khalid on 13/02/2021.
//

import UIKit

enum CurrentParameter{
    case first, second, result
}

class ViewController: UIViewController {
    
    // MARK:- Properties
    //
    var parameterOneString = ""
    var operation: Character = " "
    var parameterTwoString = ""
    var resultString = ""
    var currentParameter: CurrentParameter = .first
    var parameterOneNumber: Double{
        Double(parameterOneString) ?? 0
    }
    var parameterTwoNumber: Double{
        Double(parameterTwoString) ?? 0
    }

    // MARK:- IBOutlets
    //
    
    @IBOutlet var label: UILabel!
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var plusOrMinusButton: UIButton!
    @IBOutlet weak var persentageButton: UIButton!
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
        persentageButton.layer.cornerRadius = persentageButton.frame.size.height / 2
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
        
        
        
        
        // Initially set parameter one to the previous result
        parameterOneString = resultString
        parameterTwoString = ""
        
        // Initially set result label text to result
        label.text = "0"
    }
    
    
    // MARK:- Helpers
    //
    func updateLabel(){
        switch currentParameter {
        case .first:
            label.text = parameterOneString
        case .second:
            label.text = parameterTwoString
        case .result:
            label.text = resultString
            currentParameter = .first
            parameterOneString = resultString
        }
    }
    
    func appendNumber(number: String){
        switch currentParameter {
        case .first:
            parameterOneString.append(number)
        case .second:
            parameterTwoString.append(number)
        default:
            break
        }
    }
    
    func getResultString(){
        switch operation{
        case "+":
            resultString =  "\(parameterOneNumber + parameterTwoNumber)"
        case "-":
            resultString =  "\(parameterOneNumber - parameterTwoNumber)"
        case "*":
            resultString =  "\(parameterOneNumber * parameterTwoNumber)"
        case "/":
            resultString =  "\(parameterOneNumber / parameterTwoNumber)"
        default:
            resultString =  ""
        }
    }
    
    func putButtonInActiveState(){
        switch operation{
        case "+":
            plusButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            plusButton.setTitleColor(UIColor.orange, for: .normal)
        case "-":
            minusButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            minusButton.setTitleColor(UIColor.orange, for: .normal)
        case "*":
            multiplicationButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            multiplicationButton.setTitleColor(UIColor.orange, for: .normal)
        case "/":
            divisionButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            divisionButton.setTitleColor(UIColor.orange, for: .normal)
        default:
            break
        }
    }
    func putButtonInNormalState(){
        switch operation{
        case "+":
            plusButton.backgroundColor = UIColor.orange
            plusButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        case "-":
            minusButton.backgroundColor = UIColor.orange
            minusButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        case "*":
            multiplicationButton.backgroundColor = UIColor.orange
            multiplicationButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        case "/":
            divisionButton.backgroundColor = UIColor.orange
            divisionButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        default:
            break
        }
    }
    func registerButton(number: String){
        ACButton.setTitle("C", for: .normal)
        appendNumber(number: number)
        updateLabel()
        putButtonInNormalState()
    }
    
    
    // MARK:- IBActions
    //
    
    // Number buttons
    
    @IBAction func zeroButtonPressed(_ sender: Any) {
        registerButton(number: "0")
    }
    @IBAction func oneButtonPressed(_ sender: Any) {
        registerButton(number: "1")
    }
    @IBAction func twoButtonPressed(_ sender: Any) {
        registerButton(number: "2")
    }
    @IBAction func threeButtonPressed(_ sender: Any) {
        registerButton(number: "3")
    }
    @IBAction func fourButtonPressed(_ sender: Any) {
        registerButton(number: "4")
    }
    @IBAction func fiveButtonPressed(_ sender: Any) {
        registerButton(number: "5")
    }
    @IBAction func sixButtonPressed(_ sender: Any) {
        registerButton(number: "6")
    }
    @IBAction func sevenButtonPressed(_ sender: Any) {
        registerButton(number: "7")
    }
    @IBAction func eightButtonPressed(_ sender: Any) {
        registerButton(number: "8")
    }
    @IBAction func nineButtonPressed(_ sender: Any) {
        registerButton(number: "9")
    }
    @IBAction func dotButtonPressed(_ sender: Any) {
        registerButton(number: ".")
    }
    
    // Operations buttons

    @IBAction func ACButtonPressed(_ sender: Any) {
        ACButton.setTitle("AC", for: .normal)
        parameterOneString.removeAll()
        parameterTwoString.removeAll()
        resultString.removeAll()
        label.text = "0"
        currentParameter = .first
    }
    
    
    @IBAction func plusOrMinusButtonPressed(_ sender: Any) {
        switch currentParameter {
        case .first:
            if parameterOneNumber > 0{
                parameterOneString.insert("-", at: parameterOneString.startIndex)
                updateLabel()
            }
            else{
                parameterOneString.removeFirst()
                updateLabel()
            }
        case .second:
            if parameterTwoNumber > 0{
                parameterTwoString.insert("-", at: parameterTwoString.startIndex)
                updateLabel()
            }
            else{
                parameterOneString.removeFirst()
                updateLabel()
            }
        case .result:
            if parameterOneNumber > 0{
                parameterOneString.insert("-", at: parameterOneString.startIndex)
                updateLabel()
            }
            else{
                parameterOneString.removeFirst()
                updateLabel()
            }
        }
    }
    
    @IBAction func persentageButtonPressed(_ sender: Any) {
        switch currentParameter {
        case .first:
            parameterOneString = "\(parameterOneNumber / 100)"
        case .second:
            parameterTwoString = "\(parameterTwoNumber / 100)"
        case .result:
            resultString = "\(Double(resultString)! / 100)"
        }
        updateLabel()
        
    }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        operation = "+"
        currentParameter = .second
        putButtonInActiveState()

    }
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        operation = "-"
        currentParameter = .second
        sender.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        sender.setTitleColor(UIColor.orange, for: .normal)
    }
    @IBAction func multiplyButtonPressed(_ sender: UIButton) {
        operation = "*"
        currentParameter = .second
        sender.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        sender.setTitleColor(UIColor.orange, for: .normal)
    }
    @IBAction func divisionButtonPressed(_ sender: UIButton) {
        operation = "/"
        currentParameter = .second
        sender.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        sender.setTitleColor(UIColor.orange, for: .normal)
    }
 
    @IBAction func equalButtonPressed(_ sender: Any) {
        currentParameter = .result
        getResultString()
        updateLabel()
    }
}







































