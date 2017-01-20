//
//  regularDealViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 11/3/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class regularDealViewController: UIViewController {
    
    @IBAction func backOrDoneButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func redeemDealButtonDidTouch(_ sender: AnyObject) {
        openUpgradeAlert()
    }
    
    func openUpgradeAlert() {
        let alert = UIAlertController(title: "Upgrade To Premium", message: "In order to redeem Deals, you need to upgrade to a Premium account.", preferredStyle: UIAlertControllerStyle.alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        
        alert.addAction(cancel)
        
        let go = UIAlertAction(title: "Go!", style: UIAlertActionStyle.default) { (action: UIAlertAction) in
            print("Go!") }
        
        alert.addAction(go)
        
        self.present(alert, animated: true, completion: nil)
    }


}
