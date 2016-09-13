//
//  EventsViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/12/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var textField: DesignableTextField!
    @IBOutlet var tableView: UITableView!
    var identities = [String]()
    var images = [UIImage(named: "events cell1"), UIImage(named: "events cell2"), UIImage(named: "events cell3")]
    
    
    override func viewDidLoad() {
        
        identities = ["Event A","Event A","Event A"]
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as!
        EventCell
        
        cell.photo.image = images[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let vcName = identities[indexPath.row]
        performSegueWithIdentifier(vcName, sender: self)
    }
    
}