//
//  ButtonsView.swift
//  CalculadoraUIKIT
//
//  Created by Adrian San Martin on 07/06/23.
//

import Foundation
import UIKit
import Combine

protocol ProtocolAddNumbers {
    func addcharacters(number: bottomAction)
}

final class ButtonsViews : UIView, ProtocolAddNumbers {
    
    var accion: bottomAction?
    var symbol: String?
    var numberDisplay: [String] = []
    
    lazy var display: UILabel = {
        let label = UILabel()
        label.font = UIFont(name:"Arial Rounded MT Bold", size: 40)
        label.textColor = .white
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        return label
    }()
    
    lazy var divisor: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.image = UIImage(systemName: "divide")
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var buttonPlus: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.image = UIImage(systemName: "plus")
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var buttonSubtrack: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.image = UIImage(systemName: "minus")
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var buttonMultipler: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.image = UIImage(systemName: "multiply")
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button0: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "0"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var result: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.image = UIImage(systemName: "equal")
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button1: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "1"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var buttonPoint: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "."
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button2: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "2"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button3: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "3"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button4: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "4"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button5: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "5"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button6: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "6"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button7: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "7"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button8: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "8"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var button9: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "9"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var cleanDisplay: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "AC"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(cleanDisplayAction), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var eraserButton: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.image = UIImage(systemName: "backward.end.fill")
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(deleteLastCharacter), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var porcentButton: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.image = UIImage(systemName: "percent")
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(addNumber(_:)), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func cleanDisplayAction () {
        display.text = "0"
        self.numberDisplay = []
    }
    
    @objc func addNumber(_ sender: UIButton) {
        if button1.isTouchInside {
            addcharacters(number: .button1)
            return
        } else if button2.isTouchInside {
            addcharacters(number: .button2)
            return
        } else if button3.isTouchInside {
            addcharacters(number: .button3)
            return
        } else if button4.isTouchInside {
            addcharacters(number: .button4)
            return
        } else if button5.isTouchInside {
            addcharacters(number: .button5)
            return
        } else if button6.isTouchInside {
            addcharacters(number: .button6)
            return
        } else if button7.isTouchInside {
            addcharacters(number: .button7)
            return
        } else if button8.isTouchInside {
            addcharacters(number: .button8)
            return
        } else if button9.isTouchInside {
            addcharacters(number: .button9)
            return
        } else if button0.isTouchInside {
            addcharacters(number: .button0)
            return
        } else if buttonPlus.isTouchInside{
            addcharacters(number: .plus)
            return
        } else if buttonSubtrack.isTouchInside {
            addcharacters(number: .subtract)
            return
        } else if buttonMultipler.isTouchInside {
            addcharacters(number: .multiple)
            return
        } else if buttonPoint.isTouchInside {
            addcharacters(number: .point)
            return
        } else if result.isTouchInside {
            addcharacters(number: .result)
            return
        } else if divisor.isTouchInside {
            addcharacters(number: .division)
        } else if porcentButton.isTouchInside {
            addcharacters(number: .porcent)
        }
    }
    
    func addcharacters(number: bottomAction) {
        switch number {
        case .button0:
            addNumberDisplay(number: "0")
        case .button1:
            addNumberDisplay(number: "1")
        case .button2:
            addNumberDisplay(number: "2")
        case .button3:
            addNumberDisplay(number: "3")
        case .button4:
            addNumberDisplay(number: "4")
        case .button5:
            addNumberDisplay(number: "5")
        case .button6:
            addNumberDisplay(number: "6")
        case .button7:
            addNumberDisplay(number: "7")
        case .button8:
            addNumberDisplay(number: "8")
        case .button9:
            addNumberDisplay(number: "9")
        case .plus:
            addNumberDisplay(number: "+")
        case .subtract:
            addNumberDisplay(number: "-")
        case .multiple:
            addNumberDisplay(number: "*")
        case .point:
            addNumberDisplay(number: ".")
        case .division:
            addNumberDisplay(number: "/")
        case .result:
            numberResult(numberDisplay: numberDisplay)
        case .porcent:
            addNumberDisplay(number: "%")
        }
    }
    
    func addNumberDisplay(number: String) {
        if display.text == "0" && number == "0" || display.text == "0" && number == "+" || display.text == "0" && number == "x" || display.text == "0" && number == "/" || display.text == "0" && number == "x" {
            return
        } else if display.text == "0" {
            numberDisplay.append(number)
            display.text = numberDisplay.first
        } else if (numberDisplay.last == "+" || numberDisplay.last == "-" || numberDisplay.last == "x" || numberDisplay.last == "/" || numberDisplay.last == "%") && (number == "+" || number == "-" || number == "x" || number == "/" || number == "%") {
            let lastValue = numberDisplay.count - 1
            numberDisplay[lastValue] = number
            display.text = showDisplay(numberDisplay: numberDisplay)
        } else {
            numberDisplay.append(number)
            display.text? += numberDisplay.last ?? ""
        }
    }
    
    @objc func deleteLastCharacter(){
        numberDisplay.removeLast()
        display.text = showDisplay(numberDisplay: numberDisplay)
    }
    
    func showDisplay(numberDisplay: [String] = []) -> String {
        var serie = ""
        for i in numberDisplay {
            serie += "\(i)"
        }
        return serie
    }
    
    func numberplus(numberDisplay: [Double] = []) -> Double {
        return Double(numberDisplay[0] + numberDisplay[1])
    }
    
    func numberSubtrat(numberDisplay: [Double] = []) -> Double {
        return Double(numberDisplay[0] - numberDisplay[1])
    }
    
    func numberMulti(numberDisplay: [Double] = []) -> Double {
        return Double(numberDisplay[0] * numberDisplay[1])
    }
    
    func mumberDivisi(numberDisplay: [Double] =  []) -> Double {
        return numberDisplay[0] / numberDisplay[1]
    }
    
    func numberPorcent(numberDisplay: [Double] = []) -> Double {
        let porcentAux = Double(numberDisplay[1])
        return numberDisplay[0] * (porcentAux * 0.01)
    }
    
    func numberResult(numberDisplay: [String] = []) {
        var series: [Double] = []
        var total = 0.0
        var numberAux = ""
        var operationAux = ""
        var count = 0
        for i in numberDisplay {
            if (i == "+" || i == "-" || i == "*" || i == "/" || i == "%" || count == numberDisplay.count-1) {
                if count == numberDisplay.count-1 && (i != "+" || i != "-" || i != "*" || i != "/" || i != "%") {
                    numberAux += "\(i)"
                }
                if operationAux == "" {
                    series.append(Double(numberAux) ?? 0.0)
                    numberAux = ""
                    operationAux = i
                } else {
                    series.append(Double(numberAux) ?? 0.0)
                    switch operationAux {
                    case "+":
                        total = self.numberplus(numberDisplay: series)
                    case "-":
                        total = self.numberSubtrat(numberDisplay: series)
                    case "*":
                        total = self.numberMulti(numberDisplay: series)
                    case "/":
                        total = self.mumberDivisi(numberDisplay: series)
                    case "%":
                        total = self.numberPorcent(numberDisplay: series)
                    default:
                        print("Error")
                    }
                    operationAux = i
                    numberAux = ""
                    series = []
                    series.append(total)
                }
            } else {
                numberAux += "\(i)"
            }
            count += 1
        }
        
        if hasInteger(total: total) {
            self.display.text = "\(Int(total))"
        } else {
            if total.isFinite {
                print("el numero es finito")
            } else {
                print("el numero es infinito")
            }
            self.display.text = "\(total)"
        }
        self.numberDisplay = []
        getNewNumber(newNumber: self.display.text ?? "0")
    }
    
    func hasInteger(total: Double) -> Bool {
        if total.isInteger {
            return true
        } else {
            return false
        }
    }
    
    func getNewNumber(newNumber: String){
        for i in newNumber.indices {
            numberDisplay.append(newNumber[i].description)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

enum bottomAction {
    case button0
    case button1
    case button2
    case button3
    case button4
    case button5
    case button6
    case button7
    case button8
    case button9
    case plus
    case subtract
    case multiple
    case point
    case result
    case division
    case porcent
}

extension FloatingPoint {
  var isInteger: Bool { rounded() == self }
}

