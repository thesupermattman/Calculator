//
//  ViewController2.swift
//  Calculator
//
//  Created by arthithai.aamlid on 9/1/2566 BE.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
    let mainView = MainView()
    let viewModel2 = ViewModel2()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    private func setUpView() {
        
        view.addSubview(mainView)
        mainView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        mainView.button0.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button1.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button2.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button3.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button4.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button5.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button6.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button7.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button8.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.button9.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.buttonAC.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.buttonEquals.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.buttonAdd.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.buttonMinus.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.buttonMultiply.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        mainView.buttonDivide.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
    }
    
    @objc private func onClickButton(_ sender: UIButton) {
        
        switch sender {
        case mainView.button0:
            (mainView.label1.text = viewModel2.addToWorkings(value: "0"))
        case mainView.button1:
            (mainView.label1.text = viewModel2.addToWorkings(value: "1"))
        case mainView.button2:
            (mainView.label1.text = viewModel2.addToWorkings(value: "2"))
        case mainView.button3:
            (mainView.label1.text = viewModel2.addToWorkings(value: "3"))
        case mainView.button4:
            (mainView.label1.text = viewModel2.addToWorkings(value: "4"))
        case mainView.button5:
            (mainView.label1.text = viewModel2.addToWorkings(value: "5"))
        case mainView.button6:
            (mainView.label1.text = viewModel2.addToWorkings(value: "6"))
        case mainView.button7:
            (mainView.label1.text = viewModel2.addToWorkings(value: "7"))
        case mainView.button8:
            (mainView.label1.text = viewModel2.addToWorkings(value: "8"))
        case mainView.button9:
            (mainView.label1.text = viewModel2.addToWorkings(value: "9"))
        case mainView.buttonAdd:
            (mainView.label1.text = viewModel2.addToWorkings(value: "+"))
        case mainView.buttonMinus:
            (mainView.label1.text = viewModel2.addToWorkings(value: "-"))
        case mainView.buttonMultiply:
            (mainView.label1.text = viewModel2.addToWorkings(value: "x"))
        case mainView.buttonDivide:
            (mainView.label1.text = viewModel2.addToWorkings(value: "/"))
        case mainView.buttonEquals:
            (mainView.label2.text = viewModel2.convertStringToEquation(value: viewModel2.addToWorkings(value: "")))
        case mainView.buttonAC:
            (viewModel2.resetWorkings())
            mainView.label1.text = "0"
            mainView.label2.text = "0"
        default:
            print("defualt")
        }
    }
}
