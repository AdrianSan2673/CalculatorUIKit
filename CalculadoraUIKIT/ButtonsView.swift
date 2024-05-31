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
    
    lazy var stackMain: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var stacklevel5: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var stacklevel4: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var stacklevel3: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var stacklevel2: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    lazy var stacklevel1: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
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
    lazy var button00: UIButton = {
        var config = UIButton.Configuration.tinted()
        config.title = "00"
        
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
    
    @objc func deleteLastCharacter(){
        numberDisplay.removeLast()
        display.text = showDisplay(numberDisplay: numberDisplay)
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
