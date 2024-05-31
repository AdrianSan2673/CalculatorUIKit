//
//  ButtonsView+UI.swift
//  CalculadoraUIKIT
//
//  Created by Adrian San Martin on 06/02/24.
//

import Foundation
import UIKit

extension ButtonsViews {
    func setup(){
       addSubViews()
       configureConstraint()
   }
   
   func addSubViews(){
       [cleanDisplay,eraserButton,porcentButton,divisor].forEach(stacklevel5.addArrangedSubview)
       [button7,button8,button9,buttonMultipler].forEach(stacklevel4.addArrangedSubview)
       [button4,button5,button6,buttonSubtrack].forEach(stacklevel3.addArrangedSubview)
       [button1,button2,button3,buttonPlus].forEach(stacklevel2.addArrangedSubview)
       [button0,buttonPoint,result].forEach(stacklevel1.addArrangedSubview)
       [stacklevel5,stacklevel4,stacklevel3,stacklevel2,stacklevel1].forEach(stackMain.addArrangedSubview)
       [display,stackMain].forEach(addSubview)
   }
    
    func configureConstraint(){
        NSLayoutConstraint.activate([
            display.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            display.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            display.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            display.heightAnchor.constraint(equalToConstant: 200),
            
            stackMain.topAnchor.constraint(equalTo: display.bottomAnchor),
            stackMain.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            stackMain.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            stackMain.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
