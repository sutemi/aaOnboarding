//
//  addressUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class addressUITableViewCell: UITableViewCell {

    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var streetField: formUITextField!
    @IBOutlet weak var zipField: formUITextField!
    @IBOutlet weak var cityField: formUITextField!
    @IBOutlet weak var stateField: formUITextField!
   
    
    
    var isComplete:Bool = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        streetField.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        zipField.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        cityField.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        stateField.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if addressLabel.text == "" {
            addressLabel.isHidden = true
        } else {
            addressLabel.isHidden = false
        }
        
    }
    
    
    func textFieldDidChange() {
        if streetField.text != "" && zipField.text != "" && cityField.text != "" && stateField.text != "" {
            self.isComplete = true
        }
    }
    
}
