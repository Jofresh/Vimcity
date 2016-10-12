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
    @IBOutlet weak var searchOverlay: UIImageView!
    @IBOutlet weak var exitSearch: UIButton!
    @IBOutlet weak var mapViewSwitcher: DesignableButton!
    @IBOutlet var tableView: UITableView!
    var identities = [String]()
    var images = [UIImage(named: "Location 1"), UIImage(named: "Fit Location 1"), UIImage(named: "Retail Location 1"), UIImage(named: "Service Location 1"), UIImage(named: "Location 2"), UIImage(named: "Fit Location 2"), UIImage(named: "Retail Location 2"),UIImage(named: "Service Location 2"), UIImage(named: "Location 3"), UIImage(named: "Fit Location 3"), UIImage(named: "Retail Location 3"), UIImage(named: "Service Location 3"), UIImage(named: "Location 4"), UIImage(named: "Fit Location 4"), UIImage(named: "Location 5"), UIImage(named: "Fit Location 5"), UIImage(named: "Retail Location 5"), UIImage(named: "Service Location 5"), UIImage(named: "Location 6"), UIImage(named: "Fit Location 6"), UIImage(named: "Retail Location 6"),UIImage(named: "Service Location 6"), UIImage(named: "Location 7"), UIImage(named: "Fit Location 7"), UIImage(named: "Retail Location 7"), UIImage(named: "Service Location 7"), UIImage(named: "Fit Location 8"), UIImage(named: "Retail Location 8"), UIImage(named: "Service Location 8"), UIImage(named: "Retail Location 9")]
    
    
    override func viewDidLoad() {
        
    identities = ["Home A","Bikram","Lulu", "Urban","Premium","Home A", "Home A","Home A","Home A", "Home A","Home A","Home A", "Home A","Home A","Home A", "Home A","Home A","Home A", "Home A","Home A","Home A", "Home A","Home A","Home A", "Home A","Home A","Home A", "Home A"]
    
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        HomeCell
        
        cell.photo.image = images[(indexPath as NSIndexPath).row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[(indexPath as NSIndexPath).row]
        performSegue(withIdentifier: vcName, sender: self)
}
    @IBAction func textFieldDidChanged(_ sender: AnyObject) {
        print("textField: \(textField.text)")
        tableView.isHidden = true
        searchOverlay.isHidden = false
        exitSearch.isHidden = false
    }
 
    @IBAction func exitSearchDidTouch(_ sender: AnyObject) {
        tableView.isHidden = false
        searchOverlay.isHidden = true
        exitSearch.isHidden = true
    }
   
   
}
