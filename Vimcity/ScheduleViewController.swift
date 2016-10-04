//
//  ScheduleViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/10/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController, UITextFieldDelegate
{
   
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var textField: DesignableTextField!
    @IBOutlet weak var searchOverlay: UIView!
    @IBOutlet weak var exitSearch: UIImageView!
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
        self.textField.delegate = self
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
    
    
    @IBAction func textFieldDidEdit(sender: AnyObject) {
        print("textField: \(textField.text)")
        bookClass.hidden = true
        backgroundImage.hidden = true
        searchOverlay.hidden = false
        exitSearch.hidden = false
    }
    
    @IBAction func exitSearchDidTouch(sender: AnyObject) {
        backgroundImage.hidden = false
        searchOverlay.hidden = true
        exitSearch.hidden = true
    }

    
}

