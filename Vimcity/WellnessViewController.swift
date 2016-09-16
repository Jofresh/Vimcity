//
//  WellnessViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/12/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class WellnessViewController: UIViewController, UITableViewDataSource, UITextFieldDelegate {

    @IBAction func backButtonDidTouch(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)}
    
    @IBOutlet weak var tableView: UITableView!
    
    var day = ["Today","7 Days", "30 Days", "12 Months"]
    var studioVisits = ["0", "3", "11", "132"]
    var checkIns = ["1", "6", "24", "288"]
    var steps = ["376", "1156", "5647", "67k"]
    
    override func viewDidLoad() {
        tableView.backgroundColor = UIColor.clearColor()
        
}
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as!
        WellnessCell
        
        cell.day.text = day[indexPath.row]
        cell.studioVisits.text = studioVisits[indexPath.row]
        cell.checkIns.text = checkIns[indexPath.row]
        cell.steps.text = steps[indexPath.row]
        
        return cell
       
    }
}
