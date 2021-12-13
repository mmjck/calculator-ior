//
//  ViewController.swift
//  Calculator
//
//  Created by Jackson Matheus dos Santos on 13/12/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var calculatorResults: UILabel!
    @IBOutlet weak var calculatorWorkings: UILabel!
    
    var workings: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }

    func clearAll(){
        workings = ""
        calculatorResults.text = ""
        calculatorWorkings.text = ""
    }
    
    func addTwoWorkings(value: String) {
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    func formatResult(result: Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }else {
            return String(format: "%.2f", result)

        }
    }
    
    @IBAction func equalsTap(_ sender: Any) {
        let expression = NSExpression(format: workings)
                let result = expression.expressionValue(with: nil, context: nil) as! Double
        
                let resultString = formatResult(result: result)
        
        
                calculatorResults.text = resultString
    }

    
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
  
    
    @IBAction func backTap(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            
            calculatorWorkings.text = workings
        }
    }
    
    @IBAction func precentTap(_ sender: Any) {
        addTwoWorkings(value: "%")
    }
    
    
    @IBAction func divideTap(_ sender: Any) {
        addTwoWorkings(value:  "/")

    }
    
    
    @IBAction func timesTap(_ sender: Any) {
        addTwoWorkings(value: "*")

    }
    
    
    @IBAction func minusTap(_ sender: Any) {
        addTwoWorkings(value: "-")

    }
    
    
    @IBAction func plusTap(_ sender: Any) {
        addTwoWorkings(value: "+")

    }
    
    @IBAction func decimalTap(_ sender: Any) {
        addTwoWorkings(value: ".")

    }
    
    @IBAction func zeroTap(_ sender: Any) {
        addTwoWorkings(value: "0")

    }
    
    
    @IBAction func oneTap(_ sender: Any) {
        addTwoWorkings(value: "1")

    }
    
    
    @IBAction func TwoTap(_ sender: Any) {
        addTwoWorkings(value: "2")

    }
    
    
    @IBAction func threeTap(_ sender: Any) {
        addTwoWorkings(value: "3")

    }
    
    
    @IBAction func fourTap(_ sender: Any) {
        addTwoWorkings(value: "4")

    }
    
    @IBAction func fiveTap(_ sender: Any) {
        addTwoWorkings(value: "5")

    }
    
    
    
    @IBAction func sixTap(_ sender: Any) {
        addTwoWorkings(value:"6")

    }
    
    
    @IBAction func sevenTap(_ sender: Any) {
        addTwoWorkings(value: "7")

    }
    
    
    
    @IBAction func eightTap(_ sender: Any) {
        addTwoWorkings(value: "8")

    }
    
    
    
    @IBAction func nineTap(_ sender: Any) {
        addTwoWorkings(value: "9")

    }
    
    
    
    
}

