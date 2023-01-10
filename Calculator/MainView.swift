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
    let horizontalStackView1 = UIStackView()
    let horizontalStackView2 = UIStackView()
    let horizontalStackView3 = UIStackView()
    let horizontalStackView4 = UIStackView()
    let horizontalStackView5 = UIStackView()
    let verticalStackView = UIStackView()


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
        button1.titleLabel?.font =  button1.titleLabel?.font.withSize(48)

        
        // Button2
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("2", for: UIControl.State.normal)
        button2.titleLabel?.font =  button2.titleLabel?.font.withSize(48)


        // Button3
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("3", for: UIControl.State.normal)
        button3.titleLabel?.font =  button3.titleLabel?.font.withSize(48)

        // Button4
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setTitle("4", for: UIControl.State.normal)
        button4.titleLabel?.font =  button4.titleLabel?.font.withSize(48)

        // Button5
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.setTitle("5", for: UIControl.State.normal)
        button5.titleLabel?.font =  button5.titleLabel?.font.withSize(48)

        // Button6
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.setTitle("6", for: UIControl.State.normal)
        button6.titleLabel?.font =  button6.titleLabel?.font.withSize(48)

        // Button7
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.setTitle("7", for: UIControl.State.normal)
        button7.titleLabel?.font =  button7.titleLabel?.font.withSize(48)

        // Button8
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.setTitle("8", for: UIControl.State.normal)
        button8.titleLabel?.font =  button8.titleLabel?.font.withSize(48)

        // Button9
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.setTitle("9", for: UIControl.State.normal)
        button9.titleLabel?.font =  button9.titleLabel?.font.withSize(48)

        // Button0
        button0.translatesAutoresizingMaskIntoConstraints = false
        button0.setTitle("0", for: UIControl.State.normal)
        button0.titleLabel?.font =  button0.titleLabel?.font.withSize(48)

        // Button Multiply
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiply.setTitle("x", for: UIControl.State.normal)
        buttonMultiply.titleLabel?.font =  buttonMultiply.titleLabel?.font.withSize(48)

        
        // Button Divide
        buttonDivide.translatesAutoresizingMaskIntoConstraints = false
        buttonDivide.setTitle("/", for: UIControl.State.normal)
        buttonDivide.titleLabel?.font =  buttonDivide.titleLabel?.font.withSize(48)

        
        // Button Add
        buttonAdd.translatesAutoresizingMaskIntoConstraints = false
        buttonAdd.setTitle("+", for: UIControl.State.normal)
        buttonAdd.titleLabel?.font =  buttonAdd.titleLabel?.font.withSize(48)

        
        // Button Minus
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonMinus.setTitle("-", for: UIControl.State.normal)
        buttonMinus.titleLabel?.font =  buttonMinus.titleLabel?.font.withSize(48)

        
        // Button Equals
        buttonEquals.translatesAutoresizingMaskIntoConstraints = false
        buttonEquals.setTitle("=", for: UIControl.State.normal)
        buttonEquals.titleLabel?.font =  buttonEquals.titleLabel?.font.withSize(48)

        
        // Button AC
        buttonAC.translatesAutoresizingMaskIntoConstraints = false
        buttonAC.setTitle("AC", for: UIControl.State.normal)
        buttonAC.titleLabel?.font =  buttonAC.titleLabel?.font.withSize(48)

        // Horizontal Stack View 1
        horizontalStackView1.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView1.backgroundColor = .orange
        //horizontalStackView1.spacing = 100.0
        horizontalStackView1.distribution = UIStackView.Distribution.equalSpacing
        horizontalStackView1.alignment = UIStackView.Alignment.center
        horizontalStackView1.spacing   = 60.0

        // Horizontal Stack View 2
        horizontalStackView2.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView2.backgroundColor = .orange
        //horizontalStackView2.spacing = 50.0
        horizontalStackView2.distribution = UIStackView.Distribution.equalSpacing
        horizontalStackView2.alignment = UIStackView.Alignment.center
        horizontalStackView2.spacing   = 60.0

        
        // Horizontal Stack View 3
        horizontalStackView3.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView3.backgroundColor = .orange
        //horizontalStackView2.spacing = 50.0
        horizontalStackView3.distribution = UIStackView.Distribution.equalSpacing
        horizontalStackView3.alignment = UIStackView.Alignment.center
        horizontalStackView3.spacing   = 60.0

        // Horizontal Stack View 4
        horizontalStackView4.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView4.backgroundColor = .orange
        //horizontalStackView4.spacing = 50.0
        horizontalStackView4.distribution = UIStackView.Distribution.equalSpacing
        horizontalStackView4.alignment = UIStackView.Alignment.center
        horizontalStackView4.spacing   = 60.0

        // Horizontal Stack View 5
        horizontalStackView5.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView5.backgroundColor = .orange
        //horizontalStackView5.spacing = 50.0
        horizontalStackView5.distribution = UIStackView.Distribution.equalSpacing
        horizontalStackView5.alignment = UIStackView.Alignment.center
        horizontalStackView5.spacing   = 60.0

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
            //verticalStackView.bottomAnchor.constraint(equalTo: calculatorView.bottomAnchor, constant: -100.0),
            

        ])
        
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
        
        verticalStackView.addArrangedSubview(horizontalStackView1)
        verticalStackView.addArrangedSubview(horizontalStackView2)
        verticalStackView.addArrangedSubview(horizontalStackView3)
        verticalStackView.addArrangedSubview(horizontalStackView4)
        verticalStackView.addArrangedSubview(horizontalStackView5)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// bound and frame
// Frame is like this size of the object relative to the superview
// Bound is like its own coordinate system. Not relative to anything. Like if you rotate a rectangle, its bound gets bigger
