//
//  RedeemPointsViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/11/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class RedeemPointsViewController: UIViewController {
    
    
    @IBAction func backButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func RedeemCreditButtonDidTouch(sender: AnyObject) {
        openUpgradeAlert()
    }
    
    func openUpgradeAlert() {
        let alert = UIAlertController(title: "Upgrade To Premium", message: "In order to redeem Points, you need to upgrade to a Premium account.", preferredStyle: UIAlertControllerStyle.Alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        
        alert.addAction(cancel)
        
        let go = UIAlertAction(title: "Go!", style: UIAlertActionStyle.Default) { (action: UIAlertAction) in
            print("Go!") }
            
        alert.addAction(go)
        
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
