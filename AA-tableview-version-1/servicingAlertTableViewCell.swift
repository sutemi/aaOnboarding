//
//  servicingAlertTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/21/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class servicingAlertTableViewCell: UITableViewCell {


    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
