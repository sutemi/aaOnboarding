//
//  dobTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class dobUITableViewCell: UITableViewCell, UITextFieldDelegate {

    

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    

    @IBOutlet weak var dobField: formUITextField!
    
    
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        dobField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        dobField.delegate = self
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        
        if dobField.text != "" {
            
            UserManager.sharedManager.userDOB = dobField.text!
            cellLabel.text = UserManager.sharedManager.userDOB
            
        } else {
            
            cellLabel.text = ""
            
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UserManager.sharedManager.userDOB = dobField.text!
        cellLabel.text = UserManager.sharedManager.userDOB
        
        textField.resignFirstResponder()
        return true
        
    }
    
    
    override func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
    
}
