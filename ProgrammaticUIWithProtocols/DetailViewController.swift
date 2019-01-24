//
//  DetailViewController.swift
//  ProgrammaticUIWithProtocols
//
//  Created by Jane Zhu on 1/24/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    let detailView = DetailView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(detailView)
    }
    
    init(message: String) {
        super.init(nibName: nil, bundle: nil)
        detailView.messageLabel.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
