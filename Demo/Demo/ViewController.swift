//
//  ViewController.swift
//  Demo
//
//  Created by Yutaka Ataka on 2020/06/01.
//  Copyright © 2020 playce Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IBAction

    @IBAction private func goToUseStoryboard(_ sender: UIButton) {
        guard let useStoryboardViewController
                = self.storyboard?.instantiateViewController(withIdentifier: "UseStoryboardViewController") else { return }
        navigationController?.pushViewController(useStoryboardViewController, animated: true)
    }

    @IBAction private func goToUseCode(_ sender: UIButton) {
        guard let useCodeViewController
                = self.storyboard?.instantiateViewController(withIdentifier: "UseCodeViewController") else { return }
        navigationController?.pushViewController(useCodeViewController, animated: true)
    }
}
