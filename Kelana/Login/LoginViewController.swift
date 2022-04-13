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
    
    var interest: [String]? = []
    var isSelected: Bool = false
    let userDefaults = UserDefaults.standard
    
    var context:NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBtn.isEnabled = false
        nameFieldBorder()
        locFieldBorder()
        resetDefaults()
        
        inputName.delegate = self
        inputName.becomeFirstResponder()
        inputLoc.delegate = self
        self.hideKeyboardWhenTappedAround()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }
    
    func resetDefaults() {
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: "name")
        }
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
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

    @IBAction func tagNature(_ sender: UIButton) {
        isSelected = true
        if isSelected {
            isSelected = false
            natureBtn.isEnabled = false
            print("isSelected")
            interest?.append("Nature")
            print(interest!)
//            userDefaults.set(inputName!.text, forKey: "name")
//            let loggedUsername = UserDefaults.standard.string(forKey: "name")
//            print(loggedUsername!)
        }
        else {
            isSelected = true
        }
    }
    
    @IBAction func tagHistorical(_ sender: Any) {
        isSelected = true
        if isSelected {
            isSelected = false
            historicalBtn.isEnabled = false
            print("isSelected")
            interest?.append("Historical")
            print(interest!)
        }
        else {
            isSelected = true
        }
    }
    
    @IBAction func tagCamping(_ sender: Any) {
        isSelected = true
        if isSelected {
            isSelected = false
            campingBtn.isEnabled = false
            print("isSelected")
            interest?.append("Camping")
            print(interest!)
        }
        else {
            isSelected = true
        }
    }
    
    @IBAction func tagPhoto(_ sender: Any) {
        isSelected = true
        if isSelected {
            isSelected = false
            photographyBtn.isEnabled = false
            print("isSelected")
            interest?.append("Photography")
            print(interest!)
        }
        else {
            isSelected = true
        }
    }
    
    @IBAction func tagExplore(_ sender: Any) {
        isSelected = true
        if isSelected {
            isSelected = false
            expBtn.isEnabled = false
            print("isSelected")
            interest?.append("Exploration")
            print(interest!)
        }
        else {
            isSelected = true
        }
    }
    
    @IBAction func tagShop(_ sender: Any) {
        isSelected = true
        if isSelected {
            isSelected = false
            shopBtn.isEnabled = false
            print("isSelected")
            interest?.append("Shopping")
            print(interest!)
        }
        else {
            isSelected = true
        }
    }
    
    @IBAction func tagSight(_ sender: Any) {
        isSelected = true
        if isSelected {
            isSelected = false
            sightBtn.isEnabled = false
            print("isSelected")
            interest?.append("Sightseeing")
            print(interest!)
        }
        else {
            isSelected = true
        }
    }
    
    @IBAction func submitLogin(_ sender: Any) {
        login()
    }
    
    func login() {
        let name = inputName.text!
        let loc = inputLoc.text!
        
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        
//        newUser.setValue(name, forKey: "name")
//        newUser.setValue(loc, forKey: "location")
//        newUser.setValue(interest![0], forKey: "interestA")
//        newUser.setValue(interest![1], forKey: "interestB")
//        newUser.setValue(interest![2], forKey: "interestC")
//        newUser.setValue(interest![3], forKey: "interestD")
//
//        do {
//            try context.save()
//        } catch  {
//
//        }
        
//        userDefaults.set(name, forKey: "name")
//        let loggedUsername = UserDefaults.standard.string(forKey: "name")
//        print(loggedUsername!)
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
