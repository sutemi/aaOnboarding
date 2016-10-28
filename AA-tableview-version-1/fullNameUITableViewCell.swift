//
//  fullNameUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class fullNameUITableViewCell: UITableViewCell {


    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var firstNameField: formUITextField!
    @IBOutlet weak var miField: formUITextField!
    @IBOutlet weak var lastNameField: formUITextField!
    @IBOutlet weak var suffixField: formUITextField!
    
    var isComplete:Bool = false

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        firstNameField.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        miField.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        lastNameField.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        suffixField.addTarget(self, action: Selector(("textFieldDidChange:")), for: UIControlEvents.editingChanged)
        
        
        
        
        self.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if nameLabel.text == "" {
            nameLabel.isHidden = true
        } else {
            nameLabel.isHidden = false
        }
    }
    
    
    func textFieldDidChange() {
        if firstNameField.text != "" && miField.text != "" && lastNameField.text != "" && suffixField.text != "" {
            self.isComplete = true
        }
    }
    
    
}
