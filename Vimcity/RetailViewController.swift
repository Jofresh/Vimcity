//
//  RetailViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 10/3/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class RetailViewController: UIViewController {

    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
