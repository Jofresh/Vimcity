//
//  MapPrototypeViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 8/30/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class MapPrototypeViewController: UIViewController {

    @IBOutlet weak var textField: DesignableTextField!
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var mapIndicatorView: UIView!
    @IBOutlet weak var locationIndicator: UIImageView!
    @IBOutlet weak var mapIndicatorButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    @IBAction func mapButtonDidTouch(_ sender: AnyObject) {
        if mapIndicatorView.isHidden == true {
           mapIndicatorView.isHidden = false
        }
        else {
            mapIndicatorView.isHidden = true
        }
    }
        
   
    }
