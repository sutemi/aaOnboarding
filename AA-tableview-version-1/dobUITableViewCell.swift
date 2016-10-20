//
//  dobTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class dobUITableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var dobLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if dobLabel.text == "" {
            dobLabel.isHidden = true
        } else {
            dobLabel.isHidden = false
        }
    }
    
}
