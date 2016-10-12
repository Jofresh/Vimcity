//
//  UserDirectoryViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/12/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class UserDirectoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        

    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var tableView: UITableView!
    
        var identities = [String]()
        var images = [UIImage(named: "Listed User 1"), UIImage(named: "Listed User 2"), UIImage(named: "Listed User 3"), UIImage(named: "Listed User 4"), UIImage(named: "Listed User 5"), UIImage(named: "Listed User 6"), UIImage(named: "Listed User 7"), UIImage(named: "Listed User 8"), UIImage(named: "Listed User 9"), UIImage(named: "Listed User 10"), UIImage(named: "Listed User 11"), UIImage(named: "Listed User 12"), UIImage(named: "Listed User 13")]
        
        
        override func viewDidLoad() {
            identities = ["toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile", "toUserProfile"]
            
        }
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 13
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
            UserDirectoryCell
            
            cell.profilePic.image = images[(indexPath as NSIndexPath).row]
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let vcName = identities[(indexPath as NSIndexPath).row]
            performSegue(withIdentifier: vcName, sender: self)
            
        }}
