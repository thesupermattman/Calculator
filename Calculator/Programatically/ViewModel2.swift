//
//  ViewModel2.swift
//  Calculator
//
//  Created by arthithai.aamlid on 11/1/2566 BE.
//

import Foundation
import RxSwift
import RxCocoa

class ViewModel2 {
    
    var working: String
    let textSubject: BehaviorSubject<String> // What is BehaviorSubject and why are we doing this???
    let equationTextSubject: BehaviorSubject<String> // Also, what is textSubject and equationTextSubject again. Is it the text that will be on my labels???
    
    init(input: Model2.input) { // What are we doing here???
        working = input.initialText
        textSubject = .init(value: input.initialText)
        equationTextSubject = .init(value: input.initialEquationText)
    }
    
    // Method to put the buttons clicked on the calculator as a string
    func addToWorkings(value: String) {
        working = working + value
        textSubject.onNext(working) // What does this mean???
    }
    
    // Method to convert the string to an equation
    func convertStringToEquation(value: String) {
        let expn = NSExpression(format:value)
        let answer = (expn.expressionValue(with: nil, context: nil))
        equationTextSubject.onNext("\(answer ?? 0)")
    }
    
    // Method to reset the string
    func resetWorkings() {
        working = ""
        textSubject.onNext("0")
        equationTextSubject.onNext("0")
    }
}
