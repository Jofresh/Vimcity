//
//  FilterViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/10/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    

    @IBOutlet var mainView: DesignableView!
    @IBOutlet weak var filterView: UIView!
    @IBOutlet weak var studioButton: UIButton!
    @IBOutlet weak var subFilterView: UIView!
    @IBOutlet weak var yogaButton: UIButton!
    @IBOutlet weak var crossFitButton: UIButton!
    @IBOutlet weak var indoorCyclingButton: UIButton!
    @IBOutlet weak var gymButton: UIButton!
    @IBOutlet weak var personalTrainingButton: UIButton!
    @IBOutlet weak var groupButton: UIButton!
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.clearColor()
        view.opaque = false
    }
    
    @IBAction func studioButtonDidTouch(sender: AnyObject) {
    subFilterView.hidden = false
        filterView.hidden = true
    }
    
    @IBAction func didTouchYogaButton(sender: AnyObject) {
        
        let image = UIImage(named: "yoga button 2")! as UIImage
        yogaButton.setImage(image, forState: UIControlState.Normal)
        }
 
    @IBAction func crossFitButtonDidTouch(sender: AnyObject) {
        
        let image = UIImage(named: "cross fit button 2")! as UIImage
        crossFitButton.setImage(image, forState: UIControlState.Normal)
    }
    
    @IBAction func indoorCyclingButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "indoor cycling button 2")! as UIImage
        indoorCyclingButton.setImage(image, forState: UIControlState.Normal)
    }
    
    @IBAction func gymButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "gym button 2")! as UIImage
        gymButton.setImage(image, forState: UIControlState.Normal)
    }
    
    @IBAction func personalTrainingButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "personal training 2")! as UIImage
        personalTrainingButton.setImage(image, forState: UIControlState.Normal)
    }
    
    @IBAction func groupButtonDidTouch(sender: AnyObject) {
        let image = UIImage(named: "group button 2")! as UIImage
        groupButton.setImage(image, forState: UIControlState.Normal)
    }
    
    
    
    }
    

