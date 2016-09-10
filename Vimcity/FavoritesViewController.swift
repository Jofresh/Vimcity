//
//  FavoritesViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/7/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    var identities = [String]()
    var images = [UIImage(named: "favorites cell1"), UIImage(named: "favorites cell2"), UIImage(named: "favorites cell3")]
    
    
    override func viewDidLoad() {
    identities = ["A","B","A"]
    
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as!
        FavoritesCell
        
        cell.photo.image = images[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let vcName = identities[indexPath.row]
        performSegueWithIdentifier(vcName, sender: self)
}
}