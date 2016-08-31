//
//  FeedViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 8/28/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feed: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        scrollView.contentSize = CGSizeMake(355, 808)
      
        
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
}
