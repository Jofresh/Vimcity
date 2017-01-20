//
//  BodyworksViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 11/14/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class BodyworksViewController: UIViewController {

    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func RedeemCreditButtonDidTouch(_ sender: AnyObject) {
        openUpgradeAlert()
    }
    
    func openUpgradeAlert() {
        let alert = UIAlertController(title: "Not So Fast", message: "You’ve already used your $1 this week. Check back in 4 days", preferredStyle: UIAlertControllerStyle.alert)
        
        let go = UIAlertAction(title: "Ok!", style: UIAlertActionStyle.default) { (action: UIAlertAction) in
            print("Ok!") }
        
        alert.addAction(go)
        
        
        self.present(alert, animated: true, completion: nil)
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
