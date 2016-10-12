//
//  StudioViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 10/3/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class StudioViewController: UIViewController {

    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var bookClass: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func bookDidTouch(_ sender: AnyObject) {
        bookClass.isHidden = false
    }
    @IBAction func exitBookClassDidTouch(_ sender: AnyObject) {
        bookClass.isHidden = true
    }
    @IBAction func buyClassButtonDidTouch(_ sender: AnyObject) {
        bookClass.isHidden = true
    }


}
