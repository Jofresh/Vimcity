//
//  WellnessCell.swift
//  Vimcity
//
//  Created by Josef Myers on 9/16/16.
//  Copyright © 2016 thatlevel. All rights reserved.
//

import UIKit

class WellnessCell: UITableViewCell {

 
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var studioVisits: UILabel!
    @IBOutlet weak var checkIns: UILabel!
    @IBOutlet weak var steps: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
