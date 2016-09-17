//
//  FreeClassViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/12/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FreeClassViewController: UIViewController {

    @IBAction func backButtonDidTouch(sender: AnyObject) {
       dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func redeemButtonDidTouch(sender: AnyObject) {
        openUpgradeAlert()
    }
    
    func openUpgradeAlert() {
        let alert = UIAlertController(title: "Upgrade To Premium", message: "In order to redeem Free Classes, you need to upgrade to a Premium account.", preferredStyle: UIAlertControllerStyle.Alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        
        alert.addAction(cancel)
        
        let go = UIAlertAction(title: "Go!", style: UIAlertActionStyle.Default) { (action: UIAlertAction) in
            print("Go!") }
        
        alert.addAction(go)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
}
