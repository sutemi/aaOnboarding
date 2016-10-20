//
//  relationshipTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class relationshipUITableViewCell: UITableViewCell {

    @IBOutlet weak var relationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if relationLabel.text == "" {
            relationLabel.isHidden = true
        } else {
            relationLabel.isHidden = false
        }
    }
    
}
