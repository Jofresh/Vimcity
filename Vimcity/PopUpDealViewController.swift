//
//  PopUpDealViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/12/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class PopUpDealViewController: UIViewController {


    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func redeemDealButtonDidTouch(_ sender: AnyObject) {
        openUpgradeAlert()
    }
    
    func openUpgradeAlert() {
        let alert = UIAlertController(title: "Pop Up Deals", message: "Are you sure you want to redeem this Pop Up Deal?", preferredStyle: UIAlertControllerStyle.alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        
        alert.addAction(cancel)
        
        let go = UIAlertAction(title: "Yes!", style: UIAlertActionStyle.default) { (action: UIAlertAction) in
            print("Yes!") }
        
        alert.addAction(go)
        
        self.present(alert, animated: true, completion: nil)
    }

}
