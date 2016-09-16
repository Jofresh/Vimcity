//
//  PasswordTableViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/15/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class PasswordTableViewController: UITableViewController {
    @IBAction func backButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func doneButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.backgroundView = UIImageView(image: UIImage(named: "background with white top"))
        
    }
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        // This changes the header background
        view.tintColor = UIColor.whiteColor()
        
        // Gets the header view as a UITableViewHeaderFooterView and changes the text colour
        let headerView: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        headerView.textLabel!.textColor = UIColor.grayColor()
        
    }
}