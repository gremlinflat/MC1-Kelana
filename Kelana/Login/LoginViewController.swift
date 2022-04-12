//
//  LoginViewController.swift
//  kelana
//
//  Created by Nabilla Azarine on 12/04/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var inputLoc: UITextField!
    let colorBlue = UIColor(colorLiteralRed: 85, green: 121, blue: 198, alpha: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameFieldBorder()
        locFieldBorder()
    }
    
    func nameFieldBorder() {
        

        var bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: inputName.frame.height - 1, width: inputName.frame.width, height: 1.0)
        bottomLine.backgroundColor = colorBlue.cgColor
        inputName.borderStyle = UITextField.BorderStyle.none
        inputName.layer.addSublayer(bottomLine)
    }
    
    func locFieldBorder() {
        var bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: inputLoc.frame.height - 1, width: inputName.frame.width, height: 1.0)
        bottomLine.backgroundColor = colorBlue.cgColor
        inputLoc.borderStyle = UITextField.BorderStyle.none
        inputLoc.layer.addSublayer(bottomLine)
    }
}
