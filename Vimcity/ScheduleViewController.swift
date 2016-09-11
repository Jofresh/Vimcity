//
//  ScheduleViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/10/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var textField: DesignableTextField!
    @IBOutlet var bookAClass: [UIButton]!
    @IBOutlet weak var datePickerView: UIView!
    @IBOutlet weak var calendarButton: UIButton!
    @IBOutlet weak var doneWithDatePicker: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var bookClass: UIImageView!
    @IBOutlet weak var exitBookClass: UIButton!
    @IBOutlet weak var buyClassPass: UIButton!

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
    @IBAction func calendarButtonDidTouch(sender: AnyObject) {
        datePickerView.hidden = false
    }
 
    @IBAction func doneWithDatePickerDidTouch(sender: AnyObject) {
        datePickerView.hidden = true
    }
    @IBAction func bookDidTouch(sender: AnyObject) {
        self.navigationController!.navigationBar.layer.zPosition = -1;
        self.tabBarController!.tabBar.layer.zPosition = -1;
        bookClass.hidden = false
    }
    @IBAction func exitBookClassDidTouch(sender: AnyObject) {
        self.navigationController!.navigationBar.layer.zPosition = 0;
        self.tabBarController!.tabBar.layer.zPosition = 0;
        bookClass.hidden = true
    }
    @IBAction func buyClassButtonDidTouch(sender: AnyObject) {
        self.navigationController!.navigationBar.layer.zPosition = 0;
        self.tabBarController!.tabBar.layer.zPosition = 0;
        bookClass.hidden = true
    }
}

