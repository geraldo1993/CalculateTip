//
//  TipCalc.swift
//  CalculateTheTip
//
//  Created by Geraldo Braho on 9/10/16.
//  Copyright © 2016 Geraldo Braho. All rights reserved.
//

import Foundation

class TipCalc
{
    
    var tipAmount:Float=0
    var amountBeforeTax:Float=0
    var tipPercentage:Float=0
    var totalAmount:Float=0
    
    
    
    init(amountBeforeTax:Float,tipPercentage:Float)
    {
        
        
        self.amountBeforeTax=amountBeforeTax
        self.tipPercentage=tipPercentage
        
        
    }
    func calculateTip()
    {
        tipAmount = amountBeforeTax * tipPercentage
        totalAmount = tipAmount + amountBeforeTax
        
        }
    
    
    
    
}
