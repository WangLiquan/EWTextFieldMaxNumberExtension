//
//  UITextField+Extension.swift
//  EWTextFieldMaxNumberExtension
//
//  Created by Ethan.Wang on 2018/10/29.
//  Copyright © 2018年 Ethan. All rights reserved.
//

import Foundation
import UIKit
/// 默认最大输入字数为15
var maxTextNumberDefault = 15

extension UITextField{
    /// 以runtime的形式UITextField添加最大输入字数属性
    public var maxTextNumber: Int {
        set {
            objc_setAssociatedObject(self, &maxTextNumberDefault, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        get {
            if let rs = objc_getAssociatedObject(self, &maxTextNumberDefault) as? Int {
                return rs
            }
            return 15
        }
    }
    /// 添加限制最大输入字数target
    public func addChangeTextTarget(){
        self.addTarget(self, action: #selector(changeText), for: .editingChanged)
    }
    @objc private func changeText(){
        //判断是不是在拼音状态,拼音状态不截取文本
        if let positionRange = self.markedTextRange{
            guard self.position(from: positionRange.start, offset: 0) != nil else {
                checkTextFieldText()
                return
            }
        }else {
            checkTextFieldText()
        }
    }
    /// 检测如果输入数高于设置最大输入数则截取
    private  func checkTextFieldText(){
        guard (self.text?.utf16.count)! <= maxTextNumber  else {
            guard let text = self.text else {
                return
            }
            let sIndex = text.index(text
                .startIndex, offsetBy: maxTextNumber)
            self.text = String(text[..<sIndex])
            return
        }
    }
}

