//
//  FavoritesViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/7/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet var tableView: UITableView!
    var identities = [String]()
    var images = [UIImage(named: "Location 1") ,UIImage(named: "Fit Location 1"), UIImage(named: "Retail Location 1"), UIImage(named: "Location 2"), UIImage(named: "Service Location 1")]
    
    override func viewDidLoad() {

        
    identities = ["Favorites A","Bikram","Lulu", "Premium", "Urban"]
    
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        FavoritesCell
        
        cell.photo.image = images[(indexPath as NSIndexPath).row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[(indexPath as NSIndexPath).row]
        performSegue(withIdentifier: vcName, sender: self)
}
    

}
