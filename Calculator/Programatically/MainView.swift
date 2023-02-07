//
//  MainView.swift
//  Calculator
//
//  Created by arthithai.aamlid on 9/1/2566 BE.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

enum ButtonType {
    case acButton
    case addButton
    case minusButton
    case multiplyButton
    case divideButton
    case equalButton
    case number(value: String)
}

protocol CalculatorViewDelegate: AnyObject {
    func onTappedButton(buttonType: ButtonType)
}

class MainView: UIView {
    
    private let disposeBag = DisposeBag()
    let label1 = UILabel()
    let label2 = UILabel()
    private let calculatorView = UIView()
    private let button1 = UIButton()
    private let button2 = UIButton()
    private let button3 = UIButton()
    private let button4 = UIButton()
    private let button5 = UIButton()
    private let button6 = UIButton()
    private let button7 = UIButton()
    private let button8 = UIButton()
    private let button9 = UIButton()
    private let button0 = UIButton()
    private let buttonAC = UIButton()
    private let buttonMultiply = UIButton()
    private let buttonAdd = UIButton()
    private let buttonDivide = UIButton()
    private let buttonMinus = UIButton()
    private let buttonEquals = UIButton()
    private let horizontalStackView1 = UIStackView()
    private let horizontalStackView2 = UIStackView()
    private let horizontalStackView3 = UIStackView()
    private let horizontalStackView4 = UIStackView()
    private let horizontalStackView5 = UIStackView()
    private let verticalStackView = UIStackView()
    
    
    weak var delegate: CalculatorViewDelegate? = nil
    
    @objc private func handleButtonTapped(_ sender: UIButton) {
        switch sender {
        case button0:
            delegate?.onTappedButton(buttonType: .number(value: "0"))
        case button1:
            delegate?.onTappedButton(buttonType: .number(value: "1"))
        case button2:
            delegate?.onTappedButton(buttonType: .number(value: "2"))
        case button3:
            delegate?.onTappedButton(buttonType: .number(value: "3"))
        case button4:
            delegate?.onTappedButton(buttonType: .number(value: "4"))
        case button5:
            delegate?.onTappedButton(buttonType: .number(value: "5"))
        case button6:
            delegate?.onTappedButton(buttonType: .number(value: "6"))
        case button7:
            delegate?.onTappedButton(buttonType: .number(value: "7"))
        case button8:
            delegate?.onTappedButton(buttonType: .number(value: "8"))
        case button9:
            delegate?.onTappedButton(buttonType: .number(value: "9"))
        case buttonAC:
            delegate?.onTappedButton(buttonType: .acButton)
        case buttonMultiply:
            delegate?.onTappedButton(buttonType: .multiplyButton)
        case buttonAdd:
            delegate?.onTappedButton(buttonType: .addButton)
        case buttonDivide:
            delegate?.onTappedButton(buttonType: .divideButton)
        case buttonMinus:
            delegate?.onTappedButton(buttonType: .minusButton)
        case buttonEquals:
            delegate?.onTappedButton(buttonType: .equalButton)
        default:
            break
        }
    }
    

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setUpView()
        setUpConstraint()
    }
    
    func setButtonStyling(for buttons: [UIButton]) {
        buttons.forEach {button in
            button.translatesAutoresizingMaskIntoConstraints = false
            button.titleLabel?.font =  button1.titleLabel?.font.withSize(48)
        }
    }
    
    func setStackViewStyling(for stackviews: [UIStackView]) {
        stackviews.forEach {stackview in
            stackview.translatesAutoresizingMaskIntoConstraints = false
            stackview.backgroundColor = .orange
            stackview.distribution = UIStackView.Distribution.equalSpacing
            stackview.alignment = UIStackView.Alignment.center
            stackview.spacing   = 60.0
        }
    }
    
    func setUpView() {
        
        backgroundColor = .white
        
        setButtonStyling(for: [button0, button1, button2, button3, button4, button5, button6, button7, button8, button9,
                         buttonAC, buttonEquals, buttonAdd, buttonMinus, buttonDivide, buttonMultiply])
        
        setStackViewStyling(for: [horizontalStackView1, horizontalStackView2, horizontalStackView3, horizontalStackView4, horizontalStackView5])
        
        // Label 1
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "0"
        label1.font = .systemFont(ofSize: 50)
        label1.textColor = .black
        label1.textAlignment = .center
        
        // Label 2
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "0"
        label2.font = .systemFont(ofSize: 50)
        label2.textColor = .black
        label1.textAlignment = .center
        
        /*
        button0.rx.tap.bind {
            print("button tapped")
            //delegate?.onTappedButton(buttonType: .number(value: "0"))
        }
         */
        
        // Calculator View
        calculatorView.translatesAutoresizingMaskIntoConstraints = false
        calculatorView.backgroundColor = .orange
        
        // Set Buttons Title
        button1.setTitle("1", for: UIControl.State.normal)
        button2.setTitle("2", for: UIControl.State.normal)
        button3.setTitle("3", for: UIControl.State.normal)
        button4.setTitle("4", for: UIControl.State.normal)
        button5.setTitle("5", for: UIControl.State.normal)
        button6.setTitle("6", for: UIControl.State.normal)
        button7.setTitle("7", for: UIControl.State.normal)
        button8.setTitle("8", for: UIControl.State.normal)
        button9.setTitle("9", for: UIControl.State.normal)
        button0.setTitle("0", for: UIControl.State.normal)
        buttonMultiply.setTitle("x", for: UIControl.State.normal)
        buttonDivide.setTitle("/", for: UIControl.State.normal)
        buttonAdd.setTitle("+", for: UIControl.State.normal)
        buttonMinus.setTitle("-", for: UIControl.State.normal)
        buttonEquals.setTitle("=", for: UIControl.State.normal)
        buttonAC.setTitle("AC", for: UIControl.State.normal)
                
        // Set Buttons On Click with rxSwift
        button0.rx.tap.bind {
            self.handleButtonTapped(self.button0)
        }.disposed(by: disposeBag)
        button1.rx.tap.bind {
            self.handleButtonTapped(self.button1)
        }.disposed(by: disposeBag)
        button2.rx.tap.bind {
            self.handleButtonTapped(self.button2)
        }.disposed(by: disposeBag)
        button3.rx.tap.bind {
            self.handleButtonTapped(self.button3)
        }.disposed(by: disposeBag)
        button4.rx.tap.bind {
            self.handleButtonTapped(self.button4)
        }.disposed(by: disposeBag)
        button5.rx.tap.bind {
            self.handleButtonTapped(self.button5)
        }.disposed(by: disposeBag)
        button6.rx.tap.bind {
            self.handleButtonTapped(self.button6)
        }.disposed(by: disposeBag)
        button7.rx.tap.bind {
            self.handleButtonTapped(self.button7)
        }.disposed(by: disposeBag)
        button8.rx.tap.bind {
            self.handleButtonTapped(self.button8)
        }.disposed(by: disposeBag)
        button9.rx.tap.bind {
            self.handleButtonTapped(self.button9)
        }.disposed(by: disposeBag)
        buttonMinus.rx.tap.bind {
            self.handleButtonTapped(self.buttonMinus)
        }.disposed(by: disposeBag)
        buttonAdd.rx.tap.bind {
            self.handleButtonTapped(self.buttonAdd)
        }.disposed(by: disposeBag)
        buttonMultiply.rx.tap.bind {
            self.handleButtonTapped(self.buttonMultiply)
        }.disposed(by: disposeBag)
        buttonDivide.rx.tap.bind {
            self.handleButtonTapped(self.buttonDivide)
        }.disposed(by: disposeBag)
        buttonAC.rx.tap.bind {
            self.handleButtonTapped(self.buttonAC)
        }.disposed(by: disposeBag)
        buttonEquals.rx.tap.bind {
            self.handleButtonTapped(self.buttonEquals)
        }.disposed(by: disposeBag)
         
        // Vertical Stack View
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.backgroundColor = .orange
        verticalStackView.axis = .vertical
        verticalStackView.distribution = UIStackView.Distribution.equalSpacing
        verticalStackView.alignment = UIStackView.Alignment.center
        horizontalStackView5.spacing   = 60.0
    }
    
    func setUpConstraint() {
        
        addSubview(label1)
        addSubview(label2)
        addSubview(calculatorView)
        addSubview(button1)
        addSubview(button2)
        addSubview(button3)
        addSubview(button4)
        addSubview(button5)
        addSubview(button6)
        addSubview(button7)
        addSubview(button8)
        addSubview(button9)
        addSubview(button0)
        addSubview(buttonMultiply)
        addSubview(buttonDivide)
        addSubview(buttonMinus)
        addSubview(buttonAdd)
        addSubview(buttonEquals)
        addSubview(buttonAC)
        addSubview(horizontalStackView1)
        addSubview(horizontalStackView2)
        addSubview(horizontalStackView3)
        addSubview(horizontalStackView4)
        addSubview(horizontalStackView5)
        addSubview(verticalStackView)
        
        // Adding everything to the stack views
        horizontalStackView1.addArrangedSubview(button0)
        horizontalStackView1.addArrangedSubview(buttonEquals)
        horizontalStackView2.addArrangedSubview(button1)
        horizontalStackView2.addArrangedSubview(button2)
        horizontalStackView2.addArrangedSubview(button3)
        horizontalStackView2.addArrangedSubview(buttonAdd)
        horizontalStackView3.addArrangedSubview(button4)
        horizontalStackView3.addArrangedSubview(button5)
        horizontalStackView3.addArrangedSubview(button6)
        horizontalStackView3.addArrangedSubview(buttonMinus)
        horizontalStackView4.addArrangedSubview(button7)
        horizontalStackView4.addArrangedSubview(button8)
        horizontalStackView4.addArrangedSubview(button9)
        horizontalStackView4.addArrangedSubview(buttonMultiply)
        horizontalStackView5.addArrangedSubview(buttonAC)
        horizontalStackView5.addArrangedSubview(buttonDivide)
        verticalStackView.addArrangedSubview(horizontalStackView5)
        verticalStackView.addArrangedSubview(horizontalStackView4)
        verticalStackView.addArrangedSubview(horizontalStackView3)
        verticalStackView.addArrangedSubview(horizontalStackView2)
        verticalStackView.addArrangedSubview(horizontalStackView1)

        //label1.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        //label1.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        //label1.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        //mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        NSLayoutConstraint.activate([
            label1.bottomAnchor.constraint(equalTo: label2.topAnchor, constant: -200.0),
            label1.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0.0),
            
            label2.bottomAnchor.constraint(equalTo: calculatorView.topAnchor, constant: -20),
            label2.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0.0),
            //label2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10.0),
            
            calculatorView.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0),
            calculatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0.0),
            calculatorView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            calculatorView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            
            verticalStackView.topAnchor.constraint(equalTo: calculatorView.topAnchor, constant: 0.0),
            verticalStackView.rightAnchor.constraint(equalTo: calculatorView.rightAnchor, constant: 0.0),
            verticalStackView.leftAnchor.constraint(equalTo: calculatorView.leftAnchor, constant: 0.0),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
