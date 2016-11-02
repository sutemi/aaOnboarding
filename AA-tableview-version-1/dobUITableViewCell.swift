//
//  dobTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class dobUITableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var dobLabel: UILabel!

    @IBOutlet weak var dobField: formUITextField!
    
    var isComplete:Bool = false
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        dobField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if dobLabel.text == "" {
            dobLabel.isHidden = true
        } else {
            dobLabel.isHidden = false
        }
    }
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        switch sender {
        case dobField:
            print("editing: firstNameField")
            break
        default:
            break
        }
        
        
        
        if dobField.text != "" {
            //            self.isComplete = true
        }
        
    }
    
    
}
