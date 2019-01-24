//
//  MainView.swift
//  ProgrammaticUIWithProtocols
//
//  Created by Jane Zhu on 1/24/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func sendMessage(message: String)
}

class MainView: UIView {

    weak var delegate: MainViewDelegate?
    
    lazy var userTextField: UITextField = {
       let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "Type in a message"
        return textField
    }()
    
    lazy var sendButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Send", for: .normal)
        button.addTarget(self, action: #selector(sendPressed), for: .touchUpInside)
        return button
    }()
    
    @objc func sendPressed() {
        userTextField.resignFirstResponder()
        guard let textField = userTextField.text else { return }
        delegate?.sendMessage(message: textField)
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = UIColor(red:0.75, green:0.68, blue:0.88, alpha:1.0)
        addSubview(userTextField)
        addSubview(sendButton)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        userTextField.translatesAutoresizingMaskIntoConstraints = false
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        userTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        userTextField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        sendButton.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 11).isActive = true
        sendButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
}
