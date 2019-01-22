//
//  ViewController.swift
//  EvenOddSum
//
//  Created by Ousmane Ouedraogo on 1/22/19.
//  Copyright © 2019 Ousmane Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sum: Int =  0
    var sum1: Int =  0
    var x : String = "";
    
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var EvenNumButton: UIButton!
    @IBOutlet weak var OddNumButton: UIButton!
    @IBOutlet weak var EvenSum: UIButton!
    @IBOutlet weak var OddSum: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func textFieldFilled(_ sender: UITextField) {
        
        
        textView.text = ""
        x = ""
        sender.resignFirstResponder()
        EvenNumButton.isEnabled = true
        OddNumButton.isEnabled = true
        EvenSum.isEnabled = true
        OddSum.isEnabled = true
        
    }
    
    @IBAction func EvenNumButton(_ sender: UIButton) {
        
        if let maxInt: Int = Int(textField.text!) {
            
            for num in 0...maxInt {
                
                if num % 2 == 0 {
                    
                    print("\( num) , \n")
                    
                    x += " " + String(num)
                    
                    sum += num;
                    
                }
                textView.text = x
            }
            
        }
        EvenNumButton.isEnabled = false
    }
    
    @IBAction func OddNumButton(_ sender: UIButton) {
        
        
        
        if let maxInt1: Int = Int(textField.text!) {
            
            for num1 in 0...maxInt1 {
                if num1 % 2 == 0 {
                }
                else {
                    print("\( num1) , \n")
                    x += " " + String(num1)
                    sum1 += num1;
                    
                }
                textView.text = x
            }
            OddNumButton.isEnabled = false
            
        }
    }
    
    @IBAction func EvenSumButton(_ sender: Any) {
        
        x += " sum: \(sum) \n"
        textView.text = x
        EvenSum.isEnabled = false
    }
    
    @IBAction func OddSumButton(_ sender: Any) {
        
        x += " sum: \(sum1) \n "
        textView.text = x
        OddSum.isEnabled = false
    }
    
}


