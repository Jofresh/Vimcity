//
//  DirectoryViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 10/17/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class DirectoryViewController: UIViewController {

    @IBOutlet weak var facebookView: UIView!
  
    @IBAction func vimcityButtonDidTouch(_ sender: AnyObject) {
        facebookView.isHidden = true
    }
    @IBAction func facebookButtonDidTouch(_ sender: AnyObject) {
        facebookView.isHidden = false
    }
    @IBAction func backOrDoneButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
