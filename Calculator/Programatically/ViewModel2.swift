//
//  ViewModel2.swift
//  Calculator
//
//  Created by arthithai.aamlid on 11/1/2566 BE.
//

import Foundation

class ViewModel2 {
    
    var model2 = Model2(workings: "")
    
    // Method to put the buttons clicked on the calculator as a string
    func addToWorkings(value: String) -> String {
        
        model2.workings = model2.workings + value
        return model2.workings
    }
    
    // Method to convert the string to an equation
    func convertStringToEquation(value: String) -> String? {
        
        let expn = NSExpression(format:value)
        let answer = (expn.expressionValue(with: nil, context: nil))
        return "\(answer ?? 0)"
    }
    
    // Method to reset the string
    func resetWorkings() {
        model2.workings = ""
    }
}
// Hello
