//
//  CalculateTheTipViewController.swift
//  CalculateTheTip
//
//  Created by Geraldo Braho on 9/10/16.
//  Copyright © 2016 Geraldo Braho. All rights reserved.
//

import UIKit

class CalculateTheTipViewController: UIViewController, UITextFieldDelegate {
    
    //MARK:-IBOutlet

    @IBOutlet weak var amountBeforeTaxTextFiled: UITextField!
    @IBOutlet weak var AmountBeforeTaxTextField:
    UITextField!
    
    
    
    @IBOutlet weak var TipPercentageLabel: UILabel!
    
    
    @IBOutlet weak var TipPercentageSlider: UISlider!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    //MARK:-Properties 
    
    var tipCalc=TipCalc(amountBeforeTax: 25.00, tipPercentage: 0.2)
    
    //MARK:-View Controller LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AmountBeforeTaxTextField.text = String(format: "%0.2f", arguments: [tipCalc.amountBeforeTax ])
        TipPercentageLabel.text = String(format: "Tip %d%%:", arguments: [Int(tipCalc.tipPercentage * 100 )])
        // Do any additional setup after loading the view.
    }

    
    func CalTip()
    {
        
        tipCalc.tipPercentage = Float(TipPercentageSlider.value)
        tipCalc.amountBeforeTax = ((AmountBeforeTaxTextField.text)! as NSString).floatValue
        tipCalc.calculateTip()
        updateUI()
        
    }

    func updateUI()
    {
        
    
       resultLabel.text = String(format: "Total: $%0.2f Tip: $%0.2f", arguments: [tipCalc.totalAmount,tipCalc.totalAmount])
    }

    @IBAction func amountBeforeTaxTextFieldChanged(sender: AnyObject)
    
    {
        
        CalTip()
        
        
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField==amountBeforeTaxTextFiled{
            textField.resignFirstResponder()
            CalTip()
            
            
        }
        return true
    }
    
    /// Mark:-UIControl Events
    
    @IBAction func tipPercentageSliderValueChanged(sender: AnyObject) {
        
        TipPercentageLabel.text! = String(format: "Tip: %02d%%",arguments:
           [Int(TipPercentageSlider.value * 100)])
         CalTip()
}
}

 






