//
//  FollowViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/11/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FollowViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    var identities = [String]()
    var images = [UIImage(named: "Listed User 1"), UIImage(named: "Listed User 2"), UIImage(named: "Listed User 3"), UIImage(named: "Listed User 4"), UIImage(named: "Listed User 5"), UIImage(named: "Listed User 6"), UIImage(named: "Listed User 7"), UIImage(named: "Listed User 8"), UIImage(named: "Listed User 9"), UIImage(named: "Listed User 10"), UIImage(named: "Listed User 11"), UIImage(named: "Listed User 12"), UIImage(named: "Listed User 13")]
    
    
    override func viewDidLoad() {
        identities = ["toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile"]
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as!
        FollowCell
        
        cell.userPhotoAndName.image = images[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let vcName = identities[indexPath.row]
        performSegueWithIdentifier(vcName, sender: self)
    
    }}