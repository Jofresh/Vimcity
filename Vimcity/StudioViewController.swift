//
//  StudioViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 10/3/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class StudioViewController: UIViewController {

    @IBAction func backButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBOutlet weak var bookClass: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func bookDidTouch(sender: AnyObject) {
        bookClass.hidden = false
    }
    @IBAction func exitBookClassDidTouch(sender: AnyObject) {
        bookClass.hidden = true
    }
    @IBAction func buyClassButtonDidTouch(sender: AnyObject) {
        bookClass.hidden = true
    }


}
