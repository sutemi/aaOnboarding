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

//        if cellLabel.text != "" {
//            self.cellLabel.isHidden = false
//        } else {
//            self.cellLabel.isHidden = true
//        }
        
    }
    
    @IBAction func toggleFields(_ sender: AnyObject) {
        
        if toggle.isOn {
            streetField.isEnabled = false
            zipField.isEnabled = false
            cityField.isEnabled = false
            stateField.isEnabled = false
            aptField.isEnabled = false
        } else {
            streetField.isEnabled = true
            zipField.isEnabled = true
            cityField.isEnabled = true
            stateField.isEnabled = true
            aptField.isEnabled = true
        }
    }
    
    func textFieldDidChange(sender:formUITextField) {
        if streetField.text != "" || cityField.text != "" || stateField.text != "" || zipField.text != "" {
            cellLabelHeight.constant = 20
//            self.cellLabel.isHidden = false
            let labelText = "\(streetField.text!), \(cityField.text!), \(stateField.text!) \(zipField.text!)"
            cellLabel.text = labelText
        } else {
            cellLabelHeight.constant = 1
//            self.cellLabel.isHidden = true
            cellLabel.text = ""
        }
    }
    
}
