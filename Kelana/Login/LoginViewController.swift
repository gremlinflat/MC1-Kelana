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
    
    // bikin array interest isi tags
    
    var context:NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameFieldBorder()
        locFieldBorder()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }
    
    func nameFieldBorder() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: inputName.frame.height - 1, width: inputName.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.blue.cgColor
        inputName.borderStyle = UITextField.BorderStyle.none
        inputName.layer.addSublayer(bottomLine)
    }
    
    @IBAction func tagNature(_ sender: Any) {
        if let button = sender as? UIButton {
            if button.isSelected {
                    // set deselected
                button.isSelected = false
                } else {
                    // set selected
                    button.isSelected = true
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
        newUser.setValue(interest1, forKey: "interestA")
        newUser.setValue(interest2, forKey: "interestB")
        newUser.setValue(interest3, forKey: "interestC")
        newUser.setValue(interest4, forKey: "interestD")
    }
    
    func locFieldBorder() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: inputLoc.frame.height - 1, width: inputName.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.blue.cgColor
        inputLoc.borderStyle = UITextField.BorderStyle.none
        inputLoc.layer.addSublayer(bottomLine)
    }
}
