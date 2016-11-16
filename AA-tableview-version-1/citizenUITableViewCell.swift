//
//  citizenUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit



class citizenUITableViewCell: UITableViewCell {

   var tapAction: ((UITableViewCell) -> Void)?
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var switchNo: UISwitch!
    @IBOutlet weak var switchYes: UISwitch!

    
    @IBAction func switchedNo(_ sender:AnyObject) {
        if switchYes.isOn {
            switchYes.isOn = false
        }
        tapAction!(self)
    }
    
    @IBAction func switchedYes(_ sender: AnyObject) {
        if switchNo.isOn {
            switchNo.isOn = false
        }
    }
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//        if cellLabel.text == "" {
//            cellLabel.isHidden = true
//        } else {
//            cellLabel.isHidden = false
//        }
    }


    
    
    
}
