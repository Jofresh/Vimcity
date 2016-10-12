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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        EventCell
        
        cell.photo.image = images[(indexPath as NSIndexPath).row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[(indexPath as NSIndexPath).row]
        performSegue(withIdentifier: vcName, sender: self)
    }
    
}
