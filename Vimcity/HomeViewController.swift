//
//  HomeViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/7/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var textField: DesignableTextField!
    @IBOutlet weak var mapViewSwitcher: DesignableButton!
    @IBOutlet var tableView: UITableView!
    var identities = [String]()
    var images = [UIImage(named: "Location 1"), UIImage(named: "Location 2"), UIImage(named: "Location 3"), UIImage(named: "Location 4"), UIImage(named: "Location 5"), UIImage(named: "Location 6"), UIImage(named: "Location 7")]
    
    
    override func viewDidLoad() {
        
    identities = ["Home A","Premium","Home A", "Home A","Home A","Home A", "Home A"]
    
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as!
        HomeCell
        
        cell.photo.image = images[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let vcName = identities[indexPath.row]
        performSegueWithIdentifier(vcName, sender: self)
}
   
}