//
//  MainViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 8/29/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, BWWalkthroughViewControllerDelegate {

    var walkthrough:BWWalkthroughViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



    @IBAction func presentWalkthrough() {
 

        let stb = UIStoryboard(name: "Main", bundle: nil)
        walkthrough = stb.instantiateViewControllerWithIdentifier("walk0") as! BWWalkthroughViewController
        let page_one = stb.instantiateViewControllerWithIdentifier("walk1")
        let page_two = stb.instantiateViewControllerWithIdentifier("walk2")
        let page_three = stb.instantiateViewControllerWithIdentifier("walk3")
        let page_four = stb.instantiateViewControllerWithIdentifier("walk4")
     
        
        // Attach the pages to the master
        walkthrough.delegate = self
        walkthrough.addViewController(page_one)
        walkthrough.addViewController(page_two)
        walkthrough.addViewController(page_three)
        walkthrough.addViewController(page_four)
   
        self.presentViewController(walkthrough, animated: true, completion: nil)
        
                }
    }


    
    

