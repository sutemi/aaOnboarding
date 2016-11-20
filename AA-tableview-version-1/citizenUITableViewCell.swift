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
        } else {
            switchNo.isOn = true
        }
        tapAction!(self)
    }
    
    @IBAction func switchedYes(_ sender: AnyObject) {
        if switchNo.isOn {
            switchNo.isOn = false
        } else {
            
        }
        
        UserManager.sharedManager.userCitizen = "U.S. Citizen"
        cellLabel.text = UserManager.sharedManager.userCitizen
    }
    
    

    
    @IBAction func toggleRadios(_ sender: AnyObject) {
        
        print("SELECTED: \(sender.isSelected)")
        
        if sender.isSelected == false {
            sender.setSelected(true, animated: true)
        } else {
            sender.setSelected(false, animated: true)
        }
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

//        if cellLabel.text != "" {
//            self.cellLabel.isHidden = false
//        } else {
//            self.cellLabel.isHidden = true
//        }
    }


    
    
    
}
