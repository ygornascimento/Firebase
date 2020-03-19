//
//  PaymentStackView.swift
//  Firebase
//
//  Created by Ygor Nascimento on 19/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class PaymentStackView: UIView {

    private let titlePaymentLabel: UILabel = {
        let label = UILabel()
        label.text = "Realizar pagamento no valor de:"
        label.textAlignment = .center
        label.font.withSize(14)
        return label
    }()

    private let paymentField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "Valor do pagamento:"
        return textField
    }()

    private let paymentButton: UIButton = {
        let button = UIButton()
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        button.addTarget(self, action: #selector(paymentButtonAction), for: .touchUpInside)
        return button
    }()

    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titlePaymentLabel, paymentField, paymentButton])
        stack.axis = .vertical
        stack.spacing = 16
        stack.setCustomSpacing(24.0, after: paymentField)
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

        paymentButton.layer.cornerRadius = 5

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

    @objc func paymentButtonAction() {
        print("Funcionando pagamento.........................")
    }

}
