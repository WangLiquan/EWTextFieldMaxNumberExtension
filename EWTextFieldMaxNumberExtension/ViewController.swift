//
//  ViewController.swift
//  EWTextFieldMaxNumberExtension
//
//  Created by Ethan.Wang on 2018/10/29.
//  Copyright © 2018年 Ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let topTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: (UIScreen.main.bounds.width - 300) / 2, y: 100, width: 300, height: 40))
        textField.placeholder = "最大输入数3"
        textField.addChangeTextTarget()
        textField.maxTextNumber = 3
        return textField
    }()

    let middleTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: (UIScreen.main.bounds.width - 300) / 2, y: 200, width: 300, height: 40))
        textField.placeholder = "最大输入数5"
        textField.addChangeTextTarget()
        textField.maxTextNumber = 5
        return textField
    }()

    let bottomTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: (UIScreen.main.bounds.width - 300) / 2, y: 300, width: 300, height: 40))
        textField.placeholder = "最大输入数10"
        textField.addChangeTextTarget()
        textField.maxTextNumber = 10
        return textField
    }()

    let lastTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: (UIScreen.main.bounds.width - 300) / 2, y: 400, width: 300, height: 40))
        textField.placeholder = "不限制最大输入数"
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(topTextField)
        self.view.addSubview(middleTextField)
        self.view.addSubview(bottomTextField)
        self.view.addSubview(lastTextField)

    }

}

