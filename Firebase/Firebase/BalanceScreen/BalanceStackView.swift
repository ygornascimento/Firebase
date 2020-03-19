//
//  BalanceStackView.swift
//  Firebase
//
//  Created by Ygor Nascimento on 19/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class BalanceStackView: UIView {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Seu saldo é:"
        label.textAlignment = .center
        label.font.withSize(16)
        return label
    }()

    private let balanceLabel: UILabel = {
        let label = UILabel()
        label.text = "R$ 1.955,00"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32)
        return label
    }()

    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLabel, balanceLabel])
        stack.axis = .vertical
        stack.spacing = 16
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

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }


}
