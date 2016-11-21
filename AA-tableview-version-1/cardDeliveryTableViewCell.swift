//
//  cardDeliveryTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 11/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class cardDeliveryTableViewCell: UITableViewCell {

    @IBOutlet weak var deliverySwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        deliverySwitch.isOn = UserManager.sharedManager.userDelivery
        
    }

    @IBAction func toggleDelivery(_ sender: AnyObject) {
        UserManager.sharedManager.userDelivery = sender.isOn
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
