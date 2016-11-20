//
//  addressUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class addressUITableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    
    @IBOutlet weak var streetField: formUITextField!
    @IBOutlet weak var aptField: formUITextField!
    @IBOutlet weak var zipField: formUITextField!
    @IBOutlet weak var cityField: formUITextField!
    @IBOutlet weak var stateField: formUITextField!
    
    @IBOutlet weak var toggle: UISwitch!
    
//    var reloadAction: ((UITableViewCell) -> Void)?
    
    
    var isComplete:Bool = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        streetField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        zipField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        cityField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        stateField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func toggleFields(_ sender: AnyObject) {
        
//        reloadAction!(self)
        
        streetField.text = ""
        zipField.text = ""
        cityField.text = ""
        stateField.text = ""
        aptField.text = ""
        cellLabel.text = ""
        
        UserManager.sharedManager.userAddress = ""
        cellLabel.text = UserManager.sharedManager.userAddress
        
        if toggle.isOn {
            
            streetField.isEnabled = false
            zipField.isEnabled = false
            cityField.isEnabled = false
            stateField.isEnabled = false
            aptField.isEnabled = false
            
            UserManager.sharedManager.userAddress = "Same as primary cardmember's address"
            
        } else {
            
            streetField.isEnabled = true
            zipField.isEnabled = true
            cityField.isEnabled = true
            stateField.isEnabled = true
            aptField.isEnabled = true
        }
        
        cellLabel.text = UserManager.sharedManager.userAddress
        
        print("VALUE: \(UserManager.sharedManager.userAddress)")
        print("LABEL: \(cellLabel.text)")
        
    }
    
    func textFieldDidChange(sender:formUITextField) {
        if streetField.text == "" && cityField.text == "" && stateField.text == "" && zipField.text == "" {
            UserManager.sharedManager.userAddress = ""
            cellLabel.text = UserManager.sharedManager.userAddress
        } else {
            UserManager.sharedManager.userAddress = "\(streetField.text!), \(cityField.text!), \(stateField.text!) \(zipField.text!)"
            cellLabel.text = UserManager.sharedManager.userAddress
        }
        
        
    }
    
}
