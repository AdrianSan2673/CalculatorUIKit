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
       [display,button0,button1,button2,button3,button4,button5,button6,button7,button8,button9, buttonPoint,buttonSubtrack, buttonMultipler, buttonPlus, divisor, result, cleanDisplay, eraserButton, porcentButton].forEach(addSubview)
   }
   
   func configureConstraint(){
       NSLayoutConstraint.activate([
           display.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
           display.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
           display.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
           display.heightAnchor.constraint(equalToConstant: 200),
           
           cleanDisplay.topAnchor.constraint(equalTo: display.bottomAnchor),
           cleanDisplay.leadingAnchor.constraint(equalTo: leadingAnchor),
           cleanDisplay.heightAnchor.constraint(equalToConstant: 100),
           cleanDisplay.widthAnchor.constraint(equalToConstant: 100),
           
           eraserButton.topAnchor.constraint(equalTo: display.bottomAnchor),
           eraserButton.leadingAnchor.constraint(equalTo: cleanDisplay.trailingAnchor),
           eraserButton.heightAnchor.constraint(equalToConstant: 100),
           eraserButton.widthAnchor.constraint(equalToConstant: 100),
           
           porcentButton.topAnchor.constraint(equalTo: display.bottomAnchor),
           porcentButton.leadingAnchor.constraint(equalTo: eraserButton.trailingAnchor),
           porcentButton.heightAnchor.constraint(equalToConstant: 100),
           porcentButton.widthAnchor.constraint(equalToConstant: 100),
           
           divisor.topAnchor.constraint(equalTo: display.bottomAnchor),
           divisor.leadingAnchor.constraint(equalTo: porcentButton.trailingAnchor),
           divisor.trailingAnchor.constraint(equalTo: trailingAnchor),//
           divisor.heightAnchor.constraint(equalToConstant: 100),
           divisor.widthAnchor.constraint(equalToConstant: 100),
           
           button7.topAnchor.constraint(equalTo: cleanDisplay.bottomAnchor),
           button7.leadingAnchor.constraint(equalTo: leadingAnchor),
           button7.heightAnchor.constraint(equalToConstant: 100),
           button7.widthAnchor.constraint(equalToConstant: 100),
           
           button8.topAnchor.constraint(equalTo: eraserButton.bottomAnchor),
           button8.leadingAnchor.constraint(equalTo: button7.trailingAnchor),
           button8.heightAnchor.constraint(equalToConstant: 100),
           button8.widthAnchor.constraint(equalToConstant: 100),
           
           button9.topAnchor.constraint(equalTo: porcentButton.bottomAnchor),
           button9.leadingAnchor.constraint(equalTo: button8.trailingAnchor),
           button9.heightAnchor.constraint(equalToConstant: 100),
           button9.widthAnchor.constraint(equalToConstant: 100),
           
           buttonMultipler.topAnchor.constraint(equalTo: divisor.bottomAnchor),
           buttonMultipler.leadingAnchor.constraint(equalTo: button9.trailingAnchor),
           buttonMultipler.trailingAnchor.constraint(equalTo: trailingAnchor),
           buttonMultipler.heightAnchor.constraint(equalToConstant: 100),
           buttonMultipler.widthAnchor.constraint(equalToConstant: 100),
           
           button4.topAnchor.constraint(equalTo: button7.bottomAnchor),
           button4.leadingAnchor.constraint(equalTo: leadingAnchor),
           button4.heightAnchor.constraint(equalToConstant: 100),
           button4.widthAnchor.constraint(equalToConstant: 100),
           
           button5.topAnchor.constraint(equalTo: button8.bottomAnchor),
           button5.leadingAnchor.constraint(equalTo: button4.trailingAnchor),
           button5.heightAnchor.constraint(equalToConstant: 100),
           button5.widthAnchor.constraint(equalToConstant: 100),
           
           button6.topAnchor.constraint(equalTo: button9.bottomAnchor),
           button6.leadingAnchor.constraint(equalTo: button5.trailingAnchor),
           button6.heightAnchor.constraint(equalToConstant: 100),
           button6.widthAnchor.constraint(equalToConstant: 100),
           
           buttonSubtrack.topAnchor.constraint(equalTo: buttonMultipler.bottomAnchor),
           buttonSubtrack.leadingAnchor.constraint(equalTo: button6.trailingAnchor),
           buttonSubtrack.heightAnchor.constraint(equalToConstant: 100),
           buttonSubtrack.widthAnchor.constraint(equalToConstant: 100),
           
           button1.topAnchor.constraint(equalTo: button4.bottomAnchor),
           button1.leadingAnchor.constraint(equalTo: leadingAnchor),
           button1.heightAnchor.constraint(equalToConstant: 100),
           button1.widthAnchor.constraint(equalToConstant: 100),
           
           button2.topAnchor.constraint(equalTo: button5.bottomAnchor),
           button2.leadingAnchor.constraint(equalTo: button1.trailingAnchor),
           button2.heightAnchor.constraint(equalToConstant: 100),
           button2.widthAnchor.constraint(equalToConstant: 100),
           
           button3.topAnchor.constraint(equalTo: button6.bottomAnchor),
           button3.leadingAnchor.constraint(equalTo: button2.trailingAnchor),
           button3.heightAnchor.constraint(equalToConstant: 100),
           button3.widthAnchor.constraint(equalToConstant: 100),
           
           buttonPlus.topAnchor.constraint(equalTo: buttonSubtrack.bottomAnchor),
           buttonPlus.leadingAnchor.constraint(equalTo: button3.trailingAnchor),
           buttonPlus.trailingAnchor.constraint(equalTo: trailingAnchor),
           buttonPlus.heightAnchor.constraint(equalToConstant: 100),
           buttonPlus.widthAnchor.constraint(equalToConstant: 100),
           
           button0.topAnchor.constraint(equalTo: button1.bottomAnchor),
           button0.leadingAnchor.constraint(equalTo: leadingAnchor),
           button0.heightAnchor.constraint(equalToConstant: 100),
           button0.widthAnchor.constraint(equalToConstant: 100),
           
           buttonPoint.topAnchor.constraint(equalTo: button2.bottomAnchor),
           buttonPoint.leadingAnchor.constraint(equalTo: button1.trailingAnchor),
           buttonPoint.heightAnchor.constraint(equalToConstant: 100),
           buttonPoint.widthAnchor.constraint(equalToConstant: 100),
           
           result.topAnchor.constraint(equalTo: buttonPlus.bottomAnchor),
           result.trailingAnchor.constraint(equalTo: trailingAnchor),
           result.heightAnchor.constraint(equalToConstant: 100),
           result.widthAnchor.constraint(equalToConstant: 100),
       ])
   }
}
