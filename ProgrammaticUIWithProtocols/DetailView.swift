//
//  DetailView.swift
//  ProgrammaticUIWithProtocols
//
//  Created by Jane Zhu on 1/24/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(28)
        label.text = "Placeholder"
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = UIColor(red:0.97, green:0.76, blue:0.84, alpha:1.0)
        addSubview(messageLabel)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        messageLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        messageLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 11).isActive = true
    }
}
