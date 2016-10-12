//
//  PasswordTableViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/15/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class PasswordTableViewController: UITableViewController {
    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func doneButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.backgroundView = UIImageView(image: UIImage(named: "background with white top"))
        
    }
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        // This changes the header background
        view.tintColor = UIColor.white
        
        // Gets the header view as a UITableViewHeaderFooterView and changes the text colour
        let headerView: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        headerView.textLabel!.textColor = UIColor.gray
        
    }
}
