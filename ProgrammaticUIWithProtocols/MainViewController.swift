//
//  ViewController.swift
//  ProgrammaticUIWithProtocols
//
//  Created by Jane Zhu on 1/24/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mainView)
        mainView.delegate = self
    }


}

extension MainViewController: MainViewDelegate {
    func sendMessage(message: String) {
        navigationController?.pushViewController(DetailViewController(message: mainView.userTextField.text!), animated: true)
    }
    
    
}
