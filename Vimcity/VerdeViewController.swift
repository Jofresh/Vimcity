//
//  VerdeViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 10/18/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class VerdeViewController: UIViewController {

    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func RedeemCreditButtonDidTouch(_ sender: AnyObject) {
        openUpgradeAlert()
    }
    
    func openUpgradeAlert() {
        let alert = UIAlertController(title: "Not So Fast!", message: "You've already used your $1 credit this week.", preferredStyle: UIAlertControllerStyle.alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        
        alert.addAction(cancel)
        
        let go = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) { (action: UIAlertAction) in
            print("Go!") }
        
        alert.addAction(go)
        
        
        self.present(alert, animated: true, completion: nil)
    }

}
