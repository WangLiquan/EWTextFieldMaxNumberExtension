# EWTextFieldMaxNumberExtension
#### 使用RunTime和Extension为全局TextField添加最大输入字数属性.并对其进行限制

## 实现功能:

五十行代码实现,拖入一个文件拓展全局TextField.为其添加限制最大输入字数功能.轻便易用

## 调用方法:
###### 1.将UITextField+Extension.swift文件拖入项目
###### 2.需要设置最大值的UITextField调用addChangeTextTarget()方法
###### 3.如果需要设置特定的最大字数设定maxTextNumber属性,默认是15
```
let topTextField: UITextField = {
    let textField = UITextField(frame: CGRect(x: (UIScreen.main.bounds.width - 300) / 2, y: 100, width: 300, height: 40))
    textField.placeholder = "最大输入数3"
    textField.addChangeTextTarget()
    textField.maxTextNumber = 3
    return textField
}()
```

![效果图预览](https://github.com/WangLiquan/EWTextFieldMaxNumberExtension/raw/master/images/demonstration.gif)
