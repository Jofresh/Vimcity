//
//  WellnessViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/12/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class WellnessViewController: UIViewController, UITableViewDataSource, UITextFieldDelegate {

    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)}
    
    @IBOutlet weak var tableView: UITableView!
    
    var day = ["Today","7 Days", "30 Days", "12 Months"]
    var studioVisits = ["0", "3", "11", "132"]
    var checkIns = ["1", "6", "24", "288"]
    var steps = ["376", "1156", "5647", "67k"]
    
    override func viewDidLoad() {
        tableView.backgroundColor = UIColor.clear
        
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        WellnessCell
        
        cell.day.text = day[(indexPath as NSIndexPath).row]
        cell.studioVisits.text = studioVisits[(indexPath as NSIndexPath).row]
        cell.checkIns.text = checkIns[(indexPath as NSIndexPath).row]
        cell.steps.text = steps[(indexPath as NSIndexPath).row]
        
        return cell
       
    }
}
