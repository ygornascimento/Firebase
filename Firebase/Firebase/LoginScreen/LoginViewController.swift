//
//  ViewController.swift
//  Firebase
//
//  Created by Ygor Nascimento on 18/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private let loginStackView = LoginStackView()
    private let screenHeight = UIScreen.main.bounds.size.height * 0.500

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(loginStackView)
        loginStackView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white

        NSLayoutConstraint.activate([
            loginStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -screenHeight)
        ])
    }
}

