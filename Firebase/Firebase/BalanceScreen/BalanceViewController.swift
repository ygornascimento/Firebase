//
//  BalanceViewController.swift
//  Firebase
//
//  Created by Ygor Nascimento on 19/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class BalanceViewController: UIViewController {

    private let balanceView = BalanceStackView()
    private let screenHeight = UIScreen.main.bounds.size.height * 0.500

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(balanceView)
        balanceView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white

        NSLayoutConstraint.activate([
            balanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            balanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            balanceView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -screenHeight)
        ])
    }
}
