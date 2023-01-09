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
    
    override init(frame: CGRect) {
        
        super.init(frame: UIScreen.main.bounds)
        setUpView()
        setUpConstraint()
    }
    
    func setUpView() {
        backgroundColor = .clear
        label1.text = "5+2"
        label1.font = .systemFont(ofSize: 50)
        label1.textColor = .orange
        label2.text = "0"
    }
    
    func setUpConstraint() {
        
        addSubview(label1)
        addSubview(label2)
        
        //label1.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        //label1.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        //label1.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        //mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        NSLayoutConstraint.activate([
             label1.rightAnchor.constraint(equalTo: self.rightAnchor),
             label1.topAnchor.constraint(equalTo: self.topAnchor)

         ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
