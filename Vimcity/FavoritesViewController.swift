//
//  FavoritesViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/7/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var textField: DesignableTextField!
    @IBOutlet var tableView: UITableView!
    var identities = [String]()
    var images = [UIImage(named: "Location 5"), UIImage(named: "Location 4"), UIImage(named: "Location 3"), UIImage(named: "Location 2"), UIImage(named: "Location 1")]
    
    override func viewDidLoad() {
       
        
    identities = ["Favorites A","Favorites A", "Favorites A", "Premium", "Favorites A"]
    
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
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