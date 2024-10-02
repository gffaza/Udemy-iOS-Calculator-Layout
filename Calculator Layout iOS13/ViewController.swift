//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen : Double = 0
    var totalNumber : Double = 0
    var previousNumberScreen : Double = 0
    var firstNumberScreen : Double = 0
    var operation = 0
    var operationMath = false
    
    
    @IBOutlet weak var historyText: UILabel!
    
    
    @IBOutlet weak var numberText: UILabel!
    
    @IBOutlet weak var percentButotn: UIButton!
    
    @IBOutlet weak var plusMinButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var divButton: UIButton!
    
    @IBOutlet weak var multipleButton: UIButton!
    
    @IBOutlet weak var minButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    
    
    @IBOutlet weak var totalButton: UIButton!
    
    @IBOutlet weak var pointButton: UIButton!
    
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var threeButton: UIButton!
    
    @IBOutlet weak var twoButton: UIButton!
    
    @IBOutlet weak var oneButton: UIButton!
    
    
    @IBOutlet weak var sixButton: UIButton!
    
    @IBOutlet weak var fiveButton: UIButton!
    
    @IBOutlet weak var fourButton: UIButton!
    
    @IBOutlet weak var nineButton: UIButton!
    
    @IBOutlet weak var eightButton: UIButton!
    
    
    @IBOutlet weak var sevenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        percentButotn.layer.cornerRadius = 24
        plusMinButton.layer.cornerRadius = 24
        resetButton.layer.cornerRadius = 24
        divButton.layer.cornerRadius = 24
        multipleButton.layer.cornerRadius = 24
        minButton.layer.cornerRadius = 24
        plusButton.layer.cornerRadius = 24
        totalButton.layer.cornerRadius = 24
        pointButton.layer.cornerRadius = 24
        zeroButton.layer.cornerRadius = 24
        oneButton.layer.cornerRadius = 24
        twoButton.layer.cornerRadius = 24
        threeButton.layer.cornerRadius = 24
        fourButton.layer.cornerRadius = 24
        fiveButton.layer.cornerRadius = 24
        sixButton.layer.cornerRadius = 24
        sevenButton.layer.cornerRadius = 24
        eightButton.layer.cornerRadius = 24
        nineButton.layer.cornerRadius = 24
    }
    
    @IBAction func numberButton(_ sender: UIButton){
        
        //        print(sender.currentTitle!)
        if operationMath == true {

        numberText.text = sender.currentTitle!

//        numberOnScreen = Double(numberText.text!)!
            numberOnScreen = Double(numberText.text!) ?? 0
            historyText.text = String(numberOnScreen)


        operationMath = false

        }

        else {

        numberText.text = numberText.text! + sender.currentTitle!
            historyText.text = String(numberOnScreen)


//        numberOnScreen = Double(numberText.text!)!
            numberOnScreen = Double(numberText.text!) ?? 0


        }
        
//        numberText.text = sender.currentTitle!
//        numberOnScreen = Double(numberText.text!) ?? 0.0

        
        
//
//        if historyText.text == "Total"{
//            numberText.text = sender.currentTitle!
//            numberOnScreen = Double(numberText.text!) ?? 0.0
//            totalNumber = Double(numberOnScreen)
//            firstNumberScreen = firstNumberScreen + totalNumber
//            historyText.text = String(numberOnScreen) + String(firstNumberScreen)
//        }else{
//            numberText.text = sender.currentTitle!
//            numberOnScreen = Double(numberText.text!) ?? 0.0
//            totalNumber = Double(numberOnScreen)
//            firstNumberScreen = firstNumberScreen + totalNumber
//        }
        



//        historyText.text = historyScreen + numberOnScreen
        
        
        
        /* if performingMath == true {
             numberText.text = String(sender.tag-1)
             numberOnScreen = Double(numberText.text!)!
             performingMath = false
         }
         else{
             numberText.text = numberText.text! + String(sender.tag-1)
             numberOnScreen = Double(numberText.text!)!
         }
             */
    }
    
    @IBAction func totalButton(_ sender: Any) {
        
      
        numberText.text = String(totalNumber)
        previousNumberScreen = totalNumber
        print(previousNumberScreen)
    }
    
    @IBAction func operationButton(_ sender : UIButton){
        
//        previousNumberScreen = Double(numberText.text!)!
        previousNumberScreen = Double(numberText.text!) ?? 0
        operationMath = true


//
//        if sender.currentTitle == "="{
//            //            totalNumber = previousNumberScreen
//            numberText.text = String(totalNumber)
//        }
        if sender.currentTitle == "+" {
            numberText.text = "+"
            numberText.text = String(previousNumberScreen + numberOnScreen)
            totalNumber = Double(numberText.text!)!
            historyText.text = String(totalNumber)
            
        } else if sender.currentTitle == "-"{
            numberText.text = "-"
            totalNumber = firstNumberScreen - previousNumberScreen
            historyText.text = String(totalNumber)
        }else if sender.currentTitle == "*"{
            numberText.text = "*"
            
        }else if sender.currentTitle == "/"{
            numberText.text = "/"
            
        }else if sender.currentTitle == "."{
            //            historyScreen = historyScreen + Double(numberOnScreen)
            
        }else if sender.currentTitle == "AC"{
            totalNumber = 0.0
            firstNumberScreen = 0.0
            previousNumberScreen = 0.0
            historyText.text = String(totalNumber)
            numberText.text = "0"
        }else if sender.currentTitle == "%"{
            numberText.text = "%"
            totalNumber = firstNumberScreen / 100
            historyText.text = String(totalNumber)
        }else if sender.currentTitle == "+/-"{
            if numberOnScreen > 0 {
                numberOnScreen = -numberOnScreen
                numberText.text = String(numberOnScreen)
                numberOnScreen = totalNumber
            }else if numberOnScreen < 0  {
                numberOnScreen = +numberOnScreen
                numberText.text = String(numberOnScreen)
                numberOnScreen = totalNumber
            }
        }
//        previousNumberScreen = totalNumber
        print(previousNumberScreen)
    }
    
    
   
    
    @IBAction func percentButton(_ sender: Any) {
    }
    
    @IBAction func plusMinButton(_ sender: Any) {
    }
    
    @IBAction func resetButton(_ sender: Any) {
    }
    
    @IBAction func divButton(_ sender: Any) {
    }
    
    @IBAction func multipleButton(_ sender: Any) {
    }
    
    @IBAction func minButton(_ sender: Any) {
    }
    
    @IBAction func plusButton(_ sender: Any) {
    }
    
   
    
    @IBAction func pointButton(_ sender: Any) {
    }
    
    @IBAction func zeroButton(_ sender: Any) {
    }
    
    @IBAction func oneButton(_ sender: Any) {
    }
    
    @IBAction func twoButton(_ sender: Any) {
    }
    
    @IBAction func threeButton(_ sender: Any) {
    }
    
    @IBAction func fourButton(_ sender: Any) {
    }
    
    @IBAction func fiveButton(_ sender: Any) {
    }
    
    @IBAction func sixButton(_ sender: Any) {
    }
    
    @IBAction func sevenButton(_ sender: Any) {
    }
    
    @IBAction func eightButton(_ sender: Any) {
    }
    
    @IBAction func nineButton(_ sender: Any) {
    }
    
}

