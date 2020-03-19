//
//  HomeViewController.swift
//  Firebase
//
//  Created by Ygor Nascimento on 19/03/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private let homeStackView = HomeStackView()
    private let screenHeight = UIScreen.main.bounds.size.height * 0.500

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(homeStackView)
        homeStackView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white

        NSLayoutConstraint.activate([
            homeStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            homeStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            homeStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -screenHeight)
        ])
    }
}
