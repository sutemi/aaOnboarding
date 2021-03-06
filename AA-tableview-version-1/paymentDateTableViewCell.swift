//
//  paymentDateTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class paymentDateTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        if UserManager.sharedManager.acctDate.characters.count > 0 {
            cellLabel.text = UserManager.sharedManager.acctDate
        }
        
        self.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
