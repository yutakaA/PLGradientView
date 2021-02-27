//
//  UseCodeViewController.swift
//  Demo
//
//  Created by Yutaka Ataka on 2020/06/01.
//  Copyright © 2020 playce Inc. All rights reserved.
//

import UIKit
import PLGradientView

class UseCodeViewController: UIViewController {

    private let gradientView: PLGradientView = PLGradientView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupGradientView()
    }

    private func setupGradientView() {
        gradientView.setup(colors: [UIColor.red.cgColor, UIColor.white.cgColor, UIColor.yellow.cgColor, UIColor.white.cgColor, UIColor.green.cgColor],
                           locations: [0, 0.1, 0.3, 0.5, 0.9],
                           gradientPosition: .leftTopToRightBootm)
        gradientView.frame = self.view.frame
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(gradientView)

        gradientView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        gradientView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        gradientView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        gradientView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
    }
}
