//
//  ViewController.swift
//  Calculator
//
//  Created by arthithai.aamlid on 4/1/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = ViewModel()
    
    @IBOutlet weak var calculatorWorking: UILabel!
    
    @IBOutlet weak var calcualtorResult: UILabel!
    
    @IBAction func reset(_ sender: Any) {
        viewModel.resetWorkings()
        calculatorWorking.text = "0"
        calcualtorResult.text = "0"
    }
    
    @IBAction func divide(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "/")
    }
    
    @IBAction func multiply(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "*")
    }
    
    @IBAction func minus(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "-")
    }
    
    @IBAction func add(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "+")
    }
    
    @IBAction func equals(_ sender: Any) {
        calcualtorResult.text = viewModel.convertStringToEquation(value: viewModel.addToWorkings(value: ""))
    }
    
    @IBAction func one(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "1")
    }
    
    @IBAction func two(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "2")
    }
    
    @IBAction func three(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "3")
    }
    
    @IBAction func four(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "4")
    }
    
    @IBAction func five(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "5")
    }
    
    @IBAction func six(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "6")
    }
    
    @IBAction func seven(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "7")
    }
    
    
    @IBAction func eight(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "8")
    }
    
    @IBAction func nine(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "9")
    }
    
    @IBAction func zero(_ sender: Any) {
        calculatorWorking.text = viewModel.addToWorkings(value: "0")
    }
}
