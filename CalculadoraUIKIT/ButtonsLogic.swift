//
//  ButtonsLogic.swift
//  CalculadoraUIKIT
//
//  Created by Adrian San Martin on 30/05/24.
//

import Foundation
import UIKit

extension ButtonsViews {
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
