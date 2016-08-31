//
//  SignUpViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 8/29/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        textField1.delegate = self
        textField2.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))
        
    }

    func dismissKeyboard() {
        textField.resignFirstResponder()
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        return true
    }
}
