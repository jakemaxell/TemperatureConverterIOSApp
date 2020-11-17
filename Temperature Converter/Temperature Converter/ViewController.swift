//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Jake Maxwell on 11/17/20.
//

import UIKit

class ViewController: UIViewController {
    
    var counter: Int = 0
    
    @IBOutlet weak var entryFieldTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var conversionsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func convertButtonClick(_ sender: UIButton){
        if let result = entryFieldTextField.text{
            if(result == ""){
                return
            }
            else{
                if let num = Double(result){
                    calcAndDisplayAnswer(number: num)
                    updateCounter()
                    entryFieldTextField.endEditing(true)
                }
            }
        }
    }
    
    func updateCounter(){
        counter += 1
        conversionsLabel.text = " " + String(counter) + " Conversions "
    }
    
    func calcAndDisplayAnswer(number: Double){
        let output = number * (9 / 5) + 32
        answerLabel.text = String(output) + " degrees F"
    }
    
}

