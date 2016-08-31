//
//  MapPrototypeViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 8/30/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class MapPrototypeViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var map: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

scrollView.contentSize = CGSizeMake(450, 550)

    }
}