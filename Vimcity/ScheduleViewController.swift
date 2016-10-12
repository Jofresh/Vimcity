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
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ScheduleViewController.dismissKeyboard)))

    }
    
    func dismissKeyboard(){
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    
    @IBAction func calendarButtonDidTouch(_ sender: AnyObject) {
        datePickerView.isHidden = false
    }
 
    @IBAction func doneWithDatePickerDidTouch(_ sender: AnyObject) {
        datePickerView.isHidden = true
    }
    @IBAction func bookDidTouch(_ sender: AnyObject) {
        self.navigationController!.navigationBar.layer.zPosition = -1;
        self.tabBarController!.tabBar.layer.zPosition = -1;
        bookClass.isHidden = false
    }
    @IBAction func exitBookClassDidTouch(_ sender: AnyObject) {
        self.navigationController!.navigationBar.layer.zPosition = 0;
        self.tabBarController!.tabBar.layer.zPosition = 0;
        bookClass.isHidden = true
    }
    @IBAction func buyClassButtonDidTouch(_ sender: AnyObject) {
        self.navigationController!.navigationBar.layer.zPosition = 0;
        self.tabBarController!.tabBar.layer.zPosition = 0;
        bookClass.isHidden = true
    }
    
   
    @IBAction func textFieldDidChange(_ sender: AnyObject) {
        print("textField: \(textField.text)")
        bookClass.isHidden = true
        backgroundImage.isHidden = true
        searchOverlay.isHidden = false
        exitSearch.isHidden = false
    }
    
    @IBAction func exitSearchDidTouch(_ sender: AnyObject) {
        backgroundImage.isHidden = false
        searchOverlay.isHidden = true
        exitSearch.isHidden = true
    }

    
}

