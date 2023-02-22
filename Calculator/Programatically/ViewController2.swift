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
        // viewModel2.addToWorkings(value: buttonType)
        }
    }
    
    /*
    func press() {
        let disposeBag = DisposeBag()
        disposeBag.insert(
            mainView.button0.rx.tap.subscribe(onNext: { [weak self] in
                self?.mainView.label1.text = self?.viewModel2.addToWorkings(value: "0")
                print("button tapped")
            }),
            mainView.button1.rx.tap.subscribe(onNext: { [weak self] in
                self?.mainView.label1.text = self?.viewModel2.addToWorkings(value: "1")
            }),
            mainView.button2.rx.tap.subscribe(onNext: { [weak self] in
                self?.mainView.label1.text = self?.viewModel2.addToWorkings(value: "2")
            })
            )
    }
    */
    
    /*
    func rxSwift() {
        mainView.button0.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "0")
        }
        mainView.button1.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "1")
        }
        mainView.button2.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "2")
        }
        mainView.button3.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "3")
        }
        mainView.button4.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "4")
        }
        mainView.button5.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "5")
        }
        mainView.button6.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "6")
        }
        mainView.button7.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "7")
        }
        mainView.button8.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "8")
        }
        mainView.button9.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "9")
        }
        mainView.buttonAdd.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "+")
        }
        mainView.buttonMinus.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "-")
        }
        mainView.buttonMultiply.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "*")
        }
        mainView.buttonDivide.rx.tap.bind {
            self.mainView.label1.text = self.viewModel2.addToWorkings(value: "/")
        }
        mainView.buttonAC.rx.tap.bind {
            (self.viewModel2.resetWorkings())
            self.mainView.label1.text = "0"
            self.mainView.label2.text = "0"
        }
        mainView.buttonEquals.rx.tap.bind {
            self.mainView.label2.text = self.viewModel2.convertStringToEquation(value: self.viewModel2.addToWorkings(value: ""))
        }
    }
     */

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
    
//    @objc private func onClickButton(_ sender: UIButton) {
//
//        switch sender {
//        case mainView.button0:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "0"))
//        case mainView.button1:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "1"))
//        case mainView.button2:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "2"))
//        case mainView.button3:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "3"))
//        case mainView.button4:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "4"))
//        case mainView.button5:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "5"))
//        case mainView.button6:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "6"))
//        case mainView.button7:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "7"))
//        case mainView.button8:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "8"))
//        case mainView.button9:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "9"))
//        case mainView.buttonAdd:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "+"))
//        case mainView.buttonMinus:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "-"))
//        case mainView.buttonMultiply:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "*"))
//        case mainView.buttonDivide:
//            (mainView.label1.text = viewModel2.addToWorkings(value: "/"))
//        case mainView.buttonEquals:
//            (mainView.label2.text = viewModel2.convertStringToEquation(value: viewModel2.addToWorkings(value: "")))
//        case mainView.buttonAC:
//            (viewModel2.resetWorkings())
//            mainView.label1.text = "0"
//            mainView.label2.text = "0"
//        default:
//            print("defualt")
//        }
//    }
}
