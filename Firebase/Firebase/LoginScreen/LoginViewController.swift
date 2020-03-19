//
//  ViewController.swift
//  Firebase
//
//  Created by Ygor Nascimento on 18/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let loginStackView = LoginStackView()
    let viewHeight = UIScreen.main.bounds.size.height * 0.300

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    func setupView() {
        view.addSubview(loginStackView)
        loginStackView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white

        NSLayoutConstraint.activate([
            loginStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -viewHeight)
        ])
    }

}

