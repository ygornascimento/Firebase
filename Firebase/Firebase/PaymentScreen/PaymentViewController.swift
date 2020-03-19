//
//  PaymentViewController.swift
//  Firebase
//
//  Created by Ygor Nascimento on 19/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {

    private let paymentView = PaymentStackView()
    private let screenHeight = UIScreen.main.bounds.size.height * 0.500

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(paymentView)
        paymentView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white

        NSLayoutConstraint.activate([
            paymentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            paymentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            paymentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -screenHeight)
        ])
    }
}
