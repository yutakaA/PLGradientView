//
//  UseStoryboardViewController.swift
//  Demo
//
//  Created by Yutaka Ataka on 2020/06/01.
//  Copyright © 2020 playce Inc. All rights reserved.
//

import UIKit
import PLGradientView

class UseStoryboardViewController: UIViewController {

    @IBOutlet private weak var gradientView: PLGradientView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupGradientView()
    }

    private func setupGradientView() {
        gradientView.setup(colors: [UIColor.red.cgColor, UIColor.white.cgColor, UIColor.yellow.cgColor, UIColor.white.cgColor, UIColor.green.cgColor],
                           locations: [0, 0.1, 0.3, 0.5, 0.9],
                           gradientPosition: .topToBottom)
    }
}
