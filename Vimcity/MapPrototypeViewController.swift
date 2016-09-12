//
//  MapPrototypeViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 8/30/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class MapPrototypeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: DesignableTextField!
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var mapIndicatorView: UIView!
    @IBOutlet weak var locationIndicator: UIImageView!
    @IBOutlet weak var mapIndicatorButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))

    }
    func dismissKeyboard() {
        textField.resignFirstResponder()
       
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

    @IBAction func mapButtonDidTouch(sender: AnyObject) {
        if mapIndicatorView.hidden == true {
           mapIndicatorView.hidden = false
        }
        else {
            mapIndicatorView.hidden = true
        }
    }
        
   
    }
