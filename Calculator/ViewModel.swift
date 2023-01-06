//
//  ViewModel.swift
//  Calculator
//
//  Created by arthithai.aamlid on 5/1/2566 BE.
//

import Foundation

class ViewModel {
    
    let model = Model()

    // Method to put the buttons clicked on the calculator as a string
    func addToWorkings(value: String) -> String {
        
        model.workings = model.workings + value
        return model.workings
    }
    
    // Method to convert the string to an equation
    func convertStringToEquation(value: String) -> String? {
        
        let expn = NSExpression(format:value)
        let answer = (expn.expressionValue(with: nil, context: nil))
        return "\(answer ?? 0)"
    }
    
    // Method to reset the string
    func resetWorkings() {
        model.workings = ""
    }
}
