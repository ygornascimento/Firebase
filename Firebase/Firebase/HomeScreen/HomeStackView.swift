//
//  HomeStackView.swift
//  Firebase
//
//  Created by Ygor Nascimento on 19/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class HomeStackView: UIView {

    private let goToPaymentViewButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ir para: Pagamentos", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        button.addTarget(self, action: #selector(goToPaymentAction), for: .touchUpInside)
        return button
    }()

    private let goToBalanceViewButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ir para: Saldo", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        button.addTarget(self, action: #selector(goToBalanceAction), for: .touchUpInside)
        return button
    }()

    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [goToPaymentViewButton, goToBalanceViewButton])
        stack.axis = .vertical
        stack.spacing = 32
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        goToPaymentViewButton.layer.cornerRadius = 5
        goToBalanceViewButton.layer.cornerRadius = 5

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

    @objc func goToPaymentAction() {
        print("Indo para pagamentos.........")
    }

    @objc func goToBalanceAction() {
        print("Indo para saldo.........")
    }
}
