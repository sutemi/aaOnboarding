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
    

    
    @IBAction func toggleRadios(_ sender: AnyObject) {
        
        print("SELECTED: \(sender.isSelected)")
        
        let toggle = sender as! UISwitch
        
        // turn YES > ON
        if toggle.isOn == false && toggle.tag == 1 {
            switchNo.isOn = false
            UserManager.sharedManager.userCitizen = ""
            cellLabel.text = UserManager.sharedManager.userCitizen
        }
        // turn YES > OFF
        else if toggle.isOn == true && toggle.tag == 1 {
            switchNo.isOn = false
            UserManager.sharedManager.userCitizen = "U.S. Citizen"
            cellLabel.text = UserManager.sharedManager.userCitizen
        }
        // turn NO > ON
        else if toggle.isOn == false && toggle.tag == 2 {
            switchYes.isOn = false
            UserManager.sharedManager.userCitizen = ""
            cellLabel.text = UserManager.sharedManager.userCitizen
        }
        // turn NO > OFF
        else if toggle.isOn == true && toggle.tag == 2 {
            switchYes.isOn = false
            tapAction!(self)
        }
        else {
            print("Switch Logic Error")
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
