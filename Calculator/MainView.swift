//
//  MainView.swift
//  Calculator
//
//  Created by arthithai.aamlid on 9/1/2566 BE.
//

import Foundation
import UIKit

class MainView: UIView {
    
    let label1 = UILabel()
    let label2 = UILabel()
    let calculatorView = UIView()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let button0 = UIButton()
    let buttonAC = UIButton()
    let buttonMultiply = UIButton()
    let buttonAdd = UIButton()
    let buttonDivide = UIButton()
    let buttonMinus = UIButton()
    let buttonEquals = UIButton()
    let horizontalStackView = UIStackView()

    override init(frame: CGRect) {
        
        super.init(frame: UIScreen.main.bounds)
        setUpView()
        setUpConstraint()
    }
    
    func setUpView() {
        backgroundColor = .white
        
        // Label 1
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "5+2"
        label1.font = .systemFont(ofSize: 50)
        label1.textColor = .black
        label1.textAlignment = .center
        
        // Label 2
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "7"
        label2.font = .systemFont(ofSize: 50)
        label2.textColor = .black
        label1.textAlignment = .center
        
        // Calculator View
        calculatorView.translatesAutoresizingMaskIntoConstraints = false
        calculatorView.backgroundColor = .orange
        
        // Button1
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("1", for: UIControl.State.normal)
        button1.backgroundColor = .blue
        
        // Button2
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("2", for: UIControl.State.normal)
        button2.backgroundColor = .blue

        // Button3
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("3", for: UIControl.State.normal)
        button3.backgroundColor = .blue
        
        // Button4
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setTitle("4", for: UIControl.State.normal)
        button4.backgroundColor = .blue
        
        // Button5
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.setTitle("5", for: UIControl.State.normal)
        button5.backgroundColor = .blue
        
        // Button6
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.setTitle("6", for: UIControl.State.normal)
        button6.backgroundColor = .blue
        
        // Button7
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.setTitle("7", for: UIControl.State.normal)
        button7.backgroundColor = .blue
        
        // Button8
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.setTitle("8", for: UIControl.State.normal)
        button8.backgroundColor = .blue
        
        // Button9
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.setTitle("9", for: UIControl.State.normal)
        button9.backgroundColor = .blue
        
        // Button0
        button0.translatesAutoresizingMaskIntoConstraints = false
        button0.setTitle("0", for: UIControl.State.normal)
        button0.backgroundColor = .blue
        
        // Button Multiply
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiply.setTitle("x", for: UIControl.State.normal)
        buttonMultiply.backgroundColor = .blue
        buttonMultiply.titleLabel?.font =  buttonAC.titleLabel?.font.withSize(30)

        
        // Button Divide
        buttonDivide.translatesAutoresizingMaskIntoConstraints = false
        buttonDivide.setTitle("/", for: UIControl.State.normal)
        buttonDivide.backgroundColor = .blue
        buttonDivide.titleLabel?.font =  buttonAC.titleLabel?.font.withSize(30)

        
        // Button Add
        buttonAdd.translatesAutoresizingMaskIntoConstraints = false
        buttonAdd.setTitle("+", for: UIControl.State.normal)
        buttonAdd.backgroundColor = .blue
        buttonAdd.titleLabel?.font =  buttonAC.titleLabel?.font.withSize(30)

        
        // Button Minus
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonMinus.setTitle("-", for: UIControl.State.normal)
        buttonMinus.backgroundColor = .blue
        buttonMinus.titleLabel?.font =  buttonAC.titleLabel?.font.withSize(30)

        
        // Button Equals
        buttonEquals.translatesAutoresizingMaskIntoConstraints = false
        buttonEquals.setTitle("=", for: UIControl.State.normal)
        buttonEquals.backgroundColor = .blue
        buttonEquals.titleLabel?.font =  buttonAC.titleLabel?.font.withSize(30)

        
        // Button AC
        buttonAC.translatesAutoresizingMaskIntoConstraints = false
        buttonAC.setTitle("AC", for: UIControl.State.normal)
        buttonAC.backgroundColor = .blue

        
        // Horizontal Stack View
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView.backgroundColor = .white
        //horizontalStackView.spacing = 15.0
        horizontalStackView.alignment = UIStackView.Alignment.center
        horizontalStackView.distribution  = UIStackView.Distribution.equalSpacing
        
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
        addSubview(horizontalStackView)

        //label1.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        //label1.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        //label1.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        //mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        NSLayoutConstraint.activate([
            label1.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 10.0),
            label1.topAnchor.constraint(equalTo: self.topAnchor, constant: 30.0),
            label1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10.0),
            
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 100.0),
            label2.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 10.0),
            label2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10.0),
            
            calculatorView.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0),
            calculatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0.0),
            calculatorView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            calculatorView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            
            buttonAC.bottomAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0),
            buttonAC.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            buttonAC.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button1.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0),
            button1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button1.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),

            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 0.0),
            button2.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button2.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 0.0),
            button3.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button3.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button4.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 0.0),
            button4.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button4.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button5.topAnchor.constraint(equalTo: button4.bottomAnchor, constant: 0.0),
            button5.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button5.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button6.topAnchor.constraint(equalTo: button5.bottomAnchor, constant: 0.0),
            button6.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button6.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button7.topAnchor.constraint(equalTo: button6.bottomAnchor, constant: 0.0),
            button7.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button7.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button8.topAnchor.constraint(equalTo: button7.bottomAnchor, constant: 0.0),
            button8.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button8.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button9.topAnchor.constraint(equalTo: button8.bottomAnchor, constant: 0.0),
            button9.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button9.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            button0.topAnchor.constraint(equalTo: button9.bottomAnchor, constant: 0.0),
            button0.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            button0.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            horizontalStackView.topAnchor.constraint(equalTo: button0.bottomAnchor, constant: 0.0),
            //horizontalStackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            //horizontalStackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            horizontalStackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        horizontalStackView.addArrangedSubview(buttonEquals)
        horizontalStackView.addArrangedSubview(buttonMultiply)
        horizontalStackView.addArrangedSubview(buttonDivide)
        horizontalStackView.addArrangedSubview(buttonAdd)
        horizontalStackView.addArrangedSubview(buttonMinus)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// bound and frame
