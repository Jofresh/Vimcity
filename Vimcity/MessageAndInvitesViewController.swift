//
//  MessageAndInvitesViewController.swift
//  Vimcity
//
//  Created by Josef Myers on 9/12/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class MessageAndInvitesViewController: UIViewController {

    @IBOutlet weak var messageOverlayView: UIView!
    @IBAction func backButtonDidTouch(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func inviteButtonDidTouch(_ sender: AnyObject) {
        messageOverlayView.isHidden = false
        
    }
   
    @IBAction func exitOrConfirmButtonDidTouch(_ sender: AnyObject) {
        messageOverlayView.isHidden = true
    }

}
