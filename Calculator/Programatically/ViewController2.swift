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
        case .addButton:
            viewModel2.addToWorkings(value: "+")
        case .minusButton:
            viewModel2.addToWorkings(value: "-")
        case .multiplyButton:
            viewModel2.addToWorkings(value: "*")
        case .divideButton:
            viewModel2.addToWorkings(value: "/")
        case .equalButton:
            viewModel2.convertStringToEquation(value: viewModel2.working)
        case .number(let value):
            viewModel2.addToWorkings(value: value)
        }
    }

    let mainView = MainView()
    let viewModel2 = ViewModel2(input: .init(initialText: "", initialEquationText: "")) // I don't understand the flow here???
    
    var x: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpRx()
    }
    
    // What is this for again??? And how does it work???
    private func setUpRx() {
        viewModel2.textSubject.subscribe(onNext: { text in
            self.mainView.label1.text = text
        })
        
        viewModel2.equationTextSubject.subscribe(onNext: { text in
            self.mainView.label2.text = text
        })
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
