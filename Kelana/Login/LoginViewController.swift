//
//  LoginViewController.swift
//  kelana
//
//  Created by Nabilla Azarine on 12/04/22.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {
    
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var inputLoc: UITextField!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var natureBtn: UIButton!
    @IBOutlet weak var historicalBtn: UIButton!
    @IBOutlet weak var campingBtn: UIButton!
    @IBOutlet weak var photographyBtn: UIButton!
    @IBOutlet weak var expBtn: UIButton!
    @IBOutlet weak var shopBtn: UIButton!
    @IBOutlet weak var sightBtn: UIButton!
    
    var interest: [String] = []
    
    // bikin array interest isi tags
    
    var context:NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBtn.isEnabled = false
//        natureBtn.isEnabled = false
        historicalBtn.isEnabled = false
        campingBtn.isEnabled = false
        photographyBtn.isEnabled = false
        expBtn.isEnabled = false
        shopBtn.isEnabled = false
        sightBtn.isEnabled = false
        nameFieldBorder()
        locFieldBorder()
        
        inputName.delegate = self
        inputName.becomeFirstResponder()
        inputLoc.delegate = self
        self.hideKeyboardWhenTappedAround()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

    
    func nameFieldBorder() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: inputName.frame.height - 1, width: inputName.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.blue.cgColor
        inputName.borderStyle = UITextField.BorderStyle.none
        inputName.layer.addSublayer(bottomLine)
    }
    
    func locFieldBorder() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: inputLoc.frame.height - 1, width: inputName.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.blue.cgColor
        inputLoc.borderStyle = UITextField.BorderStyle.none
        inputLoc.layer.addSublayer(bottomLine)
    }

    @IBAction func tagNature(_ sender: Any) {
        interest.append("Nature")
        print(interest)
        if let button = sender as? UIButton {
            if button.isEnabled == false {
                button.isEnabled = true
                button.isSelected = true
                interest.append("Nature")
                print(interest)
                } else {
                    button.isEnabled = false
                    while interest.contains("Nature") {
                        if let tagIndex = interest.firstIndex(of: "Nature") {
                            interest.remove(at: tagIndex)
                        }
                    }
                    button.isSelected = false
                    print(interest)
                }
            }
    }
    
    @IBAction func tagHistorical(_ sender: Any) {
        
    }
    
    @IBAction func tagCamping(_ sender: Any) {
    }
    
    @IBAction func tagPhoto(_ sender: Any) {
    }
    
    @IBAction func tagExplore(_ sender: Any) {
    }
    
    @IBAction func tagShop(_ sender: Any) {
    }
    
    @IBAction func tagSight(_ sender: Any) {
    }
    
    @IBAction func submitLogin(_ sender: Any) {
        submit()
    }
    
    func submit() {
        let name = inputName.text!
        let loc = inputLoc.text!
//        let interest1 =
        
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        
        newUser.setValue(name, forKey: "name")
        newUser.setValue(loc, forKey: "location")
//        newUser.setValue(interest1, forKey: "interestA")
//        newUser.setValue(interest2, forKey: "interestB")
//        newUser.setValue(interest3, forKey: "interestC")
//        newUser.setValue(interest4, forKey: "interestD")
        
    }
    
}
    
extension LoginViewController: UITextFieldDelegate {

    func textFieldDidEndEditing(_ textField: UITextField) {
        if inputName.text?.isEmpty == false && inputLoc.text?.isEmpty == false {
            createBtn.isEnabled = true
        } else {
            createBtn.isEnabled = false
        }
    }
}

extension UIViewController {

    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
