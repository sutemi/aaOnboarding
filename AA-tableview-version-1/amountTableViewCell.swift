//
//  amountTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class amountTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        if UserManager.sharedManager.acctAmount.characters.count > 0 {
            cellLabel.text = UserManager.sharedManager.acctAmount
        }
        
        self.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

    }
    
}
