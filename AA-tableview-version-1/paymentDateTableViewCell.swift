//
//  paymentDateTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class paymentDateTableViewCell: UITableViewCell {

    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        if dateLabel.text == "" {
            dateLabel.isHidden = true
        } else {
            dateLabel.isHidden = false
        }
    }
    
}
