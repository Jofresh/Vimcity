//
//  LoginViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 8/30/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField1: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        textField1.delegate = self
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))

}
    
    func dismissKeyboard(){
        textField.resignFirstResponder()
        textField1.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        textField1.resignFirstResponder()
        return true
    }

    
}