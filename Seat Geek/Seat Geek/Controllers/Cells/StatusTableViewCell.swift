//
//  StatusTableViewCell.swift
//  Seat Geek
//
//  Created by Viresh Singh on 29/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import UIKit

class StatusTableViewCell: UITableViewCell {

    @IBOutlet weak var viewStatusLabel: UILabel!
    
    func updateStatus(to statusToUpdate:String) {
        self.viewStatusLabel.text = statusToUpdate
    }    
}
