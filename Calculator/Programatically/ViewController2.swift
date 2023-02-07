//
//  ViewController2.swift
//  Calculator
//
//  Created by arthithai.aamlid on 9/1/2566 BE.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class ViewController2: UIViewController , CalculatorViewDelegate {
    
    func onTappedButton(buttonType: ButtonType) {
        switch buttonType {
        case .acButton:
            (viewModel2.resetWorkings())
            mainView.label1.text = "0"
            mainView.label2.text = "0"
        case .addButton:
            mainView.label1.text = viewModel2.addToWorkings(value: "+")
        case .minusButton:
            mainView.label1.text = viewModel2.addToWorkings(value: "-")
        case .multiplyButton:
            mainView.label1.text = viewModel2.addToWorkings(value: "*")
        case .divideButton:
            mainView.label1.text = viewModel2.addToWorkings(value: "/")
        case .equalButton:
            mainView.label2.text = viewModel2.convertStringToEquation(value: viewModel2.addToWorkings(value: ""))
        case .number(let value):
            mainView.label1.text = viewModel2.addToWorkings(value: value)
        }
    }

    let mainView = MainView()
    let viewModel2 = ViewModel2()
    var x: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        //rxSwift()
    }
    
    private func setUpView() {
        
        mainView.delegate = self
        view.addSubview(mainView)
        mainView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
